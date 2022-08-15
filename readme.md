
There are two ways to locally work on your Dangerfile. These both rely on using the GitHub API locally, so you may hit the GitHub API rate-limit or need to have authenticated request for private repos. In which case you can use an access token to do authenticated requests by exposing a token to Danger.
There are two ways to locally work on your Dangerfile. These both rely on using the GitHub API locally, so you may hit the GitHub API rate-limit or need to have authenticated request for private repos. In which case you can use an access token to do authenticated requests by exposing a token to Danger.
There are two ways to locally work on your Dangerfile. These both rely on using the GitHub API locally, so you may hit the GitHub API rate-limit or need to have authenticated request for private repos. In which case you can use an access token to do authenticated requests by exposing a token to Danger.
There are two ways to locally work on your Dangerfile. These both rely on using the GitHub API locally, so you may hit the GitHub API rate-limit or need to have authenticated request for private repos. In which case you can use an access token to do authenticated requests by exposing a token to Danger.
There are two ways to locally work on your Dangerfile. These both rely on using the GitHub API locally, so you may hit the GitHub API rate-limit or need to have authenticated request for private repos. In which case you can use an access token to do authenticated requests by exposing a token to Danger.

export DANGER_GITHUB_API_TOKEN='xxxx'

# or for BitBucket by username and password
export DANGER_BITBUCKETSERVER_HOST='xxxx' DANGER_BITBUCKETSERVER_USERNAME='yyyy' DANGER_BITBUCKETSERVER_PASSWORD='zzzz'

# or for BitBucket by username and personal access token
export DANGER_BITBUCKETSERVER_HOST='xxxx' DANGER_BITBUCKETSERVER_USERNAME='yyyy' DANGER_BITBUCKETSERVER_TOKEN='zzzz'

# or for BitBucket Cloud by username (from Account Settings page), password (App-password with Read Pull requests, and Read Account Permissions)
export DANGER_BITBUCKETCLOUD_USERNAME='xxxx'
export DANGER_BITBUCKETCLOUD_PASSWORD='yyyy'

# or for BitBucket Cloud by OAuth key, and OAuth secret
# You can get OAuth key from Settings > OAuth > Add consumer, put `https://bitbucket.org/site/oauth2/authorize` for `Callback URL`, and enable Read Pull requests, and Read Account Permissions.
export DANGER_BITBUCKETCLOUD_OAUTH_KEY='xxxx'
export DANGER_BITBUCKETCLOUD_OAUTH_SECRET='yyyy'
Then the danger CLI will use authenticated API calls, which don’t get this by API limits.


export DANGER_GITHUB_API_TOKEN='xxxx'

# or for BitBucket by username and password
export DANGER_BITBUCKETSERVER_HOST='xxxx' DANGER_BITBUCKETSERVER_USERNAME='yyyy' DANGER_BITBUCKETSERVER_PASSWORD='zzzz'

# or for BitBucket by username and personal access token
export DANGER_BITBUCKETSERVER_HOST='xxxx' DANGER_BITBUCKETSERVER_USERNAME='yyyy' DANGER_BITBUCKETSERVER_TOKEN='zzzz'

# or for BitBucket Cloud by username (from Account Settings page), password (App-password with Read Pull requests, and Read Account Permissions)
export DANGER_BITBUCKETCLOUD_USERNAME='xxxx'
export DANGER_BITBUCKETCLOUD_PASSWORD='yyyy'

# or for BitBucket Cloud by OAuth key, and OAuth secret
# You can get OAuth key from Settings > OAuth > Add consumer, put `https://bitbucket.org/site/oauth2/authorize` for `Callback URL`, and enable Read Pull requests, and Read Account Permissions.
export DANGER_BITBUCKETCLOUD_OAUTH_KEY='xxxx'
export DANGER_BITBUCKETCLOUD_OAUTH_SECRET='yyyy'
Then the danger CLI will use authenticated API calls, which don’t get this by API limits.


export DANGER_GITHUB_API_TOKEN='xxxx'

