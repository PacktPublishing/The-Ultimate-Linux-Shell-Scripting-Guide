param([Float]$number1 = "" , [Float]$number2 = "")

$sum = $number1 + $number2
Write-Host "The sum of these numbers is: " $sum
Write-Host "***********"
$divideresult= $number1 / $number2
Write-Host "Division of these two numbers results in: "$divideresult
Write-Host "***********"
$multiplyresult = $number1 * $number2
Write-Host "Multiplying these two numbers results in: " $multiplyresult
Write-Host "***********"
$modulo = $number1 % $number2
Write-Host "The remainder from dividing these two numbers is: " $modulo

