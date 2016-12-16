class AgentsController < ApplicationController
    before_action :authenticate_user!
def new
	@agent = Agent.new

end
def index
    @agents = Agent.all
end
def create
    @agent = Agent.new(agent_params)

    respond_to do |format|
    	if @agent.save
           # binding.pry
           #@user = current_user.id
          #@user.add_role :agent
           current_user.agent = @agent
           current_user.add_role :agent
        format.html { redirect_to root_path, notice: 'Agent was successfully created.' }
        format.json { render :show, status: :created, location: @agent }
      else
        format.html { render :new }
        format.json { render json: @agent.errors, status: :unprocessable_entity }
      end
    end
end
private
    # Use callbacks to share common setup or constraints between actions.
   

    # Never trust parameters from the scary internet, only allow the white list through.
    def agent_params
      params.require(:agent).permit(:user_id, :first_name,:last_name,:address,:mobile_number,:id_proof,:agency_name,:agency_phone)
    end
end