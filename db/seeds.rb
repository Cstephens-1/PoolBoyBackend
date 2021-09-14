puts "🌱 Seeding poolboys..."

C1 = Cleaner.create(name: "Joe")

O1 = Owner.create(name: "Sally")
O2 = Owner.create(name: "Bob")
O3 = Owner.create(name: "Claire")
O4 = Owner.create(name: "Chris")

P1 = Pool.create(size: "small", times_cleaned: 0, cleaned: false, date_cleaned: Time.now, cleaner_id: C1.id, owner_id: O1.id)
P2 = Pool.create(size: "medium", times_cleaned: 0, cleaned: false, date_cleaned: Time.now, cleaner_id: C1.id, owner_id: O2.id)
P3 = Pool.create(size: "large", times_cleaned: 0, cleaned: false, date_cleaned: Time.now, cleaner_id: C1.id, owner_id: O3.id)
P4 = Pool.create(size: "medium", times_cleaned: 0, cleaned: false, date_cleaned: Time.now, cleaner_id: C1.id, owner_id: O4.id)


puts "✅ Done seeding!"


# t.string :size
      
# t.boolean :cleaned

# t.integer :times_cleaned

# t.datetime :date_cleaned

# t.belongs_to :cleaner
# t.belongs_to :owner