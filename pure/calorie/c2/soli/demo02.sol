pragma solidity ^0.4.24;

//属性attribute、函数function、访问修饰符
contract AttrFnDemo{

    //attribute默认访问修饰符：internal
    //function 默认访问修饰符：public
    uint private _age;      //private  当前合约可以访问
    string internal _name;  //internal 当前合约&子合约可以访问、
    int public _num;        //public   公共调用


    //函数名与合约名相同，为构造函数constructor，构造函数不支持多态重载
    function AttrFnDemo(uint age,string name,int num){
        _age = age;
        _name = name;
        _num = num;
    }

    function age()private  returns (uint) {
        return _age;
    }
    function name()internal  returns (string) {
        return _name;
    }
    function num()public   returns (int) {
        return _num;
    }

    // 没有指定访问符，函数默认为public
    function show() returns (uint,string,int){
        return (_age,name(),_num);
    }

}