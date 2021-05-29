## iMessage (Messages) numbers-only fix

This is a simple sledgehammer approach to fix a bug in macOS Big Sur that causes Notifications from Messages.app to display only the phone number for incoming messages (not the name from your Address Book).

It simply restarts (kickstarts) a bunch of core services that, through trial and error, I determined to be associated with the local AddressBook database.

Existing notifications are not updated, this only affects notifications that come in _after_ the script has been run.

## Usage

1. Copy the script to a directory in your `$PATH` - I suggest `/usr/local/bin`
2. Open a Terminal
3. Type `chmod u+x /usr/local/bin/imessage_number_fix.sh`
4. You can now run the script whenever needed, by typing `imessage_number_fix.sh` in a Terminal.

## Related Discussion

- [Messages.app notification only shows contact number instead of contact names on macOS - Ask Different](https://apple.stackexchange.com/questions/407109/messages-app-notification-only-shows-contact-number-instead-of-contact-names-on)
