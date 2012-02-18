# CrashPlan Switch

CrashPlan Switch is a Mac-only application that switches CrashPlan's background process on or off. Just run the app and it'll detect whether the CrashPlan process is running. If so, the process is stopped and will remain off until you run CrashPlan Switch again or reboot.

[Download CrashPlan Switch](https://github.com/lhagan/CrashPlan-Switch/zipball/master)

## Why

Even if you're not connected to the internet or you've paused backups in the CrashPlan interface, the CrashPlan background process is still running and using up CPU cycles. By switching off CrashPlan when you don't need it (for example, when on an airplane), you're extending your battery life by reducing CPU activity.

## How

CrashPlan Switch is just a simple AppleScript application that sends commands to launchctl to start and stop the CrashPlan process. If there's another background process that you want to manually control, you can easily modify the script to work with just about anything that's managed by launchd.


