class SecretWordsController < ApplicationController
  @@letters = []
  @@correct_letter = []
  @@incorrect_letter = @@letters - @@correct_letter
  @@secret = "banano"
  @@unknown_letters = ["_", "_", "_", "_", "_", "_"]

  def index
    @correct_letter = @@correct_letter
    @incorrect_letter = @@incorrect_letter
    @letters = @@letters
    @unknown_letters = @@unknown_letters
    @secret = @@secret
  end

  def recibe
    @@secret.chars.each_with_index do |character, index|
      if params[:letter] == character
        @@correct_letter.push(params[:letter])
        @@unknown_letters[index] = params[:letter]
      end 
    end
    @@letters << params[:letter]
    @@incorrect_letter = @@letters - @@correct_letter
    redirect_to secret_words_path 
  end

  def new
    @@correct_letter.clear
    @@incorrect_letter.clear
    @@unknown_letters = ["_", "_", "_", "_", "_", "_"]
    @@letters.clear
    redirect_to secret_words_path
  end
end
