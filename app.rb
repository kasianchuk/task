require_relative('basketball')
require_relative('football')
require_relative('volleyball')
require_relative('incorrect')

class App
  OPERATIONS = {
    'football'   => Football,
    'basketball' => Basketball,
    'volleyball' => Volleyball
  }.freeze

  def call
    puts "Please eneter a game name"
    ball = gets.chomp
    OPERATIONS.fetch(ball, Incorrect).new.call
  end

  App.new.call
end
