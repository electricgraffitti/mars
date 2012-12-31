require 'spec_helper'

describe "admins/index" do
  before(:each) do
    assign(:admins, [
      stub_model(Admin,
        :username => "Username"
      ),
      stub_model(Admin,
        :username => "Username"
      )
    ])
  end

  it "renders a list of admins" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Username".to_s, :count => 2
  end
end
