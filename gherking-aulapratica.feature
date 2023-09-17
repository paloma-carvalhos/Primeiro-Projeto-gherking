#Canario 1

Given que estou logado na plataforma
When finalizo o meu curso 
Then tenho o meu certificado

#Cenario 2

Given que estou logado na plataforma
And Matriculado no curso Gherking do básico ao avançado
When Assito as aulas
Then não tenho o meu certificado disponivel
But possuo aulas assistidas 

#Cenario 3

Feature: Emissão do certificado 

    Eu, como aluno da plataforma 
    Gostaria, de ao completar um curso seja emitido certificado 
    Porque, assim consigo comprovar meu conhecimento técnico 

Background: Estar matriculado no curso Gherking do básico ao avançado 
Given que estou logado na plataforma
And Matriculado no curso Gherking do básico ao avançado

Scenario: Emissão de certificado 
When finalizo o meu curso 
Then tenho o meu certificado

Scenario: Curso em andamento 
When Assito as aulas
Then não tenho o meu certificado disponivel
But possuo aulas assistidas 

#Cenario 4

Feature: Emissão do certificado 

    Eu, como aluno da plataforma 
    Gostaria, de ao completar um curso seja emitido certificado 
    Porque, assim consigo comprovar meu conhecimento técnico 

Background: Estar matriculado no curso Gherking do básico ao avançado 
Given que estou logado na plataforma
And e possuo matricula ativa

Scenario Outline: Scenario Outline name: Emissão de certificado 
And matriculado no curso <nomeCurso>
When finalizo o meu curso 
Then tenho o meu certificado

Examples:
    | nomeCurso |
    | "Gherking do básico ao avançado"  |
    | "7 Principios do teste de software"  |
    | "Operadores logicos"  |

Scenario: Curso em andamento 
When Assito as aulas
Then não tenho o meu certificado disponivel
But possuo aulas assistidas 