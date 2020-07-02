# README

A Xojo module and Admin apps to enable self-updating Xojo apps.

## General Information

Kaju is a pull system where the client application gets information from a known URL. It is designed as a series of Xojo classes in a central module and a Window. It is meant to be a single, turnkey solution with minimal involvement by you. In other words, set it up, write the code to call it, then forget about it.

## How To Use It

### Installation

Open the included Admin App or Test App, copy the Kaju Classes folder, then paste it into your project. **Important**: Do not drag the folders directly from the directory.

### Special Actions

You need to add one property to your App class, `UpdateInitiater As Kaju.UpdateInitiater`. Kaju expects to find that and will handle it for you.

**Important**: Kaju does its magic by launching a command-line script when the `UpdateInitiater` gets set to `Nil`, which should happen when the app quits. Unfortunately, that's not always true so you should force the issue by inserting `App.UpdateInitiater = Nil` into your `App.Close` event.

The only other special code you'll need is in the `CancelClose` event of any window where the close is actually being cancelled, i.e., where you have the event return `True`. In those cases, you must call `Kaju.CancelUpdate`. (It doesn't matter if there is an update scheduled at the time.) This will prevent an update from happening if the user quits later without choosing Quit & Install again. That code should look something like this:

```Xojo
Event CancelClose(appQuitting As Boolean) As Boolean
	// You've determined that you need to cancel the
	// close, so...
	if appQuitting then // This "if" is not strictly necessary
		Kaju.CancelUpdate
	end if
	return true
End Event
```

If you plan to allow 32-bit to 64-bit updates on Windows and Linux, you must include code that will force the user to manually relaunch the app after such an update.

<a name='warning64bit'></a>**Important**: Due to limitations in the Windows and Linux OS's, a 64-bit app that is launched after an update from the 32-bit version will not work properly. The user must manually start the new app, so your code should warn them and force the app to quit. There is example code in the Kaju Update Test project.

### Implementation

Create a new `Kaju.UpdateChecker` instance and fill in its properties. In the `Constructor`, you have to provide a FolderItem for a folder where Kaju can save its preferences, one that is unique to your app. At the least, you must also set the `ServerPublicRSAKey` (more on this later) and the `UpdateURL` where it will get its update information. If that URL (or any URL) starts with "https:", it will be accessed securely. (Conversely, a URL that does not start with "https:" will be accessed normally.)

**Note**: Due to changes in the MacOS, accessing an insecure URL will require entries in your app's plist file. For more information, look [here](https://docs.xojo.com/UserGuide:App_Transport_Security).

Call the `ExecuteAsync` (preferred) or `Execute` method of the `Kaju.UpdateChecker`. That's it. Kaju will handle everything else by going to the `UpdateURL` to see if there are any updates available for that version of the app, then ask the user about them. If the user chooses to update, the class will download and verify the binary, then offer the user the opportunity to Quit & Install or Cancel. If they choose to install, Quit will be called.

Since none of this is modal, the user can continue to use your app with the update window waiting in the background. If they do choose to install, the update window will be sent to the back so it will be closed last.

To discover what `UpdateChecker` found, you can check the `Result` property in the `ExecuteAsyncComplete` event after using `ExecuteAsync` (preferred) or directly after calling `Execute`. It returns a value from the `Kaju.UpdateChecker.ResultType` enum. If there was a connection error with `ExecuteAsync` check the `LastError` property too.

### ExecuteAsync vs. Execute

Xojo offers two types of HTTPSocket, the "classic" and the "namespaced" (`Xojo.Net.HTTPSocket`) versions. The namespaced version includes features that works with newer types of security but does not offer a synchronous mode. With that in mind, Kaju has two ways to start the update process, `Kaju.UpdateChecker.ExecuteAsync` and `Kaju.UpdateChecker.Execute`. The former uses the namespaced version and will report its result in the `ExecuteAsyncComplete` event. The latter uses the classic version and will report its results immediately.

If your update information is not on a secure website, it shouldn't matter which you use, but we still recommend `ExecuteAsync` moving forward.

**Note**: `ExecuteAsync` will always allow redirects so `UpdateChecker.AllowRedirection` must be set to `True` or an exception will be raised.

### Minimum OS

Kaju will work the same way on Mac, Windows, and Linux. All recent versions of MacOS and Linux should be supported. Windows Vista and later are supported.

If Kaju cannot find the tools it needs, the `Result` will be set to `UnsupportedOS` after you call `ExecuteAsync` or `Execute`.

