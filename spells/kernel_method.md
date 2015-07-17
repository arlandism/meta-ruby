Kernel Method
=============

Probably my favorite so far because of its usefulness. In Ruby, everything you call has to be defined on an object. So, even words that seem special like "puts" are really just defined in the Kernel module. Since that module gets included on most classes, you automatically get access to its methods. This can make new methods seem like language built-ins.

```ruby
module Kernel
  def my_name
    "Arlandis"
  end
end

class Program
  def call
    puts "Written by #{my_name}"
  end
end

Program.new.call
"Written by Arlandis"
=> nil
```

Lots of libraries use this pattern (it's even how you get to say 'gem "foobar"' in a Gemfile.
