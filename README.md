
![GitHub repo size](https://img.shields.io/github/repo-size/Alisson-tech/Chamada_Escolar_com_Reconhecimento_Facial)

# Chamada_Escolar_com_Reconhecimento_Facial

## Autores
Alisson Fantin Rodrigues <br />
Victor Monteiro de Oliveira <br />
Isabela Rosa <br />

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
Antes de começar, vale ressaltar que para o aplicativo funcionar você deve importar o banco de dados <br />
descrito no primeiro tópico desse arquivo. <br />


o primeiro passo muito importante para abrir o executável, é preencher o arquivo email.txt. <br />
você deve preencher da seguinte maneira: email-do-remente;senha-desse-email; email-destinatario. <br />
o Email funciona para contatar a secretaria quando um aluno chega atrasado ou não é reconhecido. <br />
é importante ativar o Login por protocolo smtp no seu email, ou então não será possivel executar o aplicativo <br />

Arquivo de email
![email](https://github.com/Alisson-tech/Chamada_Escolar_com_Reconhecimento_Facial/blob/master/img/email-txt.png)

Outro passo importante é criar a pasta C:\cpdb\fotos para armazenar as fotos de treinamento do algoritmo. <br />
crie a pasta "cpdb" no seu dico local, dentro da pasta cpdb crie e pasta "fotos". <br />

Pasta Fotos
![Pasta-Fotos](https://github.com/Alisson-tech/Chamada_Escolar_com_Reconhecimento_Facial/blob/master/img/Pasta.png)

Agora podemos utilizar o aplicativo, abra-o e então será mostrado as 3 funções: capturar, treinar e reconhecer. <br />

Tela Principal <br />
![Tela-Principal](https://github.com/Alisson-tech/Chamada_Escolar_com_Reconhecimento_Facial/blob/master/img/Tela-Principal-Python.png)

Capturar: Primeiro é necessário informar o RA do aluno, esse RA deve estar cadastrado no Banco de dados. <br />

Tela Captura <br />
![Tela-Captura-Python](https://github.com/Alisson-tech/Chamada_Escolar_com_Reconhecimento_Facial/blob/master/img/Tela-Capturar-Python.png)

- em seguida abrirá a janela da webcam, Capture 15 fotos do aluno.
- as fotos são capturadas pela letra "q" do teclado.
- para capturar a foto, o algoritmo deve detectar o rosto e os olhos do aluno.
- é indicado no canto superior esquerdo a quantidade de fotos.
- a letra "w" do teclado fecha a janela antes de capturar as fotos.

Capturar <br />
![Captura-Python](https://github.com/Alisson-tech/Chamada_Escolar_com_Reconhecimento_Facial/blob/master/img/Capturar-Python.png)

Treinamento: basta clicar no botão treinar, e então sera gerado um arquivo "classificadorEign.yml". <br />
Só é possivel treinar, se na pasta C:\cpdb\fotos estiver 15 fotos de dois ou mais alunos. <br />

Treinamento <br />
![Treinar-Python](https://github.com/Alisson-tech/Chamada_Escolar_com_Reconhecimento_Facial/blob/master/img/Treinamento-Python.png)

Tela Reconhecimento: nessa opção simulamos um professor onde ele digita a sala que está dando aula e coloca o aplicativo para rodar. <br />
Para reconhecer você insire a sala ao qual você foi cadastrado no banco de dados. <br />
O aplicativo dá falta para todos os alunos e vai colocando presença conforme ele reconhece. <br />

Tela Reconhecer <br />
![Tela-Reconhecer-Python](https://github.com/Alisson-tech/Chamada_Escolar_com_Reconhecimento_Facial/blob/master/img/Tela-Reconhecimento-Python.png)

Após informar a sala abrirá a webcam, e então ao detectar o rosto o algoritmo já consegue reconhecer. <br />

Reconhecer <br />
![Reconhecer-Python](https://github.com/Alisson-tech/Chamada_Escolar_com_Reconhecimento_Facial/blob/master/img/Reconhecimento-Python.png)


Como ja dito anteriormente o algoritmo manda email caso o aluno esteja atrasado <br />
para isso foi levado em conta que: <br />
se o aluno for da turma A - entrada a sala 7h00 com 10 minutos de tolerância. <br />
se o aluno for da turma B- Entrada 13h30 com 10 minutos de tolerância. <br />

Email Aluno Atrasado <br />
![email-atrasado-Python](https://github.com/Alisson-tech/Chamada_Escolar_com_Reconhecimento_Facial/blob/master/img/Aluno-Atrasado.png)


o algoritmo tambem captura foto do aluno nao reconhecido e envia um email. <br />


Email Aluno não reconhecido <br />
![email-nãoRec-Python](https://github.com/Alisson-tech/Chamada_Escolar_com_Reconhecimento_Facial/blob/master/img/Aluno-NaoRec.png)

 ## Informações adicionais:
 
 O aplicativo está na versão mais basica, ou seja a opção de medir a temperatura como mostra o video no youtube nao esta nessa versão. <br />
 
 O algoritmo de reconhecimento Facial foi treinado usando os parâmetros padrão, o que os torna menos eficaz. <br />
 Isso porque os parâmetros variam com cada situação: webcam utilizada, luminosidade, etc.  <br />
 Para mais informações leia nosso relatório de pesquisa. 

