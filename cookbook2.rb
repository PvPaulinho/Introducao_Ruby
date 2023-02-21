puts "\n\nBem vindo ao CookBook, sua rede social de receitas\n"
puts

receitas = []

puts "\n        ===== Menu ====="
puts
puts "[1] Cadastrar uma receita"
puts "[2] Ver todas as receitas"
puts "[3] Sair"

print "Escolha uma opção: "
opcao = gets.to_i()

while (opcao != 3) do 

    if(opcao == 1)
        puts "\nDigite o nome da receita: "
        n = gets.chomp()
        puts "\nDigite o tipo da receita: "
        t = gets.chomp()
        receitas << { nome: n, tipo: t}
        puts
        puts "\nReceita " + n + " cadastrada com sucesso!"
        puts
    elsif(opcao == 2)
        puts "\n========= Receitas cadastradas ========="
        receitas.each do |receita|
            puts "#{receita[:nome]} - #{receita[:tipo]}"
        end
        puts
    else
        puts "\nOpção inválida."
    end
    
    puts "\n        ===== Menu ====="
    puts
    puts "[1] Cadastrar uma receita"
    puts "[2] Ver todas as receitas"
    puts "[3] Sair"

    print "Escolha uma opção: "
    opcao = gets.to_i()

end

puts "\n\nObrigado por usar o Cookbook"