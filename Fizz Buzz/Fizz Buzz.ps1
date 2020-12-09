foreach ($num in 1..100) {
    if (($num % 3) -eq 0 -and ($num % 5) -eq 0) {
        Write-Output "Fizz Buzz"
    }
    elseif (($num % 3) -eq 0) {
        Write-Output "Fizz"
    }
    elseif (($num % 5) -eq 0) {
        Write-Output "Buzz"
    }
    else {
        Write-Output $num
    }
}