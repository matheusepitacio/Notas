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

Scenery: Atualização de Nota bem sucedida
Given: O professor esta na página "Notas" do aluno "Pedro" 
And: "Pedro" tem nota "8,5" alocada no espaço "Nota 1", "9,0" no espaço "Nota 2" e "7,5" no espaço "Nota 3"
When: O professor atualiza a nota do espaço "Nota 1" com "9,0"
Then: Ele continuará na página de "Notas"
And: A nota "9,0" estara alocada ao espaço "Nota 1"
And: Os espaços "Nota 2" e "Nota 3" continuaram com notas "9,0" e "7,5" respectivamente

Scenery: Atualização de Nota inválida
Given: O professor esta na página "Notas" do aluno "Pedro"
And: "Pedro" tem nota "8,5" alocada no espaço "Nota 1", "9,0" no espaço "Nota 2" e "7,5" no espaço "Nota 3"
When: O professor atualiza a nota do espaço "Nota 1" com "Lrt"
Then: Uma mensagem de erro aparece na tela
And: O espaço "Nota 1" continuará com "8,5" alocado
And Os espaços "Nota 2" e "Nota 3" continuaram com notas "9,0" e "7,5" respectivamente
>>>>>>> desenvolvimento
