# Join
IO.puts "# Join"
IO.puts Path.join("foo", "bar")          # "foo/bar"
IO.puts Path.join(["foo", "bar", "baz"]) # "foo/bar/baz"

# basename/1 & basename/2
IO.puts "\n# basename/1 & basename/2"
IO.puts Path.basename("foo/bar/baz.txt")          # "bar.txt"
IO.puts Path.basename("foo/bar/baz.txt", ".txt")  # "bar"

# dirname/1
IO.puts "\n# dirname/1"
IO.puts Path.dirname("/foo/bar.txt") # "/foo"

# extname/2
IO.puts "\n# extname/1"
IO.puts Path.extname("/foo/bar.txt") # ".txt"

# expand/1 ou expand/2
IO.puts "\n# expand/1 & expand/2"
IO.puts Path.expand("~/projetos")            # "/home/usuario/projetos" (em Linux/Mac)
IO.puts Path.expand("lib", "/home/user/app") # "/home/user/app/lib"
IO.puts Path.expand("lib", "../goo/foo")
