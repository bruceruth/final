class AppointmentsController < ApplicationController
 require 'my_logger' #This line tells the controller where the logger solution is defined. So that the controller
                        #has access to the MyLogger class
    
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  #before_filter :ensure_admin, :only => [:edit, :destroy]

  # GET /appointments
  # GET /appointments.json
  def index
    @appointments = Appointment.all
    
    #@options = @appointment.options
    
    if params[:search]
      #select all the profiles which match the search pattern
      @appointments = Appointment.search(params[:search])
      #order the selected rows ascending by created at field
      @appointments = @appointments.order("created_at ASC")
    else
      #order all the rows descending by created_at field
      @appointments = @appointments.order("created_at DESC")
    end
  end
  

  # GET /appointments/1
  # GET /appointments/1.json
  #edited to allow show for particular id, following the introduction of price() 
  def show
    @appointment = Appointment.find(params[:id])
    

  end

  # GET /appointments/new
  def new
    @appointment = Appointment.new
    # @appointment.price = 5 * numpeople
  end

  # GET /appointments/1/edit
  def edit
  end

  # POST /appointments
  # POST /appointments.json
  def create
    @appointment = Appointment.new(appointment_params)
    #Send the tarot reader an email to say they have a new appointment
     #send the customer and email to confirm their appointment
    #response = open('http://mqttmartin.mybluemix.net/sendMail?email_to=angeltarotcarrick%40gmail.com&from=angeltarotcarrick%gmail.com&subject=New+message+for+you&message=You+have+a+new+appointment+on+angeltarotcarrick').read
     #response = open('http://mqttmartin.mybluemix.net/sendMail?email_to=angeltarotcarrick%40gmail.com&from=user.name%40here&subject=My+message&message=appointment.date, appointment.timeslot').read

    respond_to do |format|
      if @appointment.save
        #retrieve the instance of the MyLogger class here
        #logger = MyLogger.instance
        #logger.logInformation ("*Singleton Pattern*: New appointment made by: " + @appointment.name)

        #require 'open-uri'
        #response = open('http://mqttmartin.mybluemix.net/sendMail?email_to=angeltarotcarrick@gmail.com&from=angeltarotcarrick%gmail.com&subject=New+message+for+you&message=You+have+a+new+appointment+on+angeltarotcarrick').read
   
        format.html { redirect_to @appointment, notice: 'Appointment was successfully created.' }
        format.json { render :show, status: :created, location: @appointment }
      else
        format.html { render :new }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointments/1
  # PATCH/PUT /appointments/1.json
  def update
    respond_to do |format|
      if @appointment.update(appointment_params)
        format.html { redirect_to @appointment, notice: 'Appointment was successfully updated.' }
        format.json { render :show, status: :ok, location: @appointment }
      else
        format.html { render :edit }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointments/1
  # DELETE /appointments/1.json
  def destroy
    @appointment.destroy
    respond_to do |format|
      format.html { redirect_to appointments_url, notice: 'Appointment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appointment_params
      params.require(:appointment).permit(:name, :phone, :email, :numpeople, :date, :timeslot, :user_id)
    end
end
