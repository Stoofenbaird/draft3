class PetnamesController < ApplicationController
  before_action :set_petname, only: [:show, :edit, :update, :destroy]

  # GET /petnames
  # GET /petnames.json
  def index
    @petnames = Petname.all
  end

  # GET /petnames/1
  # GET /petnames/1.json
  def show
  end

  # GET /petnames/new
  def new
    @petname = Petname.new
  end

  # GET /petnames/1/edit
  def edit
  end

  # POST /petnames
  # POST /petnames.json
  def create
    @petname = Petname.new(petname_params)

    respond_to do |format|
      if @petname.save
        format.html { redirect_to @petname, notice: 'Petname was successfully created.' }
        format.json { render :show, status: :created, location: @petname }
      else
        format.html { render :new }
        format.json { render json: @petname.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /petnames/1
  # PATCH/PUT /petnames/1.json
  def update
    respond_to do |format|
      if @petname.update(petname_params)
        format.html { redirect_to @petname, notice: 'Petname was successfully updated.' }
        format.json { render :show, status: :ok, location: @petname }
      else
        format.html { render :edit }
        format.json { render json: @petname.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /petnames/1
  # DELETE /petnames/1.json
  def destroy
    @petname.destroy
    respond_to do |format|
      format.html { redirect_to petnames_url, notice: 'Petname was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_petname
      @petname = Petname.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def petname_params
      params.require(:petname).permit(:name)
    end
end
