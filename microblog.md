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