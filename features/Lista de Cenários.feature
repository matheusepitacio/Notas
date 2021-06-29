Feature: Grades
    As a: Teacher
    I want to: Add, Update and Delete student grades
    So That: I can manage my classroom performance

Scenery: Inserção bem sucedida de nota
    Given: O professor está na página "Notas" do aluno "Pedro" 
    And: "Pedro" não tem notas alocadas no espaço "Prova 1", "Prova 2", "Prova 3"
    And: O espaço "Media" está vazio
    When: O professor preenche a nota do espaço "Prova 1" com "8,5"
    Then: Ele continuará na página "Notas"
    And: A nota "8,5" estará alocada ao espaço "Prova 1"
    And: Os espaços "Prova 2", "Prova 3" continuam sem nota alocada
    And: O espaço "Media" continua vazio

Scenery: Inserção de nota mal sucedida
    Given: O professor está na página "Notas" do aluno "Pedro" 
    And: "Pedro" não tem notas alocadas no espaço "Prova 1", "Prova 2", "Prova 3"
    And: O espaço "Media" está vazio
    When: O professor preenche a nota do espaço "Prova 1" com "Lrt"
    Then: Uma mensagem de erro aparece na tela
    And: O espaço "Prova 1" continuará vazio
    And: Os espaços "Prova 2", "Prova 3" continuam sem nota alocada
    And: O espaço "Media" continua vazio 

Scenery: Atualização de Nota bem sucedida
    Given: O professor esta na página "Notas" do aluno "Pedro" 
    And: "Pedro" tem nota "8,5" alocada no espaço "Prova 1", "9,0" no espaço "Prova 2" e "7,5" no espaço "Prova 3"
    When: O professor atualiza a nota do espaço "Prova 1" com "9,0"
    Then: Ele continuará na página de "Notas"
    And: A nota "9,0" estara alocada ao espaço "Prova 1"
    And: Os espaços "Prova 2" e "Prova 3" continuaram com notas "9,0" e "7,5" respectivamente

Scenery: Atualização de Nota mal sucedida
    Given: O professor esta na página "Notas" do aluno "Pedro"
    And: "Pedro" tem nota "8,5" alocada no espaço "Prova 1", "9,0" no espaço "Prova 2" e "7,5" no espaço "Prova 3"
    When: O professor atualiza a nota do espaço "Nota 1" com "Lrt"
    Then: Uma mensagem de erro aparece na tela
    And: O espaço "Nota 1" continuará com "8,5" alocado
    And Os espaços "Prova 2" e "Prova 3" continuaram com notas "9,0" e "7,5" respectivamente

Scenario: Cálculo de Média bem sucedido
    Given: O professor está na página “Notas” do aluno "Matheus"
    And: O aluno “Matheus" está com as notas “8","9" e "10” para as provas “Prova 1", "Prova 2" e "Prova 3” respectivamente
    When: O professor solicita a média do aluno “Matheus”
    Then: O professor continua na página “Notas”
    And: O aluno “Matheus” está com as notas “8", "9" e "10” para as provas “Prova 1", "Prova 2" e "Prova 3” respectivamente
    And: O professor vê a média do aluno “Matheus” com a nota “9”

Scenario: Calculo de média mal sucedido
    Given O professor está na página “Notas” do aluno "João"
    And O aluno “João” está com as notas “8” para a “Prova 1”,  “9” para a “Prova 2” e sem nota alocada para "Prova 3"
    When O professor solicita a média do aluno “João”
    Then Uma mensagem de erro aparece na tela referente a nota que falta
    And O professor ainda está na página de “Notas”
    And O aluno "João" tem notas “8” para a “Prova 1”, “9” para a “Prova 2” e o campo da “Prova 3” continua sem nota alocada

Scenario: Remoção de notas bem sucedida
    Given: O professor está na página “Notas”
    And: O aluno “Matheus" está com as notas “8", "9" e "10” para as provas “Prova 1", "Prova 2" e "Prova 3” respectivamente
    When: O professor exclui a nota do aluno “Matheus” para a “Prova 2”
    And: O professor salva as alterações
    Then: O professor continua na página “Notas”
    And: O aluno “Matheus” está com as notas “8" e "10” para as provas “Prova 1" e "Prova 3”
    And: O aluno "Matheus" está sem nota alocada para "Prova 2"

Scenario: Remoção de notas mal sucedida
    Given: O professor está na página “Notas”
    And: O aluno “Matheus" está com as notas “8" e "9" para as provas “Prova 1", "Prova 2"
    And: O aluno "Matheus" não tem nota alocada para "Prova 3"
    When: O professor exclui a nota do aluno “Matheus” para a “Prova 3”
    And: Uma mensagem de erro aparece na tela
    Then: O professor continua na página “Notas”
    And: O aluno “Matheus” está com as notas “8" e "9” para as provas “Prova 1" e "Prova 2”
    And: O aluno "Matheus" continua sem nota alocada para "Prova 3"

Scenario: Cálculo de média final
    Given: O professor está na página “Notas”
    And: O aluno “Matheus" nota "5" atribuida para a "Média"
    And: O aluno "Matheus" nota "8" atribuida para "Prova Final"
    When: O professor solicita a média final
    Then: O professor continua na página “Notas”
    And: O aluno “Matheus" nota "6,5" atribuida para a "Média Final"
    And: O aluno “Matheus" nota "5" atribuida para a "Média"
    And: O aluno "Matheus" nota "8" atribuida para "Prova Final"
