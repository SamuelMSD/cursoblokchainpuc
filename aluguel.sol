pragma solidity 0.5.12;

//para fazer comentarios basta colocar // que ele considera que toda essa linha será um comentário. Se começar com /* funciona também , basta ao final sinalizar com */

contract Aluguel {
    
    string public locatario;
    string public locador;
    // string = "texto", dentro de aspas pode colocar qualquer coisa
    uint256 private valor;
    // unint = numero inteiro
    // address = endereço da carteira do ethereum
    // bool = variaveis como verdadeiro ou falso
    uint256 constant numeroMaximoLegalDeAlugueisParaMulta = 3;
    
    constructor(
        string memory nomeLocador,
        string memory nomeLocatario,
        uint256 valorDoAluguel)
    
    public{
        locador = nomeLocador;
        locatario = nomeLocatario;
        valor = valorDoAluguel;
    }
    function valorAtualDoAluguel() public view returns (uint256){
        return valor;
    }
    function simulaMulta( uint256 mesesRestantes, uint256 totalMesesContrato)
    public
    view 
    returns(uint256 valorMulta) {
        
        valorMulta = valor*numeroMaximoLegalDeAlugueisParaMulta;
        valorMulta = valorMulta/totalMesesContrato;
        valorMulta = valorMulta*mesesRestantes;
        return valorMulta;
    }
    function reajusteAluguel(uint256 percentualReajuste) public
    {
        if(percentualReajuste > 20)
        // o if e o se, onde voce condiciona determinadas funcoes do contrato. Neste caso ele regula o percentual de reajuste em no maximo 20%
        {
            percentualReajuste = 20;
            
        }
        uint256 valorDoAcrescimo = 0;
        valorDoAcrescimo = ((valor*percentualReajuste)/100);
        valor = valor + valorDoAcrescimo;
    }
    
    function aditamentoValorAluguel(uint256 valorCerto) public
    {
        valor = valorCerto;
        
    }
    
    function aplicaMulta(uint256 mesesRestantes, uint256 percentual) public
    {
        require(mesesRestantes<30, "Periodo de contrato invalido");
        for (uint i=1; i<mesesRestantes; i++) {
            valor = valor+((valor*percentual)/100);
        }
    }
    
}
