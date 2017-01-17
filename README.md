![Logo](http://www.autogtd.com/wp-content/uploads/2014/12/logo1.png)##IntroductionAutoGTD is a program that helps you implement the Getting Things Done (GTD) methodology in Microsoft Outlook by giving you macros with hotkeys that you can use to quickly organize your email messages to folders under your Inbox. These macros are often activated by pressing a single character or combinations of Key Modifiers such as CTRL/ALT/Shift/Win and a key. There are six main types of macros available in this script: 1. Categorizing Messages – quickly assign categories 2. Archiving Messages – quickly selecting groups of messages and moving them to various folders 3. Search and Move Messages - automatically perform a search and move all matches to a folder4. Jumping to Folders – quickly moving to common folders without needing to use the mouse 5. Shortcuts to Common Tasks – other nice to have shortcuts 6. Set up reminders - quickly set reminders to pop up hours or days from nowIt runs in the System Tray (near the time/date) as a little envelope icon with an orange arrow. ![tray icon](http://www.autogtd.com/wp-content/uploads/2016/09/AutoGTD_16x16.png)AutoGTD does not modify Outlook in any way, it simply activates when you're using Outlook and supplies hotkeys that then trigger the built-in Outlook commands for you.##Features1. Implement the GTD methodology right inside your Outlook.  Flag emails as "to-do's" or create new items in your inbox as a to-do item. Categorize them by Project name with a single keystroke.  Easily move them to a Project's folder. Determine the Next Action and set a reminder per email item. Review your flagged mail items weekly!2. Ability to install or run as a portable app.  This is helpful when your work won't allow you to install anything on the computer.  You can download it, unzip it, and run it from any folder.3. All the hotkeys are customizable with an easy-to-use built-in interface.  Just press CTRL+Shift+Space to open it.4. Open source and available free!  You can modify it and recompile it yourself.##Getting StartedChoose the installer or Portable version and download it.###Installing Just run the setup and it'll install easily.  Then Run it via the Start Menu called AutoGTD.###Portable VersionJust create a directory somewhere such as your Documents folder called AutoGTD and unzip it to that folder.  Then run the AutoGTD.exe file.###Source VersionIf you want to modify or read through the code, you can download the Source version. If you also download AutoHotkey you can run it uncompiled. ##First RunOn first run it'll try to first detect which version of Outlook you're wanting to use.  If multiple versions are detected, it will ask you which version you'd like to use.Then it'll prompt you to open the help file.  It's a bit outdated but most of it should be helpful.Next, identify the tray icon for the app.  It's near the system time/date, sometimes hidden behind the triangle.  Right-click the AutoGTD icon and select "Run AutoGTD on Startup."  This will make it so every time you restart your computer, it will automatically start AutoGTD, so it will always be there for you.Now we're ready to begin.  Press CTRL+Shift+Space at the same time and you will see the currently mapped hotkeys on the Cheat Sheet.![Cheat Sheet](http://www.autogtd.com/wp-content/uploads/2014/12/CheatSheet.png =500x)Take some time to review the hotkeys you have available to you and their default keyboard shortcuts.  Often you can initiate a hotkey without a "modifier" key such as CTRL/ALT/Shift/Win.  For example, to simply archive an email to a folder called Archive, you could map the key "a" by itself.  So if you've got an email selected in your inbox, just press "a" and AutoGTD will move it to the Archive folder for you.##Customizing the HotkeysYou may decide to learn the default set of hotkeys or you may want to customize them.  If you decide you would like to customize them, just open the Cheat Sheet by either double-clicking on the tray icon or by pressing CTRL+Shift+Space.  Then you can click Change Hotkeys.A new window will open, with an interface to let you change any hotkey and in some cases, the action it performs.When you are done, scroll to the bottom and click Save and Reload.  All of the changes are written to a AutoGTD.ini file located in one of two directories.If you have installed the application via the Setup file, then it will be located here:`C:\Users\[user]\AppData\Roaming\AutoGTD\AutoGTD.ini`If you are running the Portable version or the Source version, it will be in the same directory as the program called: `AutoGTD.ini`While you can hand-edit this file, hopefully the built-in interface is sufficiently easy to use.  Also, knowing where this file is allows you to back up your configuration to move it to a new computer.*Note: when installing updates, the AutoGTD.ini file is not overwritten.*