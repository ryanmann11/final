class MeetingsController <ApplicationController 
skip_before_action :require_user, only: [:index, :show]
  
   def index 
    @meetings = Meeting.all 
  end 

  def new
    @meeting = Meeting.new 
  end 

  def show 
    @meeting = Meeting.find_by(id: params["id"])
    @user = User.where(meeting_id: @meeting.id)
  end 

  def edit 
    @meeting = Meeting.find_by(id: params["id"])
  end 

  def create
    meeting_params = params.require(:meeting).permit!
    @meeting = Meeting.create(meeting_params)
    if @meeting.valid?
     redirect_to meetings_path
    else
      render "new"
    end
  end

end 