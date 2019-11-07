class EventValidator < ActiveModel::Validator
    def validate(record)
       if  record.start_date < DateTime.now
        record.errors[:start_date]<< "Given date is passed"
       end
       if record.duration % 5 != 0
        record.errors[:duration] << "Duration should be a multiple of 5"
       end
       if record.price < 1 
        record.errors[:price] << "There's not FREE event"
       end
       if record.price > 1000 
        record.errors[:price] << "It's too expensive"
       end
       if record.title.length < 5 || record.title.length > 140
        record.errors[:title] << "title should be under 5 and 140 characters"
       end
       if record.description.length < 5 || record.description.length > 140
        record.errors[:description] << "description should be under 20 and 1000 characters"
       end
    end
end