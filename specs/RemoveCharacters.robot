*Settings*
Documentation       Suite de Teste de busca de personagens na API da Marvel

Resource            ${EXECDIR}/resources/base.robot
Library             ${EXECDIR}/resources/factories/Xmen.py


Suite Setup         Super Setup         edsonj82@outlook.com

*Test Cases*
Deve remover um personagem pelo Id
    ${personagem}       Factory Ciclope
    ${ciclope}            POST New Character  ${personagem}
    ${ciclope_id}         Set Variable        ${ciclope.json()}[_id]

    ${response}     DELETE Character By Id    ${ciclope_id}

    Status Should Be        204         ${response}

    ${response2}        GET Character By Id  ${ciclope_id}
    Status Should Be        404         ${response}


Não deve remover o personagem pelo Id


    ${personagem_id}        GET Unique Id                            
    ${response}             DELETE Character By Id         ${personagem_id}
    Status Should Be        404                         ${response}