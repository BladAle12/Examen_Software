class NebulosasController < ApplicationController
  before_action :set_nebulosa, only: [:show, :edit, :update, :destroy]

  # GET /nebulosas
  # GET /nebulosas.json
  def index
    @nebulosas = Nebulosa.all
  end

  # GET /nebulosas/1
  # GET /nebulosas/1.json
  def show
  end

  # GET /nebulosas/new
  def new
    @nebulosa = Nebulosa.new
  end

  # GET /nebulosas/1/edit
  def edit
  end

  # POST /nebulosas
  # POST /nebulosas.json
  def create
    @nebulosa = Nebulosa.new(nebulosa_params)

    respond_to do |format|
      if @nebulosa.save
        format.html { redirect_to @nebulosa, notice: 'Nebulosa was successfully created.' }
        format.json { render :show, status: :created, location: @nebulosa }
      else
        format.html { render :new }
        format.json { render json: @nebulosa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nebulosas/1
  # PATCH/PUT /nebulosas/1.json
  def update
    respond_to do |format|
      if @nebulosa.update(nebulosa_params)
        format.html { redirect_to @nebulosa, notice: 'Nebulosa was successfully updated.' }
        format.json { render :show, status: :ok, location: @nebulosa }
      else
        format.html { render :edit }
        format.json { render json: @nebulosa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nebulosas/1
  # DELETE /nebulosas/1.json
  def destroy
    @nebulosa.destroy
    respond_to do |format|
      format.html { redirect_to nebulosas_url, notice: 'Nebulosa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nebulosa
      @nebulosa = Nebulosa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nebulosa_params
      params.require(:nebulosa).permit(:Nebulosa, :TipoNebulosa)
    end
end
