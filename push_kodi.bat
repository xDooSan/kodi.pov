@echo off
title Script de Mise a Jour Kodi Repo - xDooSan
echo --------------------------------------------------
echo [1/4] Generation du repository (Python)...
python _repo_generator.py

echo.
echo [2/4] Preparation des fichiers (Git Add)...
git add .

echo.
echo [3/4] Creation du message (Git Commit)...
git commit -m "Mise a jour automatique de l'addon POV"

echo.
echo [4/4] Envoi vers GitHub (Git Push Force)...
git push -u origin master --force

echo.
echo --------------------------------------------------
echo TERMINE ! Ton depot est a jour sur GitHub.
echo Tu peux maintenant verifier les mises a jour sur Kodi.
echo --------------------------------------------------
pause