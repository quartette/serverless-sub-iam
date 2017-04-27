import 'group/developer.rb'

target /.*/

# login url : https://account-id.signin.aws.amazon.com/console
user "quartette", path: "/" do
  login_profile password_reset_required: true

  groups(
    "Developer"
  )
end
