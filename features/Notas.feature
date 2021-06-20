Scenery: Inserção bem sucedida de nota
Given: O professor está na página "Notas" do aluno "Pedro" 
And: "Pedro" não tem notas alocadas no espaço "Nota 1", "Nota 2", "Nota 3"
And: O espaço "Media" está vazio
When: O professor preenche a nota do espaço "Nota 1" com "8,5"
Then: Ele continuará na página "Notas"
And: A nota "8,5" estará alocada ao espaço "Nota 1"
And: Os espaços "Nota 2", "Nota 3" continuam sem nota alocada
And: O espaço "Media" continua vazio

Scenery: Inserção de nota inválida
Given: O professor está na página "Notas" do aluno "Pedro" 
And: "Pedro" não tem notas alocadas no espaço "Nota 1", "Nota 2", "Nota 3"
And: O espaço "Media" está vazio
When: O professor preenche a nota do espaço "Nota 1" com "Lrt"
Then: Uma mensagem de erro aparece na tela
And: O espaço "Nota 1" continuará vazio
And: Os espaços "Nota 2", "Nota 3" continuam sem nota alocada
And: O espaço "Media" continua vazio
And: Passo extra adicionado
