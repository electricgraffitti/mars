require 'spec_helper'

describe "categories/index" do
  before(:each) do
    assign(:categories, [
      stub_model(Category,
        :title => "Title",
        :description => "MyText",
        :rul_path => "Rul Path",
        :image => "Image"
      ),
      stub_model(Category,
        :title => "Title",
        :description => "MyText",
        :rul_path => "Rul Path",
        :image => "Image"
      )
    ])
  end

  it "renders a list of categories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Rul Path".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
