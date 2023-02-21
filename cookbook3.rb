INSERIR_RECEITA = 1
VISUALIZAR_TODAS_RECEITAS = 2
BUSCAR_RECEITA = 3
SAIR = 0

def bemVindo()
    puts "\n\nBem vindo ao CookBook, sua rede social de receitas\n"
    puts
end

def menu()
    puts "\n        ===== Menu ====="
    puts
    puts "[#{INSERIR_RECEITA}] Cadastrar uma receita"
    puts "[#{VISUALIZAR_TODAS_RECEITAS}] Ver todas as receitas"
    puts "[#{SAIR}] Sair"

    print "Escolha uma opção: "
    # return gets.to_i() -> O return é opcional
    gets.to_i()
end

def inserirReceita()
    puts "\nDigite o nome da receita: "
    n = gets.chomp()
    puts "\nDigite o tipo da receita: "
    t = gets.chomp()
    puts
    puts "\nReceita " + n + " cadastrada com sucesso!"
    puts
    return { nome: n, tipo: t}
end

def imprimirReceitas(r)
    puts "\n========= Receitas cadastradas ========="
    r.each do |receita|
        puts "#{receita[:nome]} - #{receita[:tipo]}"
    end
    puts
    if receitas.empty?
        puts "Nenhuma receita cadastrada"
    end
end


bemVindo()

receitas = []

opcao = menu()

loop do 

    if(opcao == INSERIR_RECEITA)
        receitas << inserirReceita()
    elsif(opcao == VISUALIZAR_TODAS_RECEITAS)
        imprimirReceitas(receitas)
    elsif(opcao == SAIR)
        break
    else
        puts "\nOpção inválida."
    end
    
    opcao = menu

end

puts
puts "\n\nObrigado por usar o Cookbook"