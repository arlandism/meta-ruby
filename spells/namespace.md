Namespace
=========

Use modules to wrap your classes to avoid conflicts with other libraries or client code.

```ruby
# in att gem
module ATT
  class SmartPhone
  end
end

# in code that requires att gem
module Sprint
  class SmartPhone
  end
end
```

We can guarantee there won't be clashes now.
