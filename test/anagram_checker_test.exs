defmodule AnagramCheckerTest do
  use ExUnit.Case
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
end
