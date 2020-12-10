# study
study

1
TypeScript의 소개와 개발 환경 구축

https://poiemaweb.com/typescript-introduction

2
One-click Login with Blockchain: A MetaMask Tutorial

https://www.toptal.com/ethereum/one-click-login-flows-a-metamask-tutorial

https://github.com/amaurymartiny/login-with-metamask-demo

3
blochchain - node.js
https://hackernoon.com/learn-blockchains-by-building-one-117428612f46

https://github.com/arihantdaga/blockchain-basic-example-nodeJs


4
The ultimate end-to-end tutorial to create and deploy a fully decentralized Dapp in ethereum

https://medium.com/ethereum-developers/the-ultimate-end-to-end-tutorial-to-create-and-deploy-a-fully-descentralized-dapp-in-ethereum-18f0cf6d7e0e

https://github.com/merlox/casino-ethereum
  
5 Two-Factor authentication with Smart Contracts

https://blog.softwaremill.com/2-factor-authentication-with-smart-contracts-edd325f08b7a

https://github.com/Zuchos/tufa/


6 truffle

    $ npm install -g npm
    $ npm install -g -production windows-build-tools
    $ npm install -g ethereumjs-testrpc
    $ npm install -g truffle


7 node.js – NodeJS UDP 멀티 캐스트 방법

https://codeday.me/ko/qa/20190325/148681.html

8 node.js – Nodejs 파일에서 Web3js 함수를 호출하는 방법

https://codeday.me/ko/qa/20190720/1111203.html


9  The Ultimate Ethereum Dapp Tutorial (How to Build a Full Stack Decentralized Application Step-By-Step)

http://www.dappuniversity.com/articles/the-ultimate-ethereum-dapp-tutorial


10  Full Stack Hello World Voting Ethereum Dapp Tutorial — Part 1

https://medium.com/@mvmurthy/full-stack-hello-world-voting-ethereum-dapp-tutorial-part-1-40d2d0d807c2

11 Full Stack dApp Tutorial Series

https://kauri.io/collection/5b8e401ee727370001c942e3/full-stack-dapp-tutorial-series

12  npm run start
 
    "scripts": {
        "start": "nodemon ./bin/www"   
    },
  
 13  solidify string compare
 
      from
      if (username == "deepak" && password == "123") //error: operator == is not compatible with string ?
        {
            return true;
        } 
     
     to
     
     function compareStrings (string memory a, string memory b) public view 
       returns (bool) {
       return (keccak256(abi.encodePacked((a))) == keccak256(abi.encodePacked((b))) );
       }
 
 13  Struct solidity
 
 https://coursetro.com/posts/code/102/Solidity-Mappings-&-Structs-Tutorial
 
    pragma solidity ^0.4.18;

    contract Courses {
    
    struct Instructor {
        uint age;
        string fName;
        string lName;
    }
    
    mapping (address => Instructor) instructors;
    address[] public instructorAccts;
    
    function setInstructor(address _address, uint _age, string _fName, string _lName) public {
        var instructor = instructors[_address];
        
        instructor.age = _age;
        instructor.fName = _fName;
        instructor.lName = _lName;
        
        instructorAccts.push(_address) -1;
    }
    
    function getInstructors() view public returns(address[]) {
        return instructorAccts;
    }
    
    function getInstructor(address _address) view public returns (uint, string, string) {
        return (instructors[_address].age, instructors[_address].fName, instructors[_address].lName);
    }
    
    function countInstructors() view public returns (uint) {
        return instructorAccts.length;
    }
    
    }


14 Truffle: Adding a frontend with react box

https://kauri.io/article/86903f66d39d4379a2e70bd583700ecf/v14/truffle:-adding-a-frontend-with-react-box

15  javascript jquery toastr.js 플러그인으로 깔끔한 토스트 메시지 구현

https://www.leafcats.com/113

각 임포트 해 주면 되겠다.

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <!-- Toastr -->
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" />
   	<script src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>


Toastr는 기본적으로 아래 네개의 기본 함수를 제공한다.

    toastr.success('www.leafcats.com', 'Toastr success!');
    toastr.info('www.leafcats.com', 'Toastr info!');
    toastr.warning('www.leafcats.com', 'Toastr warning!');
    toastr.error('www.leafcats.com', 'Toastr error!');

