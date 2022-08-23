User.destroy_all
Task.destroy_all
User.reset_pk_sequence
Task.reset_pk_sequence

puts "🌱 Seeding spices..."
User.create(
    user_name: "Yari"
)

categories = ["House", "Yard", "Groceries", "Park", "Pet"]

5.times do 
    Task.create(
        title: Faker::Lorem.sentence(word_count: 1),
        description: Faker::Lorem.sentence,
        category: categories.sample,
        user_id: 1
    )
end 
puts "✅ Done seeding!"
