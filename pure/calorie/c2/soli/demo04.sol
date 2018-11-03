pragma solidity ^0.4.25;
contract PaySuper{
    // 属性默认internal
    address internal _owner;     // 存储合约的所有者
    // 函数修改器
    modifier onlyOwner{

        // 判断是否是合约所有者,只有自己才能执行
        if(msg.sender != _owner) {
            throw;
        }
        _;  // _代表执行函数内部语句
    }
}
contract PayableDemo is PaySuper{

    event showMsg(string);


    //address public _owner;  // 存储合约的所有者
    //uint public _money;

    // 只有合约所有者才会调用构造函数
    function PayableDemo() payable {
        // sender为获取函数调用者地址
        _owner = msg.sender;

        // 合约创建者在创建合约时输入一定金额,放入合约中
        //_money = msg.value;
        msg.value;
    }

    //转账功能,转账函数必须要有payable关键字
    function transfer() payable{
        // value : 在调用当前函数时，转入value值
        _owner.transfer(msg.value);
    }

    function showBalance() returns(address,uint256 ){
        address _account = msg.sender;
        return (_account,_account.balance);
    }

    // 函数修改器
    modifier onlyOwner{
        showMsg('子类重写父类修改器');

        // 判断是否是合约所有者,只有自己才能执行
        if(msg.sender != _owner) {
            throw;
        }
        _;  // _代表执行函数内部语句
    }


    //合约自我销毁
    function kill(address addr) onlyOwner{

        selfdestruct(addr); //销毁合约 并且发送金额到指定地址
    }
}