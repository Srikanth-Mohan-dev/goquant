for /f "delims=" %%A in (.\temp\client_id.txt) do set CLIENT_ID=%%A
for /f "delims=" %%A in (.\temp\client_secret.txt) do set CLIENT_SECRET=%%A
curl -X GET "https://test.deribit.com/api/v2/public/auth?client_id=%CLIENT_ID%&client_secret=%CLIENT_SECRET%&grant_type=client_credentials" -H "Content-Type: application/json" > .\temp\response.json

@echo off
setlocal

for /f "delims=" %%A in ('powershell -Command "(Get-Content -Raw -Path '.\temp\response.json' | ConvertFrom-Json).result.access_token"') do echo %%A > .\temp\access_token.txt

endlocal

