Scenario: Nota máxima
Given eu tenho o aluno "Pedro" com o cpf "123"
And ele tem os conceitos "MA", "MA" e "-"
When eu informo "MA" para o conceito faltante
Then é registrado no sistema os conceitos "MA", "MA" e "MA" para o aluno "Pedro"
And a média dele aparece como "10"

Scenario: Nota mínima
Given eu tenho o aluno "João" com o cpf "456"
And ele tem os conceitos "MANA", "MANA" e "-"
When eu informo "MANA" para o conceito faltante
Then é registrado no sistema os conceitos "MANA", "MANA" e "MANA" para o aluno "João"
And a média dele aparece como "0"