$nr1 = Read-Host "Enter first number"
$nr2 = Read-Host "Enter second number"

if($nr1 -notmatch "^[0-9]+$" -or $nr2 -notmatch "^[0-9]+$"){
    Write-Host "Use only numbers!!!" -ForegroundColor Red
} else {
    Write-Host "Calculator" -ForegroundColor Green

    $calcMenu = @("Addition", "Substraction", "Division", "Multiplication")
    for($i = 0; $i -lt $calcMenu.Count; $i++){
        Write-Host "$($i + 1). $($calcMenu[$i])" -ForegroundColor Yellow
    }
    $operation = Read-Host "Enter your choice"

    switch($operation){
        1{
            Write-Host "Sum is $([int]$nr1 + [int]$nr2)"
        }
    
        2{
            Write-Host "Difference is $([int]$nr1 - [int]$nr2)"
        }

        3{
            Write-Host "Quotient is $([int]$nr1 / [int]$nr2)"
        }

        4{
            Write-Host "Product is $([int]$nr1 * [int]$nr2)"
        }
        
        default{
            Write-Host "Use numbers 1-4" -ForegroundColor Red
        }
    }
}

