# DAPP Lista de Pessoas - Motoko

Este projeto faz parte da trilha educacional da Internet Computer, focado na prática do uso de **Buffers em Motoko**, uma estrutura dinâmica para manipular coleções de dados.  
O objetivo é criar um backend simples que permita **adicionar e listar pessoas**, utilizando os conceitos aprendidos na documentação oficial do Motoko.

---

## 🚀 Funcionalidades

- ✅ Adicionar nomes à lista de pessoas.
- ✅ Listar todos os nomes cadastrados.
- ✅ Aprendizado prático sobre Buffer, uma estrutura de dados dinâmica em Motoko.

---

## 🛠️ Tecnologias Utilizadas

- Motoko
- DFINITY SDK
- Internet Computer (IC)
- WSL + VS Code (ambiente de desenvolvimento)

---

## 📚 Fundamentação (Baseada na Documentação Oficial do Motoko)

- **Buffer:** é uma estrutura de dados mutável, ideal para listas que precisam crescer dinamicamente.  
- O Buffer permite adicionar elementos facilmente com `.add()` e, quando necessário, converter para Array usando `Buffer.toArray()`.

🔗 Documentação oficial:  
[https://internetcomputer.org/docs/current/developer-docs/backend/motoko/](https://internetcomputer.org/docs/current/developer-docs/backend/motoko/)

---

## 🔧 Estrutura do Código

### ✅ Declaração do Buffer

```motoko
let pessoas = Buffer.Buffer<Text>(0);
```

### ✅ Função para adicionar pessoas

```motoko
public func adicionarPessoa(nomePessoa: Text) : async () {
    pessoas.add(nomePessoa);
};
```

### ✅ Função para listar pessoas

```motoko
public func listarPessoas() : async [Text] {
    return Buffer.toArray(pessoas);
};
```

---

## 🖥️ Como Executar Localmente

### ✅ Pré-requisitos

- WSL instalado
- DFINITY SDK instalado (`dfx`)
- Git instalado

### ✅ Passos

1. Clone o repositório:

```bash
git clone https://github.com/emanuelleLS/dapp_lista_pessoas.git
cd dapp_lista_pessoas
```

2. Inicie o ambiente da Internet Computer local:

```bash
dfx start --background
```

3. Implante o canister:

```bash
dfx deploy
```

4. Acesse a interface Candid pelo link gerado no terminal para testar as funções `adicionarPessoa` e `listarPessoas`.

---

## 🔎 O que é `vec` no Candid UI?

Quando você utiliza a função `listarPessoas()`, o Candid UI retorna algo como:

```plaintext
(vec {"Maria"; "João"})
```

✅ Isso significa um **array de textos**, onde `vec` é a notação de vetor (lista) usada no Candid.  
É equivalente a:

```plaintext
["Maria", "João"]
```

---

## 🧠 Aprendizados Consolidando

- Uso de Buffers em Motoko
- Manipulação de listas dinâmicas
- Conversão de Buffer para Array
- Deploy e testes utilizando Candid UI
- Integração entre ambiente local (WSL + VS Code) e o Internet Computer

---

## 📜 Licença

Este projeto está licenciado sob a licença MIT.  
Feito com ❤️ por [Emanuelle](https://github.com/emanuelleLS)