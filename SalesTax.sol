
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
 
contract Sales{
        
     uint amount;                //users entered amount
     uint stateTaxPerc = 2;      //state tax percentage
     uint countyTaxPerc = 4;     //county tax percentage
     uint totalStateTax;         //total amount of state tax
     uint totalCountyTax;        //total amount of county tax
     uint totalSalesTax;         //total sales tax
     uint totalSaleAmount;       //the final price after taxes
         
    // Setting the amount , firstly its initial amount will be set as 0
    function setAmount(uint _amount){
        if(_amount >= 0)
            amount = _amount;
     }
     // Here getting the TotalStateTax
     function getTotalStateTax() constant returns (uint){
         totalStateTax = amount * stateTaxPerc;
         return totalStateTax;
     }
     // Here getting the CountyTax 
     function getCountyTax() constant returns (uint){
         totalCountyTax = amount * countyTaxPerc;
         return totalCountyTax;
     }
     // Here getting the TotalSalesTax
     function geTotalSalesTax() constant returns (uint){
         totalSalesTax = totalStateTax + totalCountyTax;
         return totalSalesTax;
     }
     // Here getting the TotalSalesAmount
     function geTotalSalesAmount() constant returns (uint){
         totalSaleAmount = amount + totalSalesTax;
         return totalSaleAmount;
     }

    
}
