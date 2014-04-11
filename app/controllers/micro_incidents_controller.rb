class MicroIncidentsController < ApplicationController
  before_action :set_micro_incident, only: [:show, :edit, :update, :destroy]

  # GET /micro_incidents
  # GET /micro_incidents.json
  def index
    @micro_incidents = MicroIncident.all
  end

  # GET /micro_incidents/1
  # GET /micro_incidents/1.json
  def show
  end

  # GET /micro_incidents/new
  def new
    @micro_incident = MicroIncident.new
  end

  # GET /micro_incidents/1/edit
  def edit
  end

  # POST /micro_incidents
  # POST /micro_incidents.json
  def create
    @micro_incident = MicroIncident.new(micro_incident_params)

    respond_to do |format|
      if @micro_incident.save
        format.html { redirect_to @micro_incident, notice: 'Micro incident was successfully created.' }
        format.json { render action: 'show', status: :created, location: @micro_incident }
      else
        format.html { render action: 'new' }
        format.json { render json: @micro_incident.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /micro_incidents/1
  # PATCH/PUT /micro_incidents/1.json
  def update
    respond_to do |format|
      if @micro_incident.update(micro_incident_params)
        format.html { redirect_to @micro_incident, notice: 'Micro incident was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @micro_incident.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micro_incidents/1
  # DELETE /micro_incidents/1.json
  def destroy
    @micro_incident.destroy
    respond_to do |format|
      format.html { redirect_to micro_incidents_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_micro_incident
      @micro_incident = MicroIncident.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def micro_incident_params
      params.require(:micro_incident).permit(:internal_malicious_ip, :internal_exploit_kit, :internal_malicious_url, :internal_malicious_resource, :internal_geographic_location, :internal_referrer_chian, :internal_mal_exe, :internal_mal_jar, :internal_mal_pdf, :internal_mal_xls, :internal_mal_doc, :internal_mal_eml, :incident_id)
    end
end
