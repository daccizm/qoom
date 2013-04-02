require 'spec_helper'

describe "questions/index" do
  before(:each) do
    assign(:questions, [
      stub_model(Question,
        :nickname => "Nickname",
        :content => "Content"
      ),
      stub_model(Question,
        :nickname => "Nickname",
        :content => "Content"
      )
    ])
  end

  it "renders a list of questions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nickname".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
