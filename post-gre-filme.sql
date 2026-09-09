CREATE TABLE usuarios (
    id INTEGER PRIMARY KEY,
    nome_usuario VARCHAR(150) NOT NULL,
    email VARCHAR(150) NOT NULL,
    senha VARCHAR(255) NOT NULL,
    criado_em TIMESTAMP,
    atualizado_em TIMESTAMP
);

CREATE TABLE filmes (
    id INTEGER PRIMARY KEY,
    usuario_id INTEGER NOT NULL,
    titulo VARCHAR(200) NOT NULL,
    ano_lancamento DATE,
    genero VARCHAR(100),
    nota DECIMAL,
    capa_url TEXT,
    criado_em TIMESTAMP,
    utilizado_em TIMESTAMP,
    
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);


-- 5 registros na tabela usuarios

INSERT INTO usuarios
(id, nome_usuario, email, senha, criado_em, atualizado_em)
VALUES
(1, 'joao', 'joao@email.com', 'senha123', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(2, 'maria', 'maria@email.com', 'senha456', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(3, 'pedro', 'pedro@email.com', 'senha789', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(4, 'ana', 'ana@email.com', 'senha321', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(5, 'lucas', 'lucas@email.com', 'senha654', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);


-- 5 registros na tabela filmes

INSERT INTO filmes
(id, usuario_id, titulo, ano_lancamento, genero, nota, capa_url, criado_em, utilizado_em)
VALUES
(1, 1, 'Interestelar', '2014-01-01', 'Ficção Científica', 9.5,
'https://example.com/interestelar.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

(2, 2, 'O Senhor dos Anéis', '2001-01-01', 'Fantasia', 9.0,
'https://example.com/senhor-dos-aneis.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

(3, 3, 'Homem-Aranha: No Aranhaverso', '2018-01-01', 'Animação', 9.2,
'https://example.com/aranhaverso.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

(4, 4, 'Vingadores: Ultimato', '2019-01-01', 'Ação', 8.8,
'https://example.com/ultimato.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),

(5, 5, 'Toy Story', '1995-01-01', 'Animação', 8.7,
'https://example.com/toy-story.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);