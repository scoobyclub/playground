class StimulusTutorialsController < ApplicationController
  before_action :set_stimulus_tutorial, only: %i[ show edit update destroy ]

  # GET /stimulus_tutorials or /stimulus_tutorials.json
  def index
    @stimulus_tutorials = StimulusTutorial.all
  end

  # GET /stimulus_tutorials/1 or /stimulus_tutorials/1.json
  def show
  end

  # GET /stimulus_tutorials/new
  def new
    @stimulus_tutorial = StimulusTutorial.new
  end

  # GET /stimulus_tutorials/1/edit
  def edit
  end

  # POST /stimulus_tutorials or /stimulus_tutorials.json
  def create
    @stimulus_tutorial = StimulusTutorial.new(stimulus_tutorial_params)

    respond_to do |format|
      if @stimulus_tutorial.save
        format.html { redirect_to stimulus_tutorial_url(@stimulus_tutorial), notice: "Stimulus tutorial was successfully created." }
        format.json { render :show, status: :created, location: @stimulus_tutorial }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @stimulus_tutorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stimulus_tutorials/1 or /stimulus_tutorials/1.json
  def update
    respond_to do |format|
      if @stimulus_tutorial.update(stimulus_tutorial_params)
        format.html { redirect_to stimulus_tutorial_url(@stimulus_tutorial), notice: "Stimulus tutorial was successfully updated." }
        format.json { render :show, status: :ok, location: @stimulus_tutorial }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @stimulus_tutorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stimulus_tutorials/1 or /stimulus_tutorials/1.json
  def destroy
    @stimulus_tutorial.destroy!

    respond_to do |format|
      format.html { redirect_to stimulus_tutorials_url, notice: "Stimulus tutorial was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stimulus_tutorial
      @stimulus_tutorial = StimulusTutorial.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stimulus_tutorial_params
      params.fetch(:stimulus_tutorial, {})
    end
end
