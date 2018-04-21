defmodule DynamicModulesLoading do
  @moduledoc """
  Concept:
  --------
  Find the correct implementation by dynamically calling the module
  based on the language name.

  To implement a `GreetingsGenerator`, implement the `@behaviour` in a module
  named after the language of the generated file.

  > Ex: Python
  >  - Create a `python.ex` in `lib/greetings_generator`
  >  - Implement the `DynamicModulesLoading.GreetingsGenerator` behaviour
  >  - ... done

  >  Your implementation can now be called with:
  >      `mix run greetings_generator.exs python NAME_TO_GREET`


  ---

  Note:
  This succesfully create a struct based on a dynamic
  name stored as string: `dynamic`

     [dynamic] |> Module.concat() |> struct()
  """

  defmodule GreetingsGenerator do
    @type ready_to_print_greeting :: String.t
    @type greetings_file :: String.t
    @callback generate_greetings_file(ready_to_print_greeting) :: greetings_file
  end


  alias DynamicModulesLoading.GreetingsGenerator
  def generate_greetings_file(language_name, name_to_greet) do
    ready_to_print_greeting = "Hello #{String.capitalize name_to_greet}!"

    language_name
    |> to_module()
    |> ensure_implemented(language_name)
    |> apply(:generate_greetings_file, [ready_to_print_greeting])
    |> save_to_file()
  end

  defp to_module(language_name) do
    module_name =
      language_name
      |> String.trim()
      |> String.capitalize()

    Module.concat(GreetingsGenerator, module_name)
  end

  def ensure_implemented(module_name, language_name) do
    unless Code.ensure_loaded?(module_name) or function_exported?(module_name, :generate_greetings_file, 1) do
      raise "\n\nNo Generator Found for: #{String.capitalize(language_name)}\n"
    end
    module_name
  end

  defp save_to_file(file_content) do
    # For debug purposes only.
    # Not really a generator, just testing the dynamic module loading.
    # Printing the result will do fine.
    IO.puts file_content
  end

end
