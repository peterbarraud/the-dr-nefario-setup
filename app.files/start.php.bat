ECHO off

SET phpport=<unused port number>
SET servicesdir=<path to REST services dir>
SET phpdir=<path to php.min>

ECHO Running PHP on PORT %phpport%

%phpdir%\php -S localhost:%phpport% -t %servicesdir% -c %phpdir%\php.ini || (
	pause
)
