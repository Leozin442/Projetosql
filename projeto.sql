USE estrelamotor;

CREATE TABLE marcas (
   id INT NOT NULL AUTO_INCREMENT,
   nome_marca VARCHAR(255) NOT NULL,
   PRIMARY KEY (id)
);

CREATE TABLE inventario (
	id INT NOT NULL AUTO_INCREMENT,
    modelo VARCHAR(255) NOT NULL,
    transmissao VARCHAR(255) NOT NULL,
    motor VARCHAR(255) NOT NULL,
    combustivel VARCHAR(255) NOT NULL,
    marcas_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (marcas_id) REFERENCES marcas(id)
    );
    
CREATE TABLE clientes (
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    sobrenome VARCHAR(255) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO clientes (nome, sobrenome, endereco)
VALUES 
    ('Andre', 'Iacono', 'Rua 1'), 
    ('Marcos', 'Souza', 'Rua 2'), 
    ('Ana', 'Silva', 'Rua 3'),
    ('Daniela', 'Pires', 'Rua 4'),
    ('Eduardo', 'Lunin', 'Rua 5') ;
    
INSERT INTO marcas (nome_marca, origem)
VALUES 
    ('BMW', 'Alemanha'),
    ('Fiat', 'Italia'),
    ('Mercedes-Benz', 'Alemanha'),
    ('Renault', 'Franca'),
    ('Jaguar', 'Inglaterra');
    
INSERT INTO inventario (
   modelo,
   transmissao,
   motor,
   combustivel,
   marcas_id
)
VALUES 
	('BMW 218', 'Automatica', '2.0', 'Gasolina', 1),
    ('Cronos 2020', 'Automatico', '1.3', 'Gasolina', 2),
    ('GLA 200', 'Automatico', '1.6', 'Gasolina', 3),
	('Clio 2014', 'Manual', '1.0', 'Gasolina', 4),
	('XE 300', 'Automatico', '2.0', 'Gasolina', 5)