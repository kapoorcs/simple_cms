class DemoController < ApplicationController
  def index
    # render(:action => 'hello') #depricated (do not use this)# confusing when the action is actually rendering something else like below
    # render(:template => 'demo/hello')
    #render('demo/hello')
    # render('hello')
    # redirect_to(:action => 'hello_other')
  end
  
  def hello 
    @array = [1,2,3,4,5]
    @id = params[:id].to_i
    @page = params[:page].to_i
    # render(:text => 'Hello Everyone')
    # redirect_to("http://www.venturepact.com")
  end 
  
  def hello_other 
    render(:text => 'Hello Everyone')
  end
end
