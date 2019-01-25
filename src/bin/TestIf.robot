*** Test Cases ***


Example
    ${animal} =    Set Variable    abc
    User Keyword    arg1    ${animal}

    Run Keyword If    '${animal}' == 'A'    Log To Console    animal is a

    FOR    ${animal}    IN    cat    dog
        Log    ${animal}
        Log    2nd keyword
    END
    Log    Outside loop

    IF    '${animal}' == 'b'
        Log To Console    a
    ENDIF
    ${animal} =    Set Variable    A
    Log To Console    before rki



    IF    '${animal}' == 'A'
        Log To Console    IF condition met!!!
    ENDIF


*** Keywords ***

User Keyword
    [Arguments]    ${arg1}    ${arg2}

    Log To Console    arg1
    Log To Console    arg2