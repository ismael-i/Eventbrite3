class EventValidator < ActiveModel::Validator
    def validate(record)
        if record.start_date < DateTime.now
            record.errors[:start_date] << "La date est déja passé"
        end 
        if record.duration % 5 != 0
            record.errors[:duration] << "Mettez chiffre multiple de 5"
        end
        if record.title.length < 5 || record.title.length > 140
            record.errors[:title] << "Mettez un caractere 5 à 140"
        end
        if record.description.length < 20 || record.description.length > 1000
            record.errors[:description] << "La description est entre 20  à 1000 caractere "
        end
         if record.price < 1 
            record.errors[:price] << "Il n'y a pas d'evenement gratuit "
         end
         if record.price > 1000 
            record.errors[:price] << "prix trop élevé"
         end
    end
end