total_score = 0
shape_points = {
    'X'=> 1,
    'Y'=> 2,
    'Z'=> 3
}
outcome_points = {
    'X'=> {
        'A'=> 3,
        'B'=> 0,
        'C'=> 6
    },
    'Y'=> {
        'A'=> 6,
        'B'=> 3,
        'C'=> 0
    },
    'Z'=> {
        'A'=> 0,
        'B'=> 6,
        'C'=> 3
    }
}


File.foreach("input.txt") { |line| 
    hand = line.split(' ')

    oponent = hand[0]
    you = hand[1]

    total_score += shape_points[you]
    total_score += outcome_points[you][oponent]
}

puts total_score