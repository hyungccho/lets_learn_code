# What Is A Gem

I'll start off by referencing what we're familiar with: games. In many different
games, the game opens up portions of its code so that users can create 'addons', and
attach them to the game. As a game might have community created 'addons', Ruby
has community created 'gems'. These gems are usually installed through another gem
called `bundler` (you'll see why in the future).

# What is RSpec

`RSpec` is a gem specifically for Ruby that allows programmers to create mock environments
for their code so that they can create both static or dynamic tests to see whether or not
their code is behaving like they expect. Otherwise known as a test suite. You should
also note that `RSpec` is 100% Ruby. It is not a different language, and all `RSpec`
conventions follow those of Ruby. Here's a simple example:

Let's say I have a simple method `sum(num1, num2)` that takes in two integers as
arguments, and returns the sum of those two integers. Simple enough right? However,
in order to make sure it works as intended, we've been
manually calling the method and feeding it certain input and hoping it outputs what
we expect.

This becomes tedious for obvious reasons. We can't continuously test each method manually,
and especially when you start building entire applications, you need to be able to know
that everything is behaving as intended at any given time. This is where a test suite
like `RSpec` is not even just important, it's **crucial**.

So going back to our `sum` example, our method probably looks something like this:

```ruby
# sum_file.rb
def sum(num1, num2)
  num1 + num2
end
```

Without explaining the intricacies and the exact syntax of `RSpec`, the test for that
would look something like this.

```ruby
require 'sum_file'

describe '#sum' do
  it 'should add two positive integers correctly' do
    expect(sum(1, 2)).to eq 3
  end

  it 'should add a positive and negative integer correctly' do
    expect(sum(4, -3)).to eq 1
  end

  it 'should add two negative integers correctly' do
    expect(sum(-2, -8)).to eq -10
  end
end
```

Remember - this is just Ruby. The creators of `RSpec` made their suite easy to
understand for someone who doesn't understand any Ruby at all. Let's try following this.
Describe `#sum`.. Okay we're saying these tests describe the `#sum` method. The string
following `it` is like an English written language for what we expect it to do. Simple.
Now in this block, it says expect `sum(1, 2)` to equal 3. And so on
and so forth.

You won't have to learn how to write tests for now, but try to become comfortable
reading through `RSpec`. It will make your life much, much easier in the future.

# How RSpec Is Run

`RSpec` can be run in the terminal, but you have to install it first. Let's install
it globally so we don't have to worry about it again. Do this by typing `gem install rspec`.
If it gives you a permissions error, prepend it with `sudo`.

Once you've successfully installed `RSpec`, you can run it by simply typing `rspec FILE_PATH`.
Most `RSpec` file names are structured as such: `file_being_tested_spec.rb`.

You will work on the corresponding `RSpec` file in the `lib` folder. Running the `RSpec` file
in the `spec` folder will automatically test what you have in the `lib` file. Cool, right? You
can now start tackling today's exercises!
