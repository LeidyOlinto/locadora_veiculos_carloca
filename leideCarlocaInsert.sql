
--Insert Cliente
INSERT INTO `CLIENTE` (`id_cliente`, `nome`, `cpf`, `telefone`) VALUES (1, 'João Silva', '123.456.789-01', '(11) 9876-5432');
INSERT INTO `CLIENTE` (`id_cliente`, `nome`, `cpf`, `telefone`) VALUES (2, 'Maria Oliveira', '987.654.321-02', '(22) 1234-5678');
INSERT INTO `CLIENTE` (`id_cliente`, `nome`, `cpf`, `telefone`) VALUES (3, 'Carlos Santos', '111.222.333-44', '(33) 8765-4321');
INSERT INTO `CLIENTE` (`id_cliente`, `nome`, `cpf`, `telefone`) VALUES (4, 'Ana Souza', '555.666.777-88', '(44) 5678-1234');
INSERT INTO `CLIENTE` (`id_cliente`, `nome`, `cpf`, `telefone`) VALUES (5, 'Pedro Rocha', '999.888.777-66', '(55) 4321-8765');


--Insert Carro
INSERT INTO `CARRO` (`id_carro`, `nome`, `id_modelo`, `quilometragem`, `cor`, `disponivel`) VALUES (1, 'Onix', 1, 300, 'PRATA', 1);
INSERT INTO `CARRO` (`id_carro`, `nome`, `id_modelo`, `quilometragem`, `cor`, `disponivel`) VALUES (2, 'Elantra', 2, 400, 'PRETO', 0);
INSERT INTO `CARRO` (`id_carro`, `nome`, `id_modelo`, `quilometragem`, `cor`, `disponivel`) VALUES (3, 'Ferrari', 3, 500, 'PRATA', 1);
INSERT INTO `CARRO` (`id_carro`, `nome`, `id_modelo`, `quilometragem`, `cor`, `disponivel`) VALUES (4, 'Uno', 4, 600, 'PRETO', 0);
INSERT INTO `CARRO` (`id_carro`, `nome`, `id_modelo`, `quilometragem`, `cor`, `disponivel`) VALUES (5, 'Siena', 5, 800, 'BRANCO', 1);
INSERT INTO `CARRO` (`id_carro`, `nome`, `id_modelo`, `quilometragem`, `cor`, `disponivel`) VALUES (7, 'Civic', 5, 400, 'PRETO', 3);


--Insert Carro_alugado
INSERT INTO `CARROS_ALUGADOS` (`id_cliente`, `id_carro`) VALUES (1, 1);
INSERT INTO `CARROS_ALUGADOS` (`id_cliente`, `id_carro`) VALUES (4, 2);
INSERT INTO `CARROS_ALUGADOS` (`id_cliente`, `id_carro`) VALUES (3, 4);
INSERT INTO `CARROS_ALUGADOS` (`id_cliente`, `id_carro`) VALUES (2, 5);
INSERT INTO `CARROS_ALUGADOS` (`id_cliente`, `id_carro`) VALUES (5, 7);


--Insert Categoria
INSERT INTO `CATEGORIA` (`id_categoria`, `nome`) VALUES (1, 'hatch');
INSERT INTO `CATEGORIA` (`id_categoria`, `nome`) VALUES (2, 'Sedan');
INSERT INTO `CATEGORIA` (`id_categoria`, `nome`) VALUES (3, 'SUV');
INSERT INTO `CATEGORIA` (`id_categoria`, `nome`) VALUES (4, 'Espotivo');
INSERT INTO `CATEGORIA` (`id_categoria`, `nome`) VALUES (5, 'Compacto');



--Insert Modelo
INSERT INTO `MODELO` (`id_modelo`, `id_categoria`, `id_montadora`, `id_versao`) VALUES (1, 1, 1, 1);
INSERT INTO `MODELO` (`id_modelo`, `id_categoria`, `id_montadora`, `id_versao`) VALUES (2, 2, 3, 4);
INSERT INTO `MODELO` (`id_modelo`, `id_categoria`, `id_montadora`, `id_versao`) VALUES (3, 5, 5, 5);
INSERT INTO `MODELO` (`id_modelo`, `id_categoria`, `id_montadora`, `id_versao`) VALUES (4, 3, 4, 3);
INSERT INTO `MODELO` (`id_modelo`, `id_categoria`, `id_montadora`, `id_versao`) VALUES (5, 4, 2, 2);


