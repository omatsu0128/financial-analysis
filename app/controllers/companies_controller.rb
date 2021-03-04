class CompaniesController < ApplicationController
  def index
    @companies = Company.all.order(created_at: :desc)
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to root_path, notice: "企業情報を作成しました"
    else
      render :new
    end
  end

  def show
    @company = Company.find(params[:id])
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])
    if @company.update(company_params)
      redirect_to company_path(@company)
    else
      render :edit
    end
  end

  def destroy
    company = Company.find(params[:id])
    company.destroy
  end

  private

  def company_params
    params.require(:company).permit(:name, :prefecture_id, :industry_id, :company_size_id, :information)
  end

end
