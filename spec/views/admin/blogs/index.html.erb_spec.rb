require 'rails_helper'

RSpec.describe "admin/blogs/index", type: :view do
  before(:each) do
    assign(:admin_blogs, [
      Admin::Blog.create!(
        title: "Title",
        content: nil
      ),
      Admin::Blog.create!(
        title: "Title",
        content: nil
      )
    ])
  end

  it "renders a list of admin/blogs" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
