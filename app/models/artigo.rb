class Artigo < ApplicationRecord

    validates :nome, presence: true, length: {minimum:6, maximum:100}
    validates :descricao, presence: true, length: {minimum:10, maximum:100}
    
    
end
