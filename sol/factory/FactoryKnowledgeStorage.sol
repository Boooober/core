import 'thesaurus/KnowledgeStorage.sol';

library FactoryKnowledgeStorage {
    function create() returns (KnowledgeStorage)
    { return new KnowledgeStorage(); }
}