example 

    $("#test1").click(function(){
                  toastr.options = {
                      closeButton: true,
                      progressBar: true,
                      showMethod: 'slideDown',
                      timeOut: 4000
                  };
                  toastr.success('www.leafcats.com', 'Toastr success!');
    });

https://codeseven.github.io/toastr/demo.html

https://github.com/CodeSeven/toastr/blob/master/demo.html

16  비트인포차트

https://bitinfocharts.com/


17

    <script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/3.1.2/rollups/aes.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/3.1.2/rollups/sha256.js"></script>
    <script type="text/javascript">
    
    let message = "Hello World!!"; 
    let password = "haveaniceday";
    
    let encrypt = CryptoJS.AES.encrypt(message, password);
    let decrypted = CryptoJS.AES.decrypt(encrypt, password );
 
    // toString 출력
    let text = decrypted.toString(CryptoJS.enc.Utf8);
    </script>


18  CryptoJS 자바스크립트

https://code.google.com/archive/p/crypto-js/

CryptoJS 라이브러리 이용 (CryptoJS Homepage)
자세한 내용은 소스보기로 보세요.
1. 해쉬함수 계산
1. 각 해쉬함수 결과 계산하기
입력메시지: 해쉬함수 테스트 메시지

     CryptoJS.MD5(message): 3b3efaef60823b2e8ad278904f2eecde  (32bytes)
     
     CryptoJS.SHA1(message): 46054dc97ba4c799f85c825b975dfbc32355c600  (40 bytes)
     
     CryptoJS.SHA256(message): 80bced65611406b913ba0c177961b791012106744345a401afdcd3b0281c20b9  (64 bytes)
     
     CryptoJS.SHA512(message): 86d4bab0777e49bc43c4f21d3706f3249d8a891720856869d3f6034f240f6bcf00414329211af7553ffb1290eb20ec769e51ff6580c604c1c2ba6fbee54471fd  (128 bytes)
     
     CryptoJS.SHA3(message): f8036624f0a2f702d21b36b66b6bdf738e1cb7a8f137e32f2a367a2752137f7d03669f474113732e297c86761aafbe88236938821e4eeaa6c8bba762edae6497  (128 bytes)
     
     CryptoJS.RIPEMD160(message): 01eb85f019fafb66096a59b4bfd8c6fd48b75d42  ( 40 bytes)
     

2. 출력값 인코딩 바꾸기
RIPEMD160 해쉬값(+Base64 Encoding): AeuF8Bn6+2YJalm0v9jG/Ui3XUI=

3. 입력메시지가 여러개일 경우의 Progressive Hashing
입력메시지1: Message 1
입력메시지2: Message 2
입력메시지3: Message 3
SHA256 해쉬값: 869908b9a19f3cb5724b71ed383a0dee8e0938dcd40f6681bcd28983ebb42d99

2. 메시지인증코드 HMAC
1. 메지시인증코드 테스트
입력메시지: 메시지인증코드 테스트 메시지
비밀키: 메시지인증코드 비밀키

2. 입력메시지가 여러개일 경우의 Progressive HMAC
HMAC key: Secret Passphrase
입력메시지1: Message 1
입력메시지2: Message 2
입력메시지3: Message 3

3. 패스워드 기반 키생성함수 (PBKDF2)
사용자가 입력하는 패스워드를 직접 비밀키로 사용하는 것은 고정된 키를 사용하게 되어 사전공격 등의 방법이 가능하므로 보안성에 문제가 많다. 이를 해결하기 위하여 패스워드 기반 키생성함수(PBKDF)를 이용하는데 (1)사용자 입력의 패스워드, (2)랜덤한 salt값, (3)반복횟수(iteration)값을 이용하여 난수처럼 보이는 암호키를 생성하여 사용한다. salt값과 반복횟수값은 공격자의 사전공격을 어렵게 하는 중요한 요소이다.

사용자 입력 패스워드: Secret Passphrase
랜덤한 salt값: 9f8b61c6030b5e53c8dafaa814d98dbe

