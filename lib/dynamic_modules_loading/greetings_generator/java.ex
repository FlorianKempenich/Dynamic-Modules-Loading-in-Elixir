defmodule DynamicModulesLoading.GreetingsGenerator.Java do
  alias DynamicModulesLoading.GreetingsGenerator

  @behaviour GreetingsGenerator

  def generate_greetings_file(ready_to_print_greeting) do
    """
    public class Greeter {
      public static void main(String[] args) {
        System.out.println("#{ready_to_print_greeting}");
      }
    }
    """
  end

end
