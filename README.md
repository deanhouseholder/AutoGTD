![Logo](http://www.autogtd.com/wp-content/uploads/2014/12/logo1.png)

## Introduction
AutoGTD is a program that helps you implement the Getting Things Done (GTD) methodology in Microsoft Outlook by giving you macros with hotkeys that you can use to quickly organize your email messages to folders under your Inbox. These macros are often activated by pressing a single character or combinations of Key Modifiers such as CTRL/ALT/Shift/Win and a key. 

There are six main types of macros available in this script: 

1. Categorizing Messages – quickly assign categories 

2. Archiving Messages – quickly selecting groups of messages and moving them to various folders 

3. Search and Move Messages - automatically perform a search and move all matches to a folder

4. Jumping to Folders – quickly moving to common folders without needing to use the mouse 

5. Shortcuts to Common Tasks – other nice to have shortcuts 

6. Set up reminders - quickly set reminders to pop up hours or days from now

It runs in the System Tray (near the time/date) as a little envelope icon with an orange arrow. ![tray icon](http://www.autogtd.com/wp-content/uploads/2016/09/AutoGTD_16x16.png)

AutoGTD does not modify Outlook in any way, it simply activates when you're using Outlook and supplies hotkeys that then trigger the built-in Outlook commands for you.

## Features

1. Implement the GTD methodology right inside your Outlook.  Flag emails as "to-do's" or create new items in your inbox as a to-do item. Categorize them by Project name with a single keystroke.  Easily move them to a Project's folder. Determine the Next Action and set a reminder per email item. Review your flagged mail items weekly!

2. Ability to install or run as a portable app.  This is helpful when your work won't allow you to install anything on the computer.  You can download it, unzip it, and run it from any folder.

3. All the hotkeys are customizable with an easy-to-use built-in interface.  Just press CTRL+Shift+Space to open it.

4. Open source and available free!  You can modify it and recompile it yourself.

## Getting Started
Choose the installer or Portable version and download it.

### Installing 
Just run the setup and it'll install easily.  Then Run it via the Start Menu called AutoGTD.

### Portable Version
Just create a directory somewhere such as your Documents folder called AutoGTD and unzip it to that folder.  Then run the AutoGTD.exe file.

### Source Version
If you want to modify or read through the code, you can download the Source version. If you also download AutoHotkey you can run it uncompiled. 

## First Run
On first run it'll try to first detect which version of Outlook you're wanting to use.  If multiple versions are detected, it will ask you which version you'd like to use.

Then it'll prompt you to open the help file.  It's a bit outdated but most of it should be helpful.

Next, identify the tray icon for the app.  It's near the system time/date, sometimes hidden behind the triangle.  Right-click the AutoGTD icon and select "Run AutoGTD on Startup."  This will make it so every time you restart your computer, it will automatically start AutoGTD, so it will always be there for you.

![Tray menu](http://www.autogtd.com/wp-content/uploads/2014/12/Task-Traybar-Icon-250.png)

## Assigning Categories
If you use Categories in your workflow, here's where you set them up.  Press `F2` (by default the hotkey to launch the Category Editor in Outlook.) From here you should define the categories you want to use.  GTD would propose the following:

* !Next (for Next Action)
* @Agenda (something to remember when meeting with someone else)
* @Computer
* @Home
* @Phone
* @Read/Review (something you need to spend some time reviewing)
* @Reference (keep for reference)
* @Someday (your Someday/Maybe? list)
* @Waiting (you're waiting on someone else)
* [Your Projects] (you should also make Categories for the various Projects you have for your job)

Outlook allows you to assign `CTRL+F3 - CTRL+F12` keys to the main Categories you want to use via a hotkey.  But `CTRL+F8`, for example, is not a very keyboard-friendly shortcut.  How about just `1` or `4`.  AutoGTD allows you to pick any keyboard shortcut for these 10 categorization macros, so I just use 0-9 for mine.

## Cheat Sheet
Now we're ready to begin.  Press CTRL+Shift+Space at the same time and you will see the currently mapped hotkeys on the Cheat Sheet.

![Cheat Sheet](http://www.autogtd.com/wp-content/uploads/2014/12/CheatSheet.png)

Take some time to review the hotkeys you have available to you and their default keyboard shortcuts.  Often you can initiate a hotkey without a "modifier" key such as CTRL/ALT/Shift/Win.  For example, to simply archive an email to a folder called Archive, you could map the key "a" by itself.  So if you've got an email selected in your inbox, just press "a" and AutoGTD will move it to the Archive folder for you.

## Customizing the Hotkeys
You may decide to learn the default set of hotkeys or you may want to customize them.  If you decide you would like to customize them, just open the Cheat Sheet by either double-clicking on the tray icon or by pressing CTRL+Shift+Space.  Then you can click Change Hotkeys.

A new window will open, with an interface to let you change any hotkey and in some cases, the action it performs.

When you are done, scroll to the bottom and click Save and Reload.  All of the changes are written to a AutoGTD.ini file located in one of two directories.

If you have installed the application via the Setup file, then it will be located here:
`C:\Users\[user]\AppData\Roaming\AutoGTD\AutoGTD.ini`

If you are running the Portable version or the Source version, it will be in the same directory as the program called: `AutoGTD.ini`

While you can hand-edit this file, hopefully the built-in interface is sufficiently easy to use.  Also, knowing where this file is allows you to back up your configuration to move it to a new computer.

*Note: when installing updates, the AutoGTD.ini file is not overwritten. Also, if you feel you've messed up this file and would like to return to use the default settings, simply delete this file and restart AutoGTD.  It will regenerate the file if it's missing.*

## Executing your first Search and Move macro
On the Cheat Sheet, you may have noticed the **Bulk-Move Emails to Folders Hotkeys**.  This allows you to execute a search, optionally mark as read, and then move the matches to a folder of your choice.

![Bulk-move emails to a folder](http://www.autogtd.com/wp-content/uploads/2017/01/Bulk-Move-Emails-to-Folders.png)

This image shows for example the search: `read:yes hasflag:no OR followupflag:completed`.  This means: "Get all emails which I have read and which are either not flagged or are marked as completed."  This is a very useful macro to bulk move those emails to an Archive folder.  This is one that I execute probably every hour on my email to just clear the deck and let me see and focus on what is either unread or flagged.

[This page](https://support.office.com/en-us/article/Find-a-message-or-item-with-Instant-Search-69748862-5976-47b9-98e8-ed179f1b9e4d) shows a few ways you can search Outlook, including Advanced Find.  This will help you build out the search string you'd like to use.  Then copy it and use it in AutoGTD.

## GTD Workflow
The beauty of GTD is the ability to customize your workflow.  Here's a peek into the way I manage my emails.

I start with an Inbox which is full of unread messages.  I quickly scan through each one and determine if it's something I need to do something about or not.  If not, I simply mark it as read with `CTRL+q`.  If it's something I need to do something about, I flag it by pressing `s`. *(The hotkey `s` comes from the Gmail keyboard shortcut for Star a message and I thought it was a convenient key to use for Outlook.)* Also, if it belongs to a Project, I'll categorize it by pressing `0-9` to assign the associated category. If it will take me longer than 10 seconds to read, I leave it unread, otherwise I read it and then mark it as read.  Once I've processed the inbox doing this "quick scan" method, I press ``ALT+` `` to execute the Bulk-Move emails to an Archive folder which I mentioned in the previous section.

Then I start back at the oldest message and work my way to the newest message, reading each email which I hadn't read. I may then take actions such as replying, filing away information into the appropriate system, researching an answer, etc. If I have taken the Next Action on the email and if there are no further actions, I will press `s` to then mark the flag as Completed.  I will continue processing my inbox based on priority in this manner.  After a while, let's say I've got 5-10 emails marked as "completed", I will press ``ALT+` `` again to clear the deck once again.

GTD reminds us that we should be defining the next physical action we would take to complete the task.  With that in mind, AutoGTD provides a great macro for this.  Let's say you have an ambiguous email titled "Kick-Off 2017 Planning" but that doesn't tell you what Next Action you need to do.  So you can just highlight that email, and press `CTRL+t` to create a new Task in your inbox which you can name whatever you want.  AutoGTD will prompt you for the new title and will suggest you to write starting with a Verb such: Call, Email, Write, Research, Brainstorm, Talk to, Schedule, Plan, etc. Then you might write "Brainstorm a list of goals for 2017". Next, AutoGTD will prompt you to select any Categories which this new task should have.  Finally it will embed the previous message within the body of the task for your reference and save it to your current folder.

Eventually I'll end up with several flagged emails in my inbox and not be able to do them right away.  Here's where GTD says nothing should remain in your inbox except what's new.  Once you've processed your Inbox, it should be moved to project folders.  I use categories instead of project folders, as discussed above, and so I just use a single, simple Action folder which contains all the work which I still need to do.  I invoke another Bulk-Move macro `Shift+a` to run the search for all flagged emails and move them to the Action folder.

Now my inbox is empty.  *&ast;sigh&ast;* Doesn't that feel nice?  Well, it might seem like we're done, but now we have to have the discipline to move to the Action folder and work out of that. Don't neglect this folder.  Don't start working out of your inbox and forget the items you've moved to this folder. These macros make it easy to manage your email so you can keep up the system instead of letting your email get out of control.

Sometimes your boss will invariably walk up to your desk and talk to you in person to give you a task. When this happens, don't ask him to follow up with an email so it gets in your inbox.  Instead you capture it with `Shift+n`. Remember to begin any task with a verb of what you are going to need to physically do to complete the task.

**Protip:** Instead of just using Flags for emails, you can also use Flag with Reminders!  See the 3rd column of the AutoGTD Cheat Sheet.




