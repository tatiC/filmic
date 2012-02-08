#encoding: utf-8

class Filme
  def initialize(filme, dica)
    @filme = []
    @filme << filme
    @dica = dica
    puts @filme                       
    puts @dica
    puts "\n"
  end
end

puts "Iniciando..."
puts "\n"
Filme.new("Titanic", "Braços abertos.")
Filme.new("Missão Impossível", "Ator principal come ectoplasma de bebê.")
Filme.new("Thor", "Personagem chifrudo.")         

Filme has_many :dicas






