# What We've Done So Far

So far, we've been writing our code in the terminal and running the file like so:
`ruby my_file_name.rb`. Ruby is awesome in that it knows to execute whatever the code
tells it, but there's another way to execute Ruby code from the terminal, and that's
through something known as the Interactive Ruby Shell (irb).

# What is the irb?

The irb is a `read-eval-print loop` (REPL) which can be described as a simple and
interactive computer programming environment. There are tons of advantages to executing
Ruby code in irb, and not manually running the `.rb` file like we've been doing.
All this might be confusing right now, but once you start using it you'll realize
how much more effective it is to use a REPL.

Let's get started!

# Using the irb

To enter the irb environment, simply type in `irb` in the terminal. Once you start
`irb`, your line should prepopulate with something like this: `irb(main):001:0>`.

Let's break this down a bit.

1. The `irb` part is obvious, it let's you know that you're in the `irb` environment.

2. `(main)` let's you know exactly where you are in your code. This is not very important
as of now so don't worry too much about it.

3. `001` is the line number you're on in your `irb`.

Let's experiment and get a feel for what we can do in the `irb`. You can define
a variable like so:

```
irb(main):001:0> my_variable = 'Hello, world!'
=> "Hello"
```

And we can now call on this variable.

```
irb(main):002:0> my_variable
=> "Hello, world!"
```

However, what happens when you call a variable that doesn't exist?

```
irb(main):003:0> not_my_variable
NameError: undefined local variable or method `not_my_variable' for main:Object
Did you mean?  my_variable
        from (irb):3
        from C:/Users/Jeremy Cho/AppData/Local/scoop/apps/ruby/2.3.0/bin/irb.cmd:19:in `<main>'
```

`irb` intelligently runs the code you type in the line in the current environment.
Therefore, this error is something we expected!

Here's something we might not expect. Go ahead and reopen `irb` by typing
`exit` followed by `irb` again.

You know what? I also want to see what I saved `my_variable` as so let's call it.

```
irb(main):001:0> my_variable
NameError: undefined local variable or method `my_variable' for main:Object
        from (irb):1
        from C:/Users/Jeremy Cho/AppData/Local/scoop/apps/ruby/2.3.0/bin/irb.cmd:19:in `<main>'
```

Wait what? What happened to `my_variable`? `irb` is an ENVIRONMENT which persists
and maintains the memory of things that were run in its single lifespan. Therefore,
exiting `irb` and reopening it clears everything you've previously done and starts off
as a blank slate for more and new Ruby code.

# Defining Methods in irb

`irb` allows you to do pretty neat things like define entire multi-line methods and call them
without having to put them in a file.

```
irb(main):001:0> def hello_world!(name)
irb(main):002:1> puts "Hello, world! My name is #{name}!"
irb(main):003:1> end
=> :hello_world!
irb(main):004:0> hello_world!("Jeremy")
Hello, world! My name is Jeremy!
```

Pretty cool, right? However, this is not going to be our main use of the `irb` today.
So what is?

# Requiring Files in irb

The `irb` allows you to `require` local files so that the Ruby code in a particular
file is available to you in `irb`. **Note**: `require` uses absolute paths, and
`require_relative` just needs the path from the directory you're currently in.

Let's try this out. Exit `irb` and navigate to your `exercises` folder, create a `d4` folder, and then
create a file named `01_require_this.rb`. In this file, write a simple method that
just `puts` an arbitrary string.

Once you've done this, fire up `irb` and type in `require_relative '01_require_this.rb'`.
Now as we mentioned earlier, everything in this file should be available for you
in `irb`, so try calling your method and make sure it behaves the way you expect it
to!

This is how we're going to go through our exercises today, so move on to your exercises!
