# Ruby_HttParty_Rspec

# CMDER
1 - Baixe o cmder no site 'https://cmder.net/'

2 - Cria uma pasta no disco "C", com a nomeclatura <tools>, dentro dela deixar o cmder.

3 - Abre o cmder, acessar a pasta "C" com o comando 'cd C:\ruby\Projetos\Modelo'


# GEM

4 - Instalar o bundler com o comando 'gem install bundler' no cmder

5 - Cria uma pasta com a nomeclatura "Modelo_API", com comando 'mkdir Modelo_API'

6 - Abre a IDE "Code" com o comando 'code .'

7 - Crie um arquivo dentro da pasta 'Modelo_API, com a nomeclatura "GemFile", sem extensão. Dentro informar as gems:

    source 'https://rubygems.org'

    gem 'cucumber'
    gem 'factory_bot'
    gem 'faker'
    gem 'httparty'
    gem 'rspec'

8 -  No Cmder, acessar a pasta 'Modelo_API' e depois executar o comando 'bundler install', para instalar todas as gems informadas.


# Estrutura do projeto

9 - Após as instalações das gems, iremos criar a nossa estrutura do projeto, com o comando 'cucumber --init':

    create   features
    create   features/step_definitions
    create   features/support
    create   features/support/env.rb

10 - Dentro da pasta "Modelo_API > features > support > env.rb", iremos importar as gems instalar para o projeto:
  
    require 'factory_bot'
    require 'fake'
    require 'httparty'
    require 'rspec'

# Configuração dos ambientes

11 - Iremos configurar o nosso projeto, para rodar em dois ambientes SIT e HLG. Iremos criar uma pasta dentro 'support > config' e depois dois arquivos "sit.yml" e "hlg.yml". Iremos inserir os dados, aonde seria a url da API:
  
  base_uri: 'informar a url'

12 - Agora iremos criar um arquivo na pasta raiz do "Modelo_API" com o nome "cucumber.yml", aonde iremos informar o default dos parametros que ele ira usar para testar e rodar os testes, aonde iremos informar os ambientes e o reports, que seria o relatorios dos testes.

    default: -p html_report -p sit

    ### Ambientes ###
        sit: AMBIENTE=sit
        hlg: AMBIENTE=hlg

    ### Reports ###
        html_report: --format pretty -f html -o reports/features_report.html

13 - Iremmos criar uma pasta "reports" dentro da raiz "Modelo_API", onde iremos disponibilizar os nossos relatorios.

14 - Iremos criar uma pasta "specification" dentro da "features", aonde iremos disponibilizar todas as nossas features.


# Primeiro cenario

15 - Para iniciamos, iremos criar a primeira feature "primeiro.feature", dentro da pasta "specification".

    #language: pt

    @primeiro
    Funcionalidade: Primeiro Cenario
        validar operações dos primeiros cenario

    @primeiro
    Cenário: Validar GET API primeiro
        Quando faço uma requisição GET para o serviço primeiro
        Então o serviço primeiro deve responder com 200
        E retorna a listagem

16 - Agora iremos executar o primeiro cenario, para coletar os metodos que ele irá gerar no resultado, para implementar nos testes. Vamos executar no cmder com o comando 'cucumber -t @primeiro'.

17 - Iremos copia os metodos retornado e colar no novo arquivo "users_steps.rb", que iremos criar dentro da pasta "step_definitions"