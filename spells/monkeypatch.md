Monkeypatch
==========

Really similar to open class, except applied to existing methods. This one is powerful, but in most cases should probably just be left alone.

```ruby
class Door
  def knock
    puts "Knocking on door..."
  end
end

Door.new.knock
"Knocking on door..."
=> nil

class Door
  def knock
    puts "Barging in..."
  end
end
Door.new.knock
=> "Barging in..."
```
