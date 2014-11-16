Open Class
==========

This one isn't super magical, it just represents the concept of being able to dynamically alter classes, including adding methods. This technique can also be applied to adding methods to existing classes (e.g. String, Array, etc.)

```ruby
class Door
  def knock
    puts "Knocking on door..."
  end
end

Door.new.knock
"Knocking on door..."
=> nil

Door.new.locked?
NoMethodError: undefined method `locked?' for #<Door:0x00000101657ed8>

class Door
  def locked?
    puts "Not locked"
  end
end
Door.new.locked?
=> "Not locked"
```

The way the book describes it, and is easiest for me to internalize, is the 'class' keyword just opens a class for modification. On its first invocation it'll create the class and on subsequent invocations it just adds stuff in; like a 'find_or_create'.
