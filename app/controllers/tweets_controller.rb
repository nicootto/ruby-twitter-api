class TweetsController < ApplicationController
  include TweetsHelper

  def show
    @tweets = client.user_timeline('NicolasOttonel6')
    puts client.object_id
    puts client.object_id
  end
end
