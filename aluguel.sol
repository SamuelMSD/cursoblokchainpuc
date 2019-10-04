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
}
