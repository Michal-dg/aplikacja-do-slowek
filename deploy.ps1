# Skrypt do automatycznego wgrania aplikacji na GitHub

# 1. Poproś użytkownika o link do repozytorium
$repoUrl = Read-Host -Prompt "Wklej tutaj link URL do swojego repozytorium GitHub"

# 2. Sprawdź, czy link został podany
if ([string]::IsNullOrWhiteSpace($repoUrl)) {
    Write-Host "Błąd: Link do repozytorium nie może być pusty." -ForegroundColor Red
    exit
}

# 3. Wykonaj komendy Git
git init
git add .
git commit -m "Pierwsza wersja aplikacji"
git branch -M main
git remote add origin $repoUrl
git push -u origin main

Write-Host "Gotowe! Pliki zostały wgrane na GitHub." -ForegroundColor Green
