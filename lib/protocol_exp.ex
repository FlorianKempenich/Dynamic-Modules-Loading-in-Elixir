defmodule ProtocolExp do
  alias ProtocolExp.GreetingsGenerator
  @moduledoc """
  Documentation for ProtocolExp.
  """

  def main do


    # Concept:
    # Find the protocol implementation by dynamically creating structure based on arg
    #
    # This succesfully create a struct based on a dynamic
    # name stored as string: `dynamic`
    #
    #    [dynamic] |> Module.concat() |> struct()
    #

    %GreetingsGenerator.Java{name_to_greet: "frank"}
    |> GreetingsGenerator.generate_greetings_file()
    |> IO.inspect
    IO.puts "hello ttest"


  end
end
