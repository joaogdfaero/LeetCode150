# ANTES  DE PASSAR PARA O PRÓXIMO, ESTUDAR SOLUÇÃO E REPLICAR ALGUMAS VEZES PARA ENTENDER
# https://youtu.be/YwvHeouhy6s

def is_valid(s)
  stack = []

  s.each_char do |char|
      case char
      when '(', '{', '['
          stack.push(char)
      when ')'
          return false if stack.pop != '('
      when '}'
          return false if stack.pop != '{'
      when ']'
          return false if stack.pop != '['
      end
  end

  return stack.empty?
end


s = "([)]"

p is_valid(s)



