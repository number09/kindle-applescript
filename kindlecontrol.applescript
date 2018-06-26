on run argv
	if (count of argv) > 0 then
		tell application "System Events"
			set front_app to name of (path to frontmost application)
		end tell
		if not front_app = "Kindle.app" then
			tell application "Kindle"
				activate
				tell application "System Events"
					if (item 1 of argv) = "n" then
						key code 124
					else if (item 1 of argv) = "p" then
						key code 123
					end if
				end tell
			end tell
			
			tell application front_app
				activate
			end tell
		end if
	end if
end run