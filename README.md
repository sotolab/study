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