**Important**: Recent Linus distros do not have the libraries needed to show the `HTMLViewer` in 32-bit apps. Kaju will report an error in those cases and will not show the release notes, but the update will still work.

## What Else?

### Required Updates

If you set up a minimum required version in your update information, Kaju may find that a particular update is "required". For example, if the user is using v.1.0 and you've discovered a bug that necessitates an update to at least v.1.1, you would set that as the minimum required version. In the future, even as you release v.1.2, 1.3, etc, you would leave the minimum required as v.1.1 so Kaju knows to force the users of 1.0 to update.

After calling  `Kaju.UpdateChecker.ExecuteAsync` or `Kaju.UpdateChecker.Execute`, the `Result` method will tell you if a required update was found. In that case, it's up to you to take special actions to make sure that your app cannot be used until it is updated. To help, there is the `Kaju.UpdateChecker.QuitOnCancelIfRequired` property that is `True` by default. If the user tries to cancel a required update, the app will quit.

### Other Features

There are other features of `Kaju.UpdateChecker` that may be helpful. You can control the interface that will be presented to the user through the `AllowedInteraction` property. You can prevent Kaju from showing an error dialog, the update window, or both. Use the constants within `Kaju.UpdateChecker` to set this value. Values can be added together for better control (although, as of this writing, there are just the two values).

You can control the types of updates a user may see by setting `Kaju.UpdateChecker.AllowedStage`. The stage codes are the same as those found in the `App` class, so setting that property to `App.Final` means that the user will not see any development, alpha, or beta releases.

If an update was found, the update window will have opened. You can check through the `UpdateWindowIsOpen` property at any time.

The user can choose to ignore certain versions as long as they are not marked as required. You can set `HonorIgnored` to `False` to bypass that temporarily and present even ignored versions to your user, or you can clear the database of ignored versions entirely with the `ResetIgnored` method.

You may choose to specify an update URL that redirects to another location. By default, Kaju will not allow that, but if you really need to do it, set the `Kaju.UpdateChecker.AllowRedirection` property to `True`.

### One At A Time

You can create several instances of `Kaju.UpdateChecker` if you'd like, but only one update can run at any time. If an update is already in progress, `ExecuteAsync` and `Execute` won't do anything and will let you know through the `Result`.

### Images

You can set a background image for the window in two places. Within the app, you may set `Kaju.UpdateChecker.DefaultImage` for any updates that do not specify a specific image. In the Admin app, you may specify a URL to an image for a particular version. For example, if the default image is your app's logo, but a beta should have "beta" stamped across it, you can do that.

You can also set `Kaju.UpdateChecker.DefaultUseTransparency` or set "Use Transparency" for an image provided through the Admin app. Transparency is set to 50% when `True`.

An image will cover the entire window without cropping or scaling starting at the upper, left corner. Accordingly, you can provide an entire background image or just an icon.

Within your app, use an Image Set to properly handle HiRes vs. LoRes screens. When providing a URL, set the "Scale" property for the image. For example, the URL points to an image designed for HiRes displays, set the Scale to 2 or 3, as appropriate, and Kaju will scale for LoRes if needed.

### Limitations

Kaju does not elevate permissions. If the user does not have write permission for the executable or its parent, `ResultType.NoWritePermission` will be returned in `Kaju.UpdateChecker.Result`.

### Platform Differences

Kaju will act the same way across platforms except for one point: Since the Mac executable is always one package, it will be replaced entirely. Anything stored within the package that was put there after initial installation will be deleted.

On Windows and Linux, since executable folders can be combined, only the files that are found in the update will be replaced. Any additional files or even older, no-longer-used files, will remain untouched. If you want to make sure some older file is removed by the update, put an empty placeholder into the update package.

## Step By Step

* Copy the Kaju Classes folder into your project.
* Add to your App instance the property `UpdateInitiater As Kaju.UpdateInitiater`. In the `App.Close` event, insert `App.UpdateInitiater = Nil`. You do not need to do anything more with this property.
* Run the Kaju Admin app through the included project and save a new document with an appropriate name, something like "MyApp v.1.kaju". You don't have to add any updates at this time.
* Copy the RSA public key with the appropriate button. A key pair is generated every time a new document is created and it is this key that will ensure that your app is getting legitimate, uncorrupted update information. **Do not lose this file after releasing your app!** If you do, users of older versions will no longer be able to update.
* In an appropriate place within your project, add code that looks something like this:

