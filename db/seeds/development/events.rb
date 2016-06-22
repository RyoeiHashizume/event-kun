
0.upto(2) do |i|
Event.create(
  event_name: "event#{i}",
  event_time: "2016-06-22",
  event_place: "aaaaa",
  event_contents: "ららら",
  event_money: 9000,
  event_numofpeople: 30,
  event_deadline: "2019-04-24",
  event_kanji_id: 3
  )
end