:: Created by: Scott Grivner
:: Website: scottgrivner.dev

:: Place the IP or URL in the command below, change the path below to where you want your log file to be with the output.

:: Ping Flags:
:: -t	Pings the specified host until stopped. To stop - type Control-C
:: -a	Resolve adresses to hostnames
:: -n   Number of echo requests to send
:: -l 	Send buffer size
:: -f	Set Don't Fragmet flag in packet (IPv4-only)
:: -i	Set Time To Live
:: -v	Set Type of Service (Setting has been deprecated)
:: -r	Record route for count hops (IPv4-only)
:: -s	Timestamp for count hops (IPv4-only)
:: -j	Loose source route along host-list (IPv4-only)
:: -k	Strict source route along host-list (IPv4-only)
:: -w	Timeout in milliseconds to wait for each reply
:: -R	Use routing header to test reverse route also (IPv6-only, deprecated per RFC 5095)
:: -S	Source address to use
:: -c	Routing compartment identifier
:: -p	Ping a Hyper-V Network Virtualization provider address
:: -4	Force using IPv4
:: -6	Force using Ipv6

:BEGIN
PING -n 10 -w 1000 127.0.0.1
IF %ERRORLEVEL%==0 (
ECHO %DATE% %TIME% Success>>C:\File_Path\Your_Log.log
GOTO BEGIN
)
IF %ERRORLEVEL%==1 (
ECHO %DATE% %TIME% Fail>>C:\File_Path\Your_Log.log
GOTO BEGIN
)