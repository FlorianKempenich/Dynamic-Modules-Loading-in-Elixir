defmodule ProtocolExp.GreetingsGenerator.Java do
  alias ProtocolExp.GreetingsGenerator

  defstruct [:name_to_greet]

  defimpl GreetingsGenerator, for: __MODULE__ do
    def generate_greetings_file(greetings_data) do
      """
      public class Greeter {
        public static void main(String[] args) {
          System.out.println("Hello #{greetings_data.name_to_greet}");
        }
      }
      """
    end
  end

end
