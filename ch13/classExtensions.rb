class Array
  def shuffle
    recursive_shuffle(self, [])
  end

  private
  def recursive_shuffle original, shuffled
    if original.length ==0
      return shuffled
    end
    i = rand(original.length)
    shuffled.push(original[i])
    original.delete_at(i)
    recursive_shuffle(original, shuffled)
  end
end

class Integer
  public
  def factorial
    recursive_factorial(self)
  end

  private
  def recursive_factorial(int)
    if int == 1
      return 1
    else
      return int * recursive_factorial(int-1)
    end
  end

  public
  def toRoman
    #each letter holds the string numeral and number of times it needs to be repeated
    m =  ["M", (self/1000)]
    d = ["D", (self%1000)/500]
    c = ["C", (self%500)/100]
    l = ["L", (self%100)/50]
    x = ["X", (self%50)/10]
    v = ["V", (self%10)/5]
    i = ["I", self%5]
    #exceptions for 4,9,40,90,400,900
    if self%5 == 4
      i = ["IV", 1]
    end
    if (self%10)/5 == 1 && self%5 == 4
      v = ["IX", 1]
      i[1] =0
    end
    if (self%50)/10 == 4
      x = ["XL", 1]
    end
    if (self%50)/10 == 4 && (self%100)/50 ==1
      l = ["XC", 1]
      x[1] =0
    end
    if (self%500)/100 == 4
      c = ["CD", 1]
    end
    if (self%500)/100 == 4 && (self%1000)/500 ==1
      d = ["CM", 1]
      c[1] =0
    end

    printedNumeral =""
    numeral = [m,d,c,l,x,v,i]
    numeral.each do |n|
      count =0
      until count >= n[1] do
        printedNumeral += n[0]
        count +=1
      end
    end
    return printedNumeral
  end
end

alphabet = ['a','b','c','b','e','f','g']
print alphabet.shuffle
puts
puts 10.factorial
puts 4009.toRoman
