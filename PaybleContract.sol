
/*
 * %W% %E% Hamza Yasin
 *
 * Copyright (c) 2017-2018 BlockChain Expert Solutions. All Rights Reserved.
 *
 * This software is the confidential and proprietary information of Miranz
 * technology. You shall not disclose such Confidential Information and 
 * shall use it only in accordance with the terms of the license agreement 
 * you entered into with Miranz.
 *
 */
pragma solidity ^0.4.0;
/*
 * This contract is written for the basic understanding of solidity contract.
 * @version 1.10 25 Aug 2017
 * @author Hamza Yasin
 */
contract PayableContract{
    
    address client;             // Client address
    bool  _switch = false;      // switching for funds withdraw

    // Constructor
    function PayableContract () {
        client = msg.sender;
    }
    
    // This event shows the user status while depositing funds
    event UserStatus(string FirstMsg, uint funds, string SecondMsg, address user);
    
    // this modifier checks eather this is a valid client or not
    modifier isClient() {
        if (msg.sender != client)
             throw;
        else
             _;
    }
    // its a Payble function who holds funds and show userstatus
    function depositFunds() payable{
        UserStatus("Ether Amount :  " , msg.value, " has been transfered from the address: " , msg.sender);
    }
    /* Withdraw funds is a client functions which takes amount as parameter and assure
     * that funds and client is valid or not.
     */
    function withdrawFunds(uint amount) isClient {
        if (client.send(amount))
            _switch = true;
        else
            _switch = false;
    }
    // This functions show your current balance in your address
    function getFunds () isClient constant returns (uint){
        return this.balance;
    }
}