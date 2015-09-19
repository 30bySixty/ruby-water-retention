#this version assumes lines as input
#input of "2 0 0 3 0 4" is visualized as: 
#     |
#   | |
#|  | |
#|__|_|
#2 0 0 3 0 4 holds 7 units of water
#
#input of "0 4 4 2 3" is visualized as:
# ||
# || |
# ||||
#_||||
#0 4 4 2 3 holds 0 units of water because it would fall out the bottom

def processLine
    $solution = 0
    i = 0
    while $numbers[i] == 0
        i += 1
        if i == $numbers.length
            puts "0"#check if all 0
        end
    end
    while i < $numbers.length-1
        j = i+1
        if $numbers[j] != 0 
            i = j+1
        else
            k = j+1
            counter = 1
            while $numbers[k] == 0
                if k >= $numbers.length-1
                    puts $solution
                end
                k += 1
                counter += 1
            end
            i = k
            if i <= $numbers.length-1
                $solution = $solution + ([$numbers[i], $numbers[i-counter-1]].min * counter)  
            end
        end
    end
    if $solution > 0
        puts $solution
    else
        puts "0"
    end
end

$stdin.each_line do |line|
    $numbers = line.chomp.split(" ").map{|i| i.to_i}
    processLine
end