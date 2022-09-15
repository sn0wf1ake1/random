while(1) {
    for($i = 0; $i -le ([double](Get-Date -UFormat %s) % [math]::PI -shl 2); $i++) {
        [double]$seed = ($seed + [double](Get-Date -UFormat %s)) / [math]::PI / [math]::E
    }

    [int]([Math]::Pow($seed, $i) * [math]::PI * [math]::E % 1000)
}
