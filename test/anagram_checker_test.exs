defmodule AnagramCheckerTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest AnagramChecker


  test "two words of one character being the same" do
  	assert AnagramChecker.is_anagram("a", "a") == true
  end

  test "two words of one character being different" do
  	assert AnagramChecker.is_anagram("a", "b") == false
  end

  test "two words of two characters in different order" do
  	assert AnagramChecker.is_anagram("ab", "ba") == true
  end

  test "two words of two characters being different" do
  	assert AnagramChecker.is_anagram("ab", "bc") == false
  	assert AnagramChecker.is_anagram("ab", "cb") == false
  end
 
  test "two words of three characters being different" do
  	assert AnagramChecker.is_anagram("abc", "cbx") == false
  end

  test "two words of three characters having different character count" do
  	assert AnagramChecker.is_anagram("aba", "bab") == false
  end

  test "two words with different length" do
  	assert AnagramChecker.is_anagram("note", "noted") == false
  end

  test "displays the result to user" do
    assert capture_io(fn -> AnagramChecker.display("john", "john") end) == "\"john\" and \"john\" are anagrams.\n"
  end

  test "gets user input" do
    capture_io([input: "note", capture_prompt: false], fn -> 
      input = AnagramChecker.prompt_for_first_word 
      IO.write input
    end) == "note"
  end

end