4. 대칭키 암호화
1. AES 암호화
평문: 대칭키암호화 테스트
비밀키: Secret Passphrase
5. Encoders
여러가지 인코딩 포맷들간의 변환 테스트 : Base64, Latin1, Hex, WordArray

    Latin1: CryptoJS.enc.Latin1
    Base64: CryptoJS.enc.Base64
    HEX: CryptoJS.enc.Hex
    WordArray: CryptoJS.enc.Utf8

parse()는 Hex로 변환, stringify()는 Hex를 원래 포맷으로 변환

    words: 48656c6c6f2c20576f726c6421
    base64: SGVsbG8sIFdvcmxkIQ==

    words: 48656c6c6f2c20576f726c6421
    latin1: Hello, World!

    words: 48656c6c6f2c20576f726c6421
    hex: 48656c6c6f2c20576f726c6421

    words: 48656c6c6f20776f726c6421
    utf8: Hello world!
    
    
    
  CryptoJS with Node.js
  
  $ npm install crypto-js
  
        let CryptoJS = require("crypto-js");
        let token = CryptoJS.SHA256(code.toString() + CryptoJS.SHA256(password).toString()).toString();
        
        

19 UTF-8 string length & byte counter

https://mothereff.in/byte-counter


20  Flask + fullcalendar Sample

https://github.com/ParkMinKyu/scheduler


21  GitHub - anders94/blockchain-demo: A web-based demonstration of blockchain concepts

https://github.com/anders94/blockchain-demo

22 GitHub - amand1996/Votechain: Decentralised Elections using Blockchain

https://github.com/amand1996/Votechain

23  GitHub - Savjee/SavjeeCoin: A simple blockchain in Javascript. For educational purposes only

https://github.com/Savjee/SavjeeCoin


https://github.com/KrunalLathiya/JavascriptBlockchain

https://medium.com/caulink/javascript%EB%A1%9C-%EB%B8%94%EB%A1%9D%EC%B2%B4%EC%9D%B8-%EB%A7%8C%EB%93%A4%EA%B8%B0-1-fab57b25e90b

https://github.com/nambrot/blockchain-in-js

https://github.com/sadarshannaiynar/js-blockchain

https://github.com/anders94/blockchain-demo/

https://blockgeeks.com/guides/code-a-bitcoin-blockchain-in-javascript/


24  커스텀 모듈 logger

http://jeonghwan-kim.github.io/series/2018/12/10/node-web-10_logger.html

logger.js

    const logger = () => (req, res, next) => {
      const log = `${req.method} ${req.url}`
      console.log(log)
      next()
    }

    module.exports = logger

index.js
   
    const logger = require('./middlewares/logger');
    app.use(logger()) // 로그 미들웨어 추가

25  세션의 사용법과 express-session

https://zzdd1558.tistory.com/178

npm install --save express-session

    let sessionParser = require('express-session');
    let router = express.Router();

    /** express-session 미들웨어를 사용하기위해 app에 등록*/
    app.use(sessionParser({
        secret: 'soto',
        resave: true,
        saveUninitialized: true
    }));

    router.route('/').get(function (req, res) {
        req.session.user = {
            "name" : "Master soto",
            "createCurTime" : new Date()
        }
        console.log(`Have a nice day! `);
    })

26  크롬 개발자 도구를 이용한 자바스크립트 디버깅  

https://subicura.com/2018/02/14/javascript-debugging.html

27  node.js 로의 개발을 하게 되면서 테스트 및 디버깅, 통계 등의 사용을 위해 로그를 남겨야할 필요성

https://mungmungdog.tistory.com/34


28  Debugging Node.js with Chrome DevTools

