# Exercises

Let's put into action some of what we learned, and challenge
ourselves to see the extent of code.

# Ruby In The Terminal

We'll start by creating a `00_hello_world.rb` file in a `exercises` folder that we
will create through the terminal.

First, open up the terminal and navigate to the `Desktop`.

Next, create a folder named `exercises`, navigate to this folder, and create a file
called `00_hello_world.rb`. This is our working directory, so we want to open up our
trusty text editor, atom. **NOTE**: Every single action must be done through
the terminal!

Once we've opened up atom in our directory, we should see our tree of directories
and files that only consists of `exercises` and `00_hello_world.rb`.

Let's open up `00_hello_world.rb`, and put in a simple command:

`puts "Hello, world!"`

Now take a step back, and remember. Ruby is a non-compiled, high-level language that
operating systems can understand. So what we've essentially done here is just put in
a simple command inside a file denoted by `.rb` that the computer can now just take in
as its own command.

So let's see if this does anything. Switch to your terminal and type in `ruby 00_hello_world.rb`.

The console should print back to you `Hello, world!`.

# The Ruby Language

With Codeacademy, you went through a lot of the basic need-to-knows of the Ruby language.
One of the first things you learned were data structures, such as string, integer, and array.
These are different types of data that each behave in their own specific and unique way.

We also learned that nearly **everything in Ruby is an object**, and that you can call
functions (or methods) on objects. Ruby is a strict language, which means that if you
decide to call a method on an object that doesn't carry that method it will throw
an error and exit your code. Let's see what we mean by that.

Go to your terminal and create a new file called `01_throw_error.rb`. Open this file
through Atom and this time we'll type in something like `"Hello, world".what_is_your_name`.
Run it in your terminal and see what it says. You should have gotten this:

`throw_error.rb:1:in `<main>': undefined method `what_is_your_name' for "Hello, world":String (NoMethodError)`

Let's analyze this error a little bit. Ruby in itself is robust in showing you exactly
what went wrong with the code - even giving you information on where it traveled to hit the
error you see.

This error in particular tells us that we called an *undefined* method on `"Hello, world"`
which is a `String`. This tells us a lot about what we need to change and where we
need to change it. And that's why Ruby is one of the easiest languages to pick up.

# Exercises

With the pattern we've been following: creating a file with `.rb` extension =>
writing Ruby code => executing it in the terminal, complete the following exercises.
Try your best to think your way through these exercises rather than looking at the solutions.

First, create a file named `02_operations_exercises.rb` in the following file.

1. Write a method `odd_or_even` that takes in a single integer argument (You may assume
that the argument provided will be an integer). If the argument is an even number,
`puts` `Even!`, if it's an odd number, `puts` `Odd!`.
