# Projeto de pós-graduação - Arquitetura de Software Distribuído - Puc Minas

O objetivo deste projeto é apresentar o projeto de conclusão do curso de **Arquitetura de Software Distribuído**.

- [Etapa 01](#etapa-01)
- [Etapa 02](#etapa-02)
- [Etapa 03](#etapa-03) `*pendente`

<span id="etapa-01"></span>

## **Etapa 1** [Módulo A - Data de Entrega A4 - 15/08/2022](https://pucminas.instructure.com/courses/64585/assignments/505763)

> Todos os aquivos referentes a esta etapa estao no diretorio [etapa-01/](./etapa-01/)

- Apresentação adequada do texto :memo: [DOCX](./etapa-01/projeto-integrado-aisoftware-tracker.docx) | :page_facing_up: [PDF](./etapa-01/projeto-integrado-aisoftware-tracker.pdf)
- Contextualização e problema :memo: [DOCX](./etapa-01/projeto-integrado-aisoftware-tracker.docx) | :page_facing_up: [PDF](./etapa-01/projeto-integrado-aisoftware-tracker.pdf)
- Objetivos :memo: [DOCX](./etapa-01/projeto-integrado-aisoftware-tracker.docx) | :page_facing_up: [PDF](./etapa-01/projeto-integrado-aisoftware-tracker.pdf)
- [Restrições arquiteturais](#restricoes-arquiteturais)
- [Requisitos funcionais](#requisitos-funcionais)
- [Requisitos não funcionais](#requisitos-nao-funcionais)
- [Mecanismos arquiteturais](#mecanismos-arquiteturais)
- [Diagrama de contexto](#diagrama-contexto)
- [Vídeo com apresentação](#video-etapa-01)
- Apresentação [PPTX](./etapa-01/projeto-integrado-aisoftware-tracker.pptx)

<span id="restricoes-arquiteturais"></span>
### Restrições Arquiteturais
- [RA01] - Deve ser usado tecnologias abertas (Open source) para o desenvolvimento de toda a plataforma.
- [RA02] - Deve ser usado o serviço de nuvem da Heroku como provedora da infraestrutura necessária para a plataforma.
- [RA03] - Deve ser usado o serviço oAuth0 JWT para autenticação, com a possibilidade inicial de criação de conta diretamente na plataforma por outro usuário que tenha acesso de ADM.
- [RA04] - Deve-se utilizar uma api de um terceiro, Trackmax, para ter as informações de geolocalização e informções da frota

<span id="requisitos-funcionais"></span>
### Requisitos Funcionais
- [RF01] - Manter Usuários
- [RF02] - Manter Motoristas
- [RF03] - Manter Dispositivos (Veículos)
- [RF04] - Manter Grupos (Clientes)
- [RF05] - Consultar posicionamento de todos os dispositivos no Mapa por latitude e longitude
- [RF05] - Exibir veículos no mapa
- [RF05] - Exibir rota de veículo no mapa
- [RF05] - Exibir lista de veículos com informações basicas, posicionamento e último endereço de posicionamento.
- [RF06] - Consultar e Exportar Relatórios de Rotas 
- [RF07] - Consultar e Exportar Relatórios de Eventos 
- [RF08] - Consultar e Exportar Relatórios de Resumo 

<span id="requisitos-nao-funcionais"></span>
### Requisitos Não Funcionais
- [RNF01] - A plataforma deve habilitar a autenticação baseado no modelo JWT diretamente no sistema.
- [RNF02] - O sistema deve ser responsivo web.
- [RNF03] - O sistema deve ser responsivo para todos os tipos de tela (Computadores, Notebooks, Tablets e Smartphones).
- [RNF04] - O sistema deverá utilizar uma API de terceiro para realizar as persistências de informações dos dispositivos rastreadores.
- [RNF05] - O sistema deve operar 24x7.
- [RNF06] - Apenas usuários com permissão de Admin, tem permissão de criar e editar dados do sistema
- [RNF07] - Usuários operacionais, podem apenas acessar dados de leitura.


<span id="mecanismos-arquiteturais"></span>

### Mecanismos Arquiteturais

Análise	| Design | Implementação
-----   |-----   |-----   |
Persistência | Micro ORM | Dapper
Persistência | Banco de Relacional | Postgres
Front end | Interface de comunicação com o usuário do painel | ASP.NET, Razor, html5, javascript, css
Front end | Navegador Web | Mozilla Firefox / Google Chrome
Teste de Software | Testes Unitários | XUnit
Autenticação | OAuth0 JWT | Microsoft.AspNetCore.Authentication.JwtBearer
Tratamento de exceções | Camada para tratar as exceções criando interações diferentes para usuários e técnicos | ASP.NET e C# 
Build | Linha de comando | Terminal utilizando CLI ASP.NET
Build | Via Pipeline | Heroku pipeline 
Deploy | Pipeline | Heroku / Github 

<span id="diagrama-contexto"></span>

### Diagrama de Contexto

[![diagrama de contexto](./etapa-01/img/diagrama-contexto.drawio.png)](./etapa-01/img/diagrama-contexto.drawio.png)

[![diagrama de contexto](./etapa-01/img/diagrama-contexto.png) Diagrama de contexto drawio](./etapa-01/diagrama-contexto.drawio)

<span id="video-etapa-01"></span>

### Vídeo com apresentação

[![Assistir vídeo](./etapa-01/img/youtube.png) Vídeo com apresentação](https://youtu.be/Kt1YkLTPLBg)


### Referências
> LOCALIZA. **Evolução da frota de veículos no Brasil.**<br/>
> Disponível em: https://frotas.localiza.com/blog/frota-de-veiculo.<br/>
> Acesso em: 10 de agosto de 2022.

> IBGE. **Frota de Veículos.** <br/>
> Disponível em: https://cidades.ibge.gov.br/brasil/pesquisa/22/28120?indicador=28122&tipo=grafico.<br/>
> Acesso em: 10 de agosto de 2022.

> UNISEPE. **O transporte rodoviário movimentando o Brasil.**<br/> 
> Disponível em: https://portal.unisepe.com.br/blog-unisepe/<br >o-transporte-rodoviario-movimentando-o-brasil/. 
> Acesso em: 10 de agosto de 2022.

> SUSEP. **IVR - Índice de veículos roubados.**<br/>
> Disponível em: http://www2.susep.gov.br/menuestatistica/RankRoubo/resp_menu1.asp.<br/> 
> Acesso em: 10 de agosto de 2022.

> MINISTÉRIO DA INFRAESTRUTURA. **Frota de veículos - 2021.** <br/>
> Disponível em: https://www.gov.br/infraestrutura/pt-br/assuntos/transito/conteudo-Senatran/frota-de-veiculos-2021. <br/>
> Acesso em: 10 de agosto de 2022.

<span id="etapa-02"></span>

## **Etapa 2** [Módulo B - Data de Entrega B4 - 15/10/2022](https://pucminas.instructure.com/courses/64585/assignments/505764)

> Todos os aquivos referentes a esta etapa estao no diretorio [etapa-02/](./etapa-02/)

- [Diagrama de container](#diagrama-container)
- [Diagrama de componentes](#diagrama-componentes)
- [Wireframe de telas](#wireframe-telas)
- [Código da aplicação](#codigo-aplicacao)
- Documentação do Projeto :memo: [DOCX](./etapa-02/projeto-integrado-aisoftware-tracker.docx) | :page_facing_up: [PDF](./etapa-02/projeto-integrado-aisoftware-tracker.pdf)

<span id="diagrama-container"></span>
 
### Diagrama de container
[![Diagrama de container](./etapa-02/img/diagramas-container.drawio.png)](./etapa-02/img/diagramas-container.drawio.png)

[![Diagrama de container](./etapa-01/img/diagrama-contexto.png) Diagrama de container drawio](./etapa-02/diagramas.drawio)

<span id="diagrama-componentes"></span>

### Diagrama de componentes
[![Diagrama de componentes](./etapa-02/img/diagramas-componentes.drawio.png)](./etapa-02/img/diagramas-componentes.drawio.png)

[![Diagrama de componentes](./etapa-01/img/diagrama-contexto.png) Diagrama de componentes drawio](./etapa-02/diagramas.drawio)

<span id="wireframe-telas"></span>

### Wireframe de telas

- [Wireframe de telas](https://miro.com/app/board/uXjVPeGQ-7Y=/?share_link_id=352327279950)

<span id="codigo-aplicacao"></span> 

### Código da aplicação
[![Código da aplicação](./etapa-02/img/diagramas-codigo-aplicacao.drawio.png)](./etapa-02/img/diagramas-codigo-aplicacao.drawio.png)
- [POC Aisoftware.Tracker.Admin](https://github.com/igoraujo/aisoftware-tracker-admin)
- [Publicação](https://aisoftware-tracker-admin.herokuapp.com/)
- [UML do Banco de Dados](./etapa-02/img/database-reports-uml.png)
- [Script do Banco de Dados](./etapa-02/report.sql)

<span id="etapa-03"></span>

## **Etapa 3** [Módulo C - Data de Entrega C4 - 15/12/2022](https://pucminas.instructure.com/courses/64585/assignments/505766) `*pendente`

- Análise das abordagens arquiteturais
- Cenários
- Evidências da avaliação
- Resultados obtidos
- Avaliação crítica dos resultados
- Conclusão
- Vídeo de apresentação final


