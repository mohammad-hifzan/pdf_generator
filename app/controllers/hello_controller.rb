class HelloController < ApplicationController
  def index
  end

  def pdf_generator
    if request.format.pdf?
      render pdf: "blog",
             template: "hello/index",
             formats: [:html],
             disposition: "attachment" # Forces download
    else
      head :not_acceptable
    end
  end
end
