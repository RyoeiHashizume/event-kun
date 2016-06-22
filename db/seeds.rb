# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

0.upto(2) do |i|
User.create(
  user_name: "aaaa#{i}",
  email: "bbbb#{i}@aaaa",
  password: "#{i}#{i}#{i}#{i}#{i}#{i}",
  company_number: "#{i}#{i}#{i}#{i}#{i}#{i}",
  kanji: if i == 1 then true else false end,
  gender: if i == 1 then true else false end
  )
end

table_names = %w(events)
table_names.each do |table_name|
  path = Rails.root.join("db/seeds", Rails.env, table_name + ".rb")
  if File.exist?(path)
    puts "Creating #{table_name} ..."
    require path
  end
end





