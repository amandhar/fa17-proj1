# Q0: Why is this error being thrown?
No Pokemon exist yet, and there is no model for them.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The home controller uses sample to pick a pokemon from the database. All of them are saved in our database. I think another thing that is common is that they are all traditionally "starter" pokemon.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
First, we create a button. Then we call the capture_path (specified in routes.rb) by passing in the id of the pokemon to capture. This id gets added to params for the capture method. Then we say what kind of button we want. And then we label this as a patch method because we are updating values with this button, so it will get mapped to the right route.

# Question 3: What would you name your own Pokemon?
Bill

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in a path, but I used it as a method call, where I also passed in the ids needed to update the right pokemon.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
The error message gets stored with flash, which can store relatively small objects. This shows up on the form because we have the line "render 'layouts/messages'" in our application.html.erb file, so if anything is stored in flash for a certain view, it gets rendered on that view.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
