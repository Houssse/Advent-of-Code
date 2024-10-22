def curs(input)
  depth = 0
  horizontal = 0
  aim = 0

  transformation(input).each do |instruction, x|
    x = x.to_i
    case instruction
    when 'forward'
      horizontal += x
      depth += aim * x
    when 'up'   then aim -= x
    when 'down' then aim += x
    end
  end
  depth * horizontal
end
#монипуляции по условиям задачи
def transformation(input)
  input.split.each_slice(2) #Приврошение массива в чеоловеческйи вид
end

puts curs File.read('input.txt')