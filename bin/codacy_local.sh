#! sh

export CODACY_PROJECT_TOKEN=WRITE_YOUR_SECRET_TOKEN_HERE
NODE_ENV=test YOURPACKAGE_COVERAGE=1 node_modules/.bin/mocha --es_staging --harmony --recursive -r blanket -R mocha-lcov-reporter -C test | node_modules/.bin/codacy-coverage -v
