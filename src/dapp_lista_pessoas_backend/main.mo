// O Buffer é uma estrutura de dados dinâmica, que permite adicionar e remover elementos de forma eficiente.
import Buffer "mo:base/Buffer";

actor {

  // ✅ Declaração do Buffer
  // Criamos um buffer chamado 'pessoas' que armazenará elementos do tipo Text (texto).
  // Inicialmente, ele começa vazio (capacidade inicial 0, mas é dinâmico e cresce conforme necessário).
  let pessoas = Buffer.Buffer<Text>(0);

  // ✅ Função para adicionar pessoas
  // Essa função recebe um parâmetro chamado 'nomePessoa' do tipo Text.
  // Ela adiciona o nome recebido ao buffer 'pessoas'.
  public func adicionarPessoa(nomePessoa: Text) : async () {
    pessoas.add(nomePessoa);
  };

  // ✅ Função para listar pessoas
  // Esta função não recebe parâmetros e retorna um Array contendo todos os nomes armazenados no buffer.
  // O Buffer é convertido em Array usando 'Buffer.toArray()'.
  public func listarPessoas() : async [Text] {
    return Buffer.toArray(pessoas);
  };

};
