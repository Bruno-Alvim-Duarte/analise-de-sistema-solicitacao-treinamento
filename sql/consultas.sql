--- 1. Listar todas as solicitações por colaborador
--- OBS: interpretei de 2 formas esse mesmo exemplo, segue abaixo as duas formas.
--- Uma aonde buscamos as solicitações por um colaborador específico e outra aonde buscamos ordernados por colaborador e depois por data dessa forma a gente vai ter os colaboradores "agrupados".

SELECT
    s.id AS id_solicitacao,
    c.nome AS nome_colaborador,
    t.titulo,
    s.data_solicitacao,
    s.status,
    s.aprovado_por,
    s.data_validacao_rh,
    s.motivo_rejeicao
FROM solicitacao_treinamento s
JOIN colaborador c ON s.colaborador_id = c.id
JOIN treinamento t ON s.treinamento_id = t.id 
WHERE s.colaborador_id = 2
ORDER BY data_solicitacao DESC;

--- OU


SELECT
    s.colaborador_id as colaborador_id,
    c.nome AS nome_colaborador,
    t.titulo,
    s.data_solicitacao,
    s.status,
    s.aprovado_por,
    s.data_validacao_rh,
    s.motivo_rejeicao
FROM solicitacao_treinamento s
JOIN colaborador c ON s.colaborador_id = c.id
JOIN treinamento t ON s.treinamento_id = t.id
ORDER BY c.nome, s.data_solicitacao DESC;



--- 2. Consultar solicitações aprovadas por gestor;
--- OBS: interpretei de 2 formas esse mesmo exemplo, segue abaixo as duas formas.
--- Uma aonde buscamos as solicitações aprovadas por um gestor específico e outra aonde buscamos ordernados por colaborador e depois por data dessa forma a gente vai ter os colaboradores "agrupados".

SELECT
    s.id AS id_solicitacao,
    c.nome AS nome_colaborador,
    t.titulo,
    s.data_solicitacao,
    s.status,
    s.aprovado_por,
    s.data_validacao_rh,
    s.motivo_rejeicao
FROM solicitacao_treinamento s
JOIN colaborador c ON s.colaborador_id = c.id
JOIN treinamento t ON s.treinamento_id = t.id
WHERE s.aprovado_por = 'Danilo'
AND s.status = 'aprovado'
ORDER BY s.data_solicitacao DESC;

--- OU

SELECT
    s.id AS id_solicitacao,
    c.nome AS nome_colaborador,
    t.titulo,
    s.data_solicitacao,
    s.status,
    s.aprovado_por,
    s.data_validacao_rh,
    s.motivo_rejeicao
FROM solicitacao_treinamento s
JOIN colaborador c ON s.colaborador_id = c.id
JOIN treinamento t ON s.treinamento_id = t.id
WHERE s.status = 'aprovado'
ORDER BY s.aprovado_por, s.data_solicitacao DESC;


--- 3. Obter o total de treinamentos validados pela área de RH em	 determinado período;

SELECT
    COUNT(s.id) AS total_treinamentos_validados
FROM solicitacao_treinamento s
WHERE s.data_validacao_rh BETWEEN '2025-01-01' AND '2025-03-31';