$texte = @("|","/","-","\")
$texte2 = "loading"
$texte3 = @("",".","..","...")
while(1)
{
    $i=0
    while($i -ne $texte2.Length)
    {
        cls

        Write-Host "["$texte[($i%($texte.Length))]"]  " -NoNewline
        Write-Host $texte2.Substring(0,$i) -NoNewline
        Write-Host ($texte2.Substring($i,1)).ToUpper() -NoNewline
        Write-Host $texte2.Substring($i+1,($texte2.Length-$i-1)) -NoNewline
        Write-Host $texte3[$i%($texte3.Length)]
        $i++
        sleep -Milliseconds 200
    }
}