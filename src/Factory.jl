
# ===== PRIVATE METHODS BELOW HERE =================================================================================== #
"""
Creates a MyPuzzleRecordModel mutable struct

    Takes in a keyword argument of record::String
    Returns a MyPuzzleRecordModel

    The function creates a MyPuzzleRecordModel with three data fields record::String, characters:Array(Char,1), len:Int64
"""
function _build_puzzle_record_model(; record::String = "abc13")::MyPuzzleRecordModel


    # create -
    puzzle_record = MyPuzzleRecordModel();
    puzzle_record.record = record;
    characters=collect(record)
    puzzle_record.characters = characters;
    puzzle_record.len= length(record);


    # return -
    return puzzle_record;
end
# TODO: Put private helper methods here. Don't forget to use the _ naming convention, and to add basic documentation.
# ===== PRIVATE METHODS ABOVE HERE =================================================================================== #

# ===== PUBLIC METHODS BELOW HERE =================================================================================== #
# TODO: Make a build method to construct MyPuzzleRecordModel types
# ===== PUBLIC METHODS ABOVE HERE =================================================================================== #
