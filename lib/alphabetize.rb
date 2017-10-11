require 'pry'

def alphabetize(arr)
  # code here

  def new_ord(word)
    alphabet = " abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
    sum = 0
    word.split("").each do |letter|
      sum += alphabet.index(letter)
    end
    sum
  end

  output = arr.sort_by do |element|
    new_ord(element[0])
  end
  counter = 1

  while output == arr
    counter += 1
    output = arr.sort_by do |element|
      new_ord(element[0,counter])
    end
  end
  output
end

puts alphabetize(["bonan matenon", "ĉu vi parolas esperanton", "mi amas vin", "pacon"])
puts "pacon"[0,1]
