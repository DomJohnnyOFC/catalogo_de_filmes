CREATE TABLE usuarios (
    id INTEGER PRIMARY KEY,
    nome_usuario VARCHAR(150) NOT NULL UNIQUE,
    email VARCHAR(150) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    atualizado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE filmes (
    id INTEGER PRIMARY KEY,
    usuario_id INTEGER NOT NULL,
    titulo VARCHAR(200) NOT NULL,
    ano_lancamento INTEGER,
    genero VARCHAR(100),
    nota DECIMAL(3,1) CHECK (nota >= 0 AND nota <= 10),
    capa_url TEXT,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    assistido_em TIMESTAMP,

    FOREIGN KEY (usuario_id)
        REFERENCES usuarios(id)
);


INSERT INTO usuarios
(id, nome_usuario, email, senha)
VALUES
(1, 'joao', 'joao@email.com', 'senha123'),
(2, 'maria', 'maria@email.com', 'senha456'),
(3, 'pedro', 'pedro@email.com', 'senha789'),
(4, 'ana', 'ana@email.com', 'senha321'),
(5, 'lucas', 'lucas@email.com', 'senha654');


INSERT INTO filmes
(id, usuario_id, titulo, ano_lancamento, genero, nota, capa_url, assistido_em)
VALUES
(
    1,
    1,
    'Interestelar',
    2014,
    'Ficção Científica',
    9.5,
    'https://example.com/interestelar.jpg',
    CURRENT_TIMESTAMP
),
(
    2,
    2,
    'O Senhor dos Anéis',
    2001,
    'Fantasia',
    9.0,
    'https://example.com/senhor-dos-aneis.jpg',
    CURRENT_TIMESTAMP
),
(
    3,
    3,
    'Homem-Aranha: No Aranhaverso',
    2018,
    'Animação',
    9.2,
    'https://example.com/aranhaverso.jpg',
    CURRENT_TIMESTAMP
),
(
    4,
    4,
    'Vingadores: Ultimato',
    2019,
    'Ação',
    8.8,
    'https://example.com/ultimato.jpg',
    CURRENT_TIMESTAMP
),
(
    5,
    5,
    'Toy Story',
    1995,
    'Animação',
    8.7,
    'https://example.com/toy-story.jpg',
    CURRENT_TIMESTAMP
);
