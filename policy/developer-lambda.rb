template "developer-lambda" do
  policy "developer-lambda" do
    {
      Version: context.version,
      Statement: [
        {
          Effect: "Allow",
          Action: [
            "lambda:ListFunctions"
          ],
          Resource: "*"
        },
        {
          Effect: "Allow",
          Action: [
            "lambda:*"
          ],
          Resource: "arn:aws:lambda:region:account-id:function:project-name*"
        }
      ]
    }
  end
end
