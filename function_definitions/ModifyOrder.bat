for /f "delims=" %%A in (.\temp\access_token.txt) do set ACCESS_TOKEN=%%A
curl -X GET "https://test.deribit.com/api/v2/private/edit_by_label?amount=150&instrument_name=ETH-PERPETUAL&label=openorder&price=40" -H "Authorization: Bearer %ACCESS_TOKEN%" -H "Content-Type: application/json"
