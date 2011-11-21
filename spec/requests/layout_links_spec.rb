require 'spec_helper'

describe "LayoutLinks" do
  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end

  it "should have a Contact page at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end

  it "should have an About page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "About")
  end

  it "should have a Help page at '/help'" do
    get '/help'
    response.should have_selector('title', :content => "Help")
  end

  it "should have a Signup page at '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => "Sign up")
  end

  it "should have the right link for About page" do
    visit root_path
    click_link "About"
    response.should have_selector('title', :content => "About")
  end

  it "should have the right link for Help page" do
    visit root_path
    click_link "Help"
    response.should have_selector('title', :content => "Help")
  end

  it "should have the right link for Contact page" do
    visit root_path
    click_link "Contact"
    response.should have_selector('title', :content => "Contact")
  end

  it "should have the right link for Home page" do
    visit root_path
    click_link "Home"
    response.should have_selector('title', :content => "Home")
  end
/#
  it "should have the right link for Sign in page" do
    visit root_path
    click_link "Sign up now!"
    response.should have_selector('title', :content => "Sign in")
  end

  it "should have the right link for Sign up button" do
    visit root_path
    click_link "Sign up now!"
    response.should have_selector('title', :content => "Sign up")
  end
#/
end
