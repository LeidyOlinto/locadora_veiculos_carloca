-- Create Cliente
CREATE TABLE `CLIENTE` ( 
  `id_cliente` INT AUTO_INCREMENT NOT NULL,
  `nome` VARCHAR(255) NOT NULL,
  `cpf` VARCHAR(15) NOT NULL,
  `telefone` VARCHAR(255) NOT NULL,
  CONSTRAINT `PRIMARY` PRIMARY KEY (`id_cliente`)
);

--Create Carro
REATE TABLE `CARRO` ( 
  `id_carro` INT AUTO_INCREMENT NOT NULL,
  `nome` VARCHAR(255) NOT NULL,
  `id_modelo` INT NOT NULL,
  `quilometragem` INT NOT NULL,
  `cor` ENUM('BRANCO','PRETO','PRATA') NOT NULL,
  `disponivel` TINYINT NOT NULL DEFAULT 1 ,
  CONSTRAINT `PRIMARY` PRIMARY KEY (`id_carro`),
  CONSTRAINT `fk_id_modelo` FOREIGN KEY (`id_modelo`) REFERENCES `MODELO` (`id_modelo`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

--Create Carro_alugados
CREATE TABLE `CARROS_ALUGADOS` ( 
  `id_cliente` INT NOT NULL,
  `id_carro` INT NOT NULL,
  CONSTRAINT `CARROS_ALUGADOS_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `CLIENTE` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `CARROS_ALUGADOS_ibfk_2` FOREIGN KEY (`id_carro`) REFERENCES `CARRO` (`id_carro`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `uk_cliente_carro` UNIQUE (`id_cliente`)
);

--Create Categoria
CREATE TABLE `CATEGORIA` ( 
  `id_categoria` INT AUTO_INCREMENT NOT NULL,
  `nome` VARCHAR(255) NOT NULL,
  CONSTRAINT `PRIMARY` PRIMARY KEY (`id_categoria`)
);


--Create Endereco
CREATE TABLE `ENDERECO` ( 
  `id_endereco` INT AUTO_INCREMENT NOT NULL,
  `rua` VARCHAR(255) NOT NULL,
  `cidade` VARCHAR(255) NOT NULL,
  `estado` VARCHAR(255) NOT NULL,
  CONSTRAINT `PRIMARY` PRIMARY KEY (`id_endereco`)
);


--Create Locadora
CREATE TABLE `LOCADORA` ( 
  `id_locadora` INT AUTO_INCREMENT NOT NULL,
  `nome` VARCHAR(255) NOT NULL,
  `id_endereco` INT NOT NULL,
  CONSTRAINT `PRIMARY` PRIMARY KEY (`id_locadora`),
  CONSTRAINT `fk_id_endereco` FOREIGN KEY (`id_endereco`) REFERENCES `ENDERECO` (`id_endereco`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

--Create MOdelo
CREATE TABLE `MODELO` ( 
  `id_modelo` INT AUTO_INCREMENT NOT NULL,
  `nome` VARCHAR(35) NOT NULL,
  `id_categoria` INT NOT NULL,
  `id_montadora` INT NOT NULL,
  `id_versao` INT NOT NULL,
  CONSTRAINT `PRIMARY` PRIMARY KEY (`id_modelo`),
  CONSTRAINT `fk_id_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `CATEGORIA` (`id_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_id_montadora` FOREIGN KEY (`id_montadora`) REFERENCES `MONTADORA` (`id_montadora`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_id_versao` FOREIGN KEY (`id_versao`) REFERENCES `VERSAO` (`id_versao`) ON DELETE NO ACTION ON UPDATE NO ACTION
);
--Create Montadora
CREATE TABLE `MONTADORA` ( 
  `id_montadora` INT AUTO_INCREMENT NOT NULL,
  `nome` VARCHAR(255) NOT NULL,
  CONSTRAINT `PRIMARY` PRIMARY KEY (`id_montadora`)
);

--Create Versao
CREATE TABLE `VERSAO` ( 
  `id_versao` INT AUTO_INCREMENT NOT NULL,
  `nome` VARCHAR(255) NOT NULL,
  CONSTRAINT `PRIMARY` PRIMARY KEY (`id_versao`)
);

--Create Registro_Locacao
CREATE TABLE `REGISTRO_LOCACAO` ( 
  `id_registro_locacao` INT AUTO_INCREMENT NOT NULL,
  `id_cliente` INT NOT NULL,
  `id_carro` INT NOT NULL,
  `data_inicial` DATE NOT NULL,
  `data_final` DATE NOT NULL,
  `id_locadora` INT NOT NULL,
  `quilometragem_Inicial` INT NOT NULL,
  `quilometragem_final` INT NOT NULL,
  CONSTRAINT `PRIMARY` PRIMARY KEY (`id_registro_locacao`),
  CONSTRAINT `fk_id_carro` FOREIGN KEY (`id_carro`) REFERENCES `CARRO` (`id_carro`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `CLIENTE` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_id_locadora` FOREIGN KEY (`id_locadora`) REFERENCES `LOCADORA` (`id_locadora`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `uk_carro_locado` UNIQUE (`id_carro`)
);



