# コンテンツ概要
# コード例で生成している各オブジェクトごとにlifeメソッドを定義しましょう。
# lifeメソッドのおこなう処理は、コメントアウトされている出力例から推測してください。

# この演習を回答するのに必要と思われる時間は、10分です。

# 演習
# 以下のコードがコメント部分の通りの出力となるように、（A）の部分に当てはまる適切なコードを書いてください。

class Planet
  def life?
    puts "Who knows?"
  end
end
 
pluto = Planet.new()
earth = Planet.new()
mars = Planet.new()
 
# (A)
def earth.life?()
  puts "Positively!"
end
 
def pluto.life?()
  puts "Probably not."
end
 
pluto.life?()  #=> Probably not.
earth.life?()  #=> Positively!
mars.life?()   #=> Who knows?
