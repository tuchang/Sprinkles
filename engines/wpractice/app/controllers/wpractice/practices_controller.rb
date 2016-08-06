require_dependency "wpractice/application_controller"

module Wpractice
  class PracticesController < ApplicationController
    before_action :set_practice, only: [:show, :edit, :update, :destroy]

    # GET /practices
    def index
      @practices = Practice.all
    end

    # GET /practices/1
    def show
    end

    # GET /practices/new
    def new
      @practice = Practice.new
    end

    # GET /practices/1/edit
    def edit
    end

    # POST /practices
    def create
      @practice = Practice.new(practice_params)

      if @practice.save
        redirect_to @practice, notice: 'Practice was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /practices/1
    def update
      if @practice.update(practice_params)
        redirect_to @practice, notice: 'Practice was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /practices/1
    def destroy
      @practice.destroy
      redirect_to practices_url, notice: 'Practice was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_practice
        @practice = Practice.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def practice_params
        params.require(:practice).permit(:name, :description)
      end
  end
end
