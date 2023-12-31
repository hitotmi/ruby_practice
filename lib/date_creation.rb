# frozen_string_literal: true

# パターンマッチ

require 'date'

records = [
  [2021],
  [2019, 5],
  [2017, 11, 25]
]

dates = records.map do |record|
  # in節のパターンはマッチさせたい配列の構造を表している
  case record
  in [y]
    Date.new(y, 1, 1)
  in [y, m]
    Date.new(y, m, 1)
  in [y, m, d]
    Date.new(y, m, d)
  end
end

dates.each do |date|
  puts date
end

# arrayパターン
puts(
  case [1, 2, 3]
  in [_, _, 3]
    'matched'
  end
)

puts(
  case [1, 2, 3]
  # 最初の要素1をマッチさせ、残りの部をrestに代入
  in [1, *rest]
    "rest=#{rest}"
  end
)

# valueパターン
country = 'Korea'

greeting = case country
           when 'japan'
             'こんにちは'
           when 'us'
             'Hello'
           when 'italy'
             'Ciao'
           end
# case文は、一致する条件がない場合nilが返る
p greeting

greeting = case country
           in 'japan'
             'こんにちは'
           in 'us'
             'Hello'
           in 'italy'
             'Ciao'
           end
# パターンマッチでは、いずれの条件もマッチしない場合エラーが発生する
p greeting

puts(
  case [1, 2, 3]
  in [_, _, 3]
    'matched'
  end
)
