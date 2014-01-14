class TeamOfTheWeeksController < ApplicationController
  before_action :set_team_of_the_week, only: [:show, :edit, :update, :destroy]

  # GET /team_of_the_weeks
  # GET /team_of_the_weeks.json
  def index
    @team_of_the_weeks = TeamOfTheWeek.all
  end

  # GET /team_of_the_weeks/1
  # GET /team_of_the_weeks/1.json
  def show
  end

  # GET /team_of_the_weeks/new
  def new
    @team_of_the_week = TeamOfTheWeek.new
  end

  # GET /team_of_the_weeks/1/edit
  def edit
  end

  # POST /team_of_the_weeks
  # POST /team_of_the_weeks.json
  def create
    @team_of_the_week = TeamOfTheWeek.new(team_of_the_week_params)

    respond_to do |format|
      if @team_of_the_week.save
        format.html { redirect_to @team_of_the_week, notice: 'Team of the week was successfully created.' }
        format.json { render action: 'show', status: :created, location: @team_of_the_week }
      else
        format.html { render action: 'new' }
        format.json { render json: @team_of_the_week.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /team_of_the_weeks/1
  # PATCH/PUT /team_of_the_weeks/1.json
  def update
    respond_to do |format|
      if @team_of_the_week.update(team_of_the_week_params)
        format.html { redirect_to @team_of_the_week, notice: 'Team of the week was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @team_of_the_week.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_of_the_weeks/1
  # DELETE /team_of_the_weeks/1.json
  def destroy
    @team_of_the_week.destroy
    respond_to do |format|
      format.html { redirect_to team_of_the_weeks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_of_the_week
      @team_of_the_week = TeamOfTheWeek.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_of_the_week_params
      params[:team_of_the_week]
    end
end
