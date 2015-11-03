
# text adventure made for intermediate challenge 2 of /r/dailyprogrammer

class FlorestaSombria
  
  attr_reader :nome, :estranho # nomes
  attr_reader :check_action, :sword, :death # boolean
  
  def initialize
    @estranho = "Melvin" # voce pode escolher o nome do inimigo
    @check_action = false
    @death = false
    @sword = false
    part1
  end
  
  def part1
    puts "Voce tem seu sono despertado por um homem estranho. Voce percebe que se encontra embaixo de uma arvore, dentro de uma floresta sombria."
    puts "\"Ola, Eu sou #{estranho}. Qual e o seu nome?\" - pergunta o homem." 
    @nome = gets.chomp
    part2
  end
  
  def part2
    puts "\n\"Entao, #{nome}, eu estou aqui para te levar para fora desta floresta antes que seja tarde demais. Levante-se e vamos.\""
    puts "Voce se levanta. #{estranho} comeca a andar. Antes de segui-lo, voce percebe que ha uma espada ao seu lado, jogada no chao."
    
    while (!@check_action)
      puts "Voce pode pegar a ESPADA, ou SEGUIR #{estranho}."
      action = gets.chomp.upcase
      case action
        when "ESPADA"
          part_sword
          @check_action = true
        when "SEGUIR"
          @check_action = true
        else
          puts "AcaO INVaLIDA"
      end
    end
    
    @check_action = false
    puts "Voce segue #{estranho}."
    part3
  end
  
  def part3
    puts "\nVoce dois se aproximam de uma ponte. Ela aparenta estar muito velha, e pode desabar com muito peso."
    puts "#{estranho} se volta a voce:"
    puts "\"Eu acho que nos nao deveriamos atravessar a ponte ao mesmo tempo. O que acha, #{nome}? O que devemos fazer?\""
    
    while (!@check_action)
      puts "Voce pode DEIXAR #{estranho} atravessar a ponte, voce pode ATRAVESSAR a ponte, ou AMBOS podem atravessar ao mesmo tempo."
      action = gets.chomp.upcase
      case action
        when "DEIXAR"
          puts "\n#{estranho} atravessa a ponte na sua frente. Nada acontece. Voce atravessa a ponte logo depois."
          @check_action = true
        when "ATRAVESSAR"
          part_cross
          @check_action = true
        when "AMBOS"
          part_both
          @check_action = true
        when "ATACAR"
          part_attack_s
        else
          puts "AcaO INVaLIDA"
      end
    end
    
    @check_action = false
    if (death)
      part_death
    else
      part4
    end  
  end
  
  def part4
    puts "Voces chegam a uma construcao antiga. Ela se parece como um altar para sacrificios."
    puts "#{estranho} vai para o centro dela, bem em frente a uma mesa, e olha para voce, com os olhos bem abertos:"
    puts "\"Esta na hora, #{nome}. Voce e sacrificio de hoje!!\""
    puts "#{estranho} comeca a preparar o feitico final. Nao parece que as coisas irao terminar bem para voce."
    
    if (sword)
      while (!@check_action)
        puts "Voce pode usar sua espada para ATACAR #{estranho}, ou voce pode ESPERAR o feitico ser terminado."
        action = gets.chomp.upcase
        case action
          when "ATACAR"
            part_attack1
            @death = true
            @check_action = true
          when "ESPERAR"
            part_attack2
            @check_action = true
          else 
            puts "AcaO INVaLIDA"
        end
      end
    else
      part_spell
      @death = true
    end
    
    if (death)
      part_death
    else
      part_conclusion
    end    
  end
  
  def part_cross
    puts "\nVoce comeca a atravessar a ponte. #{estranho} silenciosamente te observa."
    puts "Quando voce chega no meio da ponte, #{estranho} comeca a rir de maneira maligna."
    puts "#{estranho} evoca um feitico negro, que atira uma pedra pesada na ponte."
    puts "A ponte se quebra, e voce cai."
    @death = true
  end
  
  def part_both
    puts "\nVoces dois atravessam a ponte ao mesmo tempo."
    puts "Seus pesos combinados sao demais para a ponte. Ela comeca a desmoronar."
    puts "#{estranho} usa um feitico que o faz flutuar."
    puts "Voce cai enquanto assiste a #{estranho} levitar sobre voce, ate voce atingir o chao. As plantas comecam a te envolver, para te sufocar."
    @death = true
  end
  
  def part_attack1
    puts "\nVoce tenta atacar #{estranho} de maneira nervosa, e ele esta atento a suas acões."
    puts "#{estranho} prepara outro feitico, que faz a arvore atras de voce te acertar, e te faz derrubar a espada."
    puts "Os galhos da arvore te capturam, e carregam o seu corpo ate a mesa. Eles acabam com voce abrindo um buraco em seu peito."
  end
  
  def part_attack2
    puts "\nVoce espera imovel que #{estranho} termine seu feitico. Ele comeca a se perguntar porque voce parece tao confidente."
    puts "O feitico esta completo. As raizes das arvores comecam a se mover, tentando te pegar."
    puts "Voce movimenta a espada e as corta."
    puts "\"Nao pode ser. Voce nao deveria ser capaz de se livrar disso.\" - diz #{estranho}. Ele comeca a ficar cada vez mais preocupado, conforme voce corta mais e mais raizes."
    puts "Voce se aproxima de #{estranho}. Ele te olha e diz:"
    puts "\"Eu concedo a derrota.\""
    puts "Voce ataca com a espada. #{estranho} cai no chao."
  end
  
  def part_attack_s
    if (sword)
      puts "\nVoce permite que #{estranho} atravesse antes de voce. E ele vai. Quando ele chega do outro lado, ele continua olhando para frente."
      puts "Voce comeca a atravessar a ponte devagar. Quando voce esta perto do fim dela, voce se prepara para atacar."
      puts "Voce ataca #{estranho} bem em suas costas com a espada."
      puts "#{estranho} tosse, enquanto seus pulmões se enchem de sangue. Ele entao cai no chao."
      part_conclusion
      abort
    else
      puts "AcaO INVaLIDA"
    end
  end
  
  def part_spell
    puts "\n\"Voce deveria ter levado aquela espada com voce, #{nome}. Agora voce nao pode me derrotar.\""
    puts "#{estranho} termina o feitico. As raizes das arvores se levantam e te capturam. Voce nao pode mais se mover."
    puts "Elas te colocam na mesa."
    puts "As raizes furam o seu peito. Voce comeca a sangrar ate sua consciencia se esvair."
  end
  
  def part_sword
    @sword = true
    puts "\nVoce pega a espada, e se equipa com ela."
    puts "\"Entao voce possui bravura, #{nome}...\" - diz #{estranho}, enquanto demonstra um sorriso irônico."
  end
  
  def part_death
    puts "\"Que pena, #{nome}, que pena...\" - murmura #{estranho}."
    puts "Voce morreu."
    puts "FIM DE JOGO"
  end
  
  def part_conclusion()
    puts "A floresta sombria comeca a desaparecer diante de seus olhos. Em seu lugar, voce comeca a ver sua cidade. Esta e a ultima coisa de que se lembra antes de acordar na floresta sombria."
    puts "Voce percebe que esteve sob uma ilusao de #{estranho}. Agora voce esta livre."
    puts "Bom trabalho, #{nome}."
  end
  
end

floresta = FlorestaSombria.new
