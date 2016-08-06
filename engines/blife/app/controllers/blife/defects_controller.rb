require_dependency "blife/application_controller"

module Blife
  class DefectsController < ApplicationController
    before_action :set_defect, only: [:show, :edit, :update, :destroy]
  
    # GET /defects
    def index
      @defects = Defect.all
    end

    # GET /defects/1
    def show
    end

    # GET /defects/new
    def new
      @defect = Defect.new()
    end

    # GET /defects/1/edit
    def edit
    end

    # POST /defects
    def create
      require 'pry'
     binding.pry
      @defect = Defect.new(defect_params)
     
      if @defect.save
      
        redirect_to @defect, notice: 'Defect was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /defects/1
    def update
      if @defect.update(defect_params)
        redirect_to @defect, notice: 'Defect was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /defects/1
    def destroy
      @defect.destroy
      redirect_to defects_url, notice: 'Defect was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_defect
        @defect = Defect.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def defect_params
        params.require(:defect).permit(:summary, :description, :expected, :actual, :steps_to_reproduce, :blife_severity_id, :blife_priority_id)
      end
      
      def priority_options
        Priority.all.map{|p| [p.id,p.name]}
      end
      
      def severity_options
        Severity.all.map{|s| [s.id,s.name]}
      end
  end
end
