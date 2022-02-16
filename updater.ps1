$output= pip list --outdated
$ListOfPackages_1=$output.Split("\n")
$ListOfPackages_2=$ListOfPackages_1[2..$ListOfPackages_1.count]
foreach ($item in $ListOfPackages_2)
{
    $packageName=$item.Split(" ")[0]
    pip install -U $packageName
}