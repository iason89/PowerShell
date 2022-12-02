function Test-Even {
  Param (
    [int]$Number
  )
  $Remainer = $Number % 2
  if ($Remainder -eq 0) {return $true}
  else {return $false}
}

function Test-DvisableByThree {
  Param (
    [int]$Number
  )
  $Remainer = $Number % 3
  if ($Remainder -eq 0) {return $true}
  else {return $false}
}