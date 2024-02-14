
# ===== PUBLIC METHODS BELOW HERE ==================================================================================== #
"""
    puzzleparse(filename::String) -> Dict{Int64, MyPuzzleRecordModel}

    Takes in an argument of filename::String
    Returns a Dict{Int64,MyPuzzleRecordModel}

    Creates a dictionary of MyPuzzleRecordModels with the key of the dictionary being the line number in the inputted filename
    and the value being a MyPuzzleRecordModel.
"""
function puzzleparse(filename::String)::Dict{Int64, MyPuzzleRecordModel}
    
    # initialize -
    records = Dict{Int64, MyPuzzleRecordModel}()
    linecounter = 1;
    
    # main -
    open(filename, "r") do io
        for line ∈ eachline(io)
            
            records[linecounter]=_build_puzzle_record_model(record=line)
            linecounter += 1

        end
    end

    # return the header and the records -
    return records;
end
# ===== PUBLIC METHODS ABOVE HERE ==================================================================================== #