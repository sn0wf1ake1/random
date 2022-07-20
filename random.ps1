$max = 100000
$hasher = [System.Security.Cryptography.HashAlgorithm]::Create('sha')

while(1) {
    $time = Get-Date -UFormat %s
    if((Get-Date -UFormat %s) -ne $time) {
        $x += [System.BitConverter]::ToString($hasher.ComputeHash([System.Text.Encoding]::UTF8.GetBytes((Get-Date -UFormat %s) + $x + $x.Length + $max + $time))) -replace '[a-zA-Z-]',''
        ($x.substring($x.length - $max.ToString().Length) % $max) + 1

        # Trunkate string as to not make memory fill up.
        if($x.Length -gt $max) {
            $x = $x.Substring($max)
        }

        # Append as much randomness as possible. Can be omitted for much better speed.
        } else {
        $x += [System.BitConverter]::ToString($hasher.ComputeHash([System.Text.Encoding]::UTF8.GetBytes((Get-Date -UFormat %s) + $x + $x.Length + $max)))
    }
}
