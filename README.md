# ACI-Blocklist
A blocklist of problematic Signal ACIs

## What is this?
The ACI is the permanent identifier of a signal user. Unlike the safety-number, it doesn't change.

This makes it the only permanent identifier usable to detect and block known malicious actors like Spam Bots or Scrapers.

## How to contribute
You currently need Signal Desktop and Developer tools to get the ACI.

When using the stable version of Signal Desktop, launch it with the option `--enable-dev-tools`. You can copy the .desktop entry to `~/.local/share/applications` to always enable it. KDE Plasma has a graphical editor for this, on GNOME you can use an extension to open the .desktop entry as a text file, make sure to save it to the per user location.

Then open a chat with the user you want the ACI of, and execute in the console: SignalDebug.getSelectedConversation().serviceId
