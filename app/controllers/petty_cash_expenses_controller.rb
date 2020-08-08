class PettyCashExpensesController < ApplicationController
  before_action :set_petty_cash_expense, only: [:show, :edit, :update, :destroy]

  # GET /petty_cash_expenses
  # GET /petty_cash_expenses.json
  def index
    @petty_cash_expenses = PettyCashExpense.all
    render json: @petty_cash_expenses
  end

  # GET /petty_cash_expenses/1
  # GET /petty_cash_expenses/1.json
  def show
    render json: @petty_cash_expense
  end

  # GET /petty_cash_expenses/new
  def new
    @petty_cash_expense = PettyCashExpense.new
  end

  # GET /petty_cash_expenses/1/edit
  def edit
  end

  # POST /petty_cash_expenses
  # POST /petty_cash_expenses.json
  def create
    @petty_cash_expense = PettyCashExpense.new(petty_cash_expense_params)

    respond_to do |format|
      if @petty_cash_expense.save
        format.json { render :show, status: :created, location: @petty_cash_expense }
      else
        format.json { render json: @petty_cash_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /petty_cash_expenses/1
  # PATCH/PUT /petty_cash_expenses/1.json
  def update
    respond_to do |format|
      if @petty_cash_expense.update(petty_cash_expense_params)
        format.json { render :show, status: :ok, location: @petty_cash_expense }
      else
        format.json { render json: @petty_cash_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /petty_cash_expenses/1
  # DELETE /petty_cash_expenses/1.json
  def destroy
    @petty_cash_expense.destroy
     head :no_content 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_petty_cash_expense
      @petty_cash_expense = PettyCashExpense.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def petty_cash_expense_params
      params.require(:petty_cash_expense).permit(:invoice_number, :total_amount, :expense_date, :description, :paid_to)
    end
end
