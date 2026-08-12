
# Documento de Requisitos

## Projeto: _Catálogo de Filmes_

> **Versão:** 1.0  
> **Tipo:** Sistema Web / Aplicação pessoal  
> **Status:** ~temos que definir~

----------

# 1. Introdução

## 1.1 Objetivo

O presente documento tem como objetivo especificar os **requisitos funcionais e não funcionais** do sistema _Catálogo de Filmes_, desenvolvido para permitir que um usuário mantenha uma coleção pessoal de filmes de forma organizada e visual.

O sistema deverá substituir o controle atualmente realizado por planilha, oferecendo recursos para **cadastrar, visualizar, editar e excluir filmes**, além do armazenamento da imagem da capa de cada filme.

----------

# 2. Contextualização

O cliente possui uma coleção pessoal de filmes registrada atualmente em uma planilha. Devido ao crescimento da coleção, a planilha tornou-se difícil de organizar e não atende à necessidade de apresentar visualmente as capas dos filmes.

Dessa forma, o sistema deverá funcionar como uma espécie de **estante virtual de filmes**, permitindo ao usuário visualizar sua coleção de maneira organizada.

> _Importante:_ nesta primeira versão, o sistema será de uso **exclusivamente pessoal**. Funcionalidades futuras, como compartilhamento com amigos, não fazem parte do escopo atual.

----------

# 3. Objetivos do Sistema

O sistema deverá permitir que o usuário:

-   Realize seu **login** de forma segura;
    
-   Cadastre novos filmes;
    
-   Informe os dados básicos de cada filme;
    
-   Adicione uma **imagem da capa/pôster**;
    
-   Visualize sua coleção de filmes;
    
-   Edite filmes já cadastrados;
    
-   Exclua filmes da coleção;
    
-   Mantenha seus dados organizados em um único sistema.
    

----------

# 4. Escopo

## 4.1 Funcionalidades incluídas

O projeto contempla:

1.  Autenticação do usuário;
    
2.  Cadastro de filmes;
    
3.  Listagem/visualização dos filmes;
    
4.  Upload de capa;
    
5.  Edição de filmes;
    
6.  Exclusão de filmes;
    
7.  Validação dos dados informados.
    

## 4.2 Funcionalidades fora do escopo

As seguintes funcionalidades **não fazem parte da primeira versão**:

-   Compartilhamento de filmes com amigos;
    
-   Sistema de avaliações públicas;
    
-   Comentários;
    
-   Curtidas;
    
-   Cadastro de múltiplos usuários;
    
-   Integração com serviços externos de filmes;
    
-   Recomendações automáticas;
    
-   Busca avançada;
    
-   Aplicativo mobile nativo.
    

> Essas funcionalidades poderão ser consideradas em versões futuras.

----------

# 5. Requisitos Funcionais

Os requisitos funcionais descrevem **o que o sistema deverá fazer**.

## RF01 — Autenticação do usuário

O sistema deverá permitir que o usuário acesse sua coleção por meio de **login e senha**.

### Critérios:

-   O usuário deverá informar suas credenciais;
    
-   O sistema deverá validar as credenciais;
    
-   O acesso deverá ser permitido somente quando os dados forem válidos;
    
-   Usuários não autenticados não deverão acessar a coleção.
    

----------

## RF02 — Encerramento da sessão

O sistema deverá permitir que o usuário realize **logout**.

Após o logout, o usuário deverá ser direcionado para a tela de login e não poderá acessar as funcionalidades protegidas sem realizar uma nova autenticação.

----------

## RF03 — Cadastro de filme

O sistema deverá permitir o cadastro de um novo filme.

O formulário deverá possuir, no mínimo, os seguintes campos:

Campo

Descrição

Obrigatório

Título

Nome do filme

_Sim_

Ano

Ano de lançamento

_Sim_

Gênero

Gênero do filme

_Sim_

Nota

Avaliação pessoal de 0 a 10

_Sim_

Capa

Imagem do filme

_Sim_

----------

## RF04 — Validação do cadastro

O sistema deverá validar os dados antes de realizar o cadastro.

Exemplos:

