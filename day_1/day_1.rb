elfs_bags = []
calories_sum = 0
File.foreach("input.txt") { |line| 
    if line == "\n"
        elfs_bags.push(calories_sum)
        calories_sum = 0
    else
        calories_sum += line.to_i
    end
}

puts "Answer 1: #{elfs_bags.max}"

puts "Answer 2: #{elfs_bags.sort.reverse.first(3).sum}"