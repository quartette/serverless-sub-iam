template "developer-iam" do
  policy "developer-iam" do
    {
      Version: context.version,
      Statement: [
        {
          Effect: "Allow",
          Action: [
            "iam:ChangePassword",
            "iam:GetAccountPasswordPolicy",
            "iam:CreateVirtualMFADevice",
            "iam:DeactivateMFADevice",
            "iam:ListUsers",
            "iam:ListVirtualMFADevices",
            "iam:ListUserPolicies",
            "iam:DeleteVirtualMFADevice",
            "iam:GetLoginProfile",
            "iam:UpdateLoginProfile",
            "iam:EnableMFADevice",
            "iam:CreateLoginProfile"
          ],
          Resource: [
            "arn:aws:iam::account-id:user/",
            "arn:aws:iam::account-id:mfa/",
            "arn:aws:iam::account-id:user/${aws:username}",
            "arn:aws:iam::account-id:mfa/${aws:username}"
          ]
        },
        {
          Effect: "Allow",
          Action: "iam:PassRole",
          Resource: [
            "arn:aws:iam::account-id:role/project-name-dev-r-IamRoleLambda-xxxxxxxxxxxxx",
            "arn:aws:iam::account-id:role/project-name-stg-r-IamRoleLambda-yyyyyyyyyyyyy",
            "arn:aws:iam::account-id:role/project-name-${aws:username}-r-IamRoleLambda-*"
          ]
        },
        {
          Effect: "Allow",
          Action: [
            "iam:ListRoles",
            "iam:CreateRole",
            "iam:GetRole"
          ],
          Resource: [
            "*"
          ]
        },
        {
          Effect: "Allow",
          Action: [
            "iam:DeleteRole",
            "iam:DeleteRolePolicy",
            "iam:PutRolePolicy"
          ],
          Resource: [
            "arn:aws:iam::account-id:role/project-name-${aws:username}-r-IamRoleLambda-*"
          ]
        }
      ]
    }
  end
end
