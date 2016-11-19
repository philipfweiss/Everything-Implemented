
def word_break(s, word_dict)
  memo = Array.new
  return true if s.empty?
  size = s.size
  s.each_char.with_index do |char, i|
    if memo[i].nil? and word_dict.include?(s[0..i])
      memo[i] = 1
    end
    if memo[i]
      return true if i+1 == size
      (i+1...size).each do |k|
        if memo[k].nil? and word_dict.include?(s[i+1..k])
          memo[k] = 1
        end
        if k == size and memo[k]
          return true
        end
      end
    end
  end
  false
end

memo = []
return true if word.empty?
size = word.size
(0...size).each do |i|
  if memo[i].nil? and @words.include?(word[0..i])
    memo[i] = 1
  end
  if memo[i]
    return true if i+1==size
    (i+1...size).each do |k|
      if memo[k].nil? and @words.include?(word[i+1..k])
        memo[k] = 1
      end
      if k == size and memo[k]
        return true
      end
    end
  end
end
false