https://medium.com/@paul_irish/debugging-node-js-nightlies-with-chrome-devtools-7c4a1b95ae27

    $  node --inspect index.js
    or
    $ node --inspect-brk index.js
    (# Break on the first statement of the script with --inspect-brk)

    chrome://inspect
    Click the Open dedicated DevTools for Node link.

     $ node --inspect --debug-brk index.js


29  DTube App
This is the main javascript application you can use on d.tube. This is probably the starting point for anyone wanting to contribute to d.tube.

https://github.com/castonetwork/dtube

https://github.com/castonetwork/dtube.git


30 HTML5, CSS, Javascript

http://webprogramming.co.kr/index

생활코딩, 칸 아카데미, 노마드 코더 입니다.
생활코딩 
 https://www.youtube.com/watch?v=tZooW6PritE&list=PLuHgQVnccGMDZP7FJ_ZsUrdCGH68ppvPb

칸 아카데미 
 https://ko.khanacademy.org/computing/hour-of-code/hour-of-html/pt/html-basics

노마드 코더 
 https://www.youtube.com/watch?v=pEE_uJ-joUA

31 NW.js를 통한 웹 언어로 데스크톱용 어플리케이션 생성

http://blog.engintruder.com/219

32 크로스 플랫폼 PC 어플개발1 

http://busy.org/@urobotics/pc-1

33 자바스크립트 난독화 시키기

 https://obfuscator.io/
 
 https://github.com/javascript-obfuscator/javascript-obfuscator-ui
 
 
 
 
 32. jQuery button event
 
	<script type="text/javascript">
	$(document).ready(function(){
           $(".buttons").bind("click", function(){
			alert("click " + $(this).text());
		});	
        });

33 javascript button

	<html>
	<head>
	<title>Insert title here</title>
	</head>
	<SCRIPT LAUNGUAGE='JAVASCRIPT'>                     // 자바 스크립트 시작
		  function test(){                                          // test라는 함수 정의
			     alert("버튼을 클릭하셨습니다.");           // 실행코드
		   }
	</SCRIPT>                                                        // 자바 스크립트 종료
	<body>

	<FORM>
	       <INPUT type='BUTTON' value='버튼' onclick='test()'>  // 이벤트 부여
	</FORM>

	</body>
	</html>


34 D3.js Chart

https://jeong-pro.tistory.com/149


35  Building Decentralized Apps With Ethereum and JavaScript

https://programtheblockchain.com/posts/2017/12/13/building-decentralized-apps-with-ethereum-and-javascript/

35 nodejs MongoDB

https://www.tutorialsteacher.com/nodejs/access-mongodb-in-nodejs

https://www.tutorialsteacher.com/

36  Getting Started with Puppeteer  (node create pdf)
https://www.sitepoint.com/author/akadam/

https://www.sitepoint.com/build-a-simple-web-server-with-node-js/


37 React Native login
https://www.sitepoint.com/author/wancheta/


38 How to debug the react-native
https://www.sitepoint.com/tools-for-debugging-react-native/

38 블록체인 전자지갑 
https://github.com/blockchain/service-my-wallet-v3


39  Creating Bitcoin Wallets in JS

https://medium.com/blockthought/creating-bitcoin-wallets-in-js-69c0773c2954

40  react native and android native

https://www.botreetechnologies.com/blog/how-to-build-a-react-native-android-bridge


41  programming examples

https://www.polarsparc.com/xhtml/

42 react examples

https://ko.reactjs.org/community/examples.html

43 uport
https://github.com/uport-project/uport-cli-client

https://medium.com/@yusulism/%EC%9E%90%EA%B8%B0-%EC%A3%BC%EA%B6%8C-%EC%8B%A0%EC%9B%90%EA%B3%BC-%EA%B5%AC%EC%84%B1-%EC%9A%94%EC%86%8C-self-sovereign-identity-452df0e36936

https://github.com/uport-project/ethr-did

https://github.com/uport-project/ethr-did-registry

https://www.blockchainhub.kr/bbs/board.php?bo_table=symverse_lecture&wr_id=108

https://brunch.co.kr/@metadium/92

https://brunch.co.kr/@metadium/137

https://brunch.co.kr/@metadium/126

https://brunch.co.kr/@metadium/127

https://brunch.co.kr/@metadium/126

https://brunch.co.kr/@metadium/127

https://github.com/uport-project/ethr-did/blob/develop/package.json

https://www.slideshare.net/SSIMeetup/decentralized-identifiers-dids-the-fundamental-building-block-of-selfsovereign-identity-ssi


https://www.semanticscholar.org/paper/A-Blockchain-Based-Authentication-and-Security-for-Li-Peng/5ad482a8e54b752155cd32da8ee68cd9c4bb29e7


https://github.com/blockstack-packages/blockchain-id-deprecated/wiki/Blockchain-Auth

https://github.com/WebOfTrustInfo/rwot1-sf/blob/master/topics-and-advance-readings/Decentralized-Authentication-with-Blockchain-Auth.md

44 DAppOAuth

https://github.com/dapperlabs/dappauth.js

45 xmind for windows

https://software.naver.com/software/summary.nhn?softwareId=MFS_120452#


46 HTML study

http://www.soen.kr/html5/


47 react webtoon

https://github.com/yunyong/react-tutorial-webtoon

48 React To-Do List

https://velopert.com/3480

49  플로우 챠트 그리기

https://www.draw.io/


50 jwt.io

https://jwt.io/

51 did

https://developer.uport.me/credentials/transactions

52 Parcel - 쉽고 빠르고 강력한 웹앱

https://heropy.blog/2018/01/20/parcel-1-start/


53  solidity ether send


	pragma solidity 0.5.1;

	contract ERC20Token {
	    string public name;
	    mapping(address => uint256) public balances;

    constructor(string memory _name) public {
        name = _name;
    }

    function mint() public {
        balances[tx.origin] ++;
    }
	}

	contract MyToken is ERC20Token {
	    string public symbol;
	    address[] public owners;
	    uint256 public ownerCount;

    constructor(
        string memory _name,
        string memory _symbol
    )
        ERC20Token(_name)
    public {
        symbol = _symbol;
    }

    function mint() public {
        super.mint();
        ownerCount ++;
        owners.push(msg.sender);
    }

   }

https://github.com/pbrudny/learning-solidity-2018


 1contract Fixed {
 2    ...
 3
 4    function withdraw() external {
 5        uint256 amount = balanceOf[msg.sender];
 6        balanceOf[msg.sender] = 0;
 7        (bool success, ) = msg.sender.call.value(amount)("");
 8        require(success, "Transfer failed.");
 9    }
10}


	contract TransferEtherFrom{
		//Declaring an instance of TransferEtherTo contract
		TransferEtherTo instance;

	constructor(){
	    //Initializing TransferEtherTo contract
	    instance = new TransferEtherTo();
	}

	//Returns balance of TransferEtherFrom contract
	function getBalance() returns(uint){
	    return address(this).balance;
	}

	//Returns balance of TransferEtherTo contract
	function getBalanceInstance() returns(uint){
	    return instance.getBalance();
	}
	//Transfers ether to other contract
	function transfer() payable{
	    address(instance).send(msg.value);
	}

	//Fallback function to receive and transfer Ether
	function() payable{
	    address(instance).send(msg.value);
	}
	}

https://github.com/rogargon/simple_bank
https://www.codementor.io/@rogargon/exercise-simple-solidity-smart-contract-for-ethereum-blockchain-m736khtby


	function Transfer(uint amount,address reciever){
	    // check sender balance is less than of amount which he wants to send.
	    if(balance[msg.sender] < amount){
		return;
	    }
	   // decrease sender's balance. 
	    balance[msg.sender] = balance[msg.sender] - amount;
	   // increase reciever's balance.
	    balance[reciever] = balance[reciever] + amount;  

	  //  event
	  //  transaction(msg.sender,reciever,amount);
	}


https://fravoll.github.io/solidity-patterns/secure_ether_transfer.html

	// This code has not been professionally audited, therefore I cannot make any promises about
	// safety or correctness. Use at own risk.
	contract EtherReceiver {

	    function () public payable {}
	}

	contract EtherSender {

	    EtherReceiver private receiverAdr = new EtherReceiver();

	    function sendEther(uint _amount) public payable {
		if (!address(receiverAdr).send(_amount)) {
		    //handle failed send
		}
	    }

	    function callValueEther(uint _amount) public payable {
		require(address(receiverAdr).call.value(_amount).gas(35000)());
	    }

	    function transferEther(uint _amount) public payable {
		address(receiverAdr).transfer(_amount);
	    }
	}


54 node login session mysql

https://strongstar.tistory.com/41

https://github.com/hanbyeolkang/nodeStudy/blob/master/session/app_session.js

55 Token generator

https://vittominacori.github.io/erc20-generator/

56 HTML  charref

https://dev.w3.org/html5/html-author/charref

57 장고로 인스타그램 만들기

https://lhy.kr/lectures/django/instagram/

58 git local setting

	git config --local user.name "a-user-only-for-this-repository"
	git config --local user.email "and-an-email-as-well@gmail.com"
	git config --list

59  자바스크립트 표준 스타일 - 코딩 규약

https://blog.naver.com/PostView.nhn?blogId=bkcaller&logNo=221314921419&parentCategoryNo=&categoryNo=171&viewDate=&isShowPopularPosts=true&from=search

	JS 표준 스타일은 다음과 같은 규약이 적용된다.
	■들여쓰기 시 공백 2개 사용
	■문자열에 작은 따옴표('') 사용
	■미사용변수는 정의하지 않는다.
	■예약어 뒤에는 공백을 추가함
	■함수 선언 괄호 앞에서 공백 추가
	■ == 대신 ===을 사용
	■ 공백 사이에 연산자를 넣어라
	■ 쉼표 뒤에 공백이 있어야 한다.
	■else 구문은 중괄호와 같은 줄에 둬야 한다.
	■여러 줄의 if 구문을 사용할 경우 중괄호를 사용해야 한다.
	■ 함수에 매개변수 err가 있을 경우 항상 처리해야한다.
	■ 브라우저 전역 접두어인 window를 붙여야한다.
	다만 document, console, navigator를 사용할 경우 생략할 수 있다.
	■여러 줄의 공백을 허용하지 않는다.
	■ var 선언의 경우 하나씩 선언해야한다.
	■ 조건부 할당은 추가적으로 괄호로 묶는다.
	■ 한 줄을 중괄호로 처리할 경우 공백을 추가한다.
	■변수와 함수의 이름에는 캐멀케이스 사용
	■ eval( ) 사용 금지

	자동으로 스타일을 변환해주는 " standard " 라는 도구가 있습니다.
	npm을 사용해서 설치할 수 있다. JS 표준 스타일을 적용하고 싶을 때는 다음과 같은 명령어를 입력합니다.
	" 프로젝트에 스타일을 적용하는 경우 "
	$ npm install standard --save-dev

	" 전역 도구로 사용할 경우 "
	$ npm install standard --global


60 상업적으로 사용 가능한 무료 이미지

https://www.yoondesign-m.com/352

https://morguefile.com/

https://pixabay.com/

https://unsplash.com/

https://getrefe.tumblr.com/

https://gratisography.com/

https://littlevisuals.co/

http://photopin.com/

http://letscc.net/

https://superfamous.com/

https://publicdomainvectors.org/ko/


61 Dronekit

	$ sudo apt update
	 $ sudo apt upgrade
	 
	$ sudo apt-get install python3
	 
	$ sudo apt install python-dev python-pip
	
	$ pip  install dronekit
 	$ pip  install dronekit-sitl
	
	$ sudo reboot
	
	$ dronekit -sitl copter
	
	$ git clone https://github.com/dronekit/dronekit-python.git
	
	$ cd dronekit-python/examples/vehicle_state
	
	$ python3 vehicle_state.py
	
	( $ pip install -r requirements.pip)
	
	https://www.sauru.so/blog/python-web-frameworks/
	

62  Single Page Application 개발 방법 비교
	
https://poiemaweb.com/js-spa


   	# 전통적 링크 방식  
   	$ npm run link
	# AJAX 방식
	$ npm run ajax
	# Hash 방식
	$ npm run hash
	# PJAX 방식
	$ npm run pjax
	
63 OAUTH 구현

https://github.com/oauthinaction/oauth-in-action-code


64 database type

	Name	Type
	We recommend to use PostgreSQL	RDBMS
	MySQL	RDBMS
	MariaDB	RDBMS
	Firebird	RDBMS
	SQLite	RDBMS
	MongoDB	NoSQL
	RethinkDB	NoSQL
	Redis	Key-Value
	FireBase	Key-Value
	Neo4j	Graph Database
	OrientDB	Graph Database
	ElasticSearch	Fulltext Search Database

	Hosting for web applications
	Provider	Platform
	greenbaum cloud GmbH	Node.js
	Hetzner VPS hosting	Node.js
	EvenNode - Node.js hosting	Node.js
	Heroku	Node.js
	Roští.cz	Node.js
	DigitalOcean VPS hosting)	Node.js
	Amazon VPS hosting)	Node.js
	Microsoft Azure	Node.js
	IBM BlueMix	Node.js
	OpenShift by Red Hat	Node.js
	
	Hosting for databases
	Provider	Platform
	Heroku Databases	PostgreSQL, Redis
	mLab	MongoDB
	Google Cloud Platform	NoSQL, RDBMS
	Compose	MongoDB, RethinkDB, Redis, PostgreSQL, ElasticSearch
	ObjectRocket	MongoDB, Redis
	Amazon RDS	RDBMS
	Microsoft Azure SQL Database	RDBMS, DocumentDB, Redis, Azure Search


