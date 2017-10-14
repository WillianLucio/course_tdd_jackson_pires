require 'pessoa'

describe 'Atributos' do

  before(:each) do
    puts ">>> Antes de cada teste"
    @pessoa = Pessoa.new
  end

  after(:example) do
    @pessoa.nome = "Sem nome!"
    puts ">>> Depois de cada teste #{@pessoa.inspect}"
  end

  around(:each) do |teste|
    puts "=== Antes de cada teste"
    @pessoa = Pessoa.new

    teste.run # roda o teste

    @pessoa.nome = "Sem nome!"
    puts "=== Depois de cada teste #{@pessoa.inspect}"
  end

  it 'have_attributes' do
    @pessoa.nome = "Jackson"
    @pessoa.idade = 20

    expect(@pessoa).to have_attributes(nome: "Jackson", idade: 20)
    expect(@pessoa).to have_attributes(nome: starting_with("J"), idade: (be >= 20))
    expect(@pessoa).to have_attributes(nome: start_with("J"), idade: (be >= 20))
    expect(@pessoa).to have_attributes(nome: a_string_starting_with("J"), idade: (be >= 20))
    expect(@pessoa).to have_attributes(nome: a_string_starting_with("J"), idade: (a_value >= 20))
  end
end
