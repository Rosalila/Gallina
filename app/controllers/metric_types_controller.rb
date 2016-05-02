class MetricTypesController < ApplicationController
  before_action :set_metric_type, only: [:show, :edit, :update, :destroy]

  # GET /metric_types
  # GET /metric_types.json
  def index
    @metric_types = MetricType.all
  end

  # GET /metric_types/1
  # GET /metric_types/1.json
  def show
  end

  # GET /metric_types/new
  def new
    @metric_type = MetricType.new
  end

  # GET /metric_types/1/edit
  def edit
  end

  # POST /metric_types
  # POST /metric_types.json
  def create
    @metric_type = MetricType.new(metric_type_params)

    respond_to do |format|
      if @metric_type.save
        format.html { redirect_to @metric_type, notice: 'Metric type was successfully created.' }
        format.json { render :show, status: :created, location: @metric_type }
      else
        format.html { render :new }
        format.json { render json: @metric_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /metric_types/1
  # PATCH/PUT /metric_types/1.json
  def update
    respond_to do |format|
      if @metric_type.update(metric_type_params)
        format.html { redirect_to @metric_type, notice: 'Metric type was successfully updated.' }
        format.json { render :show, status: :ok, location: @metric_type }
      else
        format.html { render :edit }
        format.json { render json: @metric_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metric_types/1
  # DELETE /metric_types/1.json
  def destroy
    @metric_type.destroy
    respond_to do |format|
      format.html { redirect_to metric_types_url, notice: 'Metric type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metric_type
      @metric_type = MetricType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def metric_type_params
      params.require(:metric_type).permit(:name)
    end
end
