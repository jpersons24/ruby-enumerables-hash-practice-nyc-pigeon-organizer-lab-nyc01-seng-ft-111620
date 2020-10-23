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



def nyc_pigeon_organizer(data) # define variable that takes nested hash as argument
  # write your code here!
  new_hash = {} # set variable new_hash equal to an empty hash
  data.each do |key1, hash|       # iterating over first level of nested hash, passing the key/value pair as arguments
    hash.each do |key2, array|    # iterating over second level of nested hash, passing key/value pair as arguments
      array.each do |name|        # iterating over the array contained in the deepest level of the nested hash
        if !new_hash.has_key?(name) # if new_hash does not have a key (name)
          new_hash[name] = {} # sets [name] as first level of key in new_hash
        end

        if !new_hash[name].has_key?(key1) # if new_hash[name] does not have a key with the value of key1
          new_hash[name][key1] = [] # new_hash[name][property] is set equal to an empty array
        end

        if !new_hash[name][key1].include?(key2) # if new_hash[name][property] includes a value equal to key2
          new_hash[name][key1] << key2.to_s # convert value of key2 into a string and shovel into empty array new_hash[name][property]
        end
      end
    end
  end
  new_hash # returns new hash after all iteration is done
end

# p nyc_pigeon_organizer(pigeon_data)


# {"Theo"=>{:color=>["purple", "grey"], :gender=>["male"], :lives=>["Subway"]}, "Peter Jr."=>{:color=>["purple", "grey"], :gender=>["male"], :lives=>["Library"]}, "Lucky"=>{:color
# =>["purple"], :gender=>["male"], :lives=>["Central Park"]}, "Ms. K"=>{:color=>["grey", "white"], :gender=>["female"], :lives=>["Central Park"]}, "Queenie"=>{:color=>["white", "b
# rown"], :gender=>["female"], :lives=>["Subway"]}, "Andrew"=>{:color=>["white"], :gender=>["male"], :lives=>["City Hall"]}, "Alex"=>{:color=>["white", "brown"], :gender=>["male"]
# , :lives=>["Central Park"]}}
