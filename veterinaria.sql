/* Lógico_1 HIHIHI: */

CREATE TABLE veterinarios (
    cod_veterinario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR (40),
    especialidade VARCHAR (30),
    CPF VARCHAR (20),
    telefone VARCHAR (20),
    RG VARCHAR (10)
);

CREATE TABLE consultas (
    cod_consulta INT PRIMARY KEY AUTO_INCREMENT,
    data VARCHAR (25),
    horario VARCHAR (15),
    valor DECIMAL (8,2),
    cod_animal INT,
    cod_veterinario INT
);

CREATE TABLE clientes (
    cod_cliente INT PRIMARY KEY  AUTO_INCREMENT,
    nome VARCHAR (40),
    CPF VARCHAR (20),
    telefone VARCHAR (20),
    RG VARCHAR (10),
    pontos INT,
    nivel INT
);

CREATE TABLE animais (
    cod_animal INT PRIMARY KEY  AUTO_INCREMENT,
    nome VARCHAR (15),
    especie VARCHAR (15),
    raca VARCHAR (20),
    cod_cliente INT
);

CREATE TABLE exames (
    cod_exame INT PRIMARY KEY  AUTO_INCREMENT,
    exame VARCHAR(30)
);

CREATE TABLE consultas_exames (
    cod_ce INT PRIMARY KEY  AUTO_INCREMENT,
    laudo TEXT,
    cod_consulta INT,
    cod_exame INT
);
 
ALTER TABLE consultas ADD CONSTRAINT FK_consultas_2
    FOREIGN KEY (cod_animal)
    REFERENCES animais (cod_animal)
    ON DELETE CASCADE;
 
ALTER TABLE consultas ADD CONSTRAINT FK_consultas_3
    FOREIGN KEY (cod_veterinario)
    REFERENCES veterinarios (cod_veterinario)
    ON DELETE CASCADE;
 
ALTER TABLE animais ADD CONSTRAINT FK_animais_2
    FOREIGN KEY (cod_cliente)
    REFERENCES clientes (cod_cliente)
    ON DELETE CASCADE;
 
ALTER TABLE consultas_exames ADD CONSTRAINT FK_consultas_exames_2
    FOREIGN KEY (cod_consulta)
    REFERENCES consultas (cod_consulta);
 
ALTER TABLE consultas_exames ADD CONSTRAINT FK_consultas_exames_3
    FOREIGN KEY (cod_exame)
    REFERENCES exames (cod_exame);
