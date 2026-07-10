param(
    [string]$BranchName = "mig/26_1_datapack"
)

Write-Host "Création ou bascule vers la branche $BranchName"

git status
git switch -c $BranchName 2>$null

if ($LASTEXITCODE -ne 0) {
    git switch $BranchName
}

git status
