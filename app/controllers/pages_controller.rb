class PagesController < ApplicationController
  def home
  end

  def projects
  end

  def skills
  end

  def about
  end

  def contact
  end

  def download_pdf
    send_file(
      "#{Rails.root}/public/Neil Goodridge CV.pdf",
      filename: "Neil Goodridge CV.pdf",
      type: "application/pdf"
    )
  end

end
