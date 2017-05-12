Watch.destroy_all
User.destroy_all

puts "Adding a user..."

user = User.create(email: "user@example.com", password: "password")

puts "User added"

puts "Adding watches..."

brands = %w(Rolex Accurist ADINA-Watches Adriatica A.L.B-Atelier Le-Brézéguet Alpina-Watches American Waltham-Watch-Company Andrea-Strehler Anonimo Ansonia-Clock-Company)
brands.each do |brand|
  watch = Watch.new(brand: "#{brand}", price: 150, gender: "man", mechanism: "automatic")
  watch.user = user
  watch.save
end

puts "#{brands.count} watches added!"
