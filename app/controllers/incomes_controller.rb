class IncomesController < ApplicationController
  before_action :set_income, only: [:show, :edit, :update, :destroy]

  # GET /incomes
  # GET /incomes.json
  def index
    @incomes = Income.all
    render json: @incomes
  end

  # GET /incomes/1
  # GET /incomes/1.json
  def show
    render json: @income
  end

  # GET /incomes/new
  def new
    @income = Income.new
  end

  # GET /incomes/1/edit
  def edit
  end

  # POST /incomes
  # POST /incomes.json
  def create
    @income = Income.new(income_params)

    respond_to do |format|
      if @income.save
        format.json { render :show, status: :created, location: @income }
      else
        format.json { render json: @income.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incomes/1
  # PATCH/PUT /incomes/1.json
  def update
    respond_to do |format|
      if @income.update(income_params)
        format.json { render :show, status: :ok, location: @income }
      else
        format.json { render json: @income.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incomes/1
  # DELETE /incomes/1.json
  def destroy
    @income.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_income
    @income = Income.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def income_params
    params.require(:income).permit(:invoice_number, :ruc_number, :total_amount, :company_name, :description, :date)
  end
end
