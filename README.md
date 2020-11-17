# powershell-shutdown

This script is designed to shut down Windows servers in a certain predefined order. e.g. note that the application server first disconnects and shuts down its connection to the database server before the database server itself is shut down.

## FEATURES
* Shutdown of remote Windows systems with ```Stop-Computer```
* Validate the online status with ```Test-Connection``` (ICMP reply / PING)
* The next system is shutdown only after successful shutdown-validation of the previous one

## FILES
The solution consists of the following files:
* shutdown_datacenter.bat : The startscript to be executed which generates a menu to select which datacenter should be shutdown.
* shutdown_datacenter_1.ps1 : The actual powershell script to shutdown the systems  per datacenter. Also here a menu is generated to select server systems clustered by their roles.
* library.ps1 : A collection of functions used in the powershell scripts.

## LICENSE
poweshell-shutdown and all individual scripts are under the BSD 3-Clause license unless explicitly noted otherwise. Please refer to the LICENSE
