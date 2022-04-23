require 'rails_helper'

RSpec.describe "admin/blogs/edit", type: :view do
  before(:each) do
    @admin_blog = assign(:admin_blog, Admin::Blog.create!(
      title: "MyString",
      content: nil
    ))
  end

  it "renders the edit admin_blog form" do
    render

    assert_select "form[action=?][method=?]", admin_blog_path(@admin_blog), "post" do

      assert_select "input[name=?]", "admin_blog[title]"

      assert_select "input[name=?]", "admin_blog[content]"
    end
  end
end