-   O título não poderá estar vazio;
    
-   O ano deverá possuir um formato válido;
    
-   A nota deverá estar entre **0 e 10**;
    
-   A imagem deverá possuir um formato aceito pelo sistema;
    
-   Campos obrigatórios deverão ser preenchidos.
    

Caso exista algum erro, o sistema deverá informar o usuário de maneira clara.

----------

## RF05 — Upload da capa

O sistema deverá permitir que o usuário faça **upload de uma imagem** para representar a capa/pôster do filme.

A imagem deverá ser associada ao respectivo filme e apresentada na coleção.

----------

## RF06 — Visualização da coleção

O sistema deverá apresentar os filmes cadastrados pelo usuário em uma **galeria visual**.

Cada filme deverá apresentar, pelo menos:

-   Imagem da capa;
    
-   Título;
    
-   Ano;
    
-   Gênero;
    
-   Nota.
    

> A apresentação deverá priorizar uma experiência semelhante a uma **estante virtual de filmes**.

----------

## RF07 — Edição de filme

O sistema deverá permitir que o usuário edite as informações de um filme já cadastrado.

O usuário deverá poder alterar:

-   Título;
    
-   Ano;
    
-   Gênero;
    
-   Nota;
    
-   Capa.
    

Após a confirmação, o sistema deverá atualizar os dados do filme.

----------

## RF08 — Exclusão de filme

O sistema deverá permitir que o usuário exclua um filme de sua coleção.

Antes da exclusão definitiva, o sistema deverá solicitar uma **confirmação**, evitando exclusões acidentais.

----------

## RF09 — Identificação dos filmes

Cada filme cadastrado deverá possuir uma identificação única no sistema, permitindo que suas informações sejam corretamente diferenciadas de outros registros.

----------

## RF10 — Controle de acesso

O sistema deverá garantir que somente o usuário autenticado tenha acesso aos filmes cadastrados em sua coleção.

----------

# 6. Requisitos Não Funcionais

Os requisitos não funcionais definem **como o sistema deverá funcionar**, estabelecendo características de qualidade, segurança e desempenho.

## RNF01 — Segurança

As informações de autenticação deverão ser protegidas.

A senha do usuário **não deverá ser armazenada em texto puro**, devendo utilizar mecanismo adequado de criptografia/hash.

----------

## RNF02 — Controle de acesso

As páginas e funcionalidades relacionadas à coleção deverão exigir autenticação.

Um usuário não autenticado não deverá conseguir acessar diretamente os dados dos filmes.

----------

## RNF03 — Usabilidade

A interface deverá ser simples, intuitiva e fácil de utilizar.

O usuário deverá conseguir realizar as operações principais sem necessidade de conhecimentos técnicos.

----------

## RNF04 — Responsividade

O sistema deverá apresentar uma interface adaptável a diferentes tamanhos de tela, incluindo:

-   Computadores;
    
-   Tablets;
    
-   Smartphones.
    

----------

## RNF05 — Desempenho

As páginas principais deverão carregar de maneira rápida e eficiente, evitando operações desnecessariamente pesadas.

As imagens das capas deverão ser tratadas de forma adequada para não comprometer significativamente o desempenho.

----------

## RNF06 — Disponibilidade

O sistema deverá estar disponível sempre que o usuário acessar a aplicação, considerando as limitações e condições do ambiente de hospedagem escolhido.

----------

## RNF07 — Integridade dos dados

O sistema deverá garantir que os dados dos filmes sejam armazenados de forma consistente.

Operações de cadastro, alteração e exclusão não deverão gerar registros inconsistentes.

----------

## RNF08 — Compatibilidade

O sistema deverá funcionar corretamente nos principais navegadores modernos, como:

-   Google Chrome;
    
-   Mozilla Firefox;
    
-   Microsoft Edge;
    
-   Safari.
    

----------

## RNF09 — Armazenamento de imagens

O sistema deverá possuir mecanismo adequado para armazenar e recuperar as imagens das capas dos filmes.

Deverão ser considerados limites de tamanho e formatos de arquivo para evitar o armazenamento de arquivos inadequados.

