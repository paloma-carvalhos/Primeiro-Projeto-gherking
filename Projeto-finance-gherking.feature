

#Cenario - BÁSICO

Feature: Login no site de compras

    Eu, como usuario da plaforma de compras
    Gostaria, de fazer login 
    Porque, assim consigo navegar na tela de produtos

Given que acessei o site de compras 
When faço o login
Then Sou direcionado para tela de produtos 

#Cenario - INTERMEDIARIO
Given que acessei o site de compras 
And informei meus dados de acesso incorreto
When tento logar no site 
Then Não consingo acessar 
But uma mensagem de erro é exibida "Nome de usuário e senha não correspondem a nenhum usuário neste serviço"

#Cenario - AVANÇADO 

Background: Login no site de compras
Given que acessei o site de compras
And informei meus dados de usuario

Scenario: Login no site de compras
When digito minha senha 
Then Sou direcionado para tela de produtos 

Scenario: Dados de login incorretos 
When digito a senha de forma incorreta
Then não consigo logar no site 
But é exibido uma mensagem de erro  "Nome de usuário e senha não correspondem a nenhum usuário neste serviço"

#Cenario - AVANÇADO.2

Background: Login no site de compras
Given que acessei o site de compras

Scenario Outline: Login no site de compras
And informei meu usuario <usuario>
When digito minha senha 
Then sou direcionado para pagina de produtos 

Examples:
    | usuario |
    | "CPF" | 
    | "E-mail" | 

