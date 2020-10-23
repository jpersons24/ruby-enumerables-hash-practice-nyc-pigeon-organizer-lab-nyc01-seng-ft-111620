pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}



def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data.each do |property, hash|
    hash.each do |attribute, array|
      array.each do |name|
        if !new_hash.has_key?(name)
          new_hash[name] = {}
        end

        if !new_hash[name].has_key?(property)
          new_hash[name][property] = []
        end

        if !new_hash[name][property].include?(attribute)
          new_hash[name][property] << attribute.to_s
        end
      end
    end
  end
  pp(new_hash)
end

# p nyc_pigeon_organizer(pigeon_data)


# {"Theo"=>{:color=>["purple", "grey"], :gender=>["male"], :lives=>["Subway"]}, "Peter Jr."=>{:color=>["purple", "grey"], :gender=>["male"], :lives=>["Library"]}, "Lucky"=>{:color
# =>["purple"], :gender=>["male"], :lives=>["Central Park"]}, "Ms. K"=>{:color=>["grey", "white"], :gender=>["female"], :lives=>["Central Park"]}, "Queenie"=>{:color=>["white", "b
# rown"], :gender=>["female"], :lives=>["Subway"]}, "Andrew"=>{:color=>["white"], :gender=>["male"], :lives=>["City Hall"]}, "Alex"=>{:color=>["white", "brown"], :gender=>["male"]
# , :lives=>["Central Park"]}}
