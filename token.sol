// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


contract ScaleToken is ERC20, Ownable {
  
    // create token
    constructor() ERC20("Token", "Symbol") {
        _mint(msg.sender, 1000 * 10**18);
    }


    // token transfer method
    function transfer(address recipient, uint256 amount) public virtual override returns (bool) {
      _transfer(_msgSender(), recipient, amount);
      return true;
}
  
  //  mint function
    function mintToken(address beneficiary, uint256 amount) public {
        _mint(beneficiary, amount * 10**18);
    }
}
