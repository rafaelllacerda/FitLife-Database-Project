-- Atualização e Exclusão de Dados

-- UPDATES (Atualizações)
-- 1. Atualizar o valor do plano Mensal para R$ 110,00
UPDATE PLANO
SET Valor_Mensal = 110.00
WHERE Nome_Plano = 'Mensal';

-- 2. Atualizar o peso do aluno Carlos Silva
UPDATE ALUNO
SET Peso_Atual = 79.0
WHERE Nome = 'Carlos Silva';

-- 3. Corrigir a observação de um exercício
UPDATE ITEM_TREINO
SET Observacao = 'Carga Leve - Aquecimento'
WHERE ID_Treino = 1 AND Nome_Exercicio = 'Supino Reto';


-- DELETES (Exclusões)
-- 1. Excluir um pagamento específico (Ex: erro de lançamento)
DELETE FROM PAGAMENTO
WHERE ID_Pagamento = 2;

-- 2. Excluir um item de treino que não será mais feito
DELETE FROM ITEM_TREINO
WHERE ID_Treino = 1 AND Nome_Exercicio = 'Leg Press';

-- 3. Excluir um plano que não tem alunos vinculados (Ex: Plano teste)
-- Primeiro criamos um plano teste para poder excluir
INSERT INTO PLANO (Nome_Plano, Valor_Mensal) VALUES ('Plano Teste', 50.00);
-- Agora excluímos
DELETE FROM PLANO
WHERE Nome_Plano = 'Plano Teste';