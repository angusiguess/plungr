class StallsController < ApplicationController
  before_action :set_stall, only: [:show, :edit, :update, :destroy, :showplops]

  # GET /stalls
  # GET /stalls.json
  def index
    @stalls = Stall.all
  end

  # GET /stalls/1
  # GET /stalls/1.json
  def show
  end

  # GET /stalls/new
  def new
    @stall = Stall.new
  end

  # GET /stalls/1/edit
  def edit
  end

  # POST /stalls
  # POST /stalls.json
  def create
    @stall = Stall.new(stall_params)

    respond_to do |format|
      if @stall.save
        format.html { redirect_to @stall, notice: 'Stall was successfully created.' }
        format.json { render action: 'show', status: :created, location: @stall }
      else
        format.html { render action: 'new' }
        format.json { render json: @stall.errors, status: :unprocessable_entity }
      end
    end
  end

  #SHOWPLOPS /qr/:id
  def showplops
    #Stall.find_by_uuid(params[:uuid])
  end

  # PATCH/PUT /stalls/1
  # PATCH/PUT /stalls/1.json
  def update
    respond_to do |format|
      if @stall.update(stall_params)
        format.html { redirect_to @stall, notice: 'Stall was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @stall.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stalls/1
  # DELETE /stalls/1.json
  def destroy
    @stall.destroy
    respond_to do |format|
      format.html { redirect_to stalls_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stall
      @stall = Stall.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stall_params
      params.require(:stall).permit(:name, :uuid, :write_hash, :qr_code)
    end
end
