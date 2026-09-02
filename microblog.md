## Criando USUARIO

```sql
CREATE DATABASE microbloh CHARACTER SET utf8mb4
```

## USUARIO
```sql
CREATE TABLE usuarios(
    id INT PRIMARY KEY AUTO_INCREMENT,
    senha VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL,
    nome VARCHAR(100) NOT NULL
);
```
```sql
CREATE TABLE  noticias(
id INT PRIMARY KEY AUTO_INCREMENT,

destaque ENUM('sim','nao'),
calendario DATETIME,
imagem VARCHAR(100) NOT NULL,
tipo ENUM('admin', 'editor'),
texto VARCHAR(300) NOT NULL,
usuario_id INT NOT NULL,
categoria_id INT NOT NULL,

FOREIGN KEY (usuario_id) REFERENCES usuarios (id) ON DELETE CASCADE,

FOREIGN KEY (categoria_id) REFERENCES categorias (id) ON DELETE RESTRICT


);

```

```sql
CREATE TABLE categorias(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL
);

```
