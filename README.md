# Chamada_Escolar_com_Reconhecimento_Facial

## Objetivos
O Projeto tem como objetivo automatizar o processo de chamada escolar utilizando o reconhecimento facial.

## Benefícios
 - Erradicar o uso de papel nesse processo
 - Tornar automático a Chamada Escolar
 - Diminuir o tempo da chamada e melhorar o aproveitamento de aula 
 
 ## Como Usar
 
### Banco de dados
Para começar a usar o aplicativo importe o esquema de banco de dados para um aplicativo de hosteamento local (wamp, xamp, etc).
Ao implementar este projeto é necessário uma carga de dados feita pela instituição, com informações sobre os cursos, professores, grade de horários, alunos etc. o banco de dados deste repositório ja contem algumas informações simulando esta carga inicial de dados.

![Esquema Banco de dados](https://github.com/Alisson-tech/Chamada_Escolar_com_Reconhecimento_Facial/blob/master/img/esquema-banco.png)

### Crud C#
A pincipal função desse aplicativo é administar os dados do banco, podendo atualizar, inserir, e deletar. Nele também é possivel visualizar as faltas dos alunos.

para utilizar o aplicativo é necessário ter um registro de login (presente na tabela login do banco de dados), tendo dois tipos de liberdade para acesso: consulta (onde o usuário pode apenas consultar os dados existentes) e administrador (onde é possível adicionar, atualizar, excluir e consultar os dados)


Login Consulta: secretaria

senha: 123


Login admin: admin

senha: 123

![Login](https://github.com/Alisson-tech/Chamada_Escolar_com_Reconhecimento_Facial/blob/master/img/Login-c%23.png)

Para adicionar algum dado, basta preencher as informações e clicar em adicionar. Pode ocorrer erros na hora de adicionar os dados, então para cadastrar algo devemos olhar o relacionamento das tabelas do banco.

Para Atualizar informe a primary key e preencha todos os campos com as modificações e clique em atualizar.

Para Deletar informe a primary key e clique em deletar.

Primary key = RA
![Aluno](https://github.com/Alisson-tech/Chamada_Escolar_com_Reconhecimento_Facial/blob/master/img/aluno-c%23.png)

Primary key Cursos = curso

Primary key Disciplinas = Disciplina

Primary key Professores = chapa
![Aluno](https://github.com/Alisson-tech/Chamada_Escolar_com_Reconhecimento_Facial/blob/master/img/cursos-c%23.png)


Primary key = id
![Aluno](https://github.com/Alisson-tech/Chamada_Escolar_com_Reconhecimento_Facial/blob/master/img/grade_escolar-c%23.png)


Para visualizar as faltas dos alunos, vá até a aba frequencia, marque o tipo de consulta (Curso, Data, RA), e preencha o campo correspondente e clique em consulta.

Consulta RA
![Consulta-RA](https://github.com/Alisson-tech/Chamada_Escolar_com_Reconhecimento_Facial/blob/master/img/Consulta-RA-c%23.PNG)

Consulta Data
![Consulta-Data](https://github.com/Alisson-tech/Chamada_Escolar_com_Reconhecimento_Facial/blob/master/img/Consulta-Data-c%23.PNG)

Consulta Curso
![Consulta-Curso](https://github.com/Alisson-tech/Chamada_Escolar_com_Reconhecimento_Facial/blob/master/img/Consulta-Curso-c%23.PNG)

é possivel gerar dois relatórios um por data, que mostra a quantidade de falta dos alunos em cada matéria daquela data. ou relaório geral que mostrar as matérias que determinado aluno faltou.

Relatorio Data (preencher data)
![Relatorio-Data](https://github.com/Alisson-tech/Chamada_Escolar_com_Reconhecimento_Facial/blob/master/img/Relatorio-Data-c%23.PNG)

Relatorio Geral (preencher RA)
![Relatorio-Data](https://github.com/Alisson-tech/Chamada_Escolar_com_Reconhecimento_Facial/blob/master/img/Relatorio-Geral.PNG)
