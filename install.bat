@echo off

echo.
echo Installing external tools...
npm install -g static

echo.
echo Downloading the projects...

git clone https://github.com/arvo-tuni/teda-server.git
git clone https://github.com/arvo-tuni/teda-client.git

echo.
echo Downloading dependencies and builing the projects...

echo.
echo [server]
cd test-data-server
npm install
npm run build

cd ..

echo.
echo [client]
cd test-data-vis
npm install
npm run build

echo.
echo Done!
