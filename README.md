# Learn-solidity-with-basic-contracts
I just wrote some basic contracts in solidity for learning purpose, it includes four contracts, OddNumber, EvenNumber, PayableContract, SalelsContract.
## OddNumber.sol
In this contract there are two methods the one who sets the limits and second who returns the value of odd numbers.

      function setLimit(uint _limit)
      function getTotalOddNumbers()constant returns (uint)
## EvenNumber.sol
In this contract there are two methods the one who sets the limits and second who returns the value of even numbers.
     
      function setLimit(uint _limit)
      function getTotalOddNumbers()constant returns (uint)
## Sales.sol
Sales contract have some basic tax related functions or you can say this is a tax calculator. It has five various functions.
   
    function setAmount(uint _amount)
    function getTotalStateTax() constant returns (uint)
    function getCountyTax() constant returns (uint)
    function geTotalSalesTax() constant returns (uint)
    function geTotalSalesAmount() constant returns (uint)

## PayableContract.sol
Payable contract works as a online funds transfer machine. Its deposit funds and withdraw it using some major modifier. It has three functions a modifier and an event.

     event UserStatus(string FirstMsg, uint funds, string SecondMsg, address user);
     modifier isClient()
     function depositFunds() payable
     function withdrawFunds(uint amount) isClient
     function getFunds () isClient constant returns (uint)
     
# Support Developer
Donate Some Ether to the Developer. 
    
    Ethereum Address : 0x39886D0BFccc74D8CCb21c44534a41eC626620b3
