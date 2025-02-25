@echo off
cd /d C:\Users\user\cay
echo Auto commit at %DATE% %TIME% >> commit_log.txt
git add .
git commit -m "Automated commit: %DATE% %TIME%"
git push origin main
echo ✅ GitHub Auto Commit Done!

