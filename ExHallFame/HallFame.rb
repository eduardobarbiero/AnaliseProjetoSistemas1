require_relative "../hallfame"

require "test/unit"

class HallFame < Test::Unit::TestCase
  def empty_top10
    hall = HallFame.new
	expected = 'Ninguem jogando'
	player = Player.new
	player = hall.top10
    assert_equal(1, player.length)   
	assert_equal(expected, player[0].name)   
  end
end	
