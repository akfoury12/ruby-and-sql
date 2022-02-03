# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/1-models.rb

# **************************
# Don't change or move
Contact.destroy_all
# **************************

# 1a. check out the schema file

# create_table "contacts", force: :cascade do |t|
#     t.string "first_name"
#     t.string "last_name"
#     t.string "email"
#     t.string "phone_number"
#     t.integer "company_id"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end


# 1b. check out the model file

# 2. create 1-2 new contacts for each company (they can be made up)

values = {first_name: "Alex", last_name: "Kfoury", email: "akfoury@alixpartners.com", phone_number: "6302928921"}
contact = Contact.new(values)
contact.save

values = {first_name: "Elissa", last_name: "Rabin", email: "Elissa@PIE.ORG", phone_number: "6302928925"}
contact = Contact.new(values)
contact.save

# 3. write code to display how many contacts are in the database AND each contact's info (name, email), e.g.:

puts Contact.all.count
for a in Contact.all do
    puts a.first_name
    puts a.last_name
    puts a.email
end



# ---------------------------------
# Contacts: 4
# Andy Jassy - andy@amazon.com
# Craig Federighi - craig@apple.com
# Elon Musk - elon@tesla.com
# Tim Cook - tim@apple.com
