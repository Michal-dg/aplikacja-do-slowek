# Skrypt do automatycznego wgrania aplikacji na GitHub

# 1. Ustaw na stałe link do repozytorium
$repoUrl = "https://github.com/Michal-dg/aplikacja-do-slowek.git"

# 2. Sprawdź, czy git jest zainicjowany. Jeśli nie, zainicjuj go.
if (-not (Test-Path ".git")) {
    git init
    Write-Host "Zainicjowano nowe repozytorium Git."
}

# 3. Sprawdź, czy zdalne repozytorium 'origin' już istnieje. Jeśli tak, usuń je.
$remoteExists = git remote | Where-Object { $_ -eq 'origin' }
if ($remoteExists) {
    Write-Host "Znaleziono istniejące repozytorium 'origin'. Usuwam je, aby uniknąć błędów..." -ForegroundColor Yellow
    git remote remove origin
}

# 4. Dodaj poprawne zdalne repozytorium
Write-Host "Dodaję poprawne zdalne repozytorium 'origin'."
git remote add origin $repoUrl

# 5. Wykonaj pozostałe komendy Git
git add .
git commit -m "Aktualizacja aplikacji i poprawa skryptu wdrożeniowego"
git branch -M main
git push -u origin main

Write-Host "Gotowe! Pliki zostały wgrane na GitHub." -ForegroundColor Green

