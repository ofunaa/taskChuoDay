class CancellsController < ApplicationController
  before_action :set_cancell, only: [:show, :edit, :update, :destroy]

  # GET /cancells
  # GET /cancells.json
  def index
    @cancells = Cancell.all
  end

  # GET /cancells/1
  # GET /cancells/1.json
  def show
  end

  # GET /cancells/new
  def new
    @cancell = Cancell.new
  end

  # GET /cancells/1/edit
  def edit
  end

  # POST /cancells
  # POST /cancells.json
  def create
    @cancell = Cancell.new(cancell_params)

    respond_to do |format|
      if @cancell.save
        format.html { redirect_to @cancell, notice: 'Cancell was successfully created.' }
        format.json { render :show, status: :created, location: @cancell }
      else
        format.html { render :new }
        format.json { render json: @cancell.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cancells/1
  # PATCH/PUT /cancells/1.json
  def update
    respond_to do |format|
      if @cancell.update(cancell_params)
        format.html { redirect_to @cancell, notice: 'Cancell was successfully updated.' }
        format.json { render :show, status: :ok, location: @cancell }
      else
        format.html { render :edit }
        format.json { render json: @cancell.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cancells/1
  # DELETE /cancells/1.json
  def destroy
    @cancell.destroy
    respond_to do |format|
      format.html { redirect_to cancells_url, notice: 'Cancell was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cancell
      @cancell = Cancell.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cancell_params
      params[:cancell]
    end
end
