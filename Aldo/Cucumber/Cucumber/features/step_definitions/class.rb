Given(/^I day tasks$/) do |table|
  @board = table.raw
end

When(/^task (in progress|completed) (fundamentals|prog01|english)$/) do |status,matter|
  myArray = @board
  myArray.each_with_index do |otherArray,row|
     otherArray.each do |value|
          if value.eql?(matter)
            if status.eql?("completed")
                @board[row][2] = "done"
            else
                @board[row][2] = "inprogress"
            end
          end
      end
  end
end

Then(/^the box task is$/) do |expected_table|
  expected_table.diff!(@board)
end