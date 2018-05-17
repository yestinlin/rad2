class SubmitsController < ApplicationController
  before_action :set_submit, only: [:edit, :update, :destroy]

  # GET /submits
  # GET /submits.json
  def index
    @submits = Submit.all
    get_and_show_submits
  end

  # GET /submits/1
  # GET /submits/1.json
  def show
    @submit = Submit.find_by(id: params[:id])
    @comments = @submit.comments
  end

  # GET /submits/new
  def new
    @submit = Submit.new
  end

  # GET /submits/1/edit
  def edit
    
  end

  # POST /submits
  # POST /submits.json
  def create
    @submit = current_user.submits.new(submit_params)
    
    if @submit.save
      redirect_to root_path, notice: 'Link successfullt created'
    else
      render :new
    end
  end
  end

  # PATCH/PUT /submits/1
  # PATCH/PUT /submits/1.json
  def update
    respond_to do |format|
      if @submit.update(submit_params)
        format.html { redirect_to @submit, notice: 'Submit was successfully updated.' }
        format.json { render :show, status: :ok, location: @submit }
      else
        format.html { render :edit }
        format.json { render json: @submit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /submits/1
  # DELETE /submits/1.json
  def destroy
    @submit.destroy
    respond_to do |format|
      format.html { redirect_to submits_url, notice: 'Submit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
   def index_with_button
    get_and_show_submits
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_submit
      @submit = Submit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def submit_params
      params.require(:submit).permit(:title, :url , :description)
    end

   def get_and_show_submits
    @submits = Submit.paginate(page: params[:page], per_page: 8).order('created_at DESC')
    respond_to do |format|
        format.html
        format.js { render json: @submits }
    end
end