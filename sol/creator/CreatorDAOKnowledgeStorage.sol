import 'thesaurus/DAOKnowledgeStorage.sol';

library CreatorDAOKnowledgeStorage {
    event Created(address indexed sender, address indexed instance);

    function create(address _thesaurus, address _shares) returns (DAOKnowledgeStorage) {
        var inst = new DAOKnowledgeStorage(_thesaurus, _shares);
        Created(msg.sender, inst);
        return inst;
    }

    function version() constant returns (string)
    { return "v0.4.0 (075857)"; }

    function abi() constant returns (string)
    { return '[{"constant":false,"inputs":[{"name":"_termName","type":"string"},{"name":"_count","type":"uint256"}],"name":"pollDown","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"shares","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"thesaurus","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[],"name":"kill","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_termName","type":"string"},{"name":"_value","type":"address"},{"name":"_count","type":"uint256"}],"name":"pollUp","outputs":[],"type":"function"},{"inputs":[{"name":"_thesaurus","type":"address"},{"name":"_shares","type":"address"}],"type":"constructor"}]'; }
}