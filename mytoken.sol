pragma solidity ^0.4.18;
//토큰이 이동할때마다 transfer함수가 호출된다!

contract ERC20Basic {
  //발행된 전체 토큰의 개수를 알려줍니다.
  function totalSupply() public view returns (uint256);
  //who가 보유한토큰수를 알려줍니다.
  function balanceOf(address who) public view returns (uint256);
  //토큰전송의 성공실패여부를 호출합니다.
  function transfer(address to, uint256 value) public returns (bool);
  event Transfer(address indexed from, address indexed to, uint256 value);
} //indexed -> from, to변수를 검색에 사용하겠다. (보내는 사람과 받는 사람으로 검색하여 토큰 송금 이력을 찾아볼 수 있음)

library SafeMath {
  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    if (a == 0) {
      return 0;
    }
    uint256 c = a * b;
    assert(c / a == b);
    return c;
  }

  function div(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a / b;
    return c;
  }

  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    assert(b <= a);
    return a - b;
  }

  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + b;
    assert(c >= a);
    return c;
  }
}


contract BasicToken is ERC20Basic {
  using SafeMath for uint256;

  mapping(address => uint256) balances; //누가 얼마나 가지고있는지 저장

  uint256 totalSupply_;

  function totalSupply() public view returns (uint256) {
    return totalSupply_;
  }

//내 계좌에 있는 토큰을 _to에게 _value만큼 보냅니다.
  function transfer(address _to, uint256 _value) public returns (bool) {
    require(_to != address(0)); //유효계정인지 확인
    require(_value <= balances[msg.sender]); //_value가 잔고 이내인지 확인

    balances[msg.sender] = balances[msg.sender].sub(_value); //내 잔고에서 _value만큼 뺀다.
    balances[_to] = balances[_to].add(_value); //내 잔고에 _value만큼 더한다.
    emit Transfer(msg.sender, _to, _value);
    return true;
  }

  function balanceOf(address _owner) public view returns (uint256 balance) {
    return balances[_owner];
  }
}


contract ERC20 is ERC20Basic {
  //owner 가 spender 에게 인출을 허락한 토큰의 개수를 알려줍니다.
  function allowance(address owner, address spender) public view returns (uint256);
  //이 함수는 approve 함수를 통해 인출할 권리를 받은 spender 만 실행할 수 있습니다.
  function transferFrom(address from, address to, uint256 value) public returns (bool);
  //spender 에게 value 만큼의 토큰을 인출할 권리를 부여합니다.
  function approve(address spender, uint256 value) public returns (bool);
  event Approval(address indexed owner, address indexed spender, uint256 value);
}


contract StandardToken is ERC20, BasicToken {

  mapping (address => mapping (address => uint256)) internal allowed;  //'누가','누구에게','얼마'를 저장하기위해 매핑함

  function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
    require(_to != address(0));
    require(_value <= balances[_from]);
    require(_value <= allowed[_from][msg.sender]);

    balances[_from] = balances[_from].sub(_value);
    balances[_to] = balances[_to].add(_value);
    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    emit Transfer(_from, _to, _value);
    return true;
  }

/** Beware that changing an allowance with this method brings the risk that someone may use both the old
   * and the new allowance by unfortunate transaction ordering. One possible solution to mitigate this
   * race condition is to first reduce the spender's allowance to 0 and set the desired value afterwards:
   * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
*/

  function approve(address _spender, uint256 _value) public returns (bool) {
    allowed[msg.sender][_spender] = _value; //함수를 호출한 나의 계좌에서 value만큼 인출해갈 수 있는 권리를 spender에게 부여함
    emit Approval(msg.sender, _spender, _value);
    return true;
  }

  function allowance(address _owner, address _spender) public view returns (uint256) {
    return allowed[_owner][_spender];
  }

  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    return true;
  }

  function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool) {
    uint oldValue = allowed[msg.sender][_spender];
    if (_subtractedValue > oldValue) {
      allowed[msg.sender][_spender] = 0;
    } else {
      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    }
    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    return true;
  }
}

//
contract SimpleToken is StandardToken {

  string public constant name = "myToken";
  string public constant symbol = "MeT";
  uint8 public constant decimals = 18; 

  uint256 public constant INITIAL_SUPPLY = 100000 * (10 ** uint256(decimals));

  function SimpleToken() public {
    totalSupply_ = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
    emit Transfer(0x0, msg.sender, INITIAL_SUPPLY);
  }
}
