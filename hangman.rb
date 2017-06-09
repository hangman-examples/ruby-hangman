#!/usr/bin/env ruby

def as_blanks(to_guess)
  blanks = ""
  to_guess.each_byte do |letter_code|
    if letter_code != 32
      blanks += "_ "
    else
      blanks += "  "
    end
  end
  return blanks
end

def getAlphabet
  alphabet = ""
  for i in 65..65+25
    alphabet += "#{i.chr} "
  end
  return alphabet
end

def guess
  puts gets.to_s
  guesses_left -= 1
end

def main
  to_guess = "suck my shorts"
  guesses_left = 5
  current_guess = as_blanks(to_guess)
  letters_remaining = getAlphabet
  while guesses_left > 0 do
    puts "Welcome to Hangman"
    puts current_guess
    puts letters_remaining
    puts "What is your guess?"
    guess
  end
end

main


