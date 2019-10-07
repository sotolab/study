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


