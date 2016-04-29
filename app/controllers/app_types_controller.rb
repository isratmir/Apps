class AppTypesController < ApplicationController
  before_action :set_app_type, only: [:show, :edit, :update, :destroy]

  # GET /app_types
  # GET /app_types.json
  def index
    @app_types = AppType.all
  end

  # GET /app_types/1
  # GET /app_types/1.json
  def show
  end

  # GET /app_types/new
  def new
    @app_type = AppType.new
  end

  # GET /app_types/1/edit
  def edit
  end

  # POST /app_types
  # POST /app_types.json
  def create
    @app_type = AppType.new(app_type_params)

    respond_to do |format|
      if @app_type.save
        format.html { redirect_to @app_type, notice: 'App type was successfully created.' }
        format.json { render :show, status: :created, location: @app_type }
      else
        format.html { render :new }
        format.json { render json: @app_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /app_types/1
  # PATCH/PUT /app_types/1.json
  def update
    respond_to do |format|
      if @app_type.update(app_type_params)
        format.html { redirect_to @app_type, notice: 'App type was successfully updated.' }
        format.json { render :show, status: :ok, location: @app_type }
      else
        format.html { render :edit }
        format.json { render json: @app_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_types/1
  # DELETE /app_types/1.json
  def destroy
    @app_type.destroy
    respond_to do |format|
      format.html { redirect_to app_types_url, notice: 'App type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_type
      @app_type = AppType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def app_type_params
      params.require(:app_type).permit(:title)
    end
end
