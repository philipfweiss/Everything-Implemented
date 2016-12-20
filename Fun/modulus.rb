
test = ->q{t=0;q.times{|x|p=10**x;t+=q%(q/p+q%p)};t}

cases = {
    47852 => 5842,
    13 => 1,
    111 => 6,
    12345 => 2097,
    54321 => 8331,
    3729105472 => 505598476
}

cases.each do |c, v|
  puts test[c] == v
end
