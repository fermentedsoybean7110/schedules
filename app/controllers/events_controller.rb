class EventsController < ApplicationController

  before_action :authenticate_user!


  def index
<<<<<<< Updated upstream
=======
    @events = Event.where( user_id: current_user.id )
>>>>>>> Stashed changes
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_path
    else
      redirect_to new_event_path, flash: { alert: "必須項目を入力して下さい"}
    end
  end

<<<<<<< Updated upstream
=======
  def show
    @event = Event.find(params[:id])
  end

  def update
    
    if @event.update(event_params)
      redirect_to root_path
    else
      redirect_to edit_event_path, flash: { alert: "必須項目を入力して下さい"}
    end
    
  end

  def destroy
    @event.destroy
    redirect_to root_path
  end

  private
  def event_params
    params.require(:event).permit(:title, :body, :start_date, :end_date, :genre).merge(user_id: current_user.id)
  end

  def set_event
    @event = Event.find(params[:id])
  end

  def set_user
    @user = User.find(current_user.id)
  end


>>>>>>> Stashed changes
end
