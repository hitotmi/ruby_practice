# frozen_string_literal: true

# equal?メソッドは2つのオブジェクトが完全に同じオブジェクトでない場合falseを返す
a = 'abc'
b = 'abc'
p a.equal?(b)

# c が a と同じオブジェクトを参照しているので、a.equal?(c) は true
c = a
p a.equal?(c)

#==はオブジェクトの内容が等しいかどうかを判定
p 1 == 1.0

# eql?メソッドはより厳格な等判定をする
# 一方は整数であり、他方は浮動小数点数であるためfalseを返す。
p 1.eql?(1.0)

p 1.eql?(1)
p 1.0.eql?(1.0)
