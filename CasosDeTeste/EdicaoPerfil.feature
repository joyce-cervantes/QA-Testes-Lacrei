Feature: Edição do perfil da pessoa usuária
  Como usuário, quero atualizar minhas informações pessoais para manter meus dados atualizados.

  Scenario: Atualização com dados válidos
    Given O usuário está logado e acessa a página de edição de perfil
    When O usuário preenche o campo "Data de nascimento" com valores válidos
    And Clica no botão "Salvar"
    Then O sistema exibe a mensagem "Informações atualizadas com sucesso."

  Scenario: Atualização com campo obrigatório vazio
    Given O usuário está logado e acessa a página de edição de perfil
    When O usuário deixa o campo "Nome" vazio
    And Clica no botão "Salvar"
    Then O sistema exibe a mensagem de erro "Nome deve ser preenchido."

  Scenario: Atualização com data de nascimento inválida
    Given O usuário está logado e acessa a página de edição de perfil
    When O usuário preenche o campo "Data de nascimento" com um valor inválido
    And Clica no botão "Salvar"
    Then O sistema exibe a mensagem de erro "Ano de nascimento inválido. Insira um número válido."
