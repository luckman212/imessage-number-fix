![bad](bad.png)

## iMessage (Messages) numbers-only fix

This is a simple sledgehammer approach to fix a bug in macOS Big Sur that causes Notifications from Messages.app to display only the phone number for incoming messages (not the name from your Address Book).

The script restarts (kickstarts) a handful of core services that, through trial and error, I determined to be associated with the local AddressBook database. This script was tested on macOS 11.4, on an Intel Mac Mini.

> ***N.B.*** Existing notifications are not updated, this only affects notifications that come in _after_ the script has been run.

## Setup

1. Download the `imessage_number_fix.sh` script above, or clone this repo.
2. Copy the script to a directory in your `$PATH` e.g. `/usr/local/bin`
3. Open a Terminal
4. Type `chmod u+x /usr/local/bin/imessage_number_fix.sh`

## Usage

Whenever you encounter this bug, run the script by typing `imessage_number_fix.sh` in a Terminal.

## Related Discussion

- [Messages.app notification only shows contact number instead of contact names on macOS - Ask Different](https://apple.stackexchange.com/questions/407109/messages-app-notification-only-shows-contact-number-instead-of-contact-names-on)