65 React Native Expo Start

https://wordbe.tistory.com/entry/React-Native-1-React-Native-%EC%8B%9C%EC%9E%91-Expo?category=1119676

66 우아한 테크코스 스터디 관리 어플리케이션 

https://github.com/lv4-project/Woowahan-Tech-Co-learning


67 인공지능 데이터 셋

https://archive.ics.uci.edu/ml/index.php

https://keras.io/examples/

68 Metamask-extention git

https://github.com/MetaMask/metamask-extension


68. node ethete metamask dapp

https://techbrij.com/deploy-smart-contract-nodejs-ethereum-dapp-part-5

69  Dapp metamask Lottery 

https://medium.com/day34/dapp-%EC%9D%B4%EB%8D%94%EB%A6%AC%EC%9B%80-%EC%8A%A4%EB%A7%88%ED%8A%B8%EC%BB%A8%ED%8A%B8%EB%9E%99%ED%8A%B8-nodejs%EB%A1%9C-%EA%B0%9C%EB%B0%9C%ED%95%98%EA%B8%B0-f423126902c0

70  truffle metamask dapp

https://www.dappuniversity.com/articles/how-to-build-a-blockchain-app

71 HTML + CSS + Javascript

http://www.webprogramming.co.kr/

72 앵귤러 첫걸음

