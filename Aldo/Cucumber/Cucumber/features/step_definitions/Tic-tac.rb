Given(/^a board like this:$/) do |table|
  @board = table.raw
end
When(/^player (x|0) plays in row (\d+), column (\d+)$/) do |value,row, col|
	row, col = row.to_i,col.to_i
    @board[row][col] = value
	puts @board
end
Then(/^the board should look like this:$/) do |expected_table|
  expected_table.diff!(@board)
end