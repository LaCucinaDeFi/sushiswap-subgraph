# Exit script as soon as a command fails.
set -o errexit

NETWORK=$1
ACCESS_TOKEN=$2

if [ -z "$ACCESS_TOKEN" ]
then
  echo "USAGE of 'ACCESS_TOKEN': must be the access token obtained from thegraph.com."
  exit 1
fi

if [ -z "$NETWORK" ]
then
  echo "USAGE of 'NETWORK': must be the network on which this subgraph is going to be deployed to."
  exit 1
fi

# perepare subgraph
yarn prepare:$NETWORK; 

# codegen
yarn codegen

# build
yarn build

# change directory
cd subgraphs/exchange

# authenticate
graph auth https://api.thegraph.com/deploy/ $ACCESS_TOKEN

# deploy
yarn deploy:$NETWORK

