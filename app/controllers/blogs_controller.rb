class BlogsController < ApplicationController
  def index
    @blogs = Admin::Blog.all
    @pagy, @blogs = pagy @blogs, items: 8
  end

  def show
    @blog = Admin::Blog.find(params[:id])
  end
end
