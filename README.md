# Dynamic Modules Loading - GreetingsGenerator
An experimentation with dynamic modules loading in Elixir, inspired by _The Pragmatic Programmer_ book

This project **generates code** to **print a greeting** to a person's name in **multiple languages**.

    mix run greetings_generator.exs generate LANGUAGE_NAME PERSON_TO_GREET
    
> **Python**
>
>     mix run greetings_generator.exs generate python toni
>
> Will generate:
>
>     print("Hello Toni!")
>
>
> **Java**
>
>     mix run greetings_generator.exs generate java toni
>
> Will generate:
>
>     public class Greeter {
>       public static void main(String[] args) {
>         System.out.println("Hello Toni!");
>       }
>     }
    


## One Step Implementation
To support a new language, implement the `GreetingsGenerator` behavior
in a module named after the language of the generated file.

> Ex: Ruby
>  - Create a `ruby.ex` in `lib/greetings_generator`
>  - Create a module `DynamicModulesLoading.GreetingsGenerator.Ruby`
>  - Implement the `DynamicModulesLoading.GreetingsGenerator` behaviour
>  - ... done

>  Your implementation will now automatically be loaded when running the project with:
>      `mix run greetings_generator.exs generate ruby NAME_TO_GREET`



## The Pragmatic Programmer
This mini-project was inspired by the solution to the _Exercise 13_ in 
_The Pragmatic Programmer_ book: A code generator written in `Perl`.

They used dynamic module loading in `Perl` to make adding new languages as easy as possible. 
To generate a new language, all you have to do is to implement a module conforming to an interface, and the main routine
will pick it up automatically based on the name of the file.





