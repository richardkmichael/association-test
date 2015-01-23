class AssemblySequencesController < ApplicationController
  before_action :set_assembly_sequence, only: [:show, :edit, :update, :destroy]

  # GET /assembly_sequences
  # GET /assembly_sequences.json
  def index
    @assembly_sequences = AssemblySequence.all
  end

  # GET /assembly_sequences/1
  # GET /assembly_sequences/1.json
  def show
  end

  # GET /assembly_sequences/new
  def new
    @assembly_sequence = AssemblySequence.new
  end

  # GET /assembly_sequences/1/edit
  def edit
  end

  # POST /assembly_sequences
  # POST /assembly_sequences.json
  def create
    @assembly_sequence = AssemblySequence.new(assembly_sequence_params)

    respond_to do |format|
      if @assembly_sequence.save
        format.html { redirect_to @assembly_sequence, notice: 'Assembly sequence was successfully created.' }
        format.json { render :show, status: :created, location: @assembly_sequence }
      else
        format.html { render :new }
        format.json { render json: @assembly_sequence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assembly_sequences/1
  # PATCH/PUT /assembly_sequences/1.json
  def update
    respond_to do |format|
      if @assembly_sequence.update(assembly_sequence_params)
        format.html { redirect_to @assembly_sequence, notice: 'Assembly sequence was successfully updated.' }
        format.json { render :show, status: :ok, location: @assembly_sequence }
      else
        format.html { render :edit }
        format.json { render json: @assembly_sequence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assembly_sequences/1
  # DELETE /assembly_sequences/1.json
  def destroy
    @assembly_sequence.destroy
    respond_to do |format|
      format.html { redirect_to assembly_sequences_url, notice: 'Assembly sequence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assembly_sequence
      @assembly_sequence = AssemblySequence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assembly_sequence_params
      params.require(:assembly_sequence).permit(:car_id, :part_id, :sequence)
    end
end
