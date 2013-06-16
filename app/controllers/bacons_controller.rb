class BaconsController < ApplicationController
  before_action :set_bacon, only: [:show, :edit, :update, :destroy]

  # GET /bacons
  # GET /bacons.json
  def index
    respond_to do |format|
      format.html  { render text: "", layout: "application" }
      format.json { render json: Bacon.all }
    end
  end

  # GET /bacons/1
  # GET /bacons/1.json
  def show
  end

  # POST /bacons
  # POST /bacons.json
  def create
    @bacon = Bacon.new(bacon_params)

    respond_to do |format|
      if @bacon.save
        format.html { redirect_to @bacon, notice: 'Bacon was successfully created.' }
        format.json { render json: { bacon: @bacon }}
      else
        format.html { render action: 'new' }
        format.json { render json: @bacon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bacons/1
  # PATCH/PUT /bacons/1.json
  def update
    respond_to do |format|
      if @bacon.update(bacon_params)
        format.html { redirect_to @bacon, notice: 'Bacon was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bacon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bacons/1
  # DELETE /bacons/1.json
  def destroy
    @bacon.destroy
    respond_to do |format|
      format.html { redirect_to bacons_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bacon
      @bacon = Bacon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bacon_params
      params.require(:bacon).permit(:name, :quantity)
    end
end
