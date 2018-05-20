class SubmitsController < ApplicationController
  before_action :set_submit, only: [:show,:edit, :update, :destroy]
  before_filter :set_page, only: [:index]
 
  # GET /submits
  # GET /submits.json
  def index
    @submits = Submit.all
    @submits = Submit.order(:id).limit(8).offset(@page * 8)
    
  end

  # GET /submits/1
  # GET /submits/1.json
  def show
    @submit = Submit.find(params[:id])
    respond_to do |format|
      format.html
      format.json {render json: @submit}
    end
    
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
    @submit =Submit.new(submit_params)
    
    respond_to do |format|
      if @submit.save
        format.html { redirect_to @submit, notice: 'Submission was successfully created.' }
        format.json { render :show, status: :created, location: @submit }
      else
        format.html { render :new }
        format.json { render json: @submit.errors, status: :unprocessable_entity }
      end
    end
    # if @submit.save
    #   redirect_to root_path, notice: 'Link successfullt created'
    # else
    #   render :new
    # end
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
    @submit = Submit.find_by(id: params[:id])
    @submit.destroy
    respond_to do |format|
      format.html { redirect_to submits_url, notice: 'Submit was successfully destroyed.' }
      format.json { head :no_content }
    end
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
    
    def set_page
      @page = params[:page].to_i || 0
    end
end