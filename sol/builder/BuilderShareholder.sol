//
// AIRA Builder for Shareholder contract
//
// Ethereum address:
//  - Testnet: 
//

import 'creator/CreatorShareholder.sol';
import './Builder.sol';

/**
 * @title BuilderShareholder contract
 */
contract BuilderShareholder is Builder {
    /**
     * @dev Run script creation contract
     * @param _shares is a shares token address
     * @param _count is a count of shares for transfer
     * @param _recipient is a shares recipient
     * @return address new contract
     */
    function create(string _desc, address _shares, uint _count, address _recipient) returns (address) {
        var inst = CreatorShareholder.create(_desc, _shares, _count, _recipient);
        Owned(inst).delegate(msg.sender);
        
        deal(inst);
        return inst;
    }
}