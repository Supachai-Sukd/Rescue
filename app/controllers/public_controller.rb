class PublicController < ApplicationController
  def home
    raise STBError.new("hello, error")
    render json: { success: true, content: 'home' }
  end

  def about
    render json: { success: true, content: 'about' }
  end
end
