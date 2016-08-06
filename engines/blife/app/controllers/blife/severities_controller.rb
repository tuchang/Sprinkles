require_dependency "blife/application_controller"

module Blife
  class SeveritiesController < ApplicationController
    before_action :set_severity, only: [:show, :edit, :update, :destroy]

    # GET /severities
    def index
      @severities = Severity.all
    end

    # GET /severities/1
    def show
    end

    # GET /severities/new
    def new
      @severity = Severity.new
    end

    # GET /severities/1/edit
    def edit
    end

    # POST /severities
    def create
      @severity = Severity.new(severity_params)

      if @severity.save
        redirect_to @severity, notice: 'Severity was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /severities/1
    def update
      if @severity.update(severity_params)
        redirect_to @severity, notice: 'Severity was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /severities/1
    def destroy
      @severity.destroy
      redirect_to severities_url, notice: 'Severity was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_severity
        @severity = Severity.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def severity_params
        params.require(:severity).permit(:name, :description)
      end
  end
end
