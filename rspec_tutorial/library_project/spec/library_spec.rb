require 'spec_helper'

describe "Library Object" do

  before :all do
    lib_arr = [
        Book.new("RSpec", "Someone", :development),
        Book.new("Java", "Tommy", :development),
        Book.new("iOS", "Martin", :development),
        Book.new("Wool", "Author", :thriller),
        Book.new("Learning to Fly", "Steph Davis", :autobiography)
    ]

    File.open "Books.yml", "w" do |f|
      f.write YAML::dump lib_obj
    end

  end

  before :each do
    @library = Library.new "library.yml"
  end

end