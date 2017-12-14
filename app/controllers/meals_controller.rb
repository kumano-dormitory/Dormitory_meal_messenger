# coding: utf-8
class MealsController < ApplicationController
  before_action :set_meal, only: [:show, :edit, :update, :destroy]

  # GET /meals
  # GET /meals.json
  def index
    @meals = Meal.all
  end

  # GET /meals/1
  # GET /meals/1.json
  def show
  end

  # GET /meals/new
  def new
    @meal = Meal.new
  end

  # GET /meals/1/edit
  def edit
  end

  # GET /top
  def top
    @meal = Meal.todays_latest
  end
  
  # POST /meals
  # POST /meals.json
  def create
    @meal = Meal.new(meal_params)

    respond_to do |format|
      if @meal.save
        format.html { redirect_to @meal, notice: 'Meal was successfully created.' }
        format.json { render :show, status: :created, location: @meal }
      else
        format.html { render :new }
        format.json { render json: @meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meals/1
  # PATCH/PUT /meals/1.json
  def update
    respond_to do |format|
      if @meal.update(meal_params)
        format.html { redirect_to @meal, notice: 'Meal was successfully updated.' }
        format.json { render :show, status: :ok, location: @meal }
      else
        format.html { render :edit }
        format.json { render json: @meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meals/1
  # DELETE /meals/1.json
  def destroy
    @meal.destroy
    respond_to do |format|
      format.html { redirect_to meals_url, notice: 'Meal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_meal
    @meal = Meal.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def meal_params
    m_params =
      params.require(:meal).permit(:date,
                                   :time_zone_num,
                                   :menu,
                                   :soldout)

    m_params[:single_ticket_price] = single_ticket_price(m_params[:time_zone_num])
    m_params[:multi_ticket_price] = multi_ticket_price(m_params[:time_zone_num])
    m_params
  end

  def single_ticket_price(meal_time_zone_num)
    case meal_time_zone_num
    when 0 then
      Constants::BREAKFIRST_SINGLE_TICKET
    when 1 then
      Constants::LUNCH_SINGLE_TICKET
    when 2 then
      Constants::DINNER_SINGLE_TICKET
    end
  end

  def multi_ticket_price(meal_time_zone_num)
    case meal_time_zone_num
    when 0 then
      Constants::BREAKFIRST_MULTI_TICKET
    when 1 then
      Constants::LUNCH_MULTI_TICKET
    when 2 then
      Constants::DINNER_MULTI_TICKET
    end
  end
end
