*Settings*
Documentation           Suite principal na API da Marvel

Library                 RequestsLibrary
Library                 helpers.py

Resource                routes/characters.robot

*Variables*
${BASE_URL}             http://marvel.qaninja.academy

*Keywords*
Super Setup
    [Arguments]         ${email}
    Set Client Key      ${email}
    Back To The Past    

Set Client Key
    [Arguments]         ${email}

    &{usuario}          Create Dictionary       email=${email}
    
    ${response}         POST                    
    ...                 ${BASE_URL}/accounts          
    ...                 json=${usuario}    

    ${client_key}       Set Variable            ${response.json()}[client_key]
    &{HEADERS}          Create Dictionary       client_key=${client_key}

    Set Suite Variable      ${HEADERS}

Back To The Past
    DELETE              ${BASE_URL}/delorean        headers=${HEADERS}