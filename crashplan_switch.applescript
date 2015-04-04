(* http://hints.macworld.com/article.php?story=20110124224322791 contributed by SOX *)
try
	set theResult to do shell script "
		if sudo launchctl list | grep com.crashplan.engine; then
			sudo launchctl stop com.crashplan.engine && sudo launchctl unload /Library/LaunchDaemons/com.crashplan.engine.plist
		else
			sudo launchctl load /Library/LaunchDaemons/com.crashplan.engine.plist && sudo launchctl start com.crashplan.engine
		fi
		" with administrator privileges
	
	if theResult is "" then
		set theMessage to "CrashPlan Engine started"
	else
		set theMessage to "CrashPlan Engine stopped"
	end if
	
	display dialog theMessage buttons "OK" with title "CrashPlan Switch" with icon note
	
on error theError
	display dialog "Error: " & theError buttons "OK" with icon caution with title "CrashPlan Switch"
end try