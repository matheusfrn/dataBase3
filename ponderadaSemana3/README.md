<h1 align=center>Documentação do banco de dados</h1>

<p>Estamos criando o VTM, um aplicativo que visa criar uma comunidade de voluntariado. Para criarmos uma comunidade, precisamos das organizações e das pessoas físicas. As organizações tem cnpj e as pessoas físicas tem cpf, obrigatoriamente. Ambos também podem fazer publicações e comentários na plataforma, por isso temos a entidade "post" ligada tanto para os usuários, quanto para as instituições. As pessoas também possuem tags em suas contas, para filtrarem qual trabalho mais as agrada. Em resumo, pessoas físicas e instituições tem praticamente as mesmas permissões, se diferenciando em poucas coisas. Os id's também estão presentes para identificação das ações e usuários.O banco de dados foi desenvolvido no SQLDesigner ainda está na primeira versão e esperamos que possamos aumentá-lo ainda mais ao longo do projeto.</p>

### Tabelas Principais

1. **Institution**: Armazena propriedades específicas às instituições.
2. **Users**: Contém propriedades específicas aos usuários.
3. **Post**: Registra as postagens realizadas pelos usuários.
4. **Comments**: Armazena os comentários feitos nas postagens.
5. **Actions**: Denomina as ações voluntárias promovidas pelas instituições ou usuários em relações N para N.

### Tabelas Auxiliares

1. **PFP**: Armazena os links das fotos de perfil dos usuários e voluntários.
2. **Permissions**: Guarda as informações de permissões atribuídas aos usuários.
3. **Type**: Armazena os tipos de instituições possíveis, relacionada à tabela "Institution".
4. **User_Volunteer**: Define uma relação N para N entre os usuários e as ações, permitindo que os usuários possam iniciar várias ações e que as ações possam envolver múltiplos usuários participantes.