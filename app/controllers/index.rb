get '/' do
  # Look in app/views/index.erb
  erb :index
end
 
post '/' do
  input = params[:word]
  @anagrams = Word.anagrams(input)
  erb :index
end
