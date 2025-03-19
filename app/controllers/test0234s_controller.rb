class Test0234sController < ApplicationController
  before_action :set_test0234, only: %i[ show edit update destroy ]

  # GET /test0234s or /test0234s.json
  def index
    @test0234s = Test0234.all
  end

  # GET /test0234s/1 or /test0234s/1.json
  def show
  end

  # GET /test0234s/new
  def new
    @test0234 = Test0234.new
  end

  # GET /test0234s/1/edit
  def edit
  end

  # POST /test0234s or /test0234s.json
  def create
    @test0234 = Test0234.new(test0234_params)

    respond_to do |format|
      if @test0234.save
        format.html { redirect_to @test0234, notice: "Test0234 was successfully created." }
        format.json { render :show, status: :created, location: @test0234 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @test0234.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test0234s/1 or /test0234s/1.json
  def update
    respond_to do |format|
      if @test0234.update(test0234_params)
        format.html { redirect_to @test0234, notice: "Test0234 was successfully updated." }
        format.json { render :show, status: :ok, location: @test0234 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @test0234.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test0234s/1 or /test0234s/1.json
  def destroy
    @test0234.destroy!

    respond_to do |format|
      format.html { redirect_to test0234s_path, status: :see_other, notice: "Test0234 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test0234
      @test0234 = Test0234.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def test0234_params
      params.fetch(:test0234, {})
    end
end
