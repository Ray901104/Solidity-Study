// SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract Array
{
    // [1, 2, 3, 4]
    int[] public intList = [1, 2, 3, 4];
    int[3] public int3List = [1, 2, 3];
    
    // [1, 2, 3, 4] -> [1, 2, 3, 4, 5]
    intList.push(5);
    int public lastData = intList.pop(); // 5

    int public secondData = intList[1]; // 2 [1, 2, 3, 4]

    // [1, 2, 3, 4]에서 2만 제거(0으로 초기화)
    delete intList[1]; // [1, 0, 3, 4]

    struct Product
    {
        string name;
        uint price;
    }

    Product public mainProduct;
    Product[] public productList;
    productList.push(mainProduct);
}