template "developer-cloudformation" do
  policy "developer-cloudformation" do
    {
      Version: context.version,
      Statement: [
        {
          Effect: "Allow",
          Action: [
            "cloudformation:CreateStack",
            "cloudformation:DescribeStackResource",
            "cloudformation:DescribeStackResources",
            "cloudformation:DescribeStacks",
            "cloudformation:ListStacks"
          ],
          Resource: "*"
        },
        {
          Effect: "Allow",
          Action: [
            "cloudformation:DeleteStack",
            "cloudformation:UpdateStack"
          ],
          Resource: [
            "arn:aws:cloudformation:region:account-id:stack/project-name-dev-r/*",
            "arn:aws:cloudformation:region:account-id:stack/project-name-stg-r/*",
            "arn:aws:cloudformation:region:account-id:stack/project-name-${aws:username}-r/*"
          ]
        }
      ]
    }
  end
end
