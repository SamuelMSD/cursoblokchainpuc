pragma solidity 0.5.12;

contract locacao {
    
    string public locatario;
    string public locador;
    string objeto;
    uint256 valor;
    uint256 prazoMaximoDeLocacao = 24;
    
    
        constructor(
        string memory nomeLocatario,
        string memory nomeLocador,
        string memory especificacaoDoObjeto,
        uint256 valorTotalDaLocacao,
        uint256 prazoDeLocacao
        )
        
    public {
        locador = nomeLocador;
        locatario = nomeLocatario;
        objeto = especificacaoDoObjeto;
        valor = valorTotalDaLocacao;
        prazoMaximoDeLocacao = prazoDeLocacao;
        
    }
    
    function valorMensalDaLocacao(uint valorTotalDaLocacao, uint prazoDeLocacao) public view returns(uint256) {
        valorMensalDaLocacao = valorTotalDaLocacao/prazoDeLocacao;
        return valorMensalDaLocacao;
    } 
}
