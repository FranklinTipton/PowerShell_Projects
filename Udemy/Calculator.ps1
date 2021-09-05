# Practice script that can help to figure out interest rates

# User inputs
[ValidateRange(1000,1000000)]$principle = [Int32] (Read-Host "Principle amount requested, between $ 1,000 and $ 1,000,000")
[Validateset(15,30)]$time = [int32] (Read-Host "How long do you want the loan for? Please choose between 15 or 30 years")

# Rate of interest
$ROI = 10

# Calculations

$simple_interest = ( $principle * $ROI * $time) / 100

Write-Host "Make sure your inputs are correct: Principle = $principle and Time = $Time"

Write-Host "Your interest will total in $simple_interest" -BackgroundColor Cyan -ForegroundColor Black

