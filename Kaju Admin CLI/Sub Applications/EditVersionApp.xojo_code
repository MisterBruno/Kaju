#tag Class
Protected Class EditVersionApp
Inherits VersionHandlerSubApplication
	#tag Event
		Sub AddOptions(parser As OptionParser)
		  dim o as new Option( "", kOptionSet, "Set a key=value or key=@/path/to/file", Option.OptionType.String )
		  o.IsArray = true
		  parser.AddOption o
		  
		  parser.AddOption new Option( "", kOptionEncoding, _
		  "Use encoding when reading value from file (UTF-8 or platform native if not specifed)", Option.OptionType.String )
		  
		  const kHashDescription = "Use the given file to set the binary's hash"
		  
		  parser.AddOption new Option( "", kOptionMacBinary, kHashDescription, Option.OptionType.File )
		  parser.AddOption new Option( "", kOptionLinuxBinary, kHashDescription, Option.OptionType.File )
		  parser.AddOption new Option( "", kOptionLinuxBinary64, kHashDescription, Option.OptionType.File )
		  parser.AddOption new Option( "", kOptionWinBinary, kHashDescription, Option.OptionType.File )
		  parser.AddOption new Option( "", kOptionWinBinary64, kHashDescription, Option.OptionType.File )
		  
		  const kRemoveDescription = "Remove the binary data"
		  
		  parser.AddOption new Option( "", kOptionRemoveMacBinary, kRemoveDescription, Option.OptionType.Boolean )
		  parser.AddOption new Option( "", kOptionRemoveWinBinary, kRemoveDescription, Option.OptionType.Boolean )
		  parser.AddOption new Option( "", kOptionRemoveWinBinary64, kRemoveDescription, Option.OptionType.Boolean )
		  parser.AddOption new Option( "", kOptionRemoveLinuxBinary, kRemoveDescription, Option.OptionType.Boolean )
		  parser.AddOption new Option( "", kOptionRemoveLinuxBinary64, kRemoveDescription, Option.OptionType.Boolean )
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function GetAdditionalHelp() As String
		  return kAdditionalHelp
		End Function
	#tag EndEvent

	#tag Event
		Function GetDescription() As String
		  return kDescription
		End Function
	#tag EndEvent

	#tag Event
		Function Run(version As Kaju.UpdateInformation, file As KajuFile, options As OptionParser, ByRef saveFile As Boolean) As Integer
		  #pragma unused file
		  #pragma unused saveFile
		  
		  //
		  // Make sure there are no extras
		  // (probably means bad form)
		  //
		  if options.Extra.Ubound <> -1 then
		    print "Unrecognized options: " + join( options.Extra, ", " ) + " (did you mean to `--set'?)"
		    return App.kErrorGeneralError
		  end if
		  
		  //
		  // See if there is an encoding specified
		  //
		  dim enc as TextEncoding
		  if options.OptionValue( kOptionEncoding ).WasSet then
		    enc = GetInternetTextEncoding( options.StringValue( kOptionEncoding ) )
		  end if
		  
		  //
		  // Remove binaries
		  //
		  if options.BooleanValue( kOptionRemoveMacBinary, false ) then
		    version.RemoveBinary version.kMacBinaryName
		  end if
		  if options.BooleanValue( kOptionRemoveWinBinary, false ) then
		    version.RemoveBinary version.kWindowsBinaryName
		  end if
		  if options.BooleanValue( kOptionRemoveLinuxBinary, false ) then
		    version.RemoveBinary version.kLinuxBinaryName
		  end if
		  if options.BooleanValue( kOptionRemoveWinBinary64, false ) then
		    version.RemoveBinary version.kWindowsBinary64Name
		  end if
		  if options.BooleanValue( kOptionRemoveLinuxBinary64, false ) then
		    version.RemoveBinary version.kLinuxBinary64Name
		  end if
		  
		  //
		  // Hashes
		  //
		  dim optionKey as string 
		  
		  optionKey = kOptionMacBinary
		  if options.OptionValue( optionKey ).WasSet then
		    dim binary as Kaju.BinaryInformation = version.FetchBinary( version.kMacBinaryName )
		    binary.Hash = Kaju.HashOfFile( options.FileValue( optionKey ) )
		  end if
		  
		  optionKey = kOptionWinBinary
		  if options.OptionValue( optionKey ).WasSet then
		    dim binary as Kaju.BinaryInformation = version.FetchBinary( version.kWindowsBinaryName )
		    binary.Hash = Kaju.HashOfFile( options.FileValue( optionKey ) )
		  end if
		  
		  optionKey = kOptionLinuxBinary
		  if options.OptionValue( optionKey ).WasSet then
		    dim binary as Kaju.BinaryInformation = version.FetchBinary( version.kLinuxBinaryName )
		    binary.Hash = Kaju.HashOfFile( options.FileValue( optionKey ) )
		  end if
		  
		  optionKey = kOptionWinBinary64
		  if options.OptionValue( optionKey ).WasSet then
		    dim binary as Kaju.BinaryInformation = version.FetchBinary( version.kWindowsBinary64Name )
		    binary.Hash = Kaju.HashOfFile( options.FileValue( optionKey ) )
		  end if
		  
		  optionKey = kOptionLinuxBinary64
		  if options.OptionValue( optionKey ).WasSet then
		    dim binary as Kaju.BinaryInformation = version.FetchBinary( version.kLinuxBinary64Name )
		    binary.Hash = Kaju.HashOfFile( options.FileValue( optionKey ) )
		  end if
		  
		  //
		  // Set
		  //
		  dim o as Option = options.OptionValue( kOptionSet )
		  if o.WasSet then
		    dim params() as variant = o.Value
		    
		    for each param as string in params
		      dim keyFound as boolean
		      
		      dim key as string = param.NthField( "=", 1 )
		      dim value as string = param.Mid( key.Len + 2 )
		      
		      //
		      // See if the value actually points to a file
		      //
		      if value.Left( 1 ) = "@" then
		        value = ValueFromFile( value.Mid( 2 ) )
		        if enc isa TextEncoding then
		          value = value.DefineEncoding( enc )
		        elseif Encodings.UTF8.IsValidData( value ) then
		          value = value.DefineEncoding( Encodings.UTF8 )
		        elseif TargetMacOS then
		          value = value.DefineEncoding( Encodings.MacRoman )
		        else
		          value = value.DefineEncoding( Encodings.ISOLatin1 )
		        end if
		      end if
		      
		      //
		      // See if the key needs massaging
		      //
		      if key.InStr( "." ) <> 0 then
		        dim leftKey as string = key.NthField( ".", 1 )
		        dim rightKey as string = key.NthField( ".", 2 )
		        
		        dim binary as Kaju.BinaryInformation
		        select case leftKey
		        case "MacBinary"
		          binary = version.FetchBinary( version.kMacBinaryName )
		          
		        case "WindowsBinary", "WinBinary"
		          binary = version.FetchBinary( version.kWindowsBinaryName )
		          
		        case "LinuxBinary", "LinBinary"
		          binary = version.FetchBinary( version.kLinuxBinaryName )
		          
		        case "WindowsBinary64", "WinBinary64"
		          binary = version.FetchBinary( version.kWindowsBinary64Name )
		          
		        case "LinuxBinary64", "LinBinary64"
		          binary = version.FetchBinary( version.kLinuxBinary64Name )
		          
		        end select
		        
		        if binary isa Object then
		          dim ti as Introspection.TypeInfo = Introspection.GetType( binary )
		          dim props() as Introspection.PropertyInfo = ti.GetProperties
		          for each prop as Introspection.PropertyInfo in props
		            if prop.Name = rightKey then
		              keyFound = true
		              prop.Value( binary ) = value
		              exit for prop
		            end if
		          next
		        end if
		        
		      else // Just a key
		        
		        //
		        // If the key is version, make sure it's not a duplicate
		        //
		        if key = "version" and value.Trim <> version.Version.Trim and file.IndexOf( value ) <> -1 then
		          print "Can't set Version to " + value  + " since that version already exists"
		          return App.kErrorGeneralError
		        end if
		        
		        try
		          version.SetByName( key ) = value
		          keyFound = true
		        catch err as KeyNotFoundException
		        end try
		        
		      end if
		      
		      if not keyFound then
		        print "Unknown key: " + key
		        return App.kErrorGeneralError
		      end if
		      
		    next
		  end if
		  
		  return App.kErrorNoError
		  
		End Function
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Function ValueFromFile(path As String) As String
		  //
		  // Do some simple path parsing
		  //
		  
		  dim f as FolderItem = OptionParser.GetRelativeFolderItem( path )
		  
		  dim bs as BinaryStream = BinaryStream.Open( f )
		  dim r as string = bs.Read( bs.Length )
		  bs.Close
		  
		  return r
		End Function
	#tag EndMethod


	#tag Constant, Name = kAdditionalHelp, Type = String, Dynamic = False, Default = \"Set a version field to the given value. You can use the `@\' form to read the input from a file. Relative paths can be used.\n\nExamples:\n\nChange a version number:\n  editversion --version\x3D1.0 --set version\x3D1.2\n\nSet the release notes from a file:\n  editversion --version\x3D1.2 --set ReleaseNotes\x3D@/path/to/file\n\nMultiple changes:\n  editversion --version\x3D1.0 --set version\x3D1.1\n    --set ReleaseNotes\x3D@/path/to/file\n    --set MinimumRequiredVersion\x3D1.1\n    --set RequiresPayment\x3Dtrue\n\nSet the binary hashes:\n  editversion --version\x3D1.1\n    --macbinary\x3D/path/to/mac/file\n    --winbinary\x3D/path/to/windows/file\n    --winbinary64\x3D/path/to/win64/file\n    --linuxbinary\x3D/path/to/linux/file\n    --linuxbinary64\x3D/path/to/linux64/file\n\nSet a binary\'s data (can be abbreviated as illustrated):\n  editversion --version\x3D1.5\n    --set MacBinary.url\x3Dhttp://www.something.com\n    --set WindowsBinary.ExecutableName\x3DMyApp.exe\n    --set winbinary64.url\x3D\'http://www.somethingelse.com\'\n    --set LinuxBinary.URL\x3D\'http://www.linupdater.com\'\n    --set linbinary64.ExecutableName\x3D\'MyApp\'\n\nRemove a binary:\n  editversion --version\x3D1.2\n    --remove-macbinary\n    --remove-winbinary\n    --remove-winbinary64\n    --remove-linuxbinary\n    --remove-linuxbinary64\n\nYou can get a list of the top-level field names through the versioninfo tool. The binary fields are:\n\n  Hash (should not be set directly)\n  URL\n  ExecutableName (required for Windows and Linux)\n\nVersion placeholder:\n\nWhen setting binary URL\'s\x2C you can use `$VERSION$\' as a placeholder to substitute the version number when exporting the Update Information file.", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kDescription, Type = String, Dynamic = False, Default = \"Edit a version", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kOptionEncoding, Type = String, Dynamic = False, Default = \"encoding", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kOptionLinuxBinary, Type = String, Dynamic = False, Default = \"linuxbinary", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kOptionLinuxBinary64, Type = String, Dynamic = False, Default = \"linuxbinary64", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kOptionMacBinary, Type = String, Dynamic = False, Default = \"macbinary", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kOptionRemoveLinuxBinary, Type = String, Dynamic = False, Default = \"remove-linuxbinary", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kOptionRemoveLinuxBinary64, Type = String, Dynamic = False, Default = \"remove-linuxbinary64", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kOptionRemoveMacBinary, Type = String, Dynamic = False, Default = \"remove-macbinary", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kOptionRemoveWinBinary, Type = String, Dynamic = False, Default = \"remove-winbinary", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kOptionRemoveWinBinary64, Type = String, Dynamic = False, Default = \"remove-winbinary64", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kOptionSet, Type = String, Dynamic = False, Default = \"set", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kOptionWinBinary, Type = String, Dynamic = False, Default = \"winbinary", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kOptionWinBinary64, Type = String, Dynamic = False, Default = \"winbinary64", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="AdditionalHelp"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Usage"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
