i = File.read('input.txt')

def transformation(input)
  input.split.map(&:chars)
end

def gamma(input)
  gamma = transformation(input).transpose.map do |bit|
    count = bit.select.count {|bit| bit == "0" }

    count > bit.size / 2 ? '0' : '1'
  end

  gamma1 = gamma.join
end

def epsion(input)
  epsion = gamma(input).split.map(&:chars)
  
  epsion = (epsion).flatten.map(&:to_i)

  epsion.map do |s|

    if s == 0
      s + 1
    else
      s - 1
    end
    
  end
   .join
  
  


end


def final(input)
  g = gamma(input).to_i(2) 
  e = epsion(input).to_i(2)

  e * g 
end

p final i
