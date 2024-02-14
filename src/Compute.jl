# ===== PRIVATE METHODS BELOW HERE =================================================================================== #
# ===== PRIVATE METHODS ABOVE HERE =================================================================================== #

# ===== PUBLIC METHODS BELOW HERE ==================================================================================== #
"""
    decode_part_1(models::Dict{Int64, MyPuzzleRecordModel}) -> Tuple{Int64, Dict{Int64, Int64}}

    Takes in an argument of models::Dict{Int64,MyPuzzleRecordModel}
    Returns a Tuple{Int64,Dict{Int64,Int64}}

    The first Int64 value in the Tuple is the hidden sum
    The dictionary contains the line number of model and the corresponding Int64 value that was decoded from that line

    decode_part_1 reads the MyPuzzleRecordModels of a file and converts each line into a hidden value in each line of that file
    These values from each line are then summed to create a total hidden sum that is outputted
"""
function decode_part_1(models::Dict{Int64, MyPuzzleRecordModel})::Tuple{Int64, Dict{Int64, Int64}}
    
    # initialize -
    total = 0;
    codes = Dict{Int64, Int64}();
    
    # TODO: Add the logic for part 1 here
    for i in 1:length(models)
        look_up_dict=models[i]
        numbers=filter.(isdigit,look_up_dict.record)
        value=numbers[1]*numbers[end]
        codes[i]=parse(Int64,value)
        total=total+parse(Int64,value)
    end
    # return the total -
    return (total, codes);
end

"""
    decode_part_2(models::Dict{Int64, MyPuzzleRecordModel}) -> Tuple{Int64, Dict{Int64, Int64}}

    Takes in an argument of models::Dict{Int64,MyPuzzleRecordModel}
    Returns a Tuple{Int64,Dict{Int64,Int64}}

    The first Int64 value in the Tuple is the hidden sum
    The dictionary contains the line number of model and the corresponding Int64 value that was decoded from that line

    decode_part_2 reads the MyPuzzleRecordModels of a file and converts each line into a hidden value in each line of that file.
    It also converts strings that spell out numbers into the actual number themself to obtain the hidden sum
    
    These values from each line are then summed to create a total hidden sum that is outputted
"""
function decode_part_2(models::Dict{Int64, MyPuzzleRecordModel})::Tuple{Int64, Dict{Int64, Int64}}
     
    # initialize -
    total = 0;
    codes = Dict{Int64, Int64}();
     
    # TODO: Add the logic for part 2 here
    for i in 1:length(models)
        look_up_dict=models[i]
        actual_dict=look_up_dict.record
        actual_dict = replace(actual_dict,"twone" => "twoone","oneight" => "oneeight","threeight" => "threeeight",
        "fiveight" => "fiveeight","sevenine" => "sevennine","eightwo" => "eighttwo","eighthree" => "eightthree","nineight"=>"nineeight")
        actual_dict = replace(actual_dict,"twone" => "twoone","oneight" => "oneeight","threeight" => "threeeight",
        "fiveight" => "fiveeight","sevenine" => "sevennine","eightwo" => "eighttwo","eighthree" => "eightthree","nineight"=>"nineeight")
        actual_dict= replace(actual_dict,"one" => "1","two" => "2","three" => "3","four" => "4","five" => "5",
        "six" => "6","seven" => "7","eight" => "8","nine" => "9")
        numbers=filter.(isdigit,actual_dict)
        value=numbers[1]*numbers[end]
        codes[i]=parse(Int64,value)
        total=total+parse(Int64,value)
    end
     
     # return the total -
     return (total, codes);
end
# ===== PUBLIC METHODS ABOVE HERE ==================================================================================== #