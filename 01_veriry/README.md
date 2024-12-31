### 0 preparation

- etherscan API Key
- Infura API key(or you can use public rpc url)
- private key for test account  
  -> don't use your real account
- get a test token from faucet

  `https://www.alchemy.com/faucets/ethereum-sepolia`

### 1 install hardhat

`npm i hardhat`

### 2 Set variables

#### 1 set etherscan API key

`npx hardhat vars set ETHERSCAN_API_KEY <your api key>`

`npx hardhat vars get ETHERSCAN_API_KEY`

#### 2 set infura API key

`npx hardhat vars set INFURA_API_KEY <your api key>`

#### 3 set sepolia private key

I strongly recommend this is test account that has no real balance

`npx hardhat vars set SEPOLIA_PRIVATE_KEY <your secret key>`

### 3 get variables

`import { vars } from "hardhat/config";`

```
const SEPOLIA_PRIVATE_KEY = vars.get("SEPOLIA_PRIVATE_KEY");
const ETHERSCAN_API_KEY = vars.get("ETHERSCAN_API_KEY");
const INFURA_API_KEY = vars.get("INFURA_API_KEY");
```

### 4 set networks

```
networks: {
    sepolia: {
      url: `https://sepolia.infura.io/v3/${INFURA_API_KEY}`,
      accounts: [SEPOLIA_PRIVATE_KEY],
    },
  },
```

### 5 set etherscan

```
etherscan: {
    apiKey: {
      sepolia: ETHERSCAN_API_KEY,
    },
  },
```

### 6 deploy

#### 1 compile

`npx hardhat compile`

#### 2 deploy

`npx hardhat ignition deploy ignition/modules/Lock.ts --network sepolia --deployment-id sepolia-deployment`

### 7 Verify

`npx hardhat ignition verify sepolia-deployment`

check in etherscan  
`https://sepolia.etherscan.io/`
