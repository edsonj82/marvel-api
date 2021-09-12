*Settings*
Documentation       Suite de Teste do cadastro de personagens na API da Marvel

Resource            ${EXECDIR}/resources/base.robot

Library             ${EXECDIR}/resources/factories/Mv.py

*Test Cases*
Deve cadasrar um personagem

    Set Client Key     edsonj82@gmail.com

    &{personagem}       Factory Mv

    ${response}         POST                
    ...                 ${BASE_URL}/characters        
    ...                 json=${personagem}      
    ...                 headers=${HEADERS}
    ...                 expected_status=any

    Status Should Be    200     ${response}


Não deve cadastrar com o mesmo nome

    # Dado que Thanos ja existe no sistema
    ${personagem}       Factory Mv

    POST                ${BASE_URL}/characters
    ...                 json=${personagem}      
    ...                 headers=${HEADERS}
    ...                 expected_status=any

    # Quando faço uma requisição POST para a rota characters
    ${response}         POST                
    ...                 ${BASE_URL}/characters        
    ...                 json=${personagem}      
    ...                 headers=${HEADERS}
    ...                 expected_status=any

    # Então o código de retorno deve ser 409
    Status Should Be    409     ${response}
