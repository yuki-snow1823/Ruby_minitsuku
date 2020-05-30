# コンテンツ概要
# コード例で呼び出しているbuy_ticketsメソッドを定義しましょう。buy_ticketsメソッドの処理は、出力例から推測してください。

# この演習を回答するのに必要と思われる時間は、10分です。

# 演習
# コード例の実行結果が出力例のようになるよう、コード例の中で使われている「buy_tickets」メソッドを定義してください。

# コード例
buy_tickets("Sam", "Dave", "David")
buy_tickets("John", "Paul", "Ringo", "George")

# 出力例
# Buying a ticket for Dave.
# Buying a ticket for David.
# Buying a group ticket for John, Paul, Ringo, George.

def buy_tickets(*names)
  if names.length > 3
    puts "Buying a group ticket for #{names.join(", ")}."
  else
    names.each do |name|
      puts "Buying a ticket for #{name}."
    end
  end
end
