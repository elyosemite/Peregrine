process_life_the_universe_and_everything = fn -> {:ok, 25} end
{:ok, answer} = process_life_the_universe_and_everything.()
IO.puts "The answer is #{answer}"