```Xojo
dim updater as new Kaju.UpdateChecker( myAppPrefFolder )
updater.ServerPublicRSAKey = "12345..." // The key you copied from the Admin app
updater.UpdateURL = "http://www...." // Where the update info will be posted

updater.ExecuteAsync
```

* If you expect to allow 32-bit to 64-bit updates on Windows or Linux, insert code into `App.Open` that will force the user to manually restart the app if such an update is detected. See the Kaju Update Test app project code for an example.

At a bare minimum, that's it.

## The Admin App

The included Admin app makes it easy to set up your update file. Start it up and use the "+" at the bottom, left to add a version. Fill in the information for the release.

When you're done, save the file, then export the HTML data. It is this exported file that you will post to your web site and the final URL should match the URL you included within your app.

### Some Details

Add an entry for each *current* version of your app. You do not need a history since a user wants to update to the latest and does not need to see every intermediate version (unless there is a reason that you want that).

The release notes are created in HTML and some simple tools are provided for making that a bit easier. You can see a preview of the release notes as a you type and use the Preview button to see how Kaju will present the update window under various circumstances. The HTML can be as simple or as complex as you'd like.

Alternatively, you can pull your release notes from a server by setting the first line to a URL. Anything after the first line will be used as an alternate if the URL can't be reached or has no content. (But note: Older apps with Kaju 1.x will see the text of the release notes including the URL at the top _unless_ that URL is in a comment.)

The two ways to include a URL from which release notes will be pulled:

```
http://wwww.something.com/my_release_notes

These are the alternate release notes and
the url above will be visible.
```

or

```
<!-- http://www.something.com/my_release_notes -->

These are the alternate release notes but
the url above will not be visible because they are
commented (preferred).
```

**Note**: WebKit is used on all platforms to ensure consistency. This will increase the size of your project on Windows and Linux.

### Links In Release Notes

Links in the release notes will be ignored *unless* you include `target="_blank"` as part of the URL. For example, `<a href="http://www.example.com" target="_blank">my site</a>` will force the link to open in the user's browser.

### Binaries

Your compiled apps for each platform must be zipped and named appropriately. For the Mac, zip the application. For the other platforms, zip the folder that contains the executable and supporting folders.

For each version in your admin file, check the checkbox for each platform to which it applies, provide the URL where that binary will be found, then drop each binary onto the appropriate field to calculate its hash. You can also post the binary to your web site, enter the URL, then use the button to calculate the hash from the URL. (It will download the binary, calculate the hash, then delete it.)

**Note**: If the URL to a binary starts with "https:", a secure connection will be used automatically.

For Windows and Linux, you must also provide the exact name of the executable. If your app is called "My Great App", the Linux executable name will be "My Great App" and the Windows name will be "My Great App.exe".

### About 64-bit

Kaju will allow you to specify 64-bit versions for Windows and Linux. If available, and if the `UpdateChecker.Allow32bitTo64bitUpdates` is `True`, the users of your 32-bit version will be given the option to upgrade to the next version as 64-bit. *But* see <a href='#warning64bit'>the warning above</a> in that case.

## The CLI Admin App

Included in the project is a command-line version of the admin app so you can automate the maintenance of your update file. It will let you do anything that the GUI version will, including creating the Kaju admin file, adding and editing versions, and exporting the update information.

To use it, open the Kaju Admin CLI project, compile it, then, from the command line, type

	kaju --help

