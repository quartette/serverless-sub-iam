# serverless-sub-iam

serverless framework利用時のIAMユーザの管理について考えてみました。

### 利用ツール

* subiam

### インストール

```
gem install subiam
```

See: https://github.com/gree/subiam


### Usage

```
export AWS_ACCESS_KEY_ID='...'
export AWS_SECRET_ACCESS_KEY='...'
vi subiam-user.rb
subiam -a --dry-run -f subiam-user.rb
subiam -a -f subiam-user.rb
```


