// SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract DataType
{
    bool public data1 = true; // true or false
    
    int public data2 = 0;
    uint public data3 = 10; // 양수의 값만 할당

    uint256 public data4 = 1000000000000000000000; // 0 ~ 2^256 - 1
    int256 public data5 = -1000000000000000000000; // -2^255 ~ 2^255 - 1

    // 메모리 및 수수료 낭비 방지를 위한 작은 값 할당
    uint8 public data6 = 100; // 0 ~ 2^8 - 1
    int8 public data7 = -100; // -2^7 ~ 2^7 - 1

    string public data8 = "stringType";
    bytes public data9 = "stringType"; // string 값은 실제로 byte 값으로 저장되기 때문에 이렇게도 사용 가능
    bytes20 public data10 = hex"779f05969a12c992a91c1c096c29a17db1143f24";    // 주소값 (고정)
    bytes32 public data11 = hex"5c6f90e52284726a7276d6a20a3df94a4532a8fa4c921233a301e95673ad0255"; // transaction hash 값

    address public data12 = 0x779f05969a12c992A91C1C096C29A17db1143F24;

    // float 타입은 없다.
}