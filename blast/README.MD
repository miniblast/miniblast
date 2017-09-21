## Using Blast in your project
Blast is Miniblast's Config reader for the blast.yml file in the root folder of your website.  To use Blast in your website create a new file called blast.yml in the root file path.

### Contents of a Blast YML file
```yaml
Ruby: "True";                   # If ruby is mainly used in this project
Ruby_Version: "2.4.2";          # The ruby version that it uses.  (Set to latest)
Author: "Zack Pace";            # The name of the creator.
Email: "zack@zacklearns.com";   # The email of the creator.
Product_Version: "1.0.0";       # The version of this current build or your project.
Files:                          # List of files that you want to use.
-   "FILE1.rb"
-   "FILE2.txt"
```

### Version
The current version of Blast is 1.0.0 for Miniblast1.

### Using API
```ruby
# Code.rb
require "Blast"

data = Gem::Blast::bml
data["{CONFIGURATION NAME}"]          # The name of the config.  For example, data["Ruby"] will return "True."
```

### Creating more advanced scripts with the Blast API
```ruby
# Code.rb
puts data["Ruby"]
```
...will output ```True```.  Now we will up our game.

```ruby
# Code.rb
if data["Ruby"] == "True"
  puts "Good"
else
  puts "Bad"
end
```
