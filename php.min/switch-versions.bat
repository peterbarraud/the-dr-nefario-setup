echo off
if not exist ext (
	md ext
)
if exist php7.dll (
	del *.exe
	del *.phar
	del *.dll
	del *.ini
	del ext\*.dll
	copy php5\*.* .
	copy php5\ext\*.* ext
	echo "Switched to PHP5"
) else (
	del *.exe
	del *.dll
	del *.ini
	del ext\*.dll
	copy php7\*.* .
	copy php7\ext\*.* ext
	echo "Switched to PHP7"
)

pause