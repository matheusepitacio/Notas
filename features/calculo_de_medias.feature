GUI Scenario
Scenario: Calculando a Média
Given Eu estou na página “Notas”
And O aluno “Pedro” está com as notas “7” para a “Prova 1”,  “6.5” para a “Prova 2” e “7,5” para a “Prova 3”
When Eu realizo o cálculo da média de “Pedro”
Then Eu continuo na página “Notas”
And Eu vejo as notas “7” para a “Prova 1”, “6.5” para a “Prova 2” e “7.5” para a “Prova 3” do aluno “Pedro”
And Eu vejo a média “7” do aluno “Pedro”

Gui Scenario
Scenario: Calculando a Média inválida
Given Eu estou na página “Notas”
And O aluno “João” está com as notas “8” para a “Prova 1”,  “9” para a “Prova 2” e está com a nota da “Prova 3” faltando 
When Eu realizo o cálculo da média de “João”
Then Uma mensagem de erro aparece na tela referente a nota que falta
And Eu ainda estou na página de “Notas”
And Eu vejo as notas “8” para a “Prova 1”, “9” para a “Prova 2” e o campo da “Prova 3” em branco para o aluno “João”
