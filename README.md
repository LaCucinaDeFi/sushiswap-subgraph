# La Cucina | Sushiswap Subgraph

La Cucina redefines DeFi!
In the mood for Sushi? Gain even more Yields in Sushi Swap through La Cucina.

## SushiSwap Subgraph

Aims to deliver analytics & historical data for SushiSwap. Still a work in progress. Feel free to contribute!

The Graph exposes a GraphQL endpoint to query the events and entities within the SushiSwap ecosytem.

Current subgraph locations:

1. **Exchange**: Includes all SushiSwap Exchange data with Price Data, Volume, Users, etc:
   + https://thegraph.com/legacy-explorer/subgraph/ashitosh03/pumapay-sushiswap-subgraph (mainnet)
  
## To setup subgraph and deploy 
This command deploys sushiswap exchange subgraph on the eth mainnet

```bash
yarn deploy <ACCESS_TOKEN>
```
# To prepare subgraph environment

```bash
yarn prepare:[NETWORK]
```
ex. 

```bash
yarn prepare:mainnet
```
# To codegen

```bash
yarn codegen
```
# To build

```bash
yarn build
```

# To deploy

```bash
cd subgraphs/exchange
```
and


```bash
yarn deploy:mainnet
```