# frozen_string_literal: true

# =~を使ってマッチしたか判別
require 'English'
if '123-4567' =~ /\d{3}-\d{4}/
  puts 'マッチしました'
else
  puts 'マッチしませんでした'
end

# !~を使ってマッチしなかった場合true,マッチした場合falseを返す
p 'abc' !~ /\d{3}-\d{4}/
p '123-4567' !~ /\d{3}-\d{4}/

# キャプチャに名前を付ける
text = '私の誕生日は1234年1月23日です'

m = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/.match(text)
p m[:year]
p m[:month]
p m[:day]
p m[2]

# 組み込み変数でマッチ結果を取得
text = '私の誕生日は1234年1月23日です'
text =~ /(\d+)年(\d+)月(\d+)日/

# MatchData オブジェクトを取得
p $LAST_MATCH_INFO

# マッチした部分全体を表示
p Regexp.last_match(0)

p Regexp.last_match(1)
p Regexp.last_match(2)
p Regexp.last_match(3)

# iオプションをつけると大文字小文字を区別しない
p 'HELLO' =~ /hello/i
p 'HELLO' =~ /hello/i
