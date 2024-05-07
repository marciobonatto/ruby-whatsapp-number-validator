yes_or_no = "S"
loop do
  puts text_whatsapp = "Olá, o meu WhatsApp é: \n(escreva no formato (99) 9 9999-9999)"
  number_whatsapp = gets.chomp
  match_whatsapp = /\(\d{2}\) \d \d{4}-\d{4}/.match(number_whatsapp)
  if (match_whatsapp)
    result_ok = "OK. O seu número de WhatsApp #{match_whatsapp} é válido."
    puts "#{'-'*result_ok.length}\n#{result_ok}\n#{'-'*result_ok.length}"
    break
  else
    result_error = "ERRO. O número de WhatsApp #{number_whatsapp} não é válido. \nQuer tentar novamente: (S/N)"
    puts "#{'-'*result_error.length}\n#{result_error}"
    loop do
      yes_or_no = gets.chomp.upcase
      if (yes_or_no === 'N')
        break
      elsif (yes_or_no === 'S')
        break
      else
        puts "Inválido. Escreva S ou N:"
      end
    end
    if (yes_or_no === 'N')
      break
    end
    puts "#{'-'*result_error.length}"
  end
end