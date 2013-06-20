class RoomsController < ApplicationController
  # GET /rooms
  # GET /rooms.json
  def index
    @rooms = current_user.rooms

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # # GET /rooms/1
  # # GET /rooms/1.json
  # def show
  #   @room = Room.find(params[:id])

  #   respond_to do |format|
  #     format.html # show.html.erb
  #     format.json { render json: @room }
  #   end
  # end

  # GET /rooms/new
  # GET /rooms/new.json
  def new
    @room = Room.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /rooms/1/edit
  def edit
    @room = Room.find(params[:id])
  end

  # POST /rooms
  # POST /rooms.json
  def create
    current_user.rooms.create(params[:room])

    respond_to do |format|
      @rooms = current_user.rooms
      format.html { redirect_to user_rooms_url current_user }
    end
  end

  # PUT /rooms/1
  # PUT /rooms/1.json
  def update
    room = Room.find(params[:id])
    room.update_attributes(params[:room])

    respond_to do |format|
      @rooms = current_user.rooms
      format.html { redirect_to user_rooms_url current_user }
    end
  end

  # DELETE /rooms/1
  # DELETE /rooms/1.json
  def destroy
    @room = Room.find(params[:id])
    @room.destroy

    respond_to do |format|
      format.html { redirect_to user_rooms_url current_user }
    end
  end
end
