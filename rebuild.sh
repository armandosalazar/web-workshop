# Get a personal access token
# Settings > Developer Settings > Personal Access Tokens > 'Generate new token'
# Give the token 'repo' access
# Take note of the token
# Fill in <FIELDS> below
# Ensure script is executable with chmod +x ./rebuild.sh

#!/bin/bash

username=armandosalazar # i.e. xsalazar
token=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 # i.e. 1dba4a6e153a1234f321d7e9a1cbbb96bbbb4713

curl -u $username:$token -X POST https://api.github.com/repos/$username/$username.github.io/pages/builds -H "Accept: application/vnd.github.mister-fantastic-preview+json"
