pragma solidity 0.5.12;

contract promessacompraevenda
{
    string public outorganteVendedor;
    string public outorganteComprador;
    string public imovel;
    uint256 valor;
    uint256 constant numeroMaximoLegalDePrestacoesParaMulta = 1;
    uint256 constant totalMesesContrato = 360;
    uint256 valorPrestacao;
    
    
    constructor(
        string memory nomeoutorganteVendedor,
        string memory nomeoutorganteComprador,
        string memory matriculaDoImovel,
        uint256 valorDoImovel)
        
    public{
        outorganteVendedor = nomeoutorganteVendedor;
        outorganteComprador = nomeoutorganteComprador;
        valor = valorDoImovel;
        imovel = matriculaDoImovel;
        valorPrestacao = valor/totalMesesContrato;
        }
        
    function valorAtualDoImovel() public view returns (uint256){
        return valor;
    }
    
    
    function simulaMulta( uint256 mesesRestantes)
    public
    view 
    returns(uint256 valorMulta)  {
        
        valorMulta = valor*numeroMaximoLegalDePrestacoesParaMulta;
        valorMulta = valorMulta/totalMesesContrato;
        valorMulta = valorMulta*mesesRestantes;
        return valorMulta;
    } 
    
    
}
