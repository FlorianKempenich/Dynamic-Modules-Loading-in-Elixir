defmodule ProtocolExp do
  alias ProtocolExp.GreetingsGenerator

  def main do
    # Concept:
    # Find the protocol implementation by dynamically creating structure based on arg
    #
    # This succesfully create a struct based on a dynamic
    # name stored as string: `dynamic`
    #
    #    [dynamic] |> Module.concat() |> struct()
    #

    language_name = "java"
    name_to_greet = "frank"

    language_name
    |> to_module()
    |> apply(:generate_greetings_file, [name_to_greet])
    |> IO.inspect

  end

  defp to_module(language_name) do
    module_name =
      language_name
      |> String.trim()
      |> String.capitalize()

    Module.concat(GreetingsGenerator, module_name)
  end


end
