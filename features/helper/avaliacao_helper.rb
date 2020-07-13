class Avaliacao
    def self.avaliacao(produto, nota, nome, email, titulo, review, enviar_avaliacao)
      produto.input_nota_avaliacao.click
      produto.input_nome.set(nome)
      produto.input_email.set(email)
      produto.input_titulo.set(titulo)
      produto.input_review.set(review)
      produto.botao_enviar_avaliacao.click
    end
end