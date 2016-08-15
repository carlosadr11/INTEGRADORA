class ProvidersController < ApplicationController
  before_action :set_provider, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /providers
  # GET /providers.json

  def index
    @providers = Provider.all.paginate(page: params[:page],per_page: 6)
    respond_to do |format|

      format.html
      format.csv{send_data @providers.to_csv }
      format.pdf do
        pdf = ProvidersPdf.new(@providers)
        send_data pdf.render, filename: 'providers.pdf',
                  type: 'application/pdf',
                  disposition: 'inline'
      end

    end
  end

  # GET /providers/1
  # GET /providers/1.json
  def show
  end

  # GET /providers/new
  def new
    @accion="Agregar Proveedor"
    @provider = Provider.new

  end

  # GET /providers/1/edit
  def edit
    @accion="Actualizar Proveedor"
  end

  # POST /providers
  # POST /providers.json
  def create
    @provider = Provider.new(provider_params)

    respond_to do |format|
      if @provider.save
        format.html { redirect_to @provider, notice: 'Provider was successfully created.' }
        format.json { render :show, status: :created, location: @provider }
      else
        format.html { render :new }
        format.json { render json: @provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /providers/1
  # PATCH/PUT /providers/1.json
  def update
    respond_to do |format|
      if @provider.update(provider_params)
        format.html { redirect_to @provider, notice: 'Provider was successfully updated.' }
        format.json { render :show, status: :ok, location: @provider }
      else
        format.html { render :edit }
        format.json { render json: @provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /providers/1
  # DELETE /providers/1.json
  def destroy
    @provider.destroy
    respond_to do |format|
      format.html { redirect_to providers_url, notice: 'Provider was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_provider
      @provider = Provider.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def provider_params
      params.require(:provider).permit(:nombre, :apellido, :domiciolio, :telefono, :email, :totalProductos, :fecha, :totalPago)
    end
end
