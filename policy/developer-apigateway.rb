template "developer-apigateway" do
  policy "developer-apigateway" do
    {
      Version: context.version,
      Statement: [
        {
          Effect: "Allow",
          Action: [
            "apigateway:GET"
          ],
          Resource: [
            "arn:aws:apigateway:region::/*"
          ]
        },
        {
          Effect: "Allow",
          Action: [
            "apigateway:PUT",
            "apigateway:POST",
            "apigateway:DELETE",
            "apigateway:PATCH",
            "apigateway:HEAD",
            "apigateway:OPTIONS"
          ],
          Resource: [
            "arn:aws:apigateway:region::/restapis/api-id/*"
          ]
        },
        {
          Effect: "Allow",
          Action: [
            "execute-api:Invoke"
          ],
          Resource: [
            "arn:aws:execute-api:region:*:api-id/${aws:username}/*",
            "arn:aws:execute-api:region:*:api-id/dev/*",
            "arn:aws:execute-api:region:*:api-id/stg/*"
          ]
        }
      ]
    }
  end
end
