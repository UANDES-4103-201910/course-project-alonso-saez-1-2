class SuperAdminsController < ApplicationController
  before_action :set_super_admin, only: [:show, :edit, :update, :destroy]

  # GET /super_admins
  # GET /super_admins.json
  def index
    @super_admins = SuperAdmin.all
  end

  # GET /super_admins/1
  # GET /super_admins/1.json
  def show
  end

  # GET /super_admins/new
  def new
    @super_admin = SuperAdmin.new
  end

  # GET /super_admins/1/edit
  def edit
  end

  # POST /super_admins
  # POST /super_admins.json
  def create
    @super_admin = SuperAdmin.new(super_admin_params)

    respond_to do |format|
      if @super_admin.save
        format.html { redirect_to @super_admin, notice: 'Super admin was successfully created.' }
        format.json { render :show, status: :created, location: @super_admin }
      else
        format.html { render :new }
        format.json { render json: @super_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /super_admins/1
  # PATCH/PUT /super_admins/1.json
  def update
    respond_to do |format|
      if @super_admin.update(super_admin_params)
        format.html { redirect_to @super_admin, notice: 'Super admin was successfully updated.' }
        format.json { render :show, status: :ok, location: @super_admin }
      else
        format.html { render :edit }
        format.json { render json: @super_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /super_admins/1
  # DELETE /super_admins/1.json
  def destroy
    @super_admin.destroy
    respond_to do |format|
      format.html { redirect_to super_admins_url, notice: 'Super admin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_super_admin
      @super_admin = SuperAdmin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def super_admin_params
      params.require(:super_admin).permit(:profile_image, :nickname, :biography, :email, :password, :country, :city, :status, :gps_location)
    end
end
