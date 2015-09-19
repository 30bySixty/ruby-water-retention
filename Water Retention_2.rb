#this version assumes magic squares as input
#input of "2 0 0 3 0 4" is visualized as:
#     X
#   X X
#X  X X
#X__X_X 
#2 0 0 3 0 4 holds 7 units of water
#
#input of "0 4 4 2 3" is visualized as:
# XX X
# XXXX
# XXXX
#_XXXX 
#0 4 4 2 3 holds 1 unit of water

def processLine
    $solution = 0
    i = 0
    while $numbers[i] == 0
        i += 1
    end
    if i == $numbers.length-1 || i == $numbers.length-2
        $solution = 0 #=>all are zero
        puts $solution
    else
        k = $numbers.length-1
        while $numbers[k] == 0
            k -= 1
        end
        if i == k || i == k-1
            $solution = 0
            puts $solution
        else
            $solution = 0
            while i < k
                while $numbers[i+1].to_i >= $numbers[i].to_i
                    i += 1
                end
                break if i == k || i == k-1
                counter = 1
                j = i
                while $numbers[j+1] >= $numbers[j+2]
                    j += 1
                    counter += 1
                    break if j == k
                end
                break if j == k
                $solution = $solution + ([$numbers[i], $numbers[j+2]].min * counter) 
                for m in (i+1)..(j+1)
                    $solution = $solution - $numbers[m]
                end
                break if j+2 == k
                i = j+2
            end
            puts $solution
        end   
    end
end       

$stdin.each_line do |line|
    $numbers = line.chomp.split(" ").map{|i| i.to_i}
    processLine
end