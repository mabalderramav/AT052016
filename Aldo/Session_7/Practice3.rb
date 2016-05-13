=begin
	
handling all forms of arrays
	
=end
require_relative "library/RubyArrays"
v1, v2, v3 = RubyArrays.setThreeArrays
RubyArrays.getThreeArrays v1,v2,v3
RubyArrays.unionTwoArray v1,v3
v4,v5 = RubyArrays.joinTwoArray v1,v3
RubyArrays.getNewArray v4
RubyArrays.getNewArray v5