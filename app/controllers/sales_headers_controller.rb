class SalesHeadersController < ApplicationController

  def index
    @sales_headers = SalesHeader.all
  end

  def show
    @sales_header = SalesHeader.find(params[:id])
  end

  def new
    @sales_header = SalesHeader.new
    1.times do
      @menus = @sales_header.menus.build
      4.times do |n|
        @sales_line = @menus.sales_lines.build
        case n
          when 0 
            @sales_line.type = 'Sandwich'
          when 1,2
            @sales_line.type = 'Ingredient'
          when 3
            @sales_line.type = 'Drink'
        end 
      end
    end
    
  end

  def edit
    @sales_header = SalesHeader.find(params[:id])
  end

  def create
    @sales_header = SalesHeader.new(params[:sales_header])

    if @sales_header.save
        redirect_to @sales_header, notice: 'Sales header was successfully created.'
    else
        render action: "new"
    end
  end

  def update
    @sales_header = SalesHeader.find(params[:id])

    if @sales_header.update_attributes(params[:sales_header])
      redirect_to @sales_header, notice: 'Sales header was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @sales_header = SalesHeader.find(params[:id])
    @sales_header.destroy
    redirect_to sales_headers_url
  end

end
