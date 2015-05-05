class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]

  # GET /services
  # GET /services.json
  def index
    if session[:user]
      @user = session[:user]
      @user_logged = @user["name"]

      else
      redirect_to(login_path) 
    end
    @services = Service.paginate(:page => params[:page], :per_page => 2)
  end

  # GET /services/1
  # GET /services/1.json
  def show
    if session[:user]
      @user = session[:user]
      @user_logged = @user["name"]
      else
      redirect_to(login_path) 
    end
  end

  # GET /services/new
  def new
    if session[:user]
      @user = session[:user]
      @user_logged = @user["name"]
      puts session[:user]
      puts Time.now - 86400
      @t = Time.now - 86400
      puts @t.strftime("%A")

      else
      redirect_to(login_path) 
    end
    @service = Service.new
  end

  # GET /services/1/edit
  def edit
  end

  # POST /services
  # POST /services.json
  def create
 
    @service = Service.new(service_params)

    ContactMailer.contact_message(session[:user]).deliver_now
    
    respond_to do |format|
      if @service.save
        format.html { redirect_to services_url, notice: 'Serviço cadastrado com sucesso!' }
        format.json { render :show, status: :created, location: @service }
      else
        format.html { render :new }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /services/1
  # PATCH/PUT /services/1.json
  def update
    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to services_url, notice: 'Serviço cadastrado com sucesso!' }
        format.json { render :show, status: :ok, location: @service }
      else
        format.html { render :edit }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /services/1
  # DELETE /services/1.json
  def destroy
    @service.destroy
    respond_to do |format|
      format.html { redirect_to services_url, notice: 'Serviço cadastrado com sucesso!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_params
      params.require(:service).permit(:user_id, :bk_web, :bk_glpi, :bk_diarias, :bk_ldap, :bkp_dns, :bk_pagina, :bk_mentor, :bk_dhcp, :bk_opera, :bk_abacus, :bk_sisconsig, :bk_antivirus, :bk_sigadaer, :bk_email, :bk_atis, :ck_sala, :ck_xen, :ck_virtuais, :ck_intraer, :ck_internet, :ck_pagina, :ck_email, :ck_sigadaer, :ck_sims, :dia_semana, :alteracoes)
    end
end
