## Workshop #2 for Panda PAWs ##

This is the second activity for the PAWs for Pandas Pandamonium workshop. Follow the instructions below to begin.


### Setup ###

1. Open the Terminal app and enter the following: `git clone https://github.com/mycargus/panda-paws-tdd.git`

2. Again in Terminal, enter: `cd panda-paws-tdd`

3. Now `bundle install`

4. Finally, enter `git checkout tdd` to switch to the "tdd" branch.

You're ready to begin TDDing!


### Begin Coding ###

The only two files you'll need to focus on are `assignees_list.rb` (where the method skeleton is defined) and `specs/assignees_list_specs.rb` (where you'll code your automated tests).

Note that numerous scenarios are already outlined in `specs/assignees_list_specs.rb`. All but the first spec are commented out. Execute the spec and observe the failing result. This is good! Now add code to the `assignees_list()` method to make the spec pass. Repeat these steps until all the specs are uncommented and passing.

To execute your automated specs, run `bundle exec spring rspec specs/assignees_list_specs.rb`

If you get stuck, the complete coded method and specs are stored in the `master` branch. To view them, enter `git checkout master` and open the aforementioned files.


### Remember the process! ###

"Follow three simple steps repeatedly:

1. Write a test for the next bit of functionality you want to add.
2. Write the functional code until the test passes.
3. Refactor both new and old code to make it well structured."

[Martin Fowler](http://martinfowler.com/bliki/TestDrivenDevelopment.html)