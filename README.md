# PowerShell-Snippets
A collection of .ps1 and .ps1xml files containing useful code snippets for PowerShell

## Use Case:
The files found in this repository and outlined in this document are snippets of PowerShell code that I have found to be
useful for various reasons on various PowerShell scripting projects.  Some of these I have found to be useful as pieces of code
in scripts I was working on (either directly as written or built in as functions to call later on), and others I have found to be
more useful as functions in my PowerShell profile to perform certain tasks on an as needed basis.  For each set of code, there should 
be two files in the repository, a `.ps1` file and a `.snippets.ps1xml` file.  The `.ps1` files are Powershell files containing the
code snips.  The `.snippets.ps1xml` files are used in conjunction with the Powershell ISE in order to create shortcuts for placing
custom code into the scripts you are working on.  In order to make use of the `.snippets.ps1xml` files, they must be placed in the
`%USERPROFILE%\Documents\WindowsPowerShell\Snippets` directory of the system on which you are using the Powershell ISE.

## Snippets:
[Powershell-Script_Documentation](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/README.md#powershell-script_documentation "Powershell-Script_Documentation")  
[Powershell-Verify_Admin](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/README.md#powershell-verify_admin "Powershell-Verify_Admin")  
[Powershell-Custom_Object](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/README.md#powershell-custom_object "Powershell-Custom_Object")  
[Powershell-Export_Loop](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/README.md#powershell-export_loop "Powershell-Export_Loop")  
[Powershell-Loop_Label](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/README.md#powershell-loop_label "Powershell-Loop_Label Documentation")  


### Powershell-Script_Documentation
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
[Powershell-Script_Documentation.ps1](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/Powershell-Script_Documentation.ps1)  
[Powershell-Script_Documentation.snippets.ps1xml](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/Powershell-Script_Documentation.snippets.ps1xml)  


### Powershell-Verify_Admin
#### Description:
This piece of code allows a script to verify that it is running in a Powershell instance that was started in an administrator context
within Windows.  If it is determined that the shell is not running in an administrator context, it will write a message to the host 
informing the user that the script is not running as an administrator, requesting that it be re-run from an administrator context, and
then issues a break command to prevent the script from continuing to run.
#### Use Case:
This can be particularly useful when running scripts which will be pulling data or making modifications to systems they are running on
where those changes require Administrator level UAC access.  
#### Related Files:
[Powershell-Verify_Admin.ps1](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/Powershell-Verify_Admin.ps1)  
[Powershell-Verify_Admin.snippets.ps1xml](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/Powershell-Verify_Admin.snippets.ps1xml)  


### Powershell-Custom_Object
#### Description:
This code will create a custom object from specified data that is already stored in variables in the Powershell session.
#### Use Case:
This particular piece of code is useful when a script has gathered information from multiple sources and there is a need to have that
data manipulated as a single object or seamlessly exported to an output file in a consistant fashion.
#### Related Files:
[Powershell-Custom_Object.ps1](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/Powershell-Custom_Object.ps1)  
[Powershell-Custom_Object.snippets.ps1xml](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/Powershell-Custom_Object.snippets.ps1xml)  


### Powershell-Export_Loop
#### Description:
This piece of code will use a Try/Catch loop to catch disk write failures while exporting an object to a CSV file, notify the user of
any write failure, and sleep for five seconds before trying again.

#### Use Case:
This is particularly useful when a script exports to a file that may be shared, opened by a user to verify progress, or saved to a
directory that has a regular synchronization feature associated with it (OneDrive, Box, and Dropbox folders) which will temporarily
lock write access to the file.  Using this loop will prevent the script from continuing its operations until it has successfully
written the required data to the output file.

#### Related Files:
[Powershell-Export_Loop.ps1](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/Powershell-Export_Loop.ps1)  
[Powershell-Export_Loop.snippets.ps1xml](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/Powershell-Export_Loop.snippets.ps1xml)  

### Powershell-Loop_Label
#### Description:
This piece of code will assign a label to a `Do`, `Foreach`, `For`, or `While` loop.

#### Use Case:
This is particularly useful when a script is running a series of loops, or a single loop with multiple possible exits and a way
to break the parent loop from within a child loop needs to be established.  A `Break` command can be used in conjunction with a
loop label to specify what label is broken by the `Break` command.

#### Related Files:
[Powershell-Loop_Label.ps1](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/Powershell-Loop_Label.ps1)  
[Powershell-Loop_Label.snippets.ps1xml](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/Powershell-Loop_Label.snippets.ps1xml)  
