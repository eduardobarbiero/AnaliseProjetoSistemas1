require_relative "../hall_fame"
require "test/unit"

class HallFameTest < Test::Unit::TestCase  
  def test_top10
    hall = HallFame.new
	expected = 'Ninguem jogando'	
	player = HallFame::Player.new
	player = hall.top_10
    assert_equal(1, player.length)
	assert_equal(expected, player[0].nome)
  end
end	
