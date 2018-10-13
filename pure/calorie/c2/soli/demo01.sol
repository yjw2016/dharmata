pragma solidity ^0.4.24;
contract IntDemo{
    // 主要演示 int,uint 相关特性，如果没有指定步长默认是 int --> int256
    function demo01() returns (int,uint,int){
        int8 num = 127; //8位，最高位符号位
        uint8 num2 = 255; //1个字节8位， 0~255
        var num3 = num; //与JS相同变量类型取决赋值的数据类型，初始化之后类型不能改变
        return(num,num3,num3)
    }
}