class ResiduesController < ApplicationController
  before_action :set_residue, only: [:show, :edit, :update, :destroy]

  # GET /residues
  # GET /residues.json
  def index
    @residues = Residue.all
  end

  # GET /residues/1
  # GET /residues/1.json
  def show
  end

  # GET /residues/new
  def new
    @residue = Residue.new
  end

  # GET /residues/1/edit
  def edit
  end

  # POST /residues
  # POST /residues.json
  def create
    @residue = Residue.new(residue_params)

    respond_to do |format|
      if @residue.save
        format.html { redirect_to @residue, notice: 'Residue was successfully created.' }
        format.json { render :show, status: :created, location: @residue }
      else
        format.html { render :new }
        format.json { render json: @residue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /residues/1
  # PATCH/PUT /residues/1.json
  def update
    respond_to do |format|
      if @residue.update(residue_params)
        format.html { redirect_to @residue, notice: 'Residue was successfully updated.' }
        format.json { render :show, status: :ok, location: @residue }
      else
        format.html { render :edit }
        format.json { render json: @residue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /residues/1
  # DELETE /residues/1.json
  def destroy
    @residue.destroy
    respond_to do |format|
      format.html { redirect_to residues_url, notice: 'Residue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_residue
      @residue = Residue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def residue_params
      params.require(:residue).permit(:name_redidue, :category_id, :available_quantity)
    end
end
