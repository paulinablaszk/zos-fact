pragma solidity ^0.4.24;

import "zos-lib/contracts/Initializable.sol";
import "zos-lib/contracts/application/App.sol";

contract MyContract is Initializable {
    App private app;

    function initialize(App _app) initializer public {
        app = _app;
    }

    function createNewContract() public returns(address) {
        return app.create("zos-fact", "NewContract", 0x69E3a4A7Ff6C1AEff4B096E4A6CF4d094D195a5A, "0x8129fc1c");
    }
    
}