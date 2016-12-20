#51
#->x{t=0;(0..x.size-3).map{|k|!t||t=x[k]==x[k+2]};t}




# ->a{a.partition.with_index{|_,i|i%2==0}.map(&:uniq).flatten.size<=2}
#
# ->x{t=0;(0..x.size-3).map{|k|!t||t=x[k]==x[k+2]};t}

# 38
p = ->x{(0..x.size-3).all?{|k|x[k]==x[k+2]}}

true_cases = [
    [],
    [1],
    [1,1],
    [1,2,1],
    [1,2,1,2],
    [3,4,3],
    [10,5,10,5,10],
    [10,11],
    [9,9,9,9,9]
]
false_cases = [
    [5,4,3,5,4,3],
    [3,2,1,2,1,2],
    [1,2,1,2,1,1,2],
    [2,2,3,3],
    [2,3,3,2]
]

p true_cases.all?{|x|p[x]}
p false_cases.all?{|x|!p[x]}































#39:
# p ->x{x.reverse==x||x==x.drop(2)+x[0,2]}

