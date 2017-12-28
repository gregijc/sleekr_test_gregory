class HomeController < ApplicationController
	def index
		@words = MsWord.all
		words_size = @words.size-1
		random_number = rand(0..words_size)
		array = @words.to_a
		@selected_word = array[random_number].word
		selected_word_size = @selected_word.size-1

		@random_word = ""
		temp_array = []
		@size = @selected_word.size
		(1..1000).each do |i|
			temp = rand(0..selected_word_size)
			if !temp_array.include?(temp)
				temp_array << temp
				@random_word << @selected_word[temp]
			end
  		end


  		@notice = ""
  		if !params[:inputted_word].blank?
  			if params[:inputted_word] == params[:selected_word]
  				@notice = "true, congrats"
  			else
  				@notice = "false, try again"
  			end
  		end
  	end
end
