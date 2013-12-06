class MainPagesController < ApplicationController
  def home
    @posts = Post.is_published.order('created_at DESC').first(5)
    @comments = Comment.order('created_at DESC').first(10)
  end

  def about
  end

  def mission
  end

  def joinus
  end
  
  def levelup
  end
end
