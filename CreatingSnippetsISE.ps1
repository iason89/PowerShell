$Snip = @'
<#
.Synopsis
   Short description
.DESCRIPTION
   Long description
.EXAMPLE
   Example of how to use this cmdlet
.EXAMPLE
   Another example of how to use this cmdlet
.PARAMETER ParamName
   Param notes
.NOTES
   General notes
   Created by: Jason Chau
   Created on: Date
#>
'@
Set-IseSnippet -Title HelpBlock -Description 'this is the help block' -Text $Snip