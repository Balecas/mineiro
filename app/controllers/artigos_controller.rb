class ArtigosController < ApplicationController

    def show
      @artigo = Artigo.find(params[:id])
    end

    def index
        @artigos = Artigo.all
    end


end