--Insert Montadora
INSERT INTO `MONTADORA` (`id_montadora`, `nome`) VALUES (1, 'Volkswagen');
INSERT INTO `MONTADORA` (`id_montadora`, `nome`) VALUES (2, 'Toyota');
INSERT INTO `MONTADORA` (`id_montadora`, `nome`) VALUES (3, 'Ford');
INSERT INTO `MONTADORA` (`id_montadora`, `nome`) VALUES (4, 'Ferrari');
INSERT INTO `MONTADORA` (`id_montadora`, `nome`) VALUES (5, 'Lamborghini');


--Insert Versao
INSERT INTO `VERSAO` (`id_versao`, `nome`) VALUES (1, '1.0');
INSERT INTO `VERSAO` (`id_versao`, `nome`) VALUES (2, 'xle');
INSERT INTO `VERSAO` (`id_versao`, `nome`) VALUES (3, 'Titaniun');
INSERT INTO `VERSAO` (`id_versao`, `nome`) VALUES (4, 'XlU');
INSERT INTO `VERSAO` (`id_versao`, `nome`) VALUES (5, '2.0');


--Insert Endereco
INSERT INTO `ENDERECO` (`id_endereco`, `rua`, `cidade`, `estado`) VALUES (1, 'Rua Victor Frederico A', 'GLORINHA A', 'RIO GRANDE DO SUL');
INSERT INTO `ENDERECO` (`id_endereco`, `rua`, `cidade`, `estado`) VALUES (2, 'Rua José de Alencar B', 'MARATA B', 'RIO GRANDE DO SUL');
INSERT INTO `ENDERECO` (`id_endereco`, `rua`, `cidade`, `estado`) VALUES (3, 'Rua Bauhardt C', 'SAO GABRIEL', 'RIO GRANDE DO SUL');
INSERT INTO `ENDERECO` (`id_endereco`, `rua`, `cidade`, `estado`) VALUES (4, 'Rua Lucas João D', 'SAO LEOPOLDO', 'RIO GRANDE DO SUL');
INSERT INTO `ENDERECO` (`id_endereco`, `rua`, `cidade`, `estado`) VALUES (5, 'Rua Pedro Alvares Cabral E', 'SANTA CRUZ DO SUL', 'RIO GRANDE DO SUL');

--Insert Locadora
INSERT INTO `LOCADORA` (`id_locadora`, `nome`, `id_endereco`) VALUES (1, 'VEICULOS LUX\S', 1);
INSERT INTO `LOCADORA` (`id_locadora`, `nome`, `id_endereco`) VALUES (2, 'LOCADORA ROCHA', 2);
INSERT INTO `LOCADORA` (`id_locadora`, `nome`, `id_endereco`) VALUES (3, 'LOCADELE VEICULOS', 3);
INSERT INTO `LOCADORA` (`id_locadora`, `nome`, `id_endereco`) VALUES (4, 'LACACAO FELIX', 4);
INSERT INTO `LOCADORA` (`id_locadora`, `nome`, `id_endereco`) VALUES (5, 'LOCACAO AUTOMOTIVO ADA', 5);


--Insert Registro_locacao
INSERT INTO `REGISTRO_LOCACAO` (`id_registro_locacao`, `id_cliente`, `id_carro`, `data_inicial`, `data_final`, `id_locadora`, `quilometragem_Inicial`, `quilometragem_final`) VALUES (1, 1, 1, '2023-03-03', '2023-03-04', 1, 800, 8400);
INSERT INTO `REGISTRO_LOCACAO` (`id_registro_locacao`, `id_cliente`, `id_carro`, `data_inicial`, `data_final`, `id_locadora`, `quilometragem_Inicial`, `quilometragem_final`) VALUES (2, 2, 2, '2023-04-05', '2023-04-06', 2, 700, 7500);
INSERT INTO `REGISTRO_LOCACAO` (`id_registro_locacao`, `id_cliente`, `id_carro`, `data_inicial`, `data_final`, `id_locadora`, `quilometragem_Inicial`, `quilometragem_final`) VALUES (3, 3, 3, '2023-05-08', '2023-05-09', 3, 1000, 1200);
INSERT INTO `REGISTRO_LOCACAO` (`id_registro_locacao`, `id_cliente`, `id_carro`, `data_inicial`, `data_final`, `id_locadora`, `quilometragem_Inicial`, `quilometragem_final`) VALUES (4, 4, 4, '2023-04-09', '2023-05-10', 4, 2000, 2200);
INSERT INTO `REGISTRO_LOCACAO` (`id_registro_locacao`, `id_cliente`, `id_carro`, `data_inicial`, `data_final`, `id_locadora`, `quilometragem_Inicial`, `quilometragem_final`) VALUES (5, 5, 5, '2023-10-10', '2023-10-11', 4, 3000, 3100);
