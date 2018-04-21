defmodule DynamicModulesLoading.GreetingsGenerator.Python do
  @behaviour DynamicModulesLoading.GreetingsGenerator

  def generate_greetings_file(ready_to_print_greeting) do
    """
    print("#{ready_to_print_greeting}")
    """
  end

end
