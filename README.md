# PowerShell-Snippets
A collection of .ps1 files containing useful code snippets for PowerShell

## Use Case:

The script files found in this repository and outlined in this document are snippets of PowerShell code that I have found to be
useful for various reasons on various PowerShell scripting projects.  Some of these I have found to be useful as pieces of code
in scripts I was working on (either directly as written or built in as functions to call later on), and others I have found to be
more useful as functions in my PowerShell profile to perform certain tasks on an as needed basis.  Please feel free to browse the
library, borrow any pieces that you find useful, and provide feedback if you feel so inclined.

## Snippets:
[Powershell-Script_Documentation](https://github.com/ggreenjr/PowerShell-Snippets/README###Powershell-Script_Documentation "Powershell-Script_Documentation")  
[Powershell-Verify_Admin](https://github.com/ggreenjr/PowerShell-Snippets/README###Powershell-Verify_Admin "Powershell-Verify_Admin")  
[Powershell-Custom_Object](https://github.com/ggreenjr/PowerShell-Snippets/README###Powershell-Custom_Object "Powershell-Custom_Object")  
[Powershell-Export_Loop](https://github.com/ggreenjr/PowerShell-Snippets/README###Powershell-Export_Loop "Powershell-Export_Loop")  
[Powershell-Loop_Label](https://github.com/ggreenjr/PowerShell-Snippets/blob/master/README.md#Powershell-Loop_Label "Powershell-Loop_Label")  

### Powershell-Script_Documentation

#### Description -
This is simple code that will comment out any notes that you might want to put in your scripts at any point in the document without
having to place a `#` at the beginning of each line, effectively turning everything between the `<#` and `#>` brackets into a text box.

#### Use Case - 
I find this documentation style to be very useful in any script that is more than just a couple lines, or when there is an answer
file or an output file involved in the execution of the script.  It allows for documentation of the type of answer file that is needed
along with any particular headers that the script is expecting to see in the answer file.  Additionally it allows for easy documentation
of the output files and expected fields within them, script requirements, purpose and any general notes about the execution of the script
at the very top of it.  This documentation is particularly helpful and can save large amounts of time when you have a script that gets run
only occasionally and required answer files may not be readily available, or is being run on a machine that does not usually run it. 

### Powershell-Verify_Admin

#### Description - 

#### Use Case - 

### Powershell-Custom_Object

#### Description - 

#### Use Case - 

### Powershell-Export_Loop

#### Description - 

#### Use Case -

### Powershell-Loop_Label

#### Description - 

#### Use Case - 