----------

## RNF10 — Manutenibilidade

O código deverá ser estruturado de maneira organizada e modular, facilitando futuras alterações e a inclusão de novas funcionalidades.

----------

# 7. Regras de Negócio

## RN01 — Nota do filme

A avaliação atribuída pelo usuário deverá estar obrigatoriamente no intervalo:

**0 ≤ Nota ≤ 10**

Valores menores que 0 ou maiores que 10 deverão ser rejeitados.

----------

## RN02 — Campos obrigatórios

O sistema não deverá permitir o cadastro de um filme quando os campos obrigatórios não estiverem preenchidos.

----------

## RN03 — Acesso restrito

Os filmes deverão pertencer à coleção do usuário autenticado e não deverão ser disponibilizados publicamente nesta versão.

----------

## RN04 — Exclusão

A exclusão de um filme deverá ocorrer somente após a confirmação do usuário.

----------

# 8. Casos de Uso Principais

Código

Caso de Uso

Ator

Descrição

UC01

_Realizar Login_

Usuário

Acessar o sistema

UC02

_Visualizar Coleção_

Usuário

Visualizar os filmes cadastrados

UC03

_Cadastrar Filme_

Usuário

Adicionar um novo filme

UC04

_Adicionar Capa_

Usuário

Associar uma imagem ao filme

UC05

_Editar Filme_

Usuário

Alterar informações existentes

UC06

_Excluir Filme_

Usuário

Remover um filme

UC07

_Realizar Logout_

Usuário

Encerrar a sessão

----------

# 9. Fluxo Principal

```text
                 
                    {Tela de Login} 
                    ---------------
                          ┬
                          │
                          ▼
                 
                    {Autenticação}    
                   ----------------
                          │
                          ▼
                       {Coleção     
                      de Filmes}
                    ---------------     
                          ┬
                          │    
                          │    
                          ▼             
       ----------------------------------------
        Cadastrar       Editar       Excluir  
          Filme         Filme         Filme
        ---------     ---------     ---------
        
                    {Coleção Atual.}
                  -------------------

```

----------

# 10. Priorização dos Requisitos

Prioridade

Requisitos

🔴 **Alta**

RF01, RF02, RF03, RF06, RF07, RF08, RF10

🟡 **Média**

RF04, RF05, RF09

🟢 **Baixa/Futura**

Compartilhamento, recomendações, comentários, integrações externas

Os requisitos de prioridade **alta** são considerados essenciais para que o sistema cumpra seu objetivo principal.

----------

# 11. Resumo dos Requisitos

### Requisitos Funcionais

~10 requisitos funcionais principais~

-   Autenticação;
    
-   Logout;
    
-   Cadastro;
    
-   Validação;
    
-   Upload de capa;
    
-   Visualização;
    
-   Edição;
    
-   Exclusão;
    
-   Identificação dos registros;
    
-   Controle de acesso.
    

### Requisitos Não Funcionais

~10 requisitos não funcionais principais~

-   Segurança;
    
-   Controle de acesso;
    
-   Usabilidade;
    
-   Responsividade;
    
-   Desempenho;
    
-   Disponibilidade;
    
-   Integridade;
    
-   Compatibilidade;
    
-   Armazenamento de imagens;
    
-   Manutenibilidade.
    

----------

# 12. Considerações Finais

O sistema _Catálogo de Filmes_ terá como objetivo principal transformar uma coleção atualmente mantida em uma planilha em uma **biblioteca digital pessoal, organizada e visualmente agradável**.

A primeira versão deverá concentrar-se nas operações essenciais de **CRUD**:

> **C**reate → Cadastrar  
> **R**ead → Visualizar  
> **U**pdate → Editar  
> **D**elete → Excluir

Além disso, deverá contar com **autenticação e controle de acesso**, garantindo que a coleção permaneça privada.

A arquitetura deverá ser preparada para possibilitar a evolução futura do projeto, permitindo a inclusão de recursos como _compartilhamento, filtros, busca, estatísticas, favoritos e integração com bases externas de filmes_ sem necessidade de reconstruir completamente o sistema.
