-- Criação do Banco de Dados para o cenário FitLife
-- Autor: Leonardo Rafael Lima de Oliveira

CREATE TABLE PLANO (
    ID_Plano INT PRIMARY KEY AUTO_INCREMENT,
    Nome_Plano VARCHAR(50),
    Valor_Mensal DECIMAL(10, 2)
);

CREATE TABLE ALUNO (
    ID_Aluno INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    CPF VARCHAR(14),
    Data_Nascimento DATE,
    Peso_Atual DECIMAL(5, 2),
    ID_Plano INT,
    FOREIGN KEY (ID_Plano) REFERENCES PLANO(ID_Plano)
);

CREATE TABLE PROFESSOR (
    ID_Professor INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Especialidade VARCHAR(50)
);

CREATE TABLE TREINO (
    ID_Treino INT PRIMARY KEY AUTO_INCREMENT,
    Descricao VARCHAR(100),
    Data_Inicio DATE,
    Data_Fim DATE,
    ID_Aluno INT,
    ID_Professor INT,
    FOREIGN KEY (ID_Aluno) REFERENCES ALUNO(ID_Aluno),
    FOREIGN KEY (ID_Professor) REFERENCES PROFESSOR(ID_Professor)
);

CREATE TABLE ITEM_TREINO (
    ID_Treino INT,
    Nome_Exercicio VARCHAR(50),
    Series INT,
    Repeticoes INT,
    Observacao VARCHAR(100),
    PRIMARY KEY (ID_Treino, Nome_Exercicio),
    FOREIGN KEY (ID_Treino) REFERENCES TREINO(ID_Treino)
);

CREATE TABLE PAGAMENTO (
    ID_Pagamento INT PRIMARY KEY AUTO_INCREMENT,
    Data_Pagamento DATE,
    Valor_Pago DECIMAL(10, 2),
    ID_Aluno INT,
    FOREIGN KEY (ID_Aluno) REFERENCES ALUNO(ID_Aluno)
);