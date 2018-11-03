pragma solidity ^0.4.25;

contract StructMapping{
    // 定义结构体
    struct Product{
        string name;
        uint num;
    }

    // 定义映射
    mapping(address => Product) public proMap;

    // 产品初始化函数
    function init01(string _name,uint _num){
        // 创建结构体对象(不需要new)
        proMap[msg.sender] = Product({name:_name,num:_num});
    }



    // 默认不能反回结构体类型
    function show() returns(string,uint){
        Product p = proMap[msg.sender];
        return (p.name,p.num);
    }

}