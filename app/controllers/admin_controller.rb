class AdminController < ApplicationController
before_action :authenticate_user!
before_action :check_admin


  def index

  end

  def show

  end

  def new

  end

  def create

  end

private

  def check_admin
    current_user.admin?
  end
end
