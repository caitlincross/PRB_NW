class AutheventsController < ApplicationController
  before_action :set_authevent, only: [:show, :edit, :update, :destroy]

  # GET /authevents
  # GET /authevents.json
  def index
    @authevents = Authevent.all
  end

  # GET /authevents/1
  # GET /authevents/1.json
  def show
  end

  # GET /authevents/new
  def new
    @authevent = Authevent.new
  end

  # GET /authevents/1/edit
  def edit
  end

  # POST /authevents
  # POST /authevents.json
  def create
    @authevent = Authevent.new(authevent_params)

    respond_to do |format|
      if @authevent.save
        format.html { redirect_to @authevent, notice: 'Authevent was successfully created.' }
        format.json { render action: 'show', status: :created, location: @authevent }
      else
        format.html { render action: 'new' }
        format.json { render json: @authevent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /authevents/1
  # PATCH/PUT /authevents/1.json
  def update
    respond_to do |format|
      if @authevent.update(authevent_params)
        format.html { redirect_to @authevent, notice: 'Authevent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @authevent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authevents/1
  # DELETE /authevents/1.json
  def destroy
    @authevent.destroy
    respond_to do |format|
      format.html { redirect_to authevents_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authevent
      @authevent = Authevent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def authevent_params
      params[:authevent]
    end
end
