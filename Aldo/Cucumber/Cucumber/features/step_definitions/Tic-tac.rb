Given(/^a board like this:$/) do |table|
  # table is a Cucumber::Core::Ast::DataTable
  #pending # Write code here that turns the phrase above into concrete actions
  @board = table.raw
end

When(/^player (x|y) plays in row (\d+), column (\d+)$/) do |value,row, col|
	row, col = row.to_i,col.to_i
  if value.eql?("x")
    @board[row][col] = "x"
  else
    @board[row][col] = "0"
  end
	puts @board
  #pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the board should look like this:$/) do |expected_table|
  # table is a Cucumber::Core::Ast::DataTable
  #pending # Write code here that turns the phrase above into concrete actions
  expected_table.diff!(@board)
end