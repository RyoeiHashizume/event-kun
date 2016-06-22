
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

UserEvent.create(
  user_id: 1
  event_id: 1
 )