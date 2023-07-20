class NikahCertificatesController < ApplicationController
  before_action :set_nikah_certificate, only: %i[ show edit update destroy ]

  # GET /nikah_certificates or /nikah_certificates.json
  def index
    @nikah_certificates = NikahCertificate.all
    respond_to do |format|
      format.html
      format.pdf do
         render template: "nikah_certificates/index.html.erb",
                     pdf: "nikah_certificates: #{@nikah_certificates.count}"
                   end
    end
  end

  # GET /nikah_certificates/1 or /nikah_certificates/1.json
  def show
     respond_to do |format|
      format.html
      format.pdf do
        # Rails 6:
        render template: "nikah_certificates/show.html.erb",
               pdf: "nikah_certificate ID: #{@nikah_certificate.id}"

      end
    end
  end

  def pdf_download
    @nikah_certificates = NikahCertificate.all
     @nikah_certificate = NikahCertificate.find(params[:id])
        respond_to do |format|
      format.html
      format.pdf do
        # Rails 6:
        render template: "nikah_certificates/pdf_download.html.erb",
               pdf: "nikah_certificate ID: #{@nikah_certificate.id}"
      end
    end
  end

  # GET /nikah_certificates/new
  def new
    @nikah_certificate = NikahCertificate.new
  end

  # GET /nikah_certificates/1/edit
  def edit
  end

  # POST /nikah_certificates or /nikah_certificates.json
  def create
    @nikah_certificate = NikahCertificate.new(nikah_certificate_params)

    respond_to do |format|
      if @nikah_certificate.save
        format.html { redirect_to nikah_certificate_url(@nikah_certificate), notice: "Nikah certificate was successfully created." }
        format.json { render :show, status: :created, location: @nikah_certificate }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @nikah_certificate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nikah_certificates/1 or /nikah_certificates/1.json
  def update
    respond_to do |format|
      if @nikah_certificate.update(nikah_certificate_params)
        format.html { redirect_to nikah_certificate_url(@nikah_certificate), notice: "Nikah certificate was successfully updated." }
        format.json { render :show, status: :ok, location: @nikah_certificate }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @nikah_certificate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nikah_certificates/1 or /nikah_certificates/1.json
  def destroy
    @nikah_certificate.destroy

    respond_to do |format|
      format.html { redirect_to nikah_certificates_url, notice: "Nikah certificate was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nikah_certificate
      @nikah_certificate = NikahCertificate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nikah_certificate_params
      params.require(:nikah_certificate).permit(:bride_name, :groom_name)
    end
end
