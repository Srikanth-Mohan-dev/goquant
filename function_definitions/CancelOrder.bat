for /f "delims=" %%A in (.\temp\access_token.txt) do set ACCESS_TOKEN=%%A
curl -X GET "https://test.deribit.com/api/v2/private/cancel_all?" -H "Authorization: Bearer %ACCESS_TOKEN%" -H "Content-Type: application/json"