https://github.com/not-for-me/hb-angular-first


73 파이썬의 스핑크스(Sphinx)를 이용한 문서화

https://tech.ssut.me/start-python-documentation-using-sphinx/

https://dandyrilla.github.io/2017-09-07/python-sphinx/


74 무료 아이콘 제공 

https://www.flaticon.com/


75 obd2 raspberry3 Bluetooth

https://github.com/grimlockrocks/pi-bluetooth-obd

pi-bluetooth-obd

76 소프트웨어 라이선스 Copyright 소스에 표시

	/*
	 * #%L
	 * **********************************************************************
	 * ORGANIZATION  :  Pi4J
	 * PROJECT       :  Pi4J :: Java Examples
	 * FILENAME      :  SystemInfoExample.java
	 *
	 * This file is part of the Pi4J project. More information about
	 * this project can be found here:  https://www.pi4j.com/
	 * **********************************************************************
	 * %%
	 * Copyright (C) 2012 - 2019 Pi4J
	 * %%
	 * This program is free software: you can redistribute it and/or modify
	 * it under the terms of the GNU Lesser General Public License as
	 * published by the Free Software Foundation, either version 3 of the
	 * License, or (at your option) any later version.
	 *
	 * This program is distributed in the hope that it will be useful,
	 * but WITHOUT ANY WARRANTY; without even the implied warranty of
	 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	 * GNU General Lesser Public License for more details.
	 *
	 * You should have received a copy of the GNU General Lesser Public
	 * License along with this program.  If not, see
	 * <http://www.gnu.org/licenses/lgpl-3.0.html>.
	 * #L%
	 */
	 
	 
