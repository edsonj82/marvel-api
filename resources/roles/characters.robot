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