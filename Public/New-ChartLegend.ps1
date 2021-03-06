﻿function New-ChartLegend {
    [alias('ChartLegend')]
    [CmdletBinding()]
    param(
        [Array] $Names,
        [ValidateSet('top', 'topRight', 'left', 'right', 'bottom', 'default')][string] $LegendPosition = 'default',
        [string[]] $Color
    )

    #$Colors = "Red","Blue","orange"
    #foreach ($_ in $Color) {
    #    $Colors.Add($Color)
    #}
    [PSCustomObject] @{
        ObjectType     = 'Legend'
        Names          = $Names
        LegendPosition = $LegendPosition
        Color          = $Color
    }
}
Register-ArgumentCompleter -CommandName New-ChartLegend -ParameterName Color -ScriptBlock { $Script:RGBColors.Keys }