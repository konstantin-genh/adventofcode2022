total_score = 0
shape_points = {
    'A'=> 1, 
    'B'=> 2,
    'C'=> 3 
}
outcome_points = {
    'X'=> 0,
    'Y'=> 3,
    'Z'=> 6
}
required_shapes = {
    'A'=>{ #rock
        'X'=>'C',   #loose
        'Y'=>'A',   #draw
        'Z'=>'B',   #win
    },
    'B'=>{ #paper
        'X'=>'A',   #loose
        'Y'=>'B',   #draw
        'Z'=>'C',   #win
    },
    'C'=>{ #scissors
        'X'=>'B',   #loose
        'Y'=>'C',   #draw
        'Z'=>'A',   #win
    }
}


File.foreach("input.txt") { |line| 
    hand = line.split(' ')

    oponent = hand[0]
    required_outcome = hand[1]

    required_shape = required_shapes[oponent][required_outcome]

    total_score += shape_points[required_shape]
    total_score += outcome_points[required_outcome]
}

puts total_score