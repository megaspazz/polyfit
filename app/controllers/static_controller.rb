class StaticController < ApplicationController

  # test page for anything and everything
  def test
    @regiment = Regiment.all[0]
  end

  def about

  end

  def copyright

  end

  def privacy

  end

  def terms

  end

  def faq

  end

  def support

  end
  
end
