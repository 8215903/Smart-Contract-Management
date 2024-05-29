// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BatteryPercentageChecker {
    uint256 public micoValue;
    string public micoStatus;

    function updateMicoValue(uint256 _micoInput) public {
        if (_micoInput == 100) {
            micoValue = _micoInput;
            micoStatus = "Fullcharge";
        } else if (_micoInput >= 21) {
            micoValue = _micoInput;
            micoStatus = "Stable";
        } else if (_micoInput <= 20 && _micoInput > 0) {
            micoValue = _micoInput;
            micoStatus = "Please charge";
        } else if (_micoInput == 0) {
            micoValue = _micoInput;
            micoStatus = "Power off";
        }
    }
}
    
