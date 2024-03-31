CREATE DATABASE book_store;

\c book_store;

CREATE TABLE "usuarios" (
    id SERIAL PRIMARY KEY,
    nome_completo VARCHAR(300) NOT NULL,
    email VARCHAR(150) NOT NULL,
    data_de_nascimento DATE NOT NULL,
    senha_hash VARCHAR(200) NOT NULL
);

CREATE TABLE "documentos_usuario" (
    id SERIAL PRIMARY KEY,
    id_usuario INTEGER REFERENCES usuarios (id),
    tipo_documento INTEGER NOT NULL,
    numero VARCHAR(150) UNIQUE NOT NULL
);

CREATE TABLE "genero" (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL
);

CREATE TABLE "autor" (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL
);

CREATE TABLE "livros" (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(300) NOT NULL,
    genero_id INTEGER REFERENCES genero (id),
    autor_id INTEGER REFERENCES autor (id),
    preco INTEGER NOT NULL,
    quantidade_estoque INTEGER NOT NULL
);

CREATE TABLE "itens_carrinho" (
    id SERIAL PRIMARY KEY,
    livro_id INTEGER REFERENCES livros (id),
    usuario_id INTEGER REFERENCES usuarios (id)
);

CREATE TABLE "historico_compras" (
    id SERIAL PRIMARY KEY,
    livro_id INTEGER REFERENCES livros (id),
    usuario_id INTEGER REFERENCES usuarios (id),
    preco INTEGER NOT NULL
);

CREATE TABLE "preferencias_usuario" (
    id SERIAL PRIMARY KEY,
    usuario_id INTEGER REFERENCES usuarios (id),
    tipo_preferencia INTEGER NOT NULL,
    id_preferencia INTEGER NOT NULL
);
