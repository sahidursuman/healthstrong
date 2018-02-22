class FrontsController < ApplicationController
  layout "form"

  def Hospital
    render 'hospitals/new'
  end

  def Community
    render 'Hospitals/form'
  end
end
