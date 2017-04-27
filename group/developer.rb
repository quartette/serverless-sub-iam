import 'policy/developer-apigateway.rb'
import 'policy/developer-iam.rb'
import 'policy/developer-lambda.rb'
import 'policy/developer-cloudformation.rb'

group "Developer", path: "/" do
  include_template "developer-apigateway", version: "2012-10-17"
  include_template "developer-iam", version: "2012-10-17"
  include_template "developer-lambda", version: "2012-10-17"
  include_template "developer-cloudformation", version: "2012-10-17"
end