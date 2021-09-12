*Settings*
Documentation       Suite de Teste do cadastro de personagens na API da Marvel

Library             RequestsLibrary

*Test Cases*
Deve cadasrar um personagem

    &{usuario}          Create Dictionary       email=edsonj82@gmail.com
    ${response}         POST                http://marvel.qaninja.academy/accounts          json=${usuario}    

