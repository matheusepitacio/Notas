Feature: Manutenção de Notas

As a teacher
I want to do the update of the grades
So that i can maint the records of my students

Scenario: Remoção de notas
Given eu sou um professor
And eu estou na página de notas do aluno “Mauro”
And eu vejo 7, 6, 4, 8 nos campos “Prova 1”, “Prova 2”, “Prova 3” e “Prova 4”, respectivamente
When eu clico no campo “Prova 3”
And eu clico em “Remover”
Then eu vejo uma mensagem “Remoção bem-sucedida”
And eu vejo a página de notas do aluno “Mauro” com o campo “Prova 3” vazio

Scenario: Remoção de notas
Given eu sou um professor
And eu estou na página de notas do aluno “Mauro”
And eu vejo 7, 6, 8 nos campos  “Prova 1”, “Prova 2”, “Prova 4”, respectivamente
And eu vejo o campo “Prova 3” em branco
When eu clico no campo “Prova 3”
Then eu vejo a opção “Remover” não disponível

Scenario: Inserção bem sucedida de nota
Given O professor está na página notas do aluno "Pedro" 
And "Pedro" não tem notas alocadas no espaço "Prova 1"
When O professor preenche a nota do espaço "Prova 1" com "8,5"
Then Ele permanece na página de notas
And A nota "8,5" está alocada ao espaço "Prova 1"

Scenario: Inserção de nota inválida
Given O professor está na página de notas do aluno "Pedro" 
And "Pedro" não tem nota alocada no espaço "Prova 1"
When O professor preenche a nota do espaço "Prova 1" com "Lrt"
Then Uma mensagem de erro  com “Nota Inválida” aparece na tela
And O espaço "Prova 1" continuará vazio
And nenhuma outra nota foi alterada

Scenario: Atualização de Nota 
Given O professor está na página "Notas" do aluno "Pedro" 
And "Pedro" tem nota "8,0" alocada no espaço "Nota 1"
When O professor atualiza a nota do espaço "Nota 1" com "9,0"
Then Ele continuará na página de "Notas"
And A nota "9,0" estará alocada ao espaço "Nota 1"

Scenario: Atualização de Nota inválida
Given O professor está na página "Notas" do aluno "Pedro" 
And "Pedro" tem nota "8,5" alocada no espaço "Nota 1"
When O professor atualiza a nota do espaço "Nota 1" com "Lrt"
Then Uma mensagem de erro aparece na tela
And O espaço "Nota 1" continuará com "8,5" escrito

Scenario: Cálculo de Média
Given Eu estou na página “Notas”
And O aluno “Matheus” está com as notas “8,9,10” para as provas “Primeira Prova”, “Segunda Prova” e “Terceira Prova”
When Eu solicito a média do aluno “Matheus”
Then Eu continuo na página “Notas”
And Eu vejo o aluno “Matheus” está com as notas “8, 9 ,10” para as provas “Primeira Prova, Segunda Prova e Terceira Prova”
And Eu vejo a média do aluno “Matheus” com a nota “9”
