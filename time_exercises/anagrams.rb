require 'byebug'
def first_anagram?(str1,str2)
  perms = str1.split("").permutation.to_a
  perms.include?(str2.split(""))
end


# first_anagram?("gizmo","sally")


def second_anagram?(str1, str2)
  str1.each_char do |ch|
    i = str2.index(ch)
    next if i.nil?
    str2[i] = ""
  end
  str2.length == 0
end


def third_anagram?(str1, str2)
  str1 = str1.sort
  str2 = str2.sort
  str1 == str2
end



def fourth_anagram?(str1, str2)
  h1 = Hash.new {|h, k| h[k] = 0}
  h2 = Hash.new {|h, k| h[k] = 0}

  str1.each_char do |ch|
    h1[ch] += 1
  end

  str2.each_char do |ch|
    h2[ch] += 1
  end

  h1.keys.each do |key|
    return false unless h1[key] == h2[key]
  end

  h2.keys.each do |key|
    return false unless h1[key] == h2[key]
  end
  true
end

def bonus(str1,str2)
  hash = Hash.new(0)

  str1.each_char do |ch|
    hash[ch] += 1
  end

  str2.each_char do |ch|
    hash[ch] -= 1
  end

  hash.values.all? { |val| val == 0 }
end
