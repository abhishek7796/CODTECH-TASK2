// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SupplyChain {
    // Product struct to store details about a product
    struct Product {
        uint256 id;
        string name;
        string origin;
        string destination;
        address currentOwner;
        uint256 timestamp;
        string status;
    }

    // Event to emit when a product is created
    event ProductCreated(
        uint256 id,
        string name,
        string origin,
        address indexed owner
    );

    // Event to emit when a product status is updated
    event ProductStatusUpdated(
        uint256 id,
        string status,
        string destination,
        address indexed owner
    );

    // Mapping from product ID to Product struct
    mapping(uint256 => Product) public products;

    // Counter for generating product IDs
    uint256 private productCounter;

    // Function to create a new product
    function createProduct(string memory _name, string memory _origin) public {
        productCounter++;
        uint256 productId = productCounter;

        products[productId] = Product({
            id: productId,
            name: _name,
            origin: _origin,
            destination: "",
            currentOwner: msg.sender,
            timestamp: block.timestamp,
            status: "Created"
        });

        emit ProductCreated(productId, _name, _origin, msg.sender);
    }

    // Function to update product status
    function updateProductStatus(
        uint256 _productId,
        string memory _status,
        string memory _destination
    ) public {
        Product storage product = products[_productId];

        require(
            product.currentOwner == msg.sender,
            "Only the current owner can update the status"
        );

        product.status = _status;
        product.destination = _destination;
        product.timestamp = block.timestamp;
        product.currentOwner = msg.sender;

        emit ProductStatusUpdated(
            _productId,
            _status,
            _destination,
            msg.sender
        );
    }

    // Function to transfer product ownership
    function transferOwnership(uint256 _productId, address _newOwner) public {
        Product storage product = products[_productId];

        require(
            product.currentOwner == msg.sender,
            "Only the current owner can transfer ownership"
        );

        product.currentOwner = _newOwner;
    }

    // Function to get product details
    function getProduct(uint256 _productId)
        public
        view
        returns (
            uint256,
            string memory,
            string memory,
            string memory,
            address,
            uint256,
            string memory
        )
    {
        Product memory product = products[_productId];
        return (
            product.id,
            product.name,
            product.origin,
            product.destination,
            product.currentOwner,
            product.timestamp,
            product.status
        );
    }
}
