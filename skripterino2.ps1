$tabel01 = @{Name="John","Joe","Mary"; DaysWorked=12,20,18}
$tabel02 = @{Name="John","Joe","Mary"; SalaryPerDay=100,120,150}
$tabel03 = @{Name=$tabel01.Name; Salary=($tabel01.DaysWorked[0]*$tabel02.SalaryPerDay[0]),($tabel01.DaysWorked[1]*$tabel02.SalaryPerDay[1]),($tabel01.DaysWorked[2]*$tabel02.SalaryPerDay[2])}
$tabel03