$html = Get-Content 'index.html' -Raw
$app = Get-Content 'js/app.js' -Raw
$pattern = 'getElementById\([`''"]([^`''"]+)[`''"]\)'
$matches = [regex]::Matches($app, $pattern)
$missing = @()
foreach ($m in $matches) {
    $id = $m.Groups[1].Value
    if ($id -eq 'emptyStateAddBtn') { continue }
    if ($html -notmatch ('id=["'']' + [regex]::Escape($id) + '["'']')) {
        $missing += $id
    }
}
$missing | Select-Object -Unique | ForEach-Object { Write-Output "Missing ID: $_" }
Write-Output "ID check complete."
