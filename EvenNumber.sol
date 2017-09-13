
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
 
pragma solidity ^0.4.11;

/*
 * This contract is written for the basic understanding of solidity contract.
 * @version 1.10 25 Aug 2017
 * @author Hamza Yasin
 */
 
contract EvenNumber{
    
    uint limit; // users entered limit
    
    // setting the limit
    function setLimit(uint _limit){
        limit = _limit;
    }
    
    // getting the total amount of even numbers within the limit
    function getTotalEvenNumbers()constant returns (uint){
        uint total;
        for (uint index = 1; index <= limit; index++)
        {
            if (index  % 2 == 0)
                total++;
        }
        return total;
     
    }
}
        