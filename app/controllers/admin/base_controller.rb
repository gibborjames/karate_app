class Admin::BaseController < ApplicationController
  before_filter :authorize_admin!

  layout 'admin/application'

  def index
    binding.pry
  end
end
