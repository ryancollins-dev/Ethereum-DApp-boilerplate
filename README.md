# Sample Hardhat Project | DApp boilerplate

1. start a local node with `npx hardhat node`

2. compile contract `npx hardhat compile`

3. deploy contract `npx hardhat run deploy.js --network localhost`

4. copy the contract address and paste it into the App.js

5. run npm start to start the react app

6. click fetch greeting to view the greeting in the console

7. Try to set a greeting

Required functions

`requestAccount()`
`const provider = new ethers.providers.Web3Provider(window.ethereum);`
`const signer = provider.getSigner();`
`const contract = new ethers.Contract(greetingAddress,Greeting.abi,signer);`
need async!
`const transaction = await contract.setGreeting(greeting);`
`await transaction.wait();`
