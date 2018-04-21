defmodule ProtocolExp.GreetingsGenerator do
  @type name_to_greet :: String.t
  @type greetings_file :: String.t
  @callback generate_greetings_file(name_to_greet) :: greetings_file
end
