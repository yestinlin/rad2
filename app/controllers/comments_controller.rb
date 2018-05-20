class CommentsController < ApplicationController
  before_action :set_variables, only: [ :edit, :update, :destroy]
  def index
   @comments = Comment.all
  end
  def new
   @comment = Submit.new(params[:submit])
  @comment = Comment.new(params[:comment])

  end
  
  def create
    @submit = Submit.find_by(params[:submit_id])
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

  def show
    @comment = Comment.find(params[:id])
    respond_to do |format|
      format.html
      format.json {render json: @comment}
    end
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
        respond_to do |format|
          format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
          format.json { head :no_content }
        end
    end
    
private
  def comment_params
    params.require(:comment).permit( :body)
  end
  def set_variables
    @submit = Submit.find_by(params[:submit_id])
    @comment = @submit.comments.find_by(id: params[:id])
  end
end