*Settings*
Documentation       Suite de Teste do cadastro de personagens na API da Marvel

Resource            ${EXECDIR}/resources/base.robot

Library             ${EXECDIR}/resources/factories/Mv.py

*Test Cases*
Deve cadasrar um personagem

    Set Client Key     edsonj82@gmail.com

    &{personagem}       Factory Mv

    ${response}         POST                
    ...                 http://marvel.qaninja.academy/characters        
    ...                 json=${personagem}      
    ...                 headers=${headers}

    Status Should Be    200     ${response}
