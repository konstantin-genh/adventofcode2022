count = 0
alphabet_array = Hash[[*'a'..'z', *'A'..'Z'].zip([*1..52])]
File.foreach("input.txt") { |line|
    first, second = line.chars.each_slice(line.length / 2).map(&:join)
    items_found = 0
    first.chars { |item|
        if (second.include?(item))
            # puts 'common char ' + item
            # puts 'raiting for char ' + alphabet_array[item].to_s
            count += alphabet_array[item]
            items_found += 1
            break
        end
    }
    # puts items_found
}
puts count