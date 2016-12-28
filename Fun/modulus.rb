
# test = ->q{t=0;q.times{|x|p=10**x;t+=q%(q/p+q%p)};t}
test = ->q{(0..q).reduce{|s,x|p=10**x;s+q%(q/p+q%p)}}


cases = {
    13 => 1,
    111 => 6,
    47852 => 5842,
    12345 => 2097,
    54321 => 8331,
    3729105472 => 505598476
}

cases.each do |c, v|
  puts test[c]
end
