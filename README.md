# ACI-Blocklist
A blocklist of problematic Signal ACIs

## What is this?
The ACI is the permanent identifier of a signal user. Unlike the safety-number, it doesn't change.

This makes it the only permanent identifier usable to detect and block known malicious actors like Spam Bots or Scrapers.

## How to contribute
You currently need Signal Desktop and Developer tools to get the ACI / ServiceID.

### Launch parameter
When using the stable version of Signal Desktop, launch it with the option `--enable-dev-tools`. You can copy the .desktop entry to `~/.local/share/applications` to always enable it. KDE Plasma has a graphical editor for this, on GNOME you can use an extension to open the .desktop entry as a text file, make sure to save it to the per user location.

Like this

```
# Flatpak
cp /var/lib/flatpak/exports/share/applications/org.signal.Signal.desktop ~/.local/share/applications/

# System app
cp /usr/share/applications/org.signal.Signal.desktop ~/.local/share/applications/
```

Change the `Exec=` line like this

```
# Flatpak
Exec=flatpak run --branch=stable --arch=x86_64 --command=signal-desktop --file-forwarding org.signal.Signal --enable-dev-tools  @@u %U @@
# or short
Exec=flatpak run --command=signal-desktop --file-forwarding org.signal.Signal --enable-dev-tools

# System app (roughly)
Exec=signal-desktop --enable-dev-tools 
```

### Inside the app
Then open a chat with a single user you want the ACI of. This does not work in group chats

The developer console is opened with `Ctrl + Shift + i`. In there, navigate to the "Console".

Input this and press Enter: `SignalDebug.getSelectedConversation().serviceId`

You might need to write it manually, as the silly developer console prevents copy-pasting.

![Screenshot](https://raw.githubusercontent.com/Whatnoww/ACI-Blocklist/refs/heads/main/Get-ServiceID.jpeg)
