// SPDX-License-Identifier: MIT
pragma solidity >=0.5.12 <=0.8.0;

contract ShippingStatus
{
    // Our predefined values for shipping listed as enums
    enum ShipStatus { Pending, Shipped, Delivered }

    // Save enum ShippingStatus in variable status
    ShipStatus private status;

    // Event to launch when package has arrived
    event LogNewAlert(string description);

    // This initializes our contract state (sets enum to Pending once the program starts)
    constructor()  {
        status = ShipStatus.Pending;
    }
    // Function to change to Shipped
    function Shipped() public {
        status = ShipStatus.Shipped;
        emit LogNewAlert("Your package has been shipped");
    }

    // Function to change to Delivered
    function Delivered() public {
        status = ShipStatus.Delivered;
        emit LogNewAlert("Your package has arrived");
    }

    // Function to get the status of the shipping
    function getStatus(ShipStatus _status) internal pure returns (string memory) {
     // Check the current status and return the correct name
     if (ShipStatus.Pending == _status) return "Pending";
     if (ShipStatus.Shipped == _status) return "Shipped";
     if (ShipStatus.Delivered == _status) return "Delivered";
    }

   // Get status of your shipped item
    function Status() public view returns (string memory) {
         ShipStatus _status = status;
         return getStatus(_status);
    }

}