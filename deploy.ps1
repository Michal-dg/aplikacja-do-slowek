# Skrypt do automatycznego wgrania aplikacji na GitHub

# 1. Ustaw na stałe link do repozytorium
$repoUrl = "https://github.com/Michal-dg/aplikacja-do-slowek.git"

# 2. Wykonaj komendy Git
git init
git add .
git commit -m "Pierwsza wersja aplikacji"
git branch -M main
git remote add origin $repoUrl
git push -u origin main

Write-Host "Gotowe! Pliki zostały wgrane na GitHub." -ForegroundColor Green

