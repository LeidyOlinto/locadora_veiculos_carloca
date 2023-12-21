 --Selecionar todos os carro:
 SELECT * FROM CARRO;
--Selecionar todos os modelo:
 SELECT * FROM MODELO;
 --Selecionar todos os carr:
 SELECT * FROM MONTADORA;
 SELECT * FROM LOCADORA;
--Selecionar todos os carros disponíveis:
  SELECT * FROM CARRO WHERE disponivel = 1;

  --Selecionar todos os clientes:
 SELECT * FROM CLIENTE WHERE id_cliente;

--Selecionar id de carros alugados:
SELECT * FROM CARROS_ALUGADOS;

--Selecionar todos os enderecos:
SELECT * FROM ENDERECO;

--Selecionar a quilometragem atual de um carro específico:
SELECT id_carro, quilometragem
FROM CARRO
WHERE id_carro = (id_carro);

 --Selecionar todos os carros alugados por um cliente específico:
 SELECT c.*, ca.id_cliente
FROM CARRO c
JOIN CARROS_ALUGADOS ca ON c.id_carro = ca.id_carro
WHERE ca.id_cliente = (ca.id_cliente);


--Selecionar a localização atual de um carro específico:
SELECT l.*
FROM LOCADORA l
JOIN REGISTRO_LOCACAO r ON l.id_locadora = r.id_locadora
WHERE r.id_carro = (r.id_carro)
ORDER BY r.data_final DESC
LIMIT 1;