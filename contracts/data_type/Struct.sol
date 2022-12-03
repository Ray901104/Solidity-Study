// SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract Struct
{
    struct Product
    {
        string name;
        uint price;
    }
    
    Product public mainProduct;
    uint public maxProductCount;

    // 생성자 초기값 설정
    constructor()
    {
        maxProductCount = 1000;
    }

    function initProduct() public
    {
        Product memory firstProduct;
        firstProduct = Product("toy1", 10);
    }

    function setMainProduct(string memory _name, uint _price) public
    {
        mainProduct.name = _name;
        mainProduct.price = _price;
    }

    function getMainProductPrice() public view returns(uint)
    {
        return mainProduct.price;
    }
}