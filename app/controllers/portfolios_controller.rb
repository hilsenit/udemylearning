class PortfoliosController < ApplicationController

def index
	@portfolios_items = Portfolio.all	
end	

def new
	@portfolio_item = Portfolio.new
end



def create 
	@portfolio_item = Portfolio.new(portfolio_params)

	respond_to do |format| 
		if @portfolio_item.save
			format.html { redirect_to portfolios_path , notice: "Your portfolio item was saved."}
		else
			format.html { render :new }			
		end
	end

end

def edit
	@portfolio_item = Portfolio.find(params[:id])		
end

def update
	@portfolio_item = Portfolio.find(params[:id])
	respond_to do |format|
		if @portfolio_item.update_attributes(portfolio_params)
			format.html { redirect_to portfolios_path, notice: "Item was succesfully created."}
		else
			format.html { render :edit }
		end 
	end
end

private 

def portfolio_params
	params.require(:portfolio).permit(:title, :subtitle, :body)
end

end
