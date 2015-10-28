defmodule AnagramChecker do
	
  def prompt_for_first_word do
    IO.gets("Enter the first word:") |>String.strip
  end

  def prompt_for_second_word do
    IO.gets("Enter the second word:") |>String.strip
  end

	def is_anagram(first_word, second_word) do
		first_word_as_list = String.codepoints(first_word) 
    second_word_as_list = String.codepoints(second_word) 
		
    first_word_sorted = Enum.sort(first_word_as_list)
    second_word_sorted = Enum.sort(second_word_as_list)
		
		first_word_sorted == second_word_sorted
    end

    def display(first_word,second_word) do
      if is_anagram(first_word, second_word) == true do
        IO.puts("\"#{first_word}\" and \"#{second_word}\" are anagrams.")
      else
        IO.puts("\"#{first_word}\" and \"#{second_word}\" are not anagrams.")
      end
    end

    def combine do
      display(prompt_for_first_word, prompt_for_second_word)
    end
end
