Feature: Grades
As a: Teacher
I want to: Add, Update and Delete student grades
So That: I can manage my classroom performance

Scenario: Inserir notas de usuário
Given: Eu estou na página “Cadastrar Notas” de aluno “Matheus”
And: Eu estou logado como “Professor”
When: Eu coloco as notas “8,9,10” para as seguintes provas: “Primeira prova, Segunda Prova, Terceira Prova”
And: Eu salvo as minhas alterações
Then: Eu sou redirecionado para a página “Notas”
And: E vejo o aluno “Matheus” está com as notas “8,9,10” para as provas “Primeira Prova, Segunda Prova e Terceira Prova”

Scenario: Editar notas de usuário
Given: Eu estou na página “Notas”
And: O aluno “Matheus está com as notas “8,9,10” para as provas “Primeira Prova, Segunda Prova e Terceira Prova”
When: Eu edito as notas do aluno “Matheus” para “8,10,10” nas provas “Primeira Prova, Segunda Prova e Terceira Prova”
And: Eu salvo as minhas alterações
Then: Eu continuo na página “Notas”
And:  Eu vejo o aluno “Matheus” está com as notas “8,10,10” para as provas “Primeira Prova, Segunda Prova e Terceira Prova”

Scenario: Excluir notas de usúario
Given: Eu estou na página “Notas”
And: O aluno “Matheus está com as notas “8,9,10” para as provas “Primeira Prova, Segunda Prova e Terceira Prova”
When: Eu excluo a nota do aluno “Matheus” para a “Segunda Prova”
And: Eu salvo as minhas alterações
Then: Eu continuo na página “Notas”
And: Eu vejo o aluno “Matheus” está com as notas “8, - ,10” para as provas “Primeira Prova, Segunda Prova e Terceira Prova”, com o símbolo - sinalizando uma nota vazia

Scenario: Cálculo de Média
Given: Eu estou na página “Notas”
And: O aluno “Matheus está com as notas “8,9,10” para as provas “Primeira Prova, Segunda Prova e Terceira Prova”
When: Eu solicito a média do aluno “Matheus”
Then: Eu continuo na página “Notas”
And: Eu vejo o aluno “Matheus” está com as notas “8, 9 ,10” para as provas “Primeira Prova, Segunda Prova e Terceira Prova”
And: Eu vejo a média do aluno “Matheus” com a nota “9”


Scenario: Falha ao adicionar notas de usuário
Given: Eu estou na página "Notas" do aluno "Matheus"
And: Eu coloco as notas “8,9, a” para as seguintes provas: “Primeira prova, Segunda Prova, Terceira Prova”
And: Eu salvo as minhas alterações
Then: Eu vejo uma mensagem de erro
And: Continuo na página "Notas" do aluno "Matheus"

Scenario: Falha ao editar notas de usúario
Given: Eu estou na página "Notas" do aluno "Matheus"
And: O aluno “Matheus" está com as notas “8,9,10” para as provas “Primeira Prova, Segunda Prova e Terceira Prova”
When: Eu edito as notas do aluno “Matheus” para “8,10,a” nas provas “Primeira Prova, Segunda Prova e Terceira Prova”
And: Eu salvo as minhas alterações
Then: Eu vejo uma mensagem de erro
And: Eu continuo na página “Notas”
And:  Eu vejo o aluno “Matheus” está com as notas “8,9,10” para as provas “Primeira Prova, Segunda Prova e Terceira Prova”

Scenario: Aluno tenta acessar página sem autorização
Given: Eu estou na página "Notas"
And: Eu estou logado como "aluno"
When: Eu tento acessar as notas do um aluno "Matheus"
Then: Eu vejo uma mensagem de erro
And: Eu sou redirecionado para a página "Início"