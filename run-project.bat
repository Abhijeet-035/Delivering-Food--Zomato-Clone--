@echo off
echo Food Delivery Website Project Runner
echo ===================================
echo.
echo Starting all components automatically...
echo.

echo Step 1: Starting Backend Server...
cd backend
start cmd /k "npm start"
echo Backend server started on http://localhost:4000
echo.
timeout /t 5 /nobreak > nul

echo Step 2: Starting Frontend...
cd ..
cd frontend
start cmd /k "npm start"
echo Frontend started on http://localhost:3000
echo.
timeout /t 5 /nobreak > nul

echo Step 3: Opening Admin Panel...
cd ..
cd admin
start "" "index.html"
echo Admin panel opened in browser
echo.

cd ..
echo All components started successfully!
echo.
echo Backend: http://localhost:4000
echo Frontend: http://localhost:3000
echo Admin: Opened in browser
echo.
echo Press any key to exit...
pause > nul 