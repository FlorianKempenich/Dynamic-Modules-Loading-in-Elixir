defmodule DynamicModulesLoading.GreetingsGenerator.Python do
  @behaviour DynamicModulesLoading.GreetingsGenerator

  def generate_greetings_file(name_to_greet) do
    """
    print("Hello #{name_to_greet}")
    """
  end

end
