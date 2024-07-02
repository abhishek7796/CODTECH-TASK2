Name:  Abhishek Yogendra Sharma
Company: CODTECH IT SOLUTIONS PVT.LTD
ID:  CT8BCT1450
Domain: BLOCK CHAIN TECHNOLOGY
Duration: JUNE 25th,2024 to AUGUST 25th, 2024
Mentor: Neela Santhosh Kumar

TASK FIVE: SUPPLY CHAIN TRACKING SYSTEM
Develop a supply chain tracking system using blockchain technology to ensure
transparency and traceability of products. This project involves creating smart
contracts and a frontend for tracking products. Write smart contracts for
recording and tracking product information.

Overview of the Project:-

# CODTECH-TASK2
INTERNSHIP TASK 2

Smart Contract: SupplyChain.sol
This smart contract will handle the creation of products, tracking their movement through the supply chain, and recording key information about each step.
![Remix IDE SS](https://github.com/abhishek7796/CODTECH-TASK2/assets/120003948/8ec11cde-7c37-4237-8cc0-f6838916088f)

Explanation
Product Struct: This structure holds information about each product, including its ID, name, origin, destination, current owner, timestamp, and status.
Events: ProductCreated and ProductStatusUpdated events are emitted when a product is created and when its status is updated, respectively.
Mappings and Counters: products is a mapping from product IDs to product structures. productCounter is used to generate unique product IDs.
createProduct: This function allows the creation of new products, setting their initial status to "Created".
updateProductStatus: This function updates the status of a product, ensuring that only the current owner can do so.
transferOwnership: This function transfers the ownership of a product to a new owner.
getProduct: This function returns the details of a product based on its ID.

Next Steps
Deploy the Smart Contract: Use tools like Remix or Truffle to deploy this smart contract on an Ethereum testnet or mainnet.
![Contract Deployment SS](https://github.com/abhishek7796/CODTECH-TASK2/assets/120003948/b7fdab43-a486-4945-8d73-bf342f3fbc1c)
Develop the Frontend: Create a frontend application using a framework like React.js to interact with this smart contract. Use libraries like web3.js or ethers.js to connect the frontend with the Ethereum network.
![Index Page](https://github.com/abhishek7796/CODTECH-TASK2/assets/120003948/24763675-420d-4d1a-885a-b046e3841271)
Integration: Integrate the frontend with the backend to create a seamless user experience for tracking and managing products in the supply chain.

