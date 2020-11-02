
#!/bin/bash

npm install -g browserstack-cypress-cli
#browserstack-cypress init
./BrowserStackLocal --key $key --daemon start
browserstack-cypress run --username $user --key $key
