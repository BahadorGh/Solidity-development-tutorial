//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyStruct {
    struct ProductStruct {
        uint id;
        string name;
        string description;
        uint price;
        uint8 stock;
    }
    ProductStruct[] public products;

    // راه 1
    function createProduct() public returns (bool) {
        products.push(ProductStruct(
            1,
            "Solidity By Bahador",
            "Learning solidity development",
            250000,
            10)
        );
        return true;
    }

    // راه 2
    function createProduct2() public returns (bool) {
    products.push(ProductStruct({
            id: 2,
            name: "Solidity By Bahador",
            description: "Learning solidity development",
            price: 250000,
            stock: 10
        }));
        return true;
    }

    // راه 3
    function createProduct3() public returns (bool) {
        ProductStruct memory product;
        product.id = 3;
        product.name = "Solidity By Bahador";
        product.description = "Learning solidity development";
        product.price = 250000;
        product.stock = 10;

        products.push(product);
        return true;
    }
    
    function getProducts() public view returns (ProductStruct[] memory) {
        return products;
    }
}