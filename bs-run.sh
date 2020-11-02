
#!/bin/bash

npm install -g browserstack-cypress-cli
#browserstack-cypress init
./BrowserStackLocal --key CsbtfqVzuuBShxEgq1K3 --daemon start
browserstack-cypress run --username mohammadasadkhan1 --key CsbtfqVzuuBShxEgq1K3
