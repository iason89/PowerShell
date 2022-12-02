function New-Greeting {
  <#
  .Synopsis
     This will say hello
  .DESCRIPTION
     This command takes your name from the parameter name
     and return a string with a greeting
  .EXAMPLE
     New-Greeting -Name Jason
  .PARAMETER Name
     This parameter is accepting a name for the greeting
  .INPUTS
     String
  .OUTPUTS
     String
  .NOTES
     General notes
     Created by: Jason Chau
  #>

  [cmdletbinding()]
  Param ([string]$Name)

return "Hello $Name"
}