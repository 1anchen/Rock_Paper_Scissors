require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/game')

get '/game/:value1/:value2' do
  game = Game.new(params[:value1], params[:value2])
  @calculation1 = game.rock_paper_scissors()
  @calculation2 = game.rock_paper_scissors_player_win()
  erb( :result )

end

get'/' do
  erb(:welcome)
end

get '/about_the_game' do
  erb(:about_the_game)
end
