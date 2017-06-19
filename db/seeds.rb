# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 初期化
con = ActiveRecord::Base.connection
con.execute("delete from users")
con.execute("delete from topics")

# 管理者用アカウントを作成する
user = User.new
user.email = "fortest@shimura-hokuto.com"
user.name  = "管理者用アカウント"
user.
# テスト用アカウントを作成する
# topicを一つ用意する
# commentを一つ用意する