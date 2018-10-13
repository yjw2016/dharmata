pragma solidity ^0.4.25;

interface Wifi{ //定义接口，函数只有声明，没有实现

    function wifi() public returns(string);
}

interface BlueTooth{ //定义接口，函数只有声明，没有实现

    function blueTooth() public returns(string);
}

//solidity中，没有abstract,有抽象函数的合约，就是抽象合约，不能实例化
contract Phone{
    // 抽象合约是不能实例化
    // 实现开机
    function start() internal returns (string){
        return "调用开机";
    }

    // 实现关机
    function close() internal returns (string){
        return "调用关机";
    }

    //闹钟，由于每个手机实现不同，抽象函数
    function alarm() internal returns(string);
}

// Mi手机，实现闹钟，WiFi功能,is 关键字表继承or实现
contract Mi is Phone,Wifi{
    function wifi() public returns(string){
        return "小米实现WiFi";
    }
    function alarm() internal returns(string){
        return "小米实现闹钟";
    }
}

// iPhone，实现全部功能
contract iPhone is Phone,Wifi{
    function wifi() public returns(string){
        return "iPhone实现WiFi";
    }
    function alarm() internal returns(string){
        return "iPhone实现闹钟";
    }
    function blueTooth() public returns(string){
        return "iPhone实现蓝牙";
    }
}




