# or for BitBucket by username and password
export DANGER_BITBUCKETSERVER_HOST='xxxx' DANGER_BITBUCKETSERVER_USERNAME='yyyy' DANGER_BITBUCKETSERVER_PASSWORD='zzzz'

# or for BitBucket by username and personal access token
export DANGER_BITBUCKETSERVER_HOST='xxxx' DANGER_BITBUCKETSERVER_USERNAME='yyyy' DANGER_BITBUCKETSERVER_TOKEN='zzzz'

# or for BitBucket Cloud by username (from Account Settings page), password (App-password with Read Pull requests, and Read Account Permissions)
export DANGER_BITBUCKETCLOUD_USERNAME='xxxx'
export DANGER_BITBUCKETCLOUD_PASSWORD='yyyy'

# or for BitBucket Cloud by OAuth key, and OAuth secret
# You can get OAuth key from Settings > OAuth > Add consumer, put `https://bitbucket.org/site/oauth2/authorize` for `Callback URL`, and enable Read Pull requests, and Read Account Permissions.
export DANGER_BITBUCKETCLOUD_OAUTH_KEY='xxxx'
export DANGER_BITBUCKETCLOUD_OAUTH_SECRET='yyyy'
Then the danger CLI will use authenticated API calls, which don’t get this by API limits.


export DANGER_GITHUB_API_TOKEN='xxxx'

# or for BitBucket by username and password
export DANGER_BITBUCKETSERVER_HOST='xxxx' DANGER_BITBUCKETSERVER_USERNAME='yyyy' DANGER_BITBUCKETSERVER_PASSWORD='zzzz'

# or for BitBucket by username and personal access token
export DANGER_BITBUCKETSERVER_HOST='xxxx' DANGER_BITBUCKETSERVER_USERNAME='yyyy' DANGER_BITBUCKETSERVER_TOKEN='zzzz'

# or for BitBucket Cloud by username (from Account Settings page), password (App-password with Read Pull requests, and Read Account Permissions)
export DANGER_BITBUCKETCLOUD_USERNAME='xxxx'
export DANGER_BITBUCKETCLOUD_PASSWORD='yyyy'

# or for BitBucket Cloud by OAuth key, and OAuth secret
# You can get OAuth key from Settings > OAuth > Add consumer, put `https://bitbucket.org/site/oauth2/authorize` for `Callback URL`, and enable Read Pull requests, and Read Account Permissions.
export DANGER_BITBUCKETCLOUD_OAUTH_KEY='xxxx'
export DANGER_BITBUCKETCLOUD_OAUTH_SECRET='yyyy'
Then the danger CLI will use authenticated API calls, which don’t get this by API limits.


export DANGER_GITHUB_API_TOKEN='xxxx'

# or for BitBucket by username and password
export DANGER_BITBUCKETSERVER_HOST='xxxx' DANGER_BITBUCKETSERVER_USERNAME='yyyy' DANGER_BITBUCKETSERVER_PASSWORD='zzzz'

# or for BitBucket by username and personal access token
export DANGER_BITBUCKETSERVER_HOST='xxxx' DANGER_BITBUCKETSERVER_USERNAME='yyyy' DANGER_BITBUCKETSERVER_TOKEN='zzzz'

# or for BitBucket Cloud by username (from Account Settings page), password (App-password with Read Pull requests, and Read Account Permissions)
export DANGER_BITBUCKETCLOUD_USERNAME='xxxx'
export DANGER_BITBUCKETCLOUD_PASSWORD='yyyy'

# or for BitBucket Cloud by OAuth key, and OAuth secret
# You can get OAuth key from Settings > OAuth > Add consumer, put `https://bitbucket.org/site/oauth2/authorize` for `Callback URL`, and enable Read Pull requests, and Read Account Permissions.
export DANGER_BITBUCKETCLOUD_OAUTH_KEY='xxxx'
export DANGER_BITBUCKETCLOUD_OAUTH_SECRET='yyyy'
Then the danger CLI will use authenticated API calls, which don’t get this by API limits.

