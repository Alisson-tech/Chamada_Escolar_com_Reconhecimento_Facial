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
![Relatorio-Geral](https://github.com/Alisson-tech/Chamada_Escolar_com_Reconhecimento_Facial/blob/master/img/Relatorio-Geral.PNG)

### Reconhecimento Facial com Python

```diff
- IMPORTANTE:
Por decisão dos autores do projeto, o codigo fonte nao sera disponibilizado visando tranforma-lo em um produto no futuro. 
O executavel em python ficou maior que 50mb, o que impede de postar no github.
Para testar o software entre no link e faça dowloado do arquivo rar. 
Link do executavel: https://mega.nz/file/H912gSwa#nAgZWqNHQG4KbpLQdYaCmy7soK7rW6jlRqQNW77S-60

caso seu objetivo seja aprender sobre reconhecimento facial indicamos que leia nosso Relatorio de pesquisa. 
Tambem indicamos o curso de Reconhecimento Facial da Udemy, graças a ele foi possivel desenvolver o projeto: 
link do curso: https://www.udemy.com/course/reconhecimento-facial-com-python-e-opencv/
```
Antes de começar, vale ressalter que para o aplicativo funcionar você deve importar o banco de dados,
descrito no primeiro tópico desse arquivo.


o primeiro passo muito importante para abrir o executável, é preencher o arquivo email.txt.
você deve preencher da seguinte maneira: email-do-remente;senha-desse-email; email-destinatario.
o Email funciona para contatar a secretaria quando um aluno chega atrasado ou não e reconhecido.

Arquivo de email
![email](https://github.com/Alisson-tech/Chamada_Escolar_com_Reconhecimento_Facial/blob/master/img/email-txt.PNG)

Outro passo importante é criar a pasta C:\cpdb\fotos para armazenar as fotos de treinamento do algoritmo.
crie a pasta "cpdb" no seu dico local, dentro da pasta cpdb crie e pasta "fotos".

Pasta Fotos
![Pasta-fotos](https://github.com/Alisson-tech/Chamada_Escolar_com_Reconhecimento_Facial/blob/master/img/Pasta.PNG)

Agora podemos utilizar o aplicativo, abra-o e então será mostrado as 3 funções: capturar, treinar e reconhecer.

Tela Principal
![Tela-Pincipal-Python](https://github.com/Alisson-tech/Chamada_Escolar_com_Reconhecimento_Facial/blob/master/img/Tela-Principal-Python.PNG)

Capturar: Primeiro deve informar o RA do aluno, esse RA deve estar cadastrado no Banco de dados.

Tela Captura
![Tela-Captura-Python](https://github.com/Alisson-tech/Chamada_Escolar_com_Reconhecimento_Facial/blob/master/img/Tela-Capturar-Python.PNG)

em seguida abrirá a janela da webcam, Capture 15 fotos do aluno.
as fotos são capturadas pela letra "q" do teclado.
para capturar a foto, o algoritmo deve detectar o rosto e os olhos do aluno.
e indicado no canto superior esquerdo a quantidade de fotos.
a letra "w" do teclado fecha a janela antes de capturar as fotos.

Capturar
![Captura-Python](https://github.com/Alisson-tech/Chamada_Escolar_com_Reconhecimento_Facial/blob/master/img/Capturar-Python.PNG)

Treinamento: basta clicar no botão treinar, e então sera gerado um arquivo "classificadorEign.yml".
Só é possivel treinar, se na pasta C:\cpdb\fotos estiver 15 fotos de dois ou mais alunos.

Treinamento
![Treinar-Python](https://github.com/Alisson-tech/Chamada_Escolar_com_Reconhecimento_Facial/blob/master/img/Treinamento-Python.PNG)

Tela Reconhecimento: nessa opção simulamos um professor onde ele digita a sala que está dando aula e coloca o aplicativo pra rodar.
Para reconhecer você insira a sala ao qual você foi cadastro no banco de dados.
O aplicativo da falta para todos os alunos e vai alterando conforme ele reconhece.

Tela Reconhecer
![Tela-Reconhecer-Python](https://github.com/Alisson-tech/Chamada_Escolar_com_Reconhecimento_Facial/blob/master/img/Tela-Reconhecimento-Python.PNG)

Após informar a sala abrirá a webcam, e então ao detectar o rosto o algoritmo já consegue reconhecer.

Reconhecer
![Reconhecer-Python](https://github.com/Alisson-tech/Chamada_Escolar_com_Reconhecimento_Facial/blob/master/img/Reconhecimento-Python.)

Como ja dito anteriormente o algoritmo manda email caso o aluno esteja atrasado
para isso foi levado em conta que:
se o aluno for da turma A - entrada a sala 7h00 com 10 minutos de tolerância.
se o aluno for da turma B- Entrada 13h30 com 10 minutos de tolerância.

Email Aluno Atrasado
![email-atrasado-Python](https://github.com/Alisson-tech/Chamada_Escolar_com_Reconhecimento_Facial/blob/master/img/Aluno-Atrasado.)


o algoritmo tambem captura foto do aluno nao reconhecido e envia um email.


Email Aluno não reconhecido
![email-nãoRec-Python](https://github.com/Alisson-tech/Chamada_Escolar_com_Reconhecimento_Facial/blob/master/img/Aluno-NaoRec.)

 ## Informações adicionais:
 
 O aplicativo está na versão mais basica, ou seja a opção de medir a temperatura como mostra o video no youtube nao esta nessa versão.
 
 O algoritmo de reconhecimento Facial foi treinado usando os parâmetros padrão, o que os torna menos eficaz.
 Isso porque os parâmetros variam com cada situação: webcam utilizada, luminosidade, etc. 
 Para mais informações leia nosso relatório de pesquisa. 

