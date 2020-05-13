#tag Window
Begin Window WndAdmin
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   True
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   680
   ImplicitInstance=   True
   LiveResize      =   "True"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   1253638004
   MenuBarVisible  =   True
   MinHeight       =   680
   MinimizeButton  =   True
   MinWidth        =   932
   Placement       =   0
   Resizeable      =   True
   Title           =   "Untitled"
   Visible         =   True
   Width           =   932
   Begin Listbox lbVersions
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   1
      ColumnsResizable=   False
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   False
      HeadingIndex    =   -1
      Height          =   614
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   2
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      ShowDropIndicator=   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   203
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin PushButton btnNew
      AutoDeactivate  =   True
      Bold            =   True
      ButtonStyle     =   6
      Cancel          =   False
      Caption         =   "+"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   2
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   640
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin PushButton btnDelete
      AutoDeactivate  =   True
      Bold            =   True
      ButtonStyle     =   6
      Cancel          =   False
      Caption         =   "-"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   39
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   2
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   640
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin TextFieldChanger fldVersion
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   "#KajuFile.kVersionName"
      DataSource      =   ""
      Enabled         =   False
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   380
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   52
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   0
      InitialParent   =   ""
      Italic          =   False
      Left            =   251
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Version:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   53
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   117
   End
   Begin TabPanel TabPanel1
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   509
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   251
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Panels          =   ""
      Scope           =   2
      SmallTabs       =   False
      TabDefinition   =   "Release Notes\rBinaries\r64-bit Binaries\rImage"
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   119
      Transparent     =   False
      Underline       =   False
      Value           =   3
      Visible         =   True
      Width           =   653
      Begin TextAreaChanger fldReleaseNotes
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   True
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         DataField       =   "ReleaseNotes"
         DataSource      =   ""
         Enabled         =   False
         Format          =   ""
         Height          =   177
         HelpTag         =   ""
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   271
         LimitText       =   0
         LineHeight      =   0.0
         LineSpacing     =   1.0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Multiline       =   True
         ReadOnly        =   False
         Scope           =   2
         ScrollbarHorizontal=   False
         ScrollbarVertical=   True
         Styled          =   False
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   194
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   613
      End
      Begin HTMLViewer hvReleaseNotesPreview
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   210
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Left            =   271
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         Renderer        =   1
         Scope           =   2
         TabIndex        =   1
         TabPanelIndex   =   1
         TabStop         =   True
         Top             =   408
         Visible         =   True
         Width           =   613
      End
      Begin Label Label1
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   4
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   271
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   11
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Preview:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   383
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin Label Label1
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   7
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   271
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   10
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Release Notes (HTML):"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   171
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   142
      End
      Begin TextFieldChanger fldImageURL
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   "ImageURL"
         DataSource      =   ""
         Enabled         =   False
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   350
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   2
         TabIndex        =   1
         TabPanelIndex   =   4
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   195
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   534
      End
      Begin Label Label1
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   8
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   271
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   4
         TabStop         =   True
         Text            =   "URL:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   195
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   67
      End
      Begin CheckBoxChanger cbImageUseTransparency
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Use Transparency"
         DataField       =   "UseTransparency"
         DataSource      =   ""
         Enabled         =   False
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   350
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         State           =   0
         TabIndex        =   0
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   162
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   180
      End
      Begin HTMLViewer hvImagePreview
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   351
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Left            =   271
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Renderer        =   1
         Scope           =   2
         TabIndex        =   2
         TabPanelIndex   =   4
         TabStop         =   True
         Top             =   257
         Visible         =   True
         Width           =   613
      End
      Begin BevelButton btnStyle
         AcceptFocus     =   True
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   True
         ButtonType      =   0
         Caption         =   "B"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   1
         Enabled         =   True
         HasBackColor    =   False
         HasMenu         =   0
         Height          =   22
         HelpTag         =   "Bold"
         Icon            =   0
         IconAlign       =   0
         IconDX          =   0
         IconDY          =   0
         Index           =   0
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   802
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         TabIndex        =   7
         TabPanelIndex   =   1
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   169
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   26
      End
      Begin BevelButton btnStyle
         AcceptFocus     =   True
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "I"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   1
         Enabled         =   True
         HasBackColor    =   False
         HasMenu         =   0
         Height          =   22
         HelpTag         =   "Italic"
         Icon            =   0
         IconAlign       =   0
         IconDX          =   0
         IconDY          =   0
         Index           =   1
         InitialParent   =   "TabPanel1"
         Italic          =   True
         Left            =   830
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         TabIndex        =   8
         TabPanelIndex   =   1
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   169
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   26
      End
      Begin BevelButton btnStyle
         AcceptFocus     =   True
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "U"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   1
         Enabled         =   True
         HasBackColor    =   False
         HasMenu         =   0
         Height          =   22
         HelpTag         =   "Underline"
         Icon            =   0
         IconAlign       =   0
         IconDX          =   0
         IconDY          =   0
         Index           =   2
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   858
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         TabIndex        =   9
         TabPanelIndex   =   1
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   169
         Transparent     =   False
         Underline       =   True
         Value           =   False
         Visible         =   True
         Width           =   26
      End
      Begin BevelButton btnBreak
         AcceptFocus     =   True
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "<br />"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   1
         Enabled         =   True
         HasBackColor    =   False
         HasMenu         =   0
         Height          =   22
         HelpTag         =   "Insert break"
         Icon            =   0
         IconAlign       =   0
         IconDX          =   0
         IconDY          =   0
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   601
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         TabIndex        =   2
         TabPanelIndex   =   1
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   169
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   50
      End
      Begin BevelButton btnStyle
         AcceptFocus     =   True
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "p"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   1
         Enabled         =   True
         HasBackColor    =   False
         HasMenu         =   0
         Height          =   22
         HelpTag         =   "Create a paragraph tag"
         Icon            =   0
         IconAlign       =   0
         IconDX          =   0
         IconDY          =   0
         Index           =   3
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   653
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         TabIndex        =   3
         TabPanelIndex   =   1
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   169
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   26
      End
      Begin BevelButton btnList
         AcceptFocus     =   True
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "ul"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   1
         Enabled         =   True
         HasBackColor    =   False
         HasMenu         =   0
         Height          =   22
         HelpTag         =   "Unordered list"
         Icon            =   0
         IconAlign       =   0
         IconDX          =   0
         IconDY          =   0
         Index           =   0
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   699
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         TabIndex        =   4
         TabPanelIndex   =   1
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   169
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   26
      End
      Begin BevelButton btnList
         AcceptFocus     =   True
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "ol"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   1
         Enabled         =   True
         HasBackColor    =   False
         HasMenu         =   0
         Height          =   22
         HelpTag         =   "Ordered list"
         Icon            =   0
         IconAlign       =   0
         IconDX          =   0
         IconDY          =   0
         Index           =   1
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   727
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         TabIndex        =   5
         TabPanelIndex   =   1
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   169
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   26
      End
      Begin BevelButton btnStyle
         AcceptFocus     =   True
         AutoDeactivate  =   True
         BackColor       =   &c00000000
         Bevel           =   0
         Bold            =   False
         ButtonType      =   0
         Caption         =   "li"
         CaptionAlign    =   3
         CaptionDelta    =   0
         CaptionPlacement=   1
         Enabled         =   True
         HasBackColor    =   False
         HasMenu         =   0
         Height          =   22
         HelpTag         =   "List item"
         Icon            =   0
         IconAlign       =   0
         IconDX          =   0
         IconDY          =   0
         Index           =   6
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   755
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         TabIndex        =   6
         TabPanelIndex   =   1
         TabStop         =   True
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   169
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   26
      End
      Begin Label Label2
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   271
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Use ‘$VERSION$’ in the URL to insert the version on export"
         TextAlign       =   1
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   589
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   613
      End
      Begin Label Label3
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   271
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "Use ‘$VERSION$’ in the URL to insert the version on export"
         TextAlign       =   1
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   589
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   613
      End
      Begin CheckBox cbPre2Preview
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Show Pre-2.0 Preview"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   727
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   2
         State           =   0
         TabIndex        =   12
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   382
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   157
      End
      Begin PopupMenuChanger pumImageScale
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   "ImageScale"
         DataSource      =   ""
         Enabled         =   False
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         InitialValue    =   "1\n2\n3"
         Italic          =   False
         Left            =   804
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         TabIndex        =   4
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   161
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin Label Label1
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   10
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   725
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   5
         TabPanelIndex   =   4
         TabStop         =   True
         Text            =   "Scale:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   162
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   67
      End
   End
   Begin TextFieldChanger fldAppName
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   "AppName"
      DataSource      =   ""
      Enabled         =   False
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   380
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   18
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   229
   End
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   3
      InitialParent   =   ""
      Italic          =   False
      Left            =   251
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "App Name:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   19
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   117
   End
   Begin CheckBoxChanger cbRequiresPayment
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Requires Payment"
      DataField       =   "RequiresPayment"
      DataSource      =   ""
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   693
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      State           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   19
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   180
   End
   Begin Timer tmrUpdateReleaseNotesPreview
      Index           =   -2147483648
      InitialParent   =   ""
      LockedInPosition=   False
      Mode            =   0
      Period          =   750
      Scope           =   2
      TabPanelIndex   =   0
   End
   Begin HTMLViewer hvNewWindow
      AutoDeactivate  =   True
      Enabled         =   False
      Height          =   200
      HelpTag         =   ""
      Index           =   -2147483648
      Left            =   -371
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Renderer        =   0
      Scope           =   2
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   156
      Visible         =   False
      Width           =   300
   End
   Begin PushButton btnCopyPublicKey
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Copy RSA Public Key"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   251
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   2
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   640
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   186
   End
   Begin Timer tmrUpdateImagePreview
      Index           =   -2147483648
      InitialParent   =   ""
      LockedInPosition=   False
      Mode            =   0
      Period          =   750
      Scope           =   2
      TabPanelIndex   =   0
   End
   Begin Label lblPlatform
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   58
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   577
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   True
      Scope           =   2
      Selectable      =   False
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "None"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   55
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   327
   End
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   9
      InitialParent   =   ""
      Italic          =   False
      Left            =   492
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Platforms:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   53
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin PushButton btnExport
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Export..."
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   819
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   2
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   639
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   85
   End
   Begin PushButton btnDuplicate
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Dupe"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   158
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   2
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "SmallSystem"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   641
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   65
   End
   Begin BevelButton btnPreview
      AcceptFocus     =   True
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   0
      Caption         =   "Preview..."
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   1
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   684
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   2
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   639
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   113
   End
   Begin TextFieldChanger fldMinRequiredVersion
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   "MinimumRequiredVersion"
      DataSource      =   ""
      Enabled         =   False
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   380
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   85
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   2
      InitialParent   =   ""
      Italic          =   False
      Left            =   251
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Min. Req. Version:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   86
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   117
   End
   Begin Kaju.UpdateInformation objReleaseNotesProcessor
      AppName         =   ""
      DisplayReleaseNotes=   ""
      Image           =   0
      ImageScale      =   1
      ImageURL        =   ""
      Index           =   -2147483648
      IsValid         =   False
      LockedInPosition=   False
      MinimumRequiredVersion=   ""
      ReleaseNotes    =   ""
      ReleaseNotesFromURL=   ""
      RequiresPayment =   False
      Scope           =   2
      StageCode       =   0
      TabPanelIndex   =   0
      UseTransparency =   True
      Version         =   ""
      VersionAsDouble =   0.0
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Activate()
		  UpdateWindowTitle
		End Sub
	#tag EndEvent

	#tag Event
		Function CancelClose(appQuitting as Boolean) As Boolean
		  dim r as Boolean = false
		  
		  if self.ContentsChanged then
		    dim dlg as new MessageDialog
		    dlg.Message = "This document has been modified. Save before closing?"
		    dlg.ActionButton.Caption = "&Save"
		    dlg.ActionButton.Visible = true
		    dlg.CancelButton.Visible = true
		    dlg.AlternateActionButton.Caption = "&Don't Save"
		    dlg.AlternateActionButton.Visible = true
		    
		    dim btn as MessageDialogButton = dlg.ShowModalWithin( self )
		    if btn is dlg.CancelButton then
		      r = true
		    elseif btn = dlg.AlternateActionButton then
		      r = false
		    else
		      r = not( DoSave() )
		    end if
		  end if
		  
		  return r
		  
		  #pragma unused appQuitting
		End Function
	#tag EndEvent

	#tag Event
		Sub Close()
		  if RelativeToFolderItem isa FolderItem then
		    if RelativeToFolderItem.Exists then
		      RelativeToFolderItem.Delete
		    end if
		    RelativeToFolderItem = nil
		  end if
		  
		  //
		  // Tear down the BinaryInformationControls
		  //
		  
		  for each bc as BinaryInformationControl in BinaryControls
		    RemoveHandler bc.CheckedChanged, AddressOf HandleBinaryInformationControlCheckedChanged
		  next
		  
		  redim BinaryControls( -1 )
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  RelativeToFolderItem = GetTemporaryFolderItem
		  
		  //
		  // Create binary controls
		  //
		  
		  dim binaryNames() as string = Kaju.UpdateInformation.BinaryNames
		  dim gap as integer = 10
		  dim useTop as integer = 50
		  dim useTop64 as integer = useTop
		  dim useLeft as integer = 15
		  
		  dim tpIndex as integer = 1
		  dim tpIndex64 as integer = 2
		  
		  for i as integer = 0 to binaryNames.Ubound
		    dim binaryName as string = binaryNames( i )
		    
		    dim cc as new BinaryInformationControl
		    cc.BinaryName = binaryName
		    cc.LockLeft = true
		    cc.LockRight = true
		    cc.LockTop = true
		    cc.LockBottom = false
		    'cc.Transparent = false
		    
		    if binaryName.InStr( "64" ) <> 0 then
		      cc.EmbedWithinPanel TabPanel1, tpIndex64, useLeft, useTop64
		      useTop64 = useTop64 + cc.Height + gap
		    else
		      cc.EmbedWithinPanel TabPanel1, tpIndex, useLeft, useTop
		      useTop = useTop + cc.Height + gap
		    end if
		    
		    AddHandler cc.CheckedChanged, AddressOf HandleBinaryInformationControlCheckedChanged
		    
		    BinaryControls.Append cc
		  next
		  
		  AdjustControls()
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function FileClose() As Boolean Handles FileClose.Action
			self.Close
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileSave() As Boolean Handles FileSave.Action
			call DoSave()
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileSaveAs() As Boolean Handles FileSaveAs.Action
			call DoSaveAs()
			Return True
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h21
		Private Sub AdjustControls()
		  if self.Loading then
		    return
		  end if
		  
		  dim trueValue as boolean = lbVersions.ListIndex <> -1
		  
		  dim lastIndex as integer = ControlCount - 1
		  for i as integer = 0 to lastIndex
		    
		    dim c as Control = self.Control( i )
		    dim doIt as boolean
		    if ControlDataField( c ) <> "" then
		      doIt = true
		    elseif c IsA btnStyle then
		      doIt = true
		    elseif c IsA btnList then
		      doIt = true
		    end if
		    
		    if doIt then
		      RectControl( c ).Enabled = trueValue
		    end if
		  next i
		  
		  //
		  // Adjust the outliers that aren't directly set
		  //
		  
		  redim Platforms( -1 )
		  for each bc as BinaryInformationControl in BinaryControls
		    bc.Enabled = trueValue
		    bc.AdjustControls
		    
		    if bc.Enabled and bc.IsChecked then
		      Platforms.Append bc.BinaryName
		    end if
		  next
		  
		  btnDelete.Enabled = trueValue
		  btnDuplicate.Enabled = trueValue
		  
		  btnBreak.Enabled = trueValue
		  
		  //
		  // Set the platform summary
		  //
		  
		  if not trueValue then
		    lblPlatform.Text = ""
		  end if
		  
		  if Platforms.Ubound = -1 then
		    lblPlatform.Italic = true
		    lblPlatform.Text = "No platforms selected"
		  else
		    lblPlatform.Italic = false
		    lblPlatform.Text = join( Platforms, ", " )
		  end if
		  
		  
		  UpdateWindowTitle
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ApplyStyle(tag As String, insertEOL As Boolean = False)
		  dim eol as string = EndOfLine
		  eol = if( insertEOL, eol, "" )
		  
		  tag = tag.Lowercase
		  
		  dim openTag as string = "<" + tag + ">" + eol
		  dim closeTag as string = eol + "</" + tag + ">"
		  
		  dim s as string = fldReleaseNotes.SelText
		  dim selStart as integer = fldReleaseNotes.SelStart
		  
		  fldReleaseNotes.SelText = openTag + s + closeTag
		  if s = "" then // No selection so position the cursor
		    fldReleaseNotes.SelStart = selStart + openTag.Len
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ClearFields()
		  dim savedDirty as boolean = self.ContentsChanged
		  
		  self.Loading = true
		  
		  dim lastIndex as integer = ControlCount - 1
		  for i as integer = 0 to lastIndex
		    dim c as Control = self.Control( i )
		    select case c
		    case IsA TextEdit
		    case IsA CheckBox
		    case IsA PopupMenu
		    else
		      continue for i
		    end
		    
		    ControlValue( c ) = nil
		  next i
		  
		  for each bc as BinaryInformationControl in BinaryControls
		    bc.Clear
		  next
		  
		  hvReleaseNotesPreview.LoadPage( kNoDataHTML, RelativeToFolderItem )
		  hvImagePreview.LoadPage( kNoDataHTML, RelativeToFolderItem )
		  
		  self.Loading = false
		  
		  AdjustControls()
		  self.ContentsChanged = savedDirty
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ControlDataField(c As Control) As String
		  // Returns the DataField field for a control
		  
		  dim value as string
		  
		  select case c
		  case IsA TextEdit
		    dim fld as TextEdit = TextEdit( c )
		    value = fld.DataField
		    
		  case IsA CheckBox
		    dim cb as CheckBox = CheckBox( c )
		    value = cb.DataField
		    
		  case IsA PopUpMenu
		    dim pum as PopupMenu = PopupMenu( c )
		    value = pum.DataField
		    
		  end select
		  
		  return value
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ControlValue(c As Control) As Variant
		  dim r as Variant
		  
		  select case c
		  case IsA TextEdit
		    dim fld as TextEdit = TextEdit( c )
		    r = fld.Text
		    
		  case IsA CheckBox
		    dim cb as CheckBox = CheckBox( c )
		    r = cb.Value
		    
		  case IsA PopupMenu
		    dim pum as PopupMenu = PopupMenu( c )
		    if pum.ListIndex <> -1 then
		      r = pum.List( pum.ListIndex )
		    end if
		    
		  end select
		  
		  return r
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ControlValue(c As Control, Assigns value As Variant)
		  select case c
		  case IsA TextEdit
		    dim fld as TextEdit = TextEdit( c )
		    dim sValue as string = value.StringValue.DefineEncoding( Encodings.UTF8 )
		    fld.Text = sValue
		    
		  case IsA CheckBox
		    dim cb as CheckBox = CheckBox( c )
		    cb.Value = value.BooleanValue
		    
		  case IsA PopupMenu
		    dim pum as PopupMenu = PopupMenu( c )
		    if value.IsNull then
		      pum.ListIndex = 0
		    else
		      for i as integer = pum.ListCount - 1 downto 0
		        if pum.List( i ) = value.StringValue then
		          pum.ListIndex = i
		          exit
		        end if
		      next
		      
		    end if
		    
		  else
		    raise new KeyNotFoundException
		    
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DeleteVersion()
		  dim curIndex as integer = lbVersions.ListIndex
		  if curIndex = -1 then
		    return
		  end if
		  
		  StoreFieldsToVersionRow
		  
		  dim version as Kaju.UpdateInformation = lbVersions.RowTag( curIndex )
		  
		  dim dlg as new MessageDialog
		  dlg.Message = "Really delete version " + version.Version + "?"
		  dlg.Explanation = "This cannot be undone."
		  dlg.ActionButton.Caption = "&Delete"
		  dlg.CancelButton.Visible = true
		  dim btn as MessageDialogButton = dlg.ShowModalWithin( self )
		  if btn is dlg.CancelButton then
		    return
		  end if
		  
		  lbVersions.ListIndex = -1
		  lbVersions.RemoveRow( curIndex )
		  
		  MyKajuFile.KajuData.Remove MyKajuFile.KajuData.IndexOf( version )
		  
		  if curIndex > 0 then
		    curIndex = curIndex - 1
		  end if
		  
		  if curIndex < lbVersions.ListCount then
		    lbVersions.ListIndex = curIndex
		  end if
		  
		  ContentsChanged = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function DoSave() As Boolean
		  StoreFieldsToVersionRow()
		  
		  dim f as FolderItem = Document
		  if f is nil then
		    return DoSaveAs()
		  end if
		  
		  dim savedContentsChanged as boolean = self.ContentsChanged
		  
		  dim r as boolean
		  MyKajuFile.SaveTo( f )
		  r = true
		  ContentsChanged = false
		  
		  Exception err as KajuException
		    self.ContentsChanged= savedContentsChanged
		    ShowValidationError "Save failed!", err
		    
		  Exception err as IOException
		    self.ContentsChanged = savedContentsChanged
		    MsgBox "Save failed!"
		    
		  Finally
		    UpdateWindowTitle
		    return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function DoSaveAs() As Boolean
		  dim ext as string = FileTypes1.KajuDocument.Extensions
		  
		  dim dlg as new SaveAsDialog
		  dlg.PromptText = "Save the Kaju document as:"
		  dlg.Filter = FileTypes1.KajuDocument
		  dlg.SuggestedFileName = "New Version Line" + ext
		  
		  dim f as FolderItem = dlg.ShowModalWithin( self )
		  
		  dim r as boolean
		  if f is nil then
		    r = false
		    
		  elseif f.Directory then
		    MsgBox "You chose a folder."
		    r = false
		    
		  else
		    //
		    // Adjust the name if needed
		    //
		    if not f.Exists then
		      if f.Name.Right( ext.Len ) <> ext then
		        f.Name = f.Name + ext
		      end if
		    end if
		    
		    Document = f
		    r = DoSave()
		  end if
		  
		  UpdateWindowTitle
		  return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DuplicateVersion()
		  dim curIndex as integer = lbVersions.ListIndex
		  if curIndex = -1 then
		    return
		  end if
		  
		  StoreFieldsToVersionRow()
		  
		  dim tag as Variant = lbVersions.RowTag( curIndex )
		  dim infoCopy as new Kaju.UpdateInformation( Kaju.UpdateInformation( tag ) )
		  MyKajuFile.KajuData.Append infoCopy
		  
		  dim listing as string = lbVersions.Cell( curIndex, 0 )
		  dim newIndex as integer = curIndex + 1
		  lbVersions.InsertRow( newIndex, listing )
		  lbVersions.RowTag( newIndex ) = infoCopy
		  lbVersions.ListIndex = newIndex
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub HandleBinaryInformationControlCheckedChanged(sender As BinaryInformationControl)
		  #pragma unused sender
		  
		  AdjustControls()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function IsDataValid() As Boolean
		  StoreFieldsToVersionRow()
		  
		  dim r as boolean = true // Assume it's fine
		  
		  if lbVersions.ListCount = 0 then
		    return r
		  end if
		  
		  dim msg as string
		  dim lastRow as integer = lbVersions.ListCount - 1
		  for row as integer = 0 to lastRow
		    dim u as Kaju.UpdateInformation = lbVersions.RowTag( row )
		    if not u.IsValid then
		      r = false
		      msg = u.InvalidReason
		      lbVersions.ListIndex = row
		      exit for row
		    end if
		  next
		  
		  if not r then
		    MsgBox msg
		  end if
		  
		  return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function MyKajuFile() As KajuFile
		  if mMyKajuFile is nil then
		    mMyKajuFile = new KajuFile
		  end if
		  
		  return mMyKajuFile
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub NewVersion()
		  StoreFieldsToVersionRow()
		  
		  lbVersions.AddRow "1.0.0d1"
		  dim version as new Kaju.UpdateInformation
		  version.Version = lbVersions.Cell( lbVersions.LastIndex, 0 )
		  
		  dim prevIndex as integer = LastVersionRow
		  if prevIndex <> -1 and prevIndex < lbVersions.ListCount then
		    dim prevItem as Kaju.UpdateInformation = lbVersions.RowTag( prevIndex )
		    if prevItem <> nil then
		      version.AppName = prevItem.AppName
		    end if
		  end if
		  
		  MyKajuFile.KajuData.Append version
		  
		  lbVersions.RowTag( lbVersions.LastIndex ) = version
		  lbVersions.ListIndex = lbVersions.LastIndex
		  self.ContentsChanged = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OpenDocument(f As FolderItem)
		  if f is nil or not f.Exists or f.Directory then
		    raise new NilObjectException
		  end if
		  MyKajuFile.Load f
		  
		  dim versions() as Kaju.UpdateInformation = MyKajuFile.KajuData
		  for i as integer = 0 to versions.Ubound
		    dim version as Kaju.UpdateInformation = versions( i )
		    lbVersions.AddRow version.Version
		    lbVersions.RowTag( lbVersions.LastIndex ) = version
		  next i
		  
		  if lbVersions.ListCount <> 0 then
		    lbVersions.ListIndex = 0
		  end if
		  
		  Document = f
		  self.ContentsChanged = false
		  
		  AdjustControls
		  
		  Exception err as RuntimeException
		    select case err
		    case IsA EndException, IsA ThreadEndException
		      //
		      // Pass it on
		      //
		      raise err
		      
		    case else
		      MsgBox "Could not open document."
		      
		      self.Close
		      return
		    end select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ShowValidationError(msg As String, err As RuntimeException)
		  dim mdlg as new MessageDialog
		  mdlg.Message = msg
		  mdlg.Explanation = err.Message
		  mdlg.CancelButton.Visible = false
		  
		  call mdlg.ShowModalWithin self
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub StoreFieldsToVersionRow()
		  if LastVersionRow = -1 or LastVersionRow >= lbVersions.ListCount then
		    return
		  end if
		  
		  dim version as Kaju.UpdateInformation = lbVersions.RowTag( LastVersionRow )
		  
		  //
		  // Gather the textfield data first
		  //
		  
		  dim lastIndex as integer = ControlCount - 1
		  for i as integer = 0 to lastIndex
		    dim c as Control = self.Control( i )
		    
		    dim fieldName as string = ControlDataField( c )
		    if fieldName <> "" then
		      dim value as Variant = ControlValue( c )
		      version.SetByName( fieldName ) = value
		    end if
		    
		  next
		  
		  //
		  // Binaries
		  //
		  
		  for each bc as BinaryInformationControl in BinaryControls
		    
		    dim thisKey as string = bc.BinaryName
		    
		    if bc.IsChecked then
		      dim binary as Kaju.BinaryInformation = bc.GetBinaryInformation
		      version.Binaries.Value( thisKey ) = binary
		    else
		      version.RemoveBinary thisKey
		    end if
		    
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateWindowTitle()
		  dim f as FolderItem = Document
		  if f is nil then
		    self.Title = "Untitled"
		  else
		    dim t as string = f.Name
		    dim ext as string = FileTypes1.KajuDocument.Extensions
		    
		    if t.Right( ext.Len ) = ext then
		      t = t.Left( t.Len - ext.Len )
		    end if
		    
		    self.Title = t
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub VersionToFields(version As Kaju.UpdateInformation)
		  //
		  // Handle the named controls first
		  //
		  
		  dim savedDirty as boolean = self.ContentsChanged
		  
		  ClearFields()
		  
		  self.Loading = true
		  
		  dim lastIndex as integer = ControlCount - 1
		  for i as integer = 0 to lastIndex
		    dim c as Control = self.Control( i )
		    
		    dim fieldName as string = ControlDataField( c )
		    if fieldName <> "" then
		      try
		        ControlValue( c ) = version.GetByName( fieldName )
		      catch err as KeyNotFoundException
		        ControlValue( c ) = nil
		      end try
		    end if
		    
		  next
		  
		  //
		  // Binaries
		  //
		  
		  for each bc as BinaryInformationControl in BinaryControls
		    dim thisKey as string = bc.BinaryName
		    dim binary as Kaju.BinaryInformation = version.Binaries.Lookup( thisKey, nil )
		    bc.Load binary, version.Version
		  next
		  
		  self.Loading = false
		  
		  AdjustControls()
		  self.ContentsChanged = savedDirty
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private BinaryControls() As BinaryInformationControl
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if mDocument is nil then
			    return nil
			  else
			    return mDocument.Resolve
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mDocument = value
			End Set
		#tag EndSetter
		Document As FolderItem
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private LastVersionRow As Integer = -1
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mLoading > 0
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mLoading = mLoading + 1
			  else
			    mLoading = mLoading - 1
			    if mLoading < 0 then
			      mLoading = 0
			    end if
			  end if
			  
			End Set
		#tag EndSetter
		Loading As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mDocument As FolderItemAlias
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLoading As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mMyKajuFile As KajuFile
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Platforms() As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private RelativeToFolderItem As FolderItem
	#tag EndProperty


	#tag Constant, Name = kNoDataHTML, Type = String, Dynamic = False, Default = \"<!-- No data --><BR />", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events lbVersions
	#tag Event
		Sub Change()
		  StoreFieldsToVersionRow
		  
		  dim row as integer = me.ListIndex
		  if row <> -1 and me.RowTag( row ) <> nil then
		    VersionToFields( me.RowTag( row ) )
		  else
		    ClearFields
		  end if
		  
		  LastVersionRow = row
		  
		  AdjustControls()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnNew
	#tag Event
		Sub Action()
		  NewVersion
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnDelete
	#tag Event
		Sub Action()
		  DeleteVersion
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events fldVersion
	#tag Event
		Sub TextChange()
		  if lbVersions.ListIndex = -1 then
		    return
		  end if
		  
		  dim v as string = me.Text.Trim
		  if v = "" then
		    v = "(no version)"
		  end if
		  
		  lbVersions.Cell( lbVersions.ListIndex, 0 ) = v
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events fldReleaseNotes
	#tag Event
		Sub TextChange()
		  objReleaseNotesProcessor.ReleaseNotes = me.Text
		  tmrUpdateReleaseNotesPreview.Mode = Timer.ModeSingle
		  tmrUpdateReleaseNotesPreview.Reset
		  
		  #if TargetWindows then
		    hvReleaseNotesPreview.LoadPage( kNoDataHTML, RelativeToFolderItem )
		    
		    dim releaseNotes as string = ControlValue( fldReleaseNotes ).StringValue
		    hvReleaseNotesPreview.LoadPage releaseNotes, RelativeToFolderItem
		  #endif
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events hvReleaseNotesPreview
	#tag Event
		Function NewWindow() As HTMLViewer
		  return hvNewWindow
		End Function
	#tag EndEvent
	#tag Event
		Function CancelLoad(URL as String) As Boolean
		  return ( not self.Loading )
		  
		  #pragma unused URL
		End Function
	#tag EndEvent
	#tag Event
		Sub DocumentComplete(URL as String)
		  #pragma unused URL
		  
		  self.Loading = false
		End Sub
	#tag EndEvent
	#tag Event
		Sub Error(errorNumber as Integer, errorMessage as String)
		  #pragma unused errorNumber
		  #pragma unused errorMessage
		  
		  break
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events fldImageURL
	#tag Event
		Sub TextChange()
		  tmrUpdateImagePreview.Mode = Timer.ModeSingle
		  tmrUpdateImagePreview.Reset
		  
		  #if TargetWindows then
		    hvImagePreview.LoadPage kNoDataHTML, RelativeToFolderItem
		  #endif
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events hvImagePreview
	#tag Event
		Function NewWindow() As HTMLViewer
		  return hvNewWindow
		End Function
	#tag EndEvent
	#tag Event
		Function CancelLoad(URL as String) As Boolean
		  return ( not self.Loading )
		  
		  #pragma unused URL
		End Function
	#tag EndEvent
	#tag Event
		Sub DocumentComplete(URL as String)
		  #pragma unused URL
		  
		  self.Loading = false
		End Sub
	#tag EndEvent
	#tag Event
		Sub Error(errorNumber as Integer, errorMessage as String)
		  #pragma unused errorNumber
		  #pragma unused errorMessage
		  
		  break
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnStyle
	#tag Event
		Sub Action(index as Integer)
		  dim tag as string = me.Caption
		  ApplyStyle( tag )
		  
		  #pragma unused index
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnBreak
	#tag Event
		Sub Action()
		  fldReleaseNotes.SelText = "<br />" + EndOfLine
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnList
	#tag Event
		Sub Action(index as Integer)
		  dim tag as string = me.Caption
		  ApplyStyle( tag, true )
		  
		  #pragma unused index
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cbPre2Preview
	#tag Event
		Sub Action()
		  tmrUpdateReleaseNotesPreview.Mode = Timer.ModeSingle
		  tmrUpdateReleaseNotesPreview.Reset
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tmrUpdateReleaseNotesPreview
	#tag Event
		Sub Action()
		  self.Loading = true
		  
		  dim releaseNotes as string
		  if cbPre2Preview.Value then
		    releaseNotes = ControlValue( fldReleaseNotes ).StringValue
		  else
		    releaseNotes = objReleaseNotesProcessor.DisplayReleaseNotes
		  end if
		  hvReleaseNotesPreview.LoadPage( releaseNotes, RelativeToFolderItem )
		  
		  //
		  // The htmlViewer will set Loading to false
		  //
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events hvNewWindow
	#tag Event
		Function CancelLoad(URL as String) As Boolean
		  ShowURL( URL )
		  return true
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events btnCopyPublicKey
	#tag Event
		Sub Action()
		  
		  dim c as new Clipboard
		  c.Text = MyKajuFile.PublicKey
		  c.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tmrUpdateImagePreview
	#tag Event
		Sub Action()
		  self.Loading = true
		  
		  hvImagePreview.LoadURL( fldImageURL.Text )
		  
		  //
		  // The htmlViewer will set Loading to false
		  //
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnExport
	#tag Event
		Sub Action()
		  if not IsDataValid() then
		    return
		  end if
		  
		  dim dlg as new SaveAsDialog
		  dlg.PromptText = "Export the file that will be served to your app through your web site:"
		  dlg.ActionButtonCaption = "Export"
		  dlg.SuggestedFileName = MyKajuFile.ExportFilename
		  
		  dim f as FolderItem = dlg.ShowModalWithin( self )
		  if f is nil then
		    return
		  end if
		  
		  MyKajuFile.ExportTo( f )
		  
		  Exception err as KajuException
		    ShowValidationError "Could not export data.", err
		    
		  Exception err As RuntimeException
		    if err isa EndException or err isa ThreadEndException then
		      raise err
		    end if
		    
		    MsgBox "Could not export data."
		    
		    
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnDuplicate
	#tag Event
		Sub Action()
		  DuplicateVersion
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnPreview
	#tag Event
		Sub Open()
		  me.AddRow "Development"
		  me.AddRow "Alpha"
		  me.AddRow "Beta"
		  me.AddRow "Final"
		  
		  me.MenuValue = -1
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  if me.MenuValue = -1 then
		    return
		  end if
		  
		  if not IsDataValid then
		    return
		  end if
		  
		  dim uc as new Kaju.UpdateChecker( App.PrefFolder )
		  uc.AllowedStage = me.MenuValue
		  dim s as string = MyKajuFile.DataToJSON.ToString
		  uc.TestUpdate( s )
		  
		  me.MenuValue = -1
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events objReleaseNotesProcessor
	#tag Event
		Sub ReleaseNotesReceived()
		  tmrUpdateReleaseNotesPreview.Mode = Timer.ModeSingle
		  tmrUpdateReleaseNotesPreview.Reset
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
		EditorType="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=false
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Loading"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="MenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=false
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
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
		Name="Resizeable"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
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
		Name="Title"
		Visible=true
		Group="Appearance"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
