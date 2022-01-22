t = File.read('input.txt').split.map(&:to_i)

p t.each_cons(3).map(&:sum).each_cons(2).to_a.count{ |x| (x.last - x.first).positive? } 
#Первый вызов each_cons разбивает на пары по 3 и суммирует числа внутри пар. Второй вызов повторяет действия в 1.rb 