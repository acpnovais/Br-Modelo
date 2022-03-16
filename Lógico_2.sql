/* Lógico_2: */

CREATE TABLE CONTA (
    id_conta INT(10) PRIMARY KEY,
    numero_conta BIGINT(16),
    agencia VARCHAR(20),
    tipo_conta VARCHAR(20),
    titular VARCHAR(50),
    data_abertura_conta DATE,
    saldo_conta BIGINT(16),
    numero_banco INT(10),
    nome_banco VARCHAR(50),
    tipo_banco VARCHAR(50)
);

CREATE TABLE CLIENTE (
    CPF VARCHAR(11) PRIMARY KEY,
    nome VARCHAR(50),
    RG VARCHAR(20),
    bairro VARCHAR(30),
    logradouro VARCHAR(30),
    cidade VARCHAR(20),
    UF VARCHAR(2),
    cep INT(7),
    complemento VARCHAR(20),
    tel_fixo BIGINT(11),
    tel_celular BIGINT(11),
    contas VARCHAR(20),
    cartoes BIGINT(16),
    nome_dependente VARCHAR(50)
);

CREATE TABLE CARTAO (
    numero_cartao BIGINT(16) PRIMARY KEY,
    data_emissao DATE,
    prazo_validade DATE,
    limite BIGINT(16),
    condicoes_pagamento VARCHAR(20),
    saldo_cartao BIGINT(16),
    despesa_cartao BIGINT(16),
    taxa_anuidade VARCHAR(20),
    tipo_cartao VARCHAR(20)
);

CREATE TABLE POSSUI (
    FK_CLIENTE_CPF VARCHAR(11),
    FK_CONTA_id_conta INT(10)
);

CREATE TABLE EMITE (
    FK_CARTAO_numero_cartao BIGINT(16),
    FK_CONTA_id_conta INT(10)
);

CREATE TABLE TEM (
    FK_CLIENTE_CPF VARCHAR(11),
    FK_CARTAO_numero_cartao BIGINT(16)
);
 
ALTER TABLE POSSUI ADD CONSTRAINT FK_POSSUI_1
    FOREIGN KEY (FK_CLIENTE_CPF)
    REFERENCES CLIENTE (CPF)
    ON DELETE RESTRICT;
 
ALTER TABLE POSSUI ADD CONSTRAINT FK_POSSUI_2
    FOREIGN KEY (FK_CONTA_id_conta)
    REFERENCES CONTA (id_conta)
    ON DELETE SET NULL;
 
ALTER TABLE EMITE ADD CONSTRAINT FK_EMITE_1
    FOREIGN KEY (FK_CARTAO_numero_cartao)
    REFERENCES CARTAO (numero_cartao)
    ON DELETE RESTRICT;
 
ALTER TABLE EMITE ADD CONSTRAINT FK_EMITE_2
    FOREIGN KEY (FK_CONTA_id_conta)
    REFERENCES CONTA (id_conta)
    ON DELETE RESTRICT;
 
ALTER TABLE TEM ADD CONSTRAINT FK_TEM_1
    FOREIGN KEY (FK_CLIENTE_CPF)
    REFERENCES CLIENTE (CPF)
    ON DELETE RESTRICT;
 
ALTER TABLE TEM ADD CONSTRAINT FK_TEM_2
    FOREIGN KEY (FK_CARTAO_numero_cartao)
    REFERENCES CARTAO (numero_cartao)
    ON DELETE RESTRICT;