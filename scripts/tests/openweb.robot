*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***

Abrir Navegador
    Open Browser    http://www.google.com    chrome

*** Test Cases ***

Cenario 1: Acessando o navegador Google Chrome
    Abrir Navegador
