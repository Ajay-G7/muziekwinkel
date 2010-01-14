class SearchController < ApplicationController
  layout 'standard'

  def index
    [:artiest, :album, :song].each { |n|
        if params[n].nil? or params[n].empty?
          params[n] = '%'
        else
          params[n] = '%' + params[n] + '%'
        end
    }

    if params[:song] == '%'
      @products = Album.find(:all, :conditions => ['titel like ? AND artiest like ?', params[:album], params[:artiest]])
      @query_type = :album
    else
      @products = Nummer.find(:all, :conditions => ['titel like ? AND artiest like ?', params[:song], params[:artiest]])
      @query_type = :song
    end

    respond_to do |format|
      format.html
    end
  end

end
