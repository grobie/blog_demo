class CommentsController < ApplicationController
  
  def create
    @comment = Comment.new(params[:comment])
    
    if @comment.save
      redirect_to @comment.post
    else
      flash[:notice] = "Bitte alle benötigten Felder ausfüllen!"
      render :template => "posts/show", :layout => 'posts'
    end
  end
  
end
