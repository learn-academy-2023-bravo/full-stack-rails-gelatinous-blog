class BlogController < ApplicationController
    def index 
        @blogs = Blog.all
    end
    def show
        @blog = Blog.find(params[:id])
        @content = Blog.find(params[:id])
    end
    def new
        @blog = Blog.new
    end
    def create
        @blog = Blog.create(blog_params)
          if @blog.valid?
            redirect_to blogs_path 
          end
    end
    private
    # strong params
    def blog_params
      params.require(:blog).permit(:title, :content)
    end
end


# def index
#     # active record query to see all the books in the db, stored in an instance variable
#     @books = Book.all
#   end