77  Running an Angular 9 client app with the Node.js JWT Auth API

https://jasonwatmore.com/post/2018/08/06/nodejs-jwt-authentication-tutorial-with-example-api


78  git init

	echo "# test" >> README.md
	git init
	git add README.md
	git commit -m "first commit"
	git remote add origin https://github.com/sotolab/test.git
	git push -u origin master
	
	…or push an existing repository from the command line
	git remote add origin https://github.com/sotolab/test.git
	git branch -M master
	git push -u origin master

79  URL 짧게

	http://bitly.ws/

80   구글 검색 크롤링

	https://ai-creator.tistory.com/211
	
	
	https://futurum.tistory.com/353
	
81  유투브 크롤링

	https://shinminyong.tistory.com/4

	https://shinminyong.tistory.com/10?category=835486
	
	
82  파이썬 엑셀 

        https://sozerodev.tistory.com/111

83 KoNLPy (파이썬 한글 형태소 분석기 ) 윈도우 설치 방법

	자바 JDK, JPype까지 설치했으면 이제 pip install을 사용해 KoNLPy 설치
	1 자바 JDK를 설치해주어야 한다.
	(jdk-15_windows-x64_bin.exe)
	https://www.oracle.com/java/technologies/javase-downloads.html
	
	시스템 변수 편집에서 변수이름: JAVA_HOME, 변수 값: 본인이 설치한 jdk 경로를 아래와 같이 입력
	제어판>시스템 및 보안>시스템>고급 시스템 설정>환경변수
	JAVA_HOME : C:\Program Files\Java\jdk-15
	PATH : %JAVA_HOME%/bin
	
	2 install JPype1
	$ pip install --upgrade setuptools

	1 This is a standalone version of Visual C++ 14.2 compiler, you don't need to install Visual Studio 2019.
	https://visualstudio.microsoft.com/ko/downloads/
	
	Tools for Visual Studio 2019 >> Visual Studio 2019용 Build Tools
	(vs_buildtools__634833165.1588257742.exe)
	
	https://visualstudio.microsoft.com/thank-you-downloading-visual-studio/?sku=BuildTools&rel=16

	2 Install Microsoft Build Tools for Visual Studio 2019.
	3 In Build tools, install C++ build tools and ensure the latest versions of MSVCv142
	- VS 2019 C++ x64/x86 build tools and Windows 10 SDK are checked.
	
	4 The setuptools Python package version must be at least 34.4.0.
	
	$ pip install JPype1
	
	$  pip install KoNLPy


