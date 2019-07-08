# Questions
  * why use shotgun?
  * how do you know which .gitignore lines to delete for the current application?
  * why do we need to get rid of the development database?
  * rspec what is it? alternative to Minitest
  * (Alessandra) problem with passing the first review test
  -> Failure/Error: expect(response.status).to eq(200)
     
     NameError:
       undefined local variable or method `response' for #<RSpec::ExampleGroups::ReviewsController::LoggedIn::CreateNewReview:0x00007f91c3aa03a0>
    -> seems solvable only by using visit instead of get and following this: http://blog.plataformatec.com.br/2012/06/improving-the-integration-between-capybara-and-rspec/
  * What's the difference between Class.new() and Class.create()

# Things learned
  * using shotgun means just running the program right off the bat without using ruby file.rb
  * doing robocop -a seems to fix a lot of problems automatically
  * SHIFT+ALT+DOWN/UP to duplicate line
  * ALT+DOWN/UP to move line


# Order of activities (day 1)
  * using cornmeal to generate the scaffolding
  * come up with a good MVC model and main routes
  * getting rid of custom graphics and auto-generated html content
  * editing the .gitignore file
  * initiate Git repository and committing
  * run rucobop to get rid of any errors before starting
  * remember to perform rake:migrate regularly to make sure a database is still available after deleting the default sqllite
  * stubbing out the rest of the main classes (in this case, after user, reviews, and movies)
  * taking out unnecessary methods based on the notes made earlier
  * running rucocop on all
  * getting rid of the development database

# Order of activities (day 2)
  * adding tests using the existing application_controller_spec.rb and extrapolating to all 3 other classes
  * what is rspec? run rspec to check for any logical issues
  * adding tests to the reviews class, making sure it creates no issues outside of rspec
  * Major issues passing tests, review object can't seem to get filled, might have something to do with user_id getting through authentication

  * In the process of debugging, learning a few Git tricks
  * To pull a certain commit from a remote repo: git fetch 

```
$ git clone $URL
$ cd $PROJECT_NAME
$ git reset --hard $SHA1
```

* With every repo that I'm cloning and checking out, need to 
1. Delete Gemfile, set up new bundle install
2. Change the sqllite version into something else
3. Possibly change the gem source for datacleaner
4. note the ssh isa is available from the keychain access manager to pull the git directly
