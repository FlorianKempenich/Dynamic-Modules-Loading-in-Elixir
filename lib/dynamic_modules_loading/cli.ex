defmodule DynamicModulesLoading.Cli do
  use ExCLI.DSL

  name "mix run greetings_generator.exs"
  description "Generates a greetings file in the language of your choice"
  long_description ~s"""
  Generates a greetings file in the language of your choice.

  A greetings file is an compilable (or executable) file in a given language that prints a greeting followed by a given name.

  `mix run greetings_generator java frank`
  --> Will generate Java code that print: "Hello Frank!"
  """

  option :verbose, count: true, aliases: [:v]

  command :generate do
    aliases [:gen]
    description "Generates the greetings file"
    # long_description """

    # """

    argument :language_name
    argument :name_to_greet

    run context do
      if context.verbose > 0 do
        IO.puts("Generating File")
      end
      DynamicModulesLoading.generate_greetings_file(context.language_name, context.name_to_greet)
    end
  end
end
