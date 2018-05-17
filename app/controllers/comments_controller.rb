class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def edit
  end
  
  def create
  @submit = Submit.find_by(id: params[:submit_id])
  @comment = @submit.comments.new(user: current_user, body: comment_params[:body])

  if @comment.save
    redirect_to @submit, notice: 'Comment created'
  else
    redirect_to @submit, notice: 'Comment was not saved. Ensure you have entered a comment'
  end
end

def edit
    
      redirect_to root_path, notice:'Not authorized to edit this comment'
    end

  
  def update
    if @comment.update(comment_params)
      redirect_to @submit, notice: 'Comment updated'
    else
      render :edit
    end
  end
  
  def destroy
    
      @comment.destroy
      redirect_to @submit, notice: 'Comment deleted'
    else
      redirect_to @submit, notice:'Not authorized to delete this comment'
    end
  end
private

def comment_params
  params.require(:comment).permit(:body)
end
def set_variables
  @submit = Submit.find_by(id: params[:submit_id])
  @comment = @submit.comments.find_by(id: params[:id])
end