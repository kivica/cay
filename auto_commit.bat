@echo off
cd /d C:\Users\user\cay
echo Auto commit at %DATE% %TIME% >> commit_log.txt
git add .
git commit -m "Automated commit: %DATE% %TIME%"
git push origin main
echo ✅ GitHub Auto Commit Done!

:: 랜덤 메시지 배열 만들기
setlocal enabledelayedexpansion
set messages[0]=Updated configuration settings.
set messages[1]=Improved system performance.
set messages[2]=Refactored code for better efficiency.
set messages[3]=Fixed minor bug in the application.
set messages[4]=Optimized database queries.
set messages[5]=Enhanced UI responsiveness.
set messages[6]=Updated dependency versions.
set messages[7]=Modified logic for better readability.
set messages[8]=Implemented new feature.
set messages[9]=Added new test cases.

:: 랜덤 메시지 선택
set /a randIndex=%random% %% 10
set commitMessage=!messages[%randIndex%]!

:: 메시지 파일에 추가
echo !commitMessage! >> commit_log.txt

:: Git 커밋 & 푸시
git add .
git commit -m "!commitMessage!"
git push origin main

