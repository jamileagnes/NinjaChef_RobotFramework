***Settings***
Documentation   Suite dos testes de cadastro

Library     SeleniumLibrary     

***Test Cases***
Cadastro Simples
    Dado que acesso a página principal
	Quando submeto o meu e-mail "joao@gmail.com"
	Então devo ser autenticado

***Keywords***
Dado que acesso a página principal
    Open Browser    http://ninjachef-qaninja-io.umbler.net/     chrome      

Quando submeto o meu e-mail "${email}"
    Input Text      id:email    ${email}
    Click Element   css:button[type=submit]     

Então devo ser autenticado
    Wait Until Page Contains Element    class:dashboard 
    Sleep   5    
    Close Browser   