-- Inserção de dados nas tabelas (DML)

-- 1. Criando Planos
INSERT INTO PLANO (Nome_Plano, Valor_Mensal) VALUES ('Mensal', 100.00);
INSERT INTO PLANO (Nome_Plano, Valor_Mensal) VALUES ('Trimestral', 270.00);
INSERT INTO PLANO (Nome_Plano, Valor_Mensal) VALUES ('Anual', 900.00);

-- 2. Cadastrando Alunos
INSERT INTO ALUNO (Nome, CPF, Data_Nascimento, Peso_Atual, ID_Plano) 
VALUES ('Carlos Silva', '123.456.789-00', '1995-05-10', 80.5, 1);

INSERT INTO ALUNO (Nome, CPF, Data_Nascimento, Peso_Atual, ID_Plano) 
VALUES ('Mariana Souza', '987.654.321-11', '1998-08-22', 65.0, 2);

INSERT INTO ALUNO (Nome, CPF, Data_Nascimento, Peso_Atual, ID_Plano) 
VALUES ('Roberto Santos', '111.222.333-44', '1980-01-15', 92.0, 1);

-- 3. Cadastrando Professores
INSERT INTO PROFESSOR (Nome, Especialidade) VALUES ('João Treinador', 'Musculação');
INSERT INTO PROFESSOR (Nome, Especialidade) VALUES ('Ana Yoga', 'Flexibilidade');

-- 4. Criando Treinos
INSERT INTO TREINO (Descricao, Data_Inicio, Data_Fim, ID_Aluno, ID_Professor)
VALUES ('Adaptação A', '2024-01-01', '2024-02-01', 1, 1);

INSERT INTO TREINO (Descricao, Data_Inicio, Data_Fim, ID_Aluno, ID_Professor)
VALUES ('Hipertrofia B', '2024-01-05', '2024-03-05', 2, 1);

-- 5. Itens do Treino
INSERT INTO ITEM_TREINO (ID_Treino, Nome_Exercicio, Series, Repeticoes, Observacao)
VALUES (1, 'Supino Reto', 3, 12, 'Carga moderada');

INSERT INTO ITEM_TREINO (ID_Treino, Nome_Exercicio, Series, Repeticoes, Observacao)
VALUES (1, 'Leg Press', 4, 10, 'Pés afastados');

-- 6. Registrando Pagamentos
INSERT INTO PAGAMENTO (Data_Pagamento, Valor_Pago, ID_Aluno) VALUES ('2024-01-05', 100.00, 1);
INSERT INTO PAGAMENTO (Data_Pagamento, Valor_Pago, ID_Aluno) VALUES ('2024-01-06', 270.00, 2);