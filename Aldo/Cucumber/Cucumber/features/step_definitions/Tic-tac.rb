Given(/^a board like this:$/) do |table|
  # table is a Cucumber::Core::Ast::DataTable
  #pending # Write code here that turns the phrase above into concrete actions
  @board = table.raw
end

When(/^player x plays in row (\d+), column (\d+)$/) do |row, col|
	row, col = row.to_i,col.to_i
	@board[row][col] = "x"
	puts @board
  #pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the board should look like this:$/) do |expected_table|
  # table is a Cucumber::Core::Ast::DataTable
  #pending # Write code here that turns the phrase above into concrete actions
  expected_table.diff!(@board)
end