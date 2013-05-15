require 'debugger'
get '/' do
  # Look in app/views/index.erb
  erb :index
end
 
post '/' do
  content_type :json
  input = params[:word]
  @anagrams = Word.anagrams(input)
  words = @anagrams.map(&:word)
  @anagrams.to_json
end
