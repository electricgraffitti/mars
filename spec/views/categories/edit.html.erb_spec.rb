require 'spec_helper'

describe "categories/edit" do
  before(:each) do
    @category = assign(:category, stub_model(Category,
      :title => "MyString",
      :description => "MyText",
      :rul_path => "MyString",
      :image => "MyString"
    ))
  end

  it "renders the edit category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => categories_path(@category), :method => "post" do
      assert_select "input#category_title", :name => "category[title]"
      assert_select "textarea#category_description", :name => "category[description]"
      assert_select "input#category_rul_path", :name => "category[rul_path]"
      assert_select "input#category_image", :name => "category[image]"
    end
  end
end
