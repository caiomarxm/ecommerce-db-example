-- Creating users
INSERT INTO usuarios (nome_completo, email, data_de_nascimento, senha_hash)
VALUES ('John Doe', 'johndoe@example.com', '1990-01-01', 'hashed_password');

INSERT INTO usuarios (nome_completo, email, data_de_nascimento, senha_hash)
VALUES ('Jane Doe', 'janedoe@example.com', '1995-02-15', 'another_hashed_password');


-- Assuming document type: 1 (ID Card), 2 (Passport)
INSERT INTO documentos_usuario (id_usuario, tipo_documento, numero)
VALUES (1, 1, '123456789');

INSERT INTO documentos_usuario (id_usuario, tipo_documento, numero)
VALUES (2, 2, 'AB123456');


-- Populating genres
INSERT INTO genero (nome)
VALUES ('Fiction');

INSERT INTO genero (nome)
VALUES ('Biography');

INSERT INTO genero (nome)
VALUES ('Science Fiction');


-- Populating authors
INSERT INTO autor (nome)
VALUES ('J.R.R. Tolkien');

INSERT INTO autor (nome)
VALUES ('Stephen King');

INSERT INTO autor (nome)
VALUES ('George R.R. Martin');


-- Populating books
INSERT INTO livros (titulo, genero_id, autor_id, preco, quantidade_estoque)
VALUES ('The Lord of the Rings', 1, 1, 2500, 10);

INSERT INTO livros (titulo, genero_id, autor_id, preco, quantidade_estoque)
VALUES ('The Shining', 2, 2, 1800, 5);

INSERT INTO livros (titulo, genero_id, autor_id, preco, quantidade_estoque)
VALUES ('A Song of Ice and Fire', 3, 3, 3000, 15);


-- Adding item to cart
INSERT INTO itens_carrinho (livro_id, usuario_id)
VALUES (1, 1);


-- Assuming a purchase of book with ID 2 by user ID 1 at a price of 2500
INSERT INTO historico_compras (livro_id, usuario_id, preco)
VALUES (2, 1, 2500);


-- Assuming user ID 1 prefers genre fiction (type_preference = 1) and ID 3
INSERT INTO preferencias_usuario (usuario_id, tipo_preferencia, id_preferencia)
VALUES (1, 1, 3);
