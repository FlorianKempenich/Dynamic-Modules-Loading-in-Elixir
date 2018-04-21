defmodule DynamicModulesLoading.GreetingsGenerator.Java do
  alias DynamicModulesLoading.GreetingsGenerator

  @behaviour GreetingsGenerator

  def generate_greetings_file(name_to_greet) do
    """
    public class Greeter {
      public static void main(String[] args) {
        System.out.println("Hello #{name_to_greet}");
      }
    }
    """
  end

end
