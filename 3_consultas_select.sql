-- Consultas de relatórios

-- 1. Listar todos os alunos e seus respectivos planos (Uso de JOIN)
SELECT A.Nome AS Nome_Aluno, P.Nome_Plano, P.Valor_Mensal
FROM ALUNO A
JOIN PLANO P ON A.ID_Plano = P.ID_Plano;

-- 2. Listar treinos montados por um professor específico (Uso de WHERE)
SELECT T.Descricao, A.Nome AS Nome_Aluno
FROM TREINO T
JOIN ALUNO A ON T.ID_Aluno = A.ID_Aluno
WHERE T.ID_Professor = 1;

-- 3. Listar pagamentos ordenados do maior para o menor (Uso de ORDER BY)
SELECT * FROM PAGAMENTO
ORDER BY Valor_Pago DESC;

-- 4. Contar quantos alunos existem em cada plano (Uso de GROUP BY)
SELECT P.Nome_Plano, COUNT(A.ID_Aluno) AS Total_Alunos
FROM PLANO P
LEFT JOIN ALUNO A ON P.ID_Plano = A.ID_Plano
GROUP BY P.Nome_Plano;