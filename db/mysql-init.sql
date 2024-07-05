USE newdb;

-- Creazione delle tabelle
CREATE TABLE IF NOT EXISTS Cart (
                                    id BIGINT NOT NULL AUTO_INCREMENT,
                                    person_id VARCHAR(255),
    PRIMARY KEY (id)
    ) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS CartProduct (
                                           id BIGINT NOT NULL AUTO_INCREMENT,
                                           category INTEGER,
                                           name VARCHAR(255),
    price BIGINT,
    quantity INTEGER,
    cart_id BIGINT,
    person_id VARCHAR(255),
    product_id BIGINT,
    PRIMARY KEY (id)
    ) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS Person (
                                      id VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
    ) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS Product (
                                       id BIGINT NOT NULL AUTO_INCREMENT,
                                       category INTEGER,
                                       description VARCHAR(255),
    img VARCHAR(255),
    name VARCHAR(255),
    price BIGINT,
    quantity INTEGER,
    PRIMARY KEY (id)
    ) ENGINE=InnoDB;

-- Aggiunta delle chiavi esterne
ALTER TABLE Cart
    ADD CONSTRAINT FKhe5i4658h2dl4skkbg9e8tuvf
        FOREIGN KEY (person_id)
            REFERENCES Person (id);

ALTER TABLE CartProduct
    ADD CONSTRAINT FK4f8gv2xm4oo96gnonrgp6cm2f
        FOREIGN KEY (cart_id)
            REFERENCES Cart (id);

ALTER TABLE CartProduct
    ADD CONSTRAINT FK4euyg3f811qchyymgutgbnlaq
        FOREIGN KEY (person_id)
            REFERENCES Person (id);

ALTER TABLE CartProduct
    ADD CONSTRAINT FK99jrvdd5dbnlwtcl3i1jrx7ru
        FOREIGN KEY (product_id)
            REFERENCES Product (id);

-- Inserimento dei dati nella tabella Product
INSERT INTO Product (id, category, description, img, name, price, quantity)
VALUES (1, 0, 'prodotto basic', '../../assets/images/beats/Free Space.jpg', 'Free Space', 30, 1);

INSERT INTO Product (id, category, description, img, name, price, quantity)
VALUES (2, 2, 'prodotto premium', '../../assets/images/beats/Grooveland.jpg', 'GrooveLand', 40, 1);

INSERT INTO Product (id, category, description, img, name, price, quantity)
VALUES (3, 3, 'prodotto plus', '../../assets/images/beats/Fucking Envy.jpg', 'Fucking Envy', 50, 1);

INSERT INTO Product (id, category, description, img, name, price, quantity)
VALUES (4, 3, 'prodotto exclusive', '../../assets/images/beats/Addicted.jpg', 'Addicted', 60, 1);
