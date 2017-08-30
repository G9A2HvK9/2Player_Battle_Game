# 2 Player Battle Game (Ruby)

This is a simple two-player battle game, developed in Ruby. It demonstrates an understanding of object-oriented design, single responsibility, persistence through the use of sessions, front-end design using HTML and CSS as well as test-driven development using RSPEC and Capybara.

The complexity was intentionally kept to a minimum in order to present a clean, simple product.

## Configuration

### Installation

This program was written in ruby and you will need to have ruby installed on your machine to run it. Additional dependencies are detailed in the gemfile in the root directory. You will need to install these as well.

  1. Make sure you have ruby installed on your machine
  
  `~ $ ruby -v`
  
  2. If you do not have ruby installed, you can download and install ruby [here](https://www.ruby-lang.org/en/downloads/))
  3. Fork and clone this repository into a directory of your choice
  4. Switch into the correct directory on your machine
  5. From the command-line, install the dependencies

  `~ $ bundle install`
  
## Tests

The testsuite for this program was written using rspec and capybara. The tests are seperated into `unit` and `feature` tests and can be found in the `./spec`directory.

  1. To run the tests using rspec 

  `~ $ rspec`
  
### Structure

  * The game is constructed out of 3 seperate objects
  
    1. `game` understands how to `play turns` and is dependent on the `player`object
    
    2. `player`understands how to `reduce player_hp`
    
    3. `game_over`understands how to `display game over message` once `player_hp`is equal to or less than 0
   
  * The game is presented in 3 different views
  
    1. `home` prompts for player name input and clears any sessions
    
    2. `fight` displays player sprites and background. Also shows `player_name` and `player_hp`
    
    3. `attack` displays the resulting `damage` from the previous attack as well as the `game over message`
    
## Product Journey

### Rationale

  * Players alternate turns based on a `turn_counter` which is contained in the `Game Class`
  * Players have an attribute `player_hp` which is dynamically reduced, based on damange dealt
  * Persistence was achieved using sessions as these are easy to implement and can be cleared to easily achieve `quit game`functionality
  

### Direct Learning Experiences

  * Hosting static objects on a sinatra app by detailing the `./public` directory at the top of the `app.rb` file
  * Reliably orienting elements on a page view using CSS styling (`x-axis`, `y-axis` orientation)
  * Understanding guard conditions as part of the product journey; not adding them at the end of the product
  * Persisting data through class methods (`self.create` & `self.instance`) is elegant but difficult to clear
  * Engaging with the online develoepr community via sites like stack overflow to get feedback on struggles
  
### Improvements & Future Steps

  * To maintain single responsibility, an `Attack Class`shoudl be created, which takes `player1` and `player2` and `damage` as arguments
  * Once the `Attack Class` is in existence, it should be fairly easy to implement a variety of attacks, dealing different damage
  * Guard conditions need to be put in place and tested
  
  
## Screenshots



  
  
  

