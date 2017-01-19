class AttendeesController < ApplicationController
  def create
    # for each concert id
    # add current user to concert
    # current_user.concerts << concert
    # current_user.save
    render inline: "<%= debug params %>"
  end
end