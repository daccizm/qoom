require 'spec_helper'

describe "questions/show" do
  before(:each) do
    @question = assign(:question, stub_model(Question,
      :nickname => "Nickname",
      :content => "Content"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nickname/)
    rendered.should match(/Content/)
  end
end
