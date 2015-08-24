get '/' do
  @aunty = params[:aunty]
  puts @aunty
  # Look in app/views/index.erb
  erb :index
end

post '/aunty' do
  ctr = 0
  speech = params[:user_input]
    if speech == ""
      ctr += 1
      answer = "Bye."
      # break if ctr == 2
    elsif speech == speech.upcase
      answer = "NO, WE CAN'T DO THAT!"
    elsif speech == speech.downcase
      answer = "HUH?! SPEAK UP, SANDRA!"
    elsif speech == "I love ya, aunty, but I've got to go."
      answer = "Goodbye."
      # break
    else
    end
  redirect to("/?aunty=#{answer}")
end
