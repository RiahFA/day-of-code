class Idea < ApplicationRecord
end

# This is a little script that changes descriptions of all ideas you have in the database
# To run it, open a Rails console with `rails console` (from the terminal) and then copy the code below
def update_description(idea)
    idea.update!(description: "Moriah changed it")
end

Idea.all.each do |idea|
    update_description(idea)
end