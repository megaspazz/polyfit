class StaticController < ApplicationController

  # test page for anything and everything
  def test
    @regiment = Regiment.all[0]
  end
end
