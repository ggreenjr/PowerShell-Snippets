# PowerShell-Snippets
A collection of .ps1 and .ps1xml files containing useful code snippets for PowerShell

## Summary:
The files found in this repository and outlined in this document are snippets of PowerShell code that I have found to be
useful for various reasons across multiple PowerShell scripting projects.  Some of these I have found to be useful as pieces of code
in scripts I was working on (either directly as written or built in as functions to call later on), some I have found to be more 
useful as functions in my PowerShell profile to perform certain tasks on an as needed basis, and others I have found useful in both of
the aforementioned scenarios.  For each snippet of code, there should be two files in the repository, a `.ps1` file and a 
`.snippets.ps1xml` file.  The `.ps1` files are Powershell files containing the code snips.  The `.snippets.ps1xml` files are used in
conjunction with the Powershell ISE in order to create shortcuts for placing custom code into the scripts you are working on.  
To make use of `.snippets.ps1xml` files, they must be put in the `%USERPROFILE%\Documents\WindowsPowerShell\Snippets` 
directory of the system on which you are using the Powershell ISE.  It is my hope that you will find these bits as useful as I have.

## Snippets:
[PS-Script_Documentation](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/README.md#ps-script_documentation "PS-Script_Documentation")  
[PS-Verify_Admin](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/README.md#ps-verify_admin "PS-Verify_Admin")  
[PS-Custom_Object](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/README.md#ps-custom_object "PS-Custom_Object")  
[PS-Export_Loop](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/README.md#ps-export_loop "PS-Export_Loop")  
[PS-Loop_Label](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/README.md#ps-loop_label "PS-Loop_Label Documentation")  
[ExchPS-Connect_Server](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/README.md#exchps-connect_server "ExchPS-Connect_Server Documentation")  
[ExchPS-Disconnect_Server](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/README.md#exchps-disconnect_server "ExchPS-Disconnect_Server Documentation")  
[ExchPS-Database_Info](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/README.md#exchps-database_info "ExchPS-Database_Info Documentation")  

### PS-Script_Documentation
#### Description:
This piece of simple code will comment out any notes that you might want to put in your scripts without having to place a `#` at the
beginning of each line, effectively turning everything between the `<#` and `#>` brackets into a text box for comments.
#### Use Case:
I find this documentation style to be very useful in any script that is more than just a couple lines, or when there is an answer
file or an output file involved in the execution of the script.  It allows for documentation of the type of answer file that is needed
along with any particular headers that the script is expecting to see in the answer file.  Additionally it allows for easy documentation
of the output files and expected fields within them, script requirements, purpose and any general notes about the execution of the
script at the very top of it.  This documentation is particularly helpful and can save large amounts of time when you have a script
that gets run only occasionally and required answer files may not be readily available, or is being run on a machine that does not
usually run it.
#### Related Files:
[PS-Script_Documentation.ps1](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/Powershell/PS-Code/PS-Script_Documentation.ps1)  
[PS-Script_Documentation.snippets.ps1xml](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/Powershell/ISE-Snippets/PS-Script_Documentation.snippets.ps1xml)  


### PS-Verify_Admin
#### Description:
This piece of code allows a script to verify that it is running in a Powershell instance that was started in an administrator context
within Windows.  The previous version of the code has been replaced with a "Requires" statement that should be placed at the top of the script.
#### Use Case:
This can be particularly useful when running scripts which will be pulling data or making modifications to systems they are running on
where those changes require Administrator level UAC access.
#### Related Files:
[PS-Verify_Admin.ps1](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/Powershell/PS-Code/PS-Verify_Admin.ps1)  
[PS-Verify_Admin.snippets.ps1xml](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/Powershell/ISE-Snippets/PS-Verify_Admin.snippets.ps1xml)  


### PS-Custom_Object
#### Description:
This code will create a custom object from specified data that is already stored in variables in the Powershell session.
#### Use Case:
This particular piece of code is useful when a script has gathered information from multiple sources and there is a need to have that
data manipulated as a single object or seamlessly exported to an output file in a consistant fashion.
#### Related Files:
[PS-Custom_Object.ps1](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/Powershell/PS-Code/PS-Custom_Object.ps1)  
[PS-Custom_Object.snippets.ps1xml](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/Powershell/ISE-Snippets/PS-Custom_Object.snippets.ps1xml)  


### PS-Export_Loop
#### Description:
This piece of code will use a Try/Catch loop to catch disk write failures while exporting an object to a CSV file, notify the user of
any write failure via the warning pipeline, and sleep for five seconds before trying again.
#### Use Case:
This is particularly useful when a script exports to a file that may be shared, opened by a user to verify progress, or saved to a
directory that has a regular synchronization feature associated with it (OneDrive, Box, and Dropbox folders) which will temporarily
lock write access to the file.  Using this loop will prevent the script from continuing its operations until it has successfully
written the required data to the output file.
#### Related Files:
[PS-Export_Loop.ps1](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/Powershell/PS-Code/PS-Export_Loop.ps1)  
[PS-Export_Loop.snippets.ps1xml](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/Powershell/ISE-Snippets/PS-Export_Loop.snippets.ps1xml)  

### PS-Loop_Label
#### Description:
This piece of code will assign a label to a `Do`, `Foreach`, `For`, or `While` loop.
#### Use Case:
This is particularly useful when a script is running a series of loops, or a single loop with multiple possible exits and a way
to break the parent loop from within a child loop needs to be established.  A `Break` command can be used in conjunction with a
loop label to specify what label is broken by the `Break` command.
#### Related Files:
[PS-Loop_Label.ps1](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/Powershell/PS-Code/PS-Loop_Label.ps1)  
[PS-Loop_Label.snippets.ps1xml](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/Powershell/ISE-Snippets/PS-Loop_Label.snippets.ps1xml)  


### ExchPS-Connect_Server
#### Description:
This piece of code will allow a script to prompt the user for credentials and then connect seamlessly to an Exchange Powershell session
prior to execution of commands without a user needing to know how to connect to the Exchange environment via Powershell.  It will also
verify that no Exchange PS Session is currently in use prior to execution a connection request in order to avoid duplication of sessions
and error messages for the user.
#### Use Case:
This is particularly useful when a script needs to be as simple as possible for the user of a script, or when automation and minimal
interaction with the Exchange shell is desired.  Ideally this piece of code will be used in conjunction with `ExchPS-Disconnect_Server`
so that the Exchange shell is not still loaded in the Powershell session upon the script's completion.
#### Related Files:
[ExchPS-Connect_Server.ps1](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/Exchange-Powershell/PS-Code/ExchPS-Connect_Server.ps1)  
[ExchPS-Connect_Server.snippets.ps1xml](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/Exchange-Powershell/ISE-Snippets/ExchPS-Connect_Server.snippets.ps1xml)  


### ExchPS-Disconnect_Server
#### Description:
This piece of code will allow a script to look for any open Exchange shell connections and close them but will only close them if the "NewConnection" variable is set to a value of "Yes"
#### Use Case:
This is particularly useful when used with `ExchPS-Connect_Server` so that an Exchange shell which is opened by a script or a function
is automatically closed upon the completion of that script or function and not available for continued interactive use.
#### Related Files:
[ExchPS-Disconnect_Server.ps1](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/Exchange-Powershell/PS-Code/ExchPS-Disconnect_Server.ps1)  
[ExchPS-Disconnect_Server.snippets.ps1xml](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/Exchange-Powershell/ISE-Snippets/ExchPS-Disconnect_Server.snippets.ps1xml)  


### ExchPS-Database_Info
#### Description:
This piece of code will enumerate all of the databases in a connected Exchange environment and build an array of objects representing
each database with commonly needed/referenced values for each database including database name, mount status, file paths, log paths,
size and available space as integers, circular logging status, etc.  The array can then be manipulated in the pipeline to be used in
conjunction with other objects to output information required.

#### Use Case:
This is useful for quickly identifying important information for all mailbox databases in the connected Exchange environment and
aggregating that data into a single object.

#### Related Files:
[ExchPS-Database_Info.ps1](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/Exchange-Powershell/PS-Code/ExchPS-Database_Info.ps1)  
[ExchPS-Database_Path.snippets.ps1xml](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/Exchange-Powershell/ISE-Snippets/ExchPS-Database_Info.snippets.ps1xml)  
