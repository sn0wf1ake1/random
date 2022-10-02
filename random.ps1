while(1) {
    for($i = 0; $i -le ([double](Get-Date -UFormat %s) % [math]::E -shl 5); $i++) {
        [double]$seed += [double](Get-Date -UFormat %s) / [math]::PI
    }

    [int]([string]($seed)).substring(8,5)
}
