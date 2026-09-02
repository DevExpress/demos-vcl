# to run in C:\Projects\dxvcs\Demos.ASP\AspNetCoreDemos.Reporting\wwwroot\Descr\Demos

$outputFile = "info.dat"

if (Test-Path $outputFile) {
    $lines = Get-Content $outputFile
} else {
    $lines = @()
}

# Хэши: имя секции => [начало, конец]
$sectionBounds = @{}
$currentSectionName = $null

for ($i = 0; $i -lt $lines.Count; $i++) {
    if ($lines[$i] -match "^\[(.+)\]$") {
        if ($null -ne $currentSectionName) {
            $sectionBounds[$currentSectionName][1] = $i - 1
        }
        $currentSectionName = $matches[1]
        $sectionBounds[$currentSectionName] = @($i, ($lines.Count - 1))
    }
}

# Обрабатываем все .md файлы
Get-ChildItem .\ -Filter *.md | ForEach-Object {
    $fileName = $_.BaseName
    $content = Get-Content $_.FullName -Raw

    $bbcode = $content `
        -replace '\*\*(.+?)\*\*', '[b]$1[/b]' `
        -replace '\*(.+?)\*', '[i]$1[/i]' `
        -replace '\[(.*?)\]\((.*?)\)', '[url=$2]$1[/url]' `
        -replace '<a href="(.*?)"(?: target="_blank")>(.*?)</a>', '[url=$1]$2[/url]' `
        -replace '\r?\n', '\n' `
        -replace '(\\n)+$', ''

    $sectionName = $fileName
    if (!$sectionBounds.ContainsKey($sectionName)) {
        $nameMap = @{
            "AnchorVertical" = "AnchoringReport"
            "BarCodeTypesReport" = "BarCodeReport"
            "CatalogReport" = "FallCatalogReport"
            "Charts" = "ChartReport"
            "DrillDownReport" = "Drill-Down Report"
            "HiddenColumns" = "Hidden Columns"
            "ProductLabelsReport" = "LabelReport"
            "MergedReport" = "ReportMergingReport"
            "SideBySideReports" = "SideBySideReport"
            "Subreports" = "SubreportReport"
        }
        if ($nameMap.ContainsKey($sectionName)) { 
            $sectionName = $nameMap[$sectionName] 
        }
    }

    if (!$sectionBounds.ContainsKey($sectionName)) {
        $sectionName += 'Report'
    }

    if (!$sectionBounds.ContainsKey($sectionName)) {
        $sectionName = $sectionName -replace '(Report)+$', ''
    }

    if (!$sectionBounds.ContainsKey($sectionName)) {
        $sectionName += 'Reports'
    }

    if (!$sectionBounds.ContainsKey($sectionName)) {
        $sectionName = $sectionName -replace '(Reports)+$', ''
    }

    if ($sectionBounds.ContainsKey($sectionName)) {
        $start = $sectionBounds[$sectionName][0]
        $end = $sectionBounds[$sectionName][1]

        $descIndex = ($start + 1)..$end | Where-Object {
            $lines[$_] -match "^Description="
        }

        if ($descIndex) {
            $lines[$descIndex[0]] = "Description=$bbcode"
        } else {
            $lines = $lines[0..$end] + "Description=$bbcode" + $lines[($end + 1)..($lines.Count - 1)]
        }
    } else {
        $lines += "            `"$fileName`" = `"$fileName`""
    }
}

Set-Content -Path $outputFile -Value $lines
