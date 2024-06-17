class ArtigosController < ApplicationController

    def show
      @artigo = Artigo.find(params[:id])
    end

    def index
        @artigos = Artigo.all
    end

    def new
      @artigo = Artigo.new 

    end


    def edit
      @artigo = Artigo.find(params[:id])

    end


    def create
      @artigo = Artigo.new(params.require(:artigo).permit(:nome, :descricao))
      if @artigo.save 
        flash[:notice] = "Artigo criado com sucesso"
        redirect_to @artigo
      else
        render :new, status: :unprocessable_entity
      end
    end


    def update
      @artigo = Artigo.find(params[:id])
      if @artigo.update(params.require(:artigo).permit(:nome, :descricao))
        flash[:notice] = "O Artigo foi editado com sucesso"
        redirect_to @artigo
      else
        rende :edit
      end
    end

    def destroy
      @artigo = Artigo.find(params[:id])
      @artigo.destroy
      redirect_to artigos_path

    end

end