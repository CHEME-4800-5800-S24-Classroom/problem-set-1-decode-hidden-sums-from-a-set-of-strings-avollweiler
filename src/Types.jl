"""
    MyPuzzleRecordModel

    Mutable stuct with three fields:
    record::String - holds a single encoded line of text,
    characters::Array{Char,1} - holds the characters of the line of text,
    len::Int64 - holds the length (number of characters) of the encoded line of text
"""
# TODO: Finish the MyPuzzleRecordModel type
mutable struct MyPuzzleRecordModel
    # data fields 
    record::String
    characters::Array{Char,1}
    len::Int64
    
    # constructor: builds a new empty Student
    MyPuzzleRecordModel() = new()
end