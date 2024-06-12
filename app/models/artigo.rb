class Artigo < ApplicationRecord
    validates :nome, presence: true
    validates :descricao, presence: true
    
    
end
