#!/usr/bin/env bash

declare -a xpcArr=(
	gui/$UID/com.apple.AddressBook.abd
	gui/$UID/com.apple.AddressBook.AssistantService
	gui/$UID/com.apple.AddressBook.ContactsAccountsService
	gui/$UID/com.apple.AddressBook.SourceSync
	gui/$UID/com.apple.assistant_service
	gui/$UID/com.apple.assistantd
	gui/$UID/com.apple.CallHistorySyncHelper
	gui/$UID/com.apple.ContactsAgent
	gui/$UID/com.apple.iCloudNotificationAgent
	gui/$UID/com.apple.imagent
	gui/$UID/com.apple.imautomatichistorydeletionagent
	gui/$UID/com.apple.notificationcenterui.agent
	gui/$UID/com.apple.telephonyutilities.callservicesd
	gui/$UID/com.apple.usernoted
	gui/$UID/com.apple.UserNotificationCenterAgent
	user/$UID/com.apple.imdpersistence.IMDPersistenceAgent
)

for d in "${xpcArr[@]}"; do
	echo -n "restarting $d"
	read -r PID < <(launchctl kickstart -kp "$d" 2>/dev/null)
	if [ -n "$PID" ]; then
		echo " ✔ [$PID]"
	else
		echo " ✘"
	fi
done
