class CategoriesController < ApplicationController

  def category
    @category = Category.find_by(category: params[:category])
  end

end
