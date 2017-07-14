## Given an array of ints, every elem appears twice except for one. Find that one.

def single_number(nums)
  hash = Hash.new {0}
  nums.each {|v| hash[v]+=1}
  hash.each {|k,v| return k if v == 1}
end

def single_number_no_extra_space(nums)
  nums.sort!.each.with_index {|v, i|next if i%2==1;return v if v!=nums[i+1]}
end

