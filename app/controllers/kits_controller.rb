class KitsController < ApplicationController
  before_action :set_team
  before_action :set_kit, only: [:show, :edit, :update]

  def index
    @kits = @team.kits
  end

  def new
    @kit = @team.kits.build  # Build a new kit associated with this team
  end

  def create
    @kit = @team.kits.build(kit_params)

    if @kit.save
      redirect_to team_kit_path(@team, @kit), notice: 'Kit was successfully created.'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @kit.update(kit_params)
      redirect_to team_kit_path(@team, @kit), notice: 'Kit was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @kit.destroy
    redirect_to team_kits_path(@team), notice: 'Kit was successfully deleted.'
  end

  private

  def set_team
    @team = Team.find(params[:team_id])
  end

  def set_kit
    @kit = @team.kits.find(params[:id])  # Find the kit within the team
  end

  def kit_params
    params.require(:kit).permit(:year, :team_id, :kit, :brand, :design_notes, :full_kit, :league_finish, :wins, :draws, :losses, :total_points, :manager, :honors)
  end
end
