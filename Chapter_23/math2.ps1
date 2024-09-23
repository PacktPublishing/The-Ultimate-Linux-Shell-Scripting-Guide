param([Float]$number1 = "")

$tangent = [math]::Tan($number1)
Write-Host "The tangent of $number is: " $tangent
Write-Host "***********"
$cosine = [math]::Cos($number1)
Write-Host "The cosine of $number is: "$cosine
Write-Host "***********"
$squareroot = [math]::Sqrt($number1)
Write-Host "The square root of $number1 is: " $squareroot
Write-Host "***********"
$logarithm = [math]::Log10($number1)
Write-Host "The base 10 logarithm of $number1 is: " $logarithm

