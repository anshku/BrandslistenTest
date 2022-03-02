class PointTablesController < ApplicationController
  before_action :set_point_table, only: %i[ show edit update destroy ]

  # GET /point_tables or /point_tables.json
  def index
    @point_tables = PointTable.all
  end

  # GET /point_tables/1 or /point_tables/1.json
  def show
  end

  # GET /point_tables/new
  def new
    @point_table = PointTable.new
  end

  # GET /point_tables/1/edit
  def edit
  end

  # POST /point_tables or /point_tables.json
  def create
    @point_table = PointTable.new(point_table_params)

    respond_to do |format|
      if @point_table.save
        format.html { redirect_to point_table_url(@point_table), notice: "Point table was successfully created." }
        format.json { render :show, status: :created, location: @point_table }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @point_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /point_tables/1 or /point_tables/1.json
  def update
    respond_to do |format|
      if @point_table.update(point_table_params)
        format.html { redirect_to point_table_url(@point_table), notice: "Point table was successfully updated." }
        format.json { render :show, status: :ok, location: @point_table }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @point_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /point_tables/1 or /point_tables/1.json
  def destroy
    @point_table.destroy

    respond_to do |format|
      format.html { redirect_to point_tables_url, notice: "Point table was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_point_table
      @point_table = PointTable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def point_table_params
      params.require(:point_table).permit(:name, :win, :loss, :draw, :goals_for, :goals_against, :goals_diff, :total_points)
    end
end