(I'm assuming you already know how to use command-line utilities.) There are subapps that will let you perform various actions and the top-level help will list those. To get help on a subapp, type

	kaju <subapp> --help

The online help should give you all the information you need.

## JSON Specs

The update information that you will post will be a JSON file that is generated by the Admin app as an HTML file. We recommend that each version line gets its own folder on your web server.

The JSON will contain these fields for each version.

	AppName                        (string)
	Version                        (string)
	MinimumRequiredVersion         (string)
	RequiresPayment                (bool)
	ReleaseNotes                   (string)
	MacBinary                      (dictionary)
		URL                        (string)
		Signature                  (string)
	WindowsBinary                  (dictionary)
		ExecutableName
		URL                        (string)
		Hash                       (string)
	LinuxBinary                    (dictionary)
		ExecutableName
		URL                        (string)
		Hash                       (string)
	WindowsBinary64bit             (dictionary)
		ExecutableName
		URL                        (string)
		Hash                       (string)
	LinuxBinary64bit               (dictionary)
		ExecutableName
		URL                        (string)
		Hash                       (string)
	ImageURL                       (string)
	ImageScale                     (integer)
	UseTransparency                (bool, default = true)

A sample JSON that will be returned by the server:

```JSON
[
	{
		"AppName" : "My App" ,
		"Version" : "6.0.2",
		"MinimumRequiredVersion" : "6.0.1" ,
		"ReleaseNotes" : "The release notes" ,
		"MacBinary" :
			{
				"URL" : "http://www.site.com/download_path_Mac" ,
				"Signature" : "ABCDEF"
			} ,
		"WindowsBinary" :
			{
				"ExecutableName" : "My App.exe" ,
				"URL" : "http://www.site.com/download_path_Windows" ,
				"Signature" : "123456"
			} ,
		"LinuxBinary" :
			{
				"ExecutableName" : "My App" ,
				"URL" : "http://www.site.com/download_path_Linux" ,
				"Hash" : "ABC123"
			} ,
		"WindowsBinary64bit" :
			{
				"ExecutableName" : "My App.exe" ,
				"URL" : "http://www.site.com/download_path_Win_64" ,
				"Hash" : "ABC12B3"
			} ,
		"LinuxBinary64bit" :
			{
				"ExecutableName" : "My App" ,
				"URL" : "http://www.site.com/download_path_Linux_64" ,
				"Hash" : "ABC12C"
			} ,
		"ImageURL" : "http://www.site.com/image.png" ,
		"ImageScale" : 2 ,
		"UseTransparency" : true
	} ,
	{
		"AppName" : "My App" ,
		"Version" : "6.1b4" ,
		"ReleaseNotes" : "http://link/to/release/notes" ,
		"MacBinary" :
			{
				"URL" : "http://www.site.com/other_download_path" ,
				"Hash" :"0123456"
			}
	}
]
```

**NOTE**: The ExecutableName will be used by the updater script while the AppName is what will display in the updater window. These may be the same or different. Since the ExecutableName of the Mac app can be discovered, it is not needed for the Mac binary.

The file will be prefixed by the signature of the JSON string in hex format. The entire file would look something like this:

```JSON
KAJU ABCDEF
[
	<the JSON data>
]
```

If an update does not apply to a particular platform, it will be missing binary information for that platform and will be ignored.

The JSON will contain all information about every available version for that line. For example, there might be a release 6.0.1, a beta 6.1b4, and an alpha 6.2a8. Kaju will download all of that information and determine which ones are appropriate to present as options to the user.

### "RequiresPayment" Flag

The "RequiresPayment" flag can be used to warn users of paid updates. For example, if they are on v.5.1 of your app, you can include information about the paid v.6.0. (We recommend that future 6.0 updates be in their own line, i.e., their own Kaju file.)

## General Recommendations

We recommend that the latest version of any line use a static URL. For example, even if your app is at version 5.5, name the zipped file something like "My\_App\_5\_Mac.zip" and place it in the My\_App/v5/ folder on your web server. When you release version 6, name it "My\_App\_6\_Mac.zip" and put it in the My_App/v6/ folder on the server. That way, no matter when the user chooses to update, the same URL will always lead them to the latest version.

## The Classes

There is only one class (`Kaju.UpdateChecker`) and one method in the Kaju module (`CancelUpdate`) that are of real concern. The other classes and methods support these.

There is also a `Kaju.Version` constant (introduced in v.1.4) that will let you keep track of the Kaju version in your project.

**Class:** `Kaju.UpdateChecker`

|Property|Type|Description|Required|
|:---|:---:|:---|---:|
|Allow32bitTo64bitUpdates|Boolean|If `True`, will offer the user of a 32-bit app the option to upgrade to the 64-bit version, if available.|n|
|AllowedInteraction|UInt32|Determines what windows Kaju is allowed to display; Use the available constants|n|
|AllowedStage|Integer|What stage of updates the user may see (App.Final, App.Beta, App.Alpha, or App.Development)|n|
|AllowRedirection|Boolean|If `True`, the `UpdateURL` may redirect to another URL (default: `False`)|n|
|DefaultImage|Picture|The background image that will be displayed in the window when an image is not provided by the update|n|
|DefaultUseTransparency|Boolean|If `True`, transparency will be set to 50%|n|
|HonorIgnored|Boolean|If `False`, the user will be presented with updates they previously set to "ignore" (default: `True`)|n|
|LastError|RuntimeException|Stores an error returned by `ExecuteAsync`|n/a|
|QuitOnCancelIfRequired|Boolean|When `True` (default), canceling a required update will call Quit|n|
|ServerPublicRSAKey|String|The public key as found in the Admin app file|**yes**|
|UpdateURL|String|The URL where the update info will be found|**yes**|
|UpdateWindowIsOpen|Boolean|Read-only property to determine if the update window is currently open|n|

|Method|Description|
|:-----|:---------|
|Constructor(preferencesFolder As FolderItem[, preferencesFilename As String])|Create the new instance around the given preferences folder using the given name for the file if provided, or "Kaju_Preferences" if not|
|ExecuteAsync|Start the update process asynchronously (preferred)|
|Execute|Start the update process synchronously|
|ResetIgnored|Reset the list of ignored updates|
|Result As ResultType|The result of the last Execute|

|Shared Method|Description|
|:---|:---|
|OSIsSupported As Boolean|Reports if the OS has the right tools installed|

|Event|Description|
|:----|:----------|
|ExecuteAsyncComplete|`ExecuteAsync` has checked the update information packet from the `UpdateURL` and is reporting some result or status. Check `Result` and, if necessary, `LastError`.|


**Module:** `Kaju`

|Method|Description|
|:---|:---|
|CancelUpdate|Cancels any pending update; use in your windows' CancelClose event|
|DidLastUpdateFail As Boolean|Returns `True` if this launch is a result of a failed update|
|DidLastUpdateSucceed(ByRef fromVersion As String, ByRef fromBits As Kaju.BitTypes) As Boolean|Returns `True` and supplies the old version and bits if this launch is the result of a successful update|

There are other methods in the Kaju module that you might find useful but we are not documenting them.

## Contributions

Contributions to this project are welcome. Fork it to your own repo, then submit changes. However, be forewarned that only those changes that we deem universally useful will be included.

## Who Did This?

This project was designed and implemented by:

* Kem Tekinay (ktekinay at mactechnologies.com)
* Luke Cowgar (lcowgar at advancedpricing.com)
* Jeremy Cowgar (jeremy at cowgar.com)

With thanks to John Hansen, Paul Lefebvre, Scott Boss, and Vidal van Bergen.

Translations to other languages by:

* Sascha Schneppmueller (German)
* Valdemar De SOUSA (French)
* Julen Ibarretxe Uriguen (Spanish)
* Heikki Hoo (Finnish)
* Manuel Romei (Italian)
* Vidal van Bergen (Dutch)

With special thanks to [Advanced Medical Pricing Solutions, Inc.](http://www.advancedpricing.com) for making this possible.

## FAQ

**How much does this cost?**

One-TRILLION dollars!! Or nothing, your choice.

You may freely use this in any project, but don't come back to us if it erases your hard drive or paints your house yellow or something. See the included LICENSE.txt file for details.

**How does it work?**

Kaju uses a shell script on all platforms that is initiated when the app quits. The script backs up the original app, copies the files of the new app over the old, deletes the backup, and starts the new app. If anything goes wrong, the old app is restored and started instead.

**Does the end user have to install any additional apps?**

No.

**Really?!? Even on Windows?**

No. Thanks to John Hansen and code he provided on the [Xojo Forums](https://forum.xojo.com), Windows will even unzip the downloaded file without any extra help.

**How do I contribute?**

Fork the project to your GitHub account. Use the "develop" branch for general fixes and additions and "translations" to add a language translation. Make your changes, then submit a pull request. We'll look it over and merge what's appropriate or provide feedback.

**I want to submit a translation. What should be translated?**

There are two places to look for strings that need translation:

1. The constants in the KajuLocale module.
1. The error messages in KajuException.

Add a translation for each, then submit a pull request as outlined above.

## Release Notes

2.1 (__)

* **KajuUpdateWindow**: Changed `hsSocket` to a `URLConnection` object.
* **UpdateChecker**: Added `ExecuteAsync` that will check for updates asynchronously using `URLConnection` and `LastError` for HTTP errors that occur when using that method.
* **UpdateChecker**: Deprecated `Execute`.
* **UpdateChecker**: If redirection is allowed, uses `URLConnection`.
* **UpdateChecker**: Added results for "PageNotFound", "PageRedirected", and "FetchingUpdateInfo".
* **UpdateChecker**: Better handling of a URL in the form "http://un:pw@path".
* **UpdateChecker**: Changed `Result` to a read-only computed property and made the `mResult` shadow property hidden.
* **UpdateChecker**: Removed events that were not being raised anyway.
* **UpdateChecker**: Make sure each version has a security token (see below).
* **UpdateChecker**: Validate the downloaded packet against every form of EOL with and without Trim in case that got changed along the way.
* **UpdateChecker**: `OSIsSupported` will try twice to find the tools it needs and log any errors.
* **UpdateInformation**: Will fetch images and release notes asynchronously.
* **UpdateInitiater**: Fixed Windows script issue that could have prevented re-launch of the application.
* **Test App**: The window will let you specify Asynchronous and your own URL and/or public key. It will also allow testing of simple HTTP authenticated directories.
* **Test App**: Asynchronous is now the default.
* **Admin App**: Fixed issues with saving and alias tracking. (Alias tracking does not work on Windows.)
* **Admin App**: Better UI handling on Windows.
* **General**: Code changes for easier debugging.
* **General**: All HTTP requests now include headers to disable caching.
* **General**: Exported information file contains a security token to make sure that each export has a different RSA signature.
* **General**: Handle IOException.
* **General**: Updated build script to look for kaju cli in "Builds" folder as named in the newer Xojo versions.

2.0 (May 31, 2017)

* **CLI**: Made help prettier.
* **Admin GUI**: Use a temp file for the LoadPage "relativeTo" parameter.
* **KajuUpdateWindow**: Delete the temp file used for the LoadPage "relativeTo" parameter on close.
* Added Dutch translation.
* **KajuUpdateWindow**: If an exception is raised while displaying the release notes, any exception message will be added to the dialog text.
* Ability to load release notes through a URL.
* **Admin GUI**: Fixed Dupe button.
* Added support for 64-bit binaries.
* **Kaju**: Changed parameters of `DidLastUpdateSucceed` to report the "bit-ness" of the version that initiated the update.
* **Test App**: Use better technique for compressing Windows and Linux executables.

1.6.1 (August 27, 2015)

* **CLI**: Better handling of remote debugging.
* **CLI**: listversions now has --include and --exclude switches that take regex patterns.
* **Admin**: Prevent Save or Export if the file includes duplicate version numbers.
* **CLI**: Disallow adding duplicate version number or changing an existing version number so it becomes a duplicate.
* **Test App**: Created Build Script to automatically update the Kaju files after building.

1.6 (August 18, 2015)

* Can override the preference file name when creating the UpdateChecker object.
* Introduced command line project (CLI).

1.5.3 (July 20, 2015)

* **Admin app**: Split the file settings from the Admin window so a file can be manipulated independently.
* **Admin app**: Save the last export file name to suggest it for the next export.

1.5.2 (July 17, 2015)

* Added Italian translation.

1.5.1 (June 19, 2015)

* **Admin app**: Fixed tab order of controls.
* **Admin app**: Retinized!
* Added what should be an unneeded, but apparently necessary, GOTO to the Windows script.

1.5 (June 3, 2015)

* **Admin app**: Enable substitution of `$VERSION$` in binary URL's.

1.4.1 (Feb. 18, 2015)

* **Admin app**: Lock "From URL" buttons to the right of the window.
* Added Finnish translation.

1.4 (Feb. 14, 2015)

* Added /g switch to XCOPY in Windows script.
* When the app relaunches after an update or failed update, will get command-line switches telling it what happened. Added Kaju methods to report.
* URL's for both the update information and the downloads can specify a username and password in the form "http://un:pw@theurl.com".
* Added Kaju.Version constant.

1.3.3 (Jan. 22, 2015)

* Fixed bug in conversion of release version to double.

1.3.2 (Jan. 15, 2015)

* Fixed Admin app bugs.
* Download progress bar will now update properly on all platforms.

1.3.1 (Jan. 13, 2015)

* Fixed bug that prevented MinimumRequiredVersion from working.

1.3 (Jan. 13, 2015)

* Final versions can use the non-release number as a build number.
* Fixed translations that were marked as "default".

1.2.1 (Jan. 13, 2015)

* Added Spanish translation.

1.2 (Jan. 12, 2015)

* Added timeout timer for downloads.
* Fixed transparency issue on Windows.
* Fixed some German translations.
* Added French translation.

1.1 (Jan. 11, 2015)

* Moved user-presented strings to KajuLocale module for easier translation.
* Fixed bug where the app name was not being presented in the Update window.
* Changed behavior of how the "A never version of..." message is presented in the Update window.
* Added German translation.

1.0.1 (Jan. 5, 2015)

* Fixed redirect bug.
* The URL will set Secure and the Port (can override in the URL itself).

1.0 (Jan. 5, 2015)

* Initial release.