84 ping 금지

	$ sudo nano /etc/ufw/before.rules

	-A ufw-before-input -p icmp --icmp-type destination-unreachable -j ACCEPT  → DROP으로 변경
	-A ufw-before-input -p icmp --icmp-type source-quench -j ACCEPT   → DROP으로 변경
	-A ufw-before-input -p icmp --icmp-type time-exceeded -j ACCEPT   → DROP으로 변경
	-A ufw-before-input -p icmp --icmp-type parameter-problem -j ACCEPT   → DROP으로 변경
	-A ufw-before-input -p icmp --icmp-type echo-request -j ACCEPT   → DROP으로 변경
  	
	$ sudo ufw reload
	
	특정 ip를 막을 때
	
	$ nano /etc/ufw/before.rules
	
	# End required lines
	-A ufw-before-input -s 41.104.8.106  -j DROP
	
	# 여러 IP 차단할 때
	-A ufw-before-input -s 41.104.8.106,178.238.232.85,198.136.62.200  -j DROP
	
  
  85 [Node.js] 무료 SSL 인증서 적용 및 HTTPS 서버 구축 방법
  
  https://hellominchan.tistory.com/5
  
  
86 Flutter

	examples
	https://github.com/Apress/beginning-app-development-with-flutter

	0 Flutter install

	https://storage.googleapis.com/flutter_infra/releases/stable/windows/flutter_windows_1.22.4-stable.zip
	
	git clone https://github.com/flutter/flutter.git -b stable
	
	cd flutter
	
	add PATH the D:\workspace\flutter_project\setting\flutter\bin

	1 open administrative shell & install chocolatey

	$ @"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
	
	2 install android-sdk
	$ choco install android-sdk
	
	3 install tools

	$ cd C:\Android\android-sdk\tools\bin

	.\sdkmanager.bat "platforms;android-29" "platform-tools" "build-tools;29.0.3"
	
	
	λ flutter doctor
	Doctor summary (to see all details, run flutter doctor -v):
	[√] Flutter (Channel stable, 1.22.4, on Microsoft Windows [Version 10.0.19619.1000], locale ko-KR)

	[!] Android toolchain - develop for Android devices (Android SDK version 29.0.3)
	    ! Some Android licenses not accepted.  To resolve this, run: flutter doctor --android-licenses
	[!] Android Studio (not installed)
	[√] VS Code (version 1.51.1)
	[!] Connected device
	    ! No devices available

	! Doctor found issues in 3 categories.
	
	
	$ flutter doctor --android-licenses
	
