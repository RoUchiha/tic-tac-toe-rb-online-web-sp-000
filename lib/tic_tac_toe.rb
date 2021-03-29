  board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  
  
  WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
  ]
  
  
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(array, index, value)
  array[index] = value
  return array
end



def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else true
  end
end


def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0,8)
    true
  else false
  end
end

def turn_count(board)
  counter = 0
  board.each do |turn|
    if turn == "X" || turn == "O"
      counter += 1
    end
  end
  counter
end

def current_player(board)
  if turn_count(board) % 2 == 0 || turn_count(board) == 0
    return "X"
  else 
    return "O"
  end
end




def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index) == true
    move(board, index, current_player(board))
   display_board(board)
   else turn(board)
  end
end