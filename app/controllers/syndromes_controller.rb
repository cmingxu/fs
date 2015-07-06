class SyndromesController < ApplicationController
  before_action :set_syndrome, only: [:show, :edit, :update, :destroy]

  # GET /syndromes
  # GET /syndromes.json
  def index
    @syndromes = Syndrome.all
  end

  # GET /syndromes/1
  # GET /syndromes/1.json
  def show
  end

  # GET /syndromes/new
  def new
    @syndrome = Syndrome.new
  end

  # GET /syndromes/1/edit
  def edit
  end

  # POST /syndromes
  # POST /syndromes.json
  def create
    @syndrome = Syndrome.new(syndrome_params)

    respond_to do |format|
      if @syndrome.save
        format.html { redirect_to @syndrome, notice: 'Syndrome was successfully created.' }
        format.json { render :show, status: :created, location: @syndrome }
      else
        format.html { render :new }
        format.json { render json: @syndrome.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /syndromes/1
  # PATCH/PUT /syndromes/1.json
  def update
    respond_to do |format|
      if @syndrome.update(syndrome_params)
        format.html { redirect_to @syndrome, notice: 'Syndrome was successfully updated.' }
        format.json { render :show, status: :ok, location: @syndrome }
      else
        format.html { render :edit }
        format.json { render json: @syndrome.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /syndromes/1
  # DELETE /syndromes/1.json
  def destroy
    @syndrome.destroy
    respond_to do |format|
      format.html { redirect_to syndromes_url, notice: 'Syndrome was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_syndrome
      @syndrome = Syndrome.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def syndrome_params
      params.require(:syndrome).permit(:name, :description, :position)
    end
end
