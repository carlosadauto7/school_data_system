CREATE TABLE alunos (
    id_aluno INT PRIMARY KEY,
    nome_aluno VARCHAR(100),
    nascimento_aluno VARCHAR(100),
    genero_aluno VARCHAR (100),
    endereco_aluno VARCHAR(100),
    telefone_aluno VARCHAR(100),
    email_aluno VARCHAR(100));

CREATE TABLE professores(
    id_professor INT PRIMARY KEY,
    nome_professor VARCHAR(100),
    nascimento_prof DATE,
    genero_prof VARCHAR(100),
    telefone_prof VARCHAR(100),
    email_prof VARCHAR(100));

CREATE TABLE disciplinas(
    id_disciplina INT PRIMARY KEY,
    nome_disciplina VARCHAR(100),
    descricao_disciplina TEXT,
    carga_hora_disciplina INT,
    id_professor INT,
    FOREIGN KEY (id_professor) REFERENCES professores(id_professor));

CREATE TABLE turmas (
    id_turma INT PRIMARY KEY,
    nome_turma VARCHAR(100),
    ano_letivo VARCHAR(100),
    id_professor_orientador INT,
    FOREIGN KEY (id_professor_orientador) REFERENCES professores(id_professor));


CREATE TABLE turma_disciplinas (
    id_turmas INT,
    id_disciplinas INT,
    FOREIGN KEY(id_turmas) REFERENCES turmas(id_turma),
    FOREIGN KEY (id_disciplinas) REFERENCES disciplinas(id_disciplina));


CREATE TABLE turma_alunos(
    id_turmas INT,
    id_alunos INT,
    FOREIGN KEY (id_turmas) REFERENCES turmas(id_turma),
    FOREIGN KEY (id_alunos) REFERENCES alunos(id_aluno));

CREATE TABLE notas(
    id_nota INT PRIMARY KEY,
    id_aluno INT,
    id_disciplina INT,
    valor_nota FLOAT, 
    data_avaliacao DATE,
    FOREIGN KEY(id_aluno) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_disciplina) REFERENCES disciplinas(id_disciplina));