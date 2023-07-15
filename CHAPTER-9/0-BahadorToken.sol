// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BahadorToken {
    address payable owner;
    uint8 _decimals;

    uint _totalSupply;
    string tokenSymbol;
    string tokenName;

    mapping(address => uint) _balances;
    mapping(address => mapping(address => uint)) _allowances;
    
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);

    constructor () {
        owner = payable(msg.sender);
        tokenName = "Bahador Token";
        tokenSymbol = "BHT";
        _decimals = 18;
        _totalSupply = 1_000_000 * (10 ** 18);
        _balances[msg.sender] = _totalSupply;
    }

    function name() public view returns (string memory) {
        return tokenName;
    }

    function symbol() public view returns (string memory) {
        return tokenSymbol;
    }

    function decimals() public view returns (uint8) {
        return _decimals;
    }

    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }

    function balanceOf(address _owner) public view returns (uint256 balance) {
        return _balances[_owner];
    }

    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(_to!= address(0), "Sending to zero address not possible");
        require(_balances[msg.sender] >= _value, "Not enough tokens");
        _balances[msg.sender] -= _value;
        _balances[_to] += _value;
        emit Transfer(msg.sender, _to, _value);
        return true;
    }

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool
        success)
        {
            require(_value <= _balances[_from]);
            require(_value <= _allowances[_from][msg.sender]);
            _balances[_from] -= _value;
            _allowances[_from][msg.sender] -= _value;
            _balances[_to] += _value;
            emit Transfer(_from, _to, _value);
            return true;
    }

    function approve(address _spender, uint256 _value) public returns (bool success) {
        _allowances[msg.sender][_spender] += _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }
    function allowance(address _owner, address _spender) public view returns (uint256
        remaining) {
        return _allowances[_owner][_spender];
    }
}