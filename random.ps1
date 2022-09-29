while(1) {
    for($i = 0; $i -le ([double](Get-Date -UFormat %s) % [math]::PI -shl 3); $i++) {
        [double]$seed = (($seed += [double](Get-Date -UFormat %s)) / [math]::PI) / [math]::E
    }

    [int]([string]($seed % ($i / [math]::PI))).substring(7,5)
}
