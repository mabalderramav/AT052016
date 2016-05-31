Given(/^I day tasks$/) do |table|
  @board = table.raw
end

When(/^task (in progress|completed) (fundamentals|prog01|english)$/) do |status,matter|
  case matter
    when "fundamentals" then 
        if status.eql?("completed")
            @board[1][2] = "done"
        else
            @board[1][2] = "inprogress"
        end
    when "prog01" then 
        if status.eql?("completed")
            @board[2][2] = "done"
        else
            @board[2][2] = "inprogress"
        end
    when "english" then 
        if status.eql?("completed")
            @board[3][2] = "done"
        else
            @board[3][2] = "inprogress"
        end
  end
end

Then(/^the box task is$/) do |expected_table|
  expected_table.diff!(@board)
end