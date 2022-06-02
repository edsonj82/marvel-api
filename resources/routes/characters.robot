*Settings*

Documentation           Ações da rota / characters

*Keywords*
POST New Character
    [Arguments]     ${payload}

    ${response}         POST                
    ...                 ${BASE_URL}/characters        
    ...                 json=${payload}      
    ...                 headers=${HEADERS}
    ...                 expected_status=any

    [return]            ${response}

GET Character By Id
    [Arguments]         ${character_id}

    ${response}         GET
    ...                 ${BASE_URL}/characters/${character_id}
    ...                 headers=${HEADERS}
    ...                 expected_status=any

    [return]            ${response}

DELETE Character By Id
    [Arguments]         ${character_id}

    ${response}         DELETE
    ...                 ${BASE_URL}/characters/${character_id}
    ...                 headers=${HEADERS}
    ...                 expected_status=any

    [return]            ${response}