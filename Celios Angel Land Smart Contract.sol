pragma solidity ^0.4.18;



/* 
/*      _______      .-''-.    .---.    .-./`)     ,-----.       .-'''-.  
/*     /   __  \   .'_ _   \   | ,_|    \ .-.')  .'  .-,  '.    / _     \ 
/*    | ,_/  \__) / ( ` )   ',-./  )    / `-' \ / ,-.|  \ _ \  (`' )/`--' 
/*  ,-./  )      . (_ o _)  |\  '_ '`)   `-'`"`;  \  '_ /  | :(_ o _).    
/*  \  '_ '`)    |  (_,_)___| > (_)  )   .---. |  _`,/ \ _/  | (_,_). '.  
/*   > (_)  )  __'  \   .---.(  .  .-'   |   | : (  '\_/ \   ;.---.  \  : 
/*  (  .  .-'_/  )\  `-'    / `-'`-'|___ |   |  \ `"/  \  ) / \    `-'  | 
/*   `-'`-'     /  \       /   |        \|   |   '. \_/``".'   \       /  
/*     `._____.'    `'-..-'    `--------`'---'     '-----'      `-...-'   
/*                                                                    
/*
/*
/* The Celios Contract holds funds of Stakers (self-selected caretakers). Each
/* contract represents the value of which they are willing to bet for 'saving'
/* the land i.e. repurposing it to avoid soil erosion. Each contract has a fixed
/* duration - increments are based on multiplying these duration periods. The 
/* contracts come in three stages. First, a setup or funding/staking stage. Second,
/* a phase where a predefined oracle provides an outcome of w



contract Land {
  // Stages of the contract
  enum Stages {
    Setup,
    WaitForOracle,
    AllowWithdrawal
  }

  // Initialialize stage
  Stages public stage = Stages.Setup;


  // Representation of an Angel's stake in a particular piece of land as represented by id
  struct Stake {
    address staker;
    uint32 id;
    uint amount;
  }

  mapping (uint => Stake) public stakes;
  mapping (address => uint) public pendingWithdrawals;

  //address[] stakerAddresses;

  uint public creationTime = now;
  address oracle;
  uint fundingPeriod;








// Function for stakers/angels
function provideStake(uint32 _id)
   payable
   withMoney
   //timedTransitions
   atStage(Stages.Setup) public


function getStake(uint32 _id) public constant returns(address, uint) {

  return (stakes[_id].staker,stakes[_id].amount);

}

function calculatePayouts(uint[32] _risks) internal {

  for (uint i=0; i<256; i++) {
    totalStakesTimesRisk += stakes[i].amount*_risks[i];
  }
  for (i=0; i<256; i++) {
    pendingWithdrawals[stakes[i].staker] += stakes[i].amount*_risks[i]/totalStakesTimesRisk*this.balance;
  }
}



}