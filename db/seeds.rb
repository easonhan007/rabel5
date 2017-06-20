# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

default_conf = YAML.load(File.read(File.join(Rails.application.root, 'config', 'app.yml')))

default_conf['defaults'].each do |k, v|
  puts "Creating config #{k}: #{v}"
  Siteconf.find_or_create_by({var: k, value: v})
end

def create_seeds_data
  password = 'project_rabel5'
  user = User.create(:nickname => 'root', :email => 'root@rabelapp.com', :password => password, :password_confirmation => password)
  plane = Plane.create(:name => '生活')
  node = plane.nodes.create(:name => '电影', :key => 'movie',
                     :introduction => '一起看电影',
                     :custom_html => '<strong>推荐书目</strong>')
  topic = node.topics.new({:title => '那继续晒一下韩国电影吧', :content => '至少这个世纪前十年棒子电影那是相当的强势啊，水准很高，精品很多啊。'})
  topic.user = user
  topic.hit = 1
  topic.save

  comment = topic.comments.new(:content => '大叔')
  comment.user = user
  comment.save

  user2 = User.create(:nickname => 'DHH', :email => 'dhh@example.com', :password => password, :password_confirmation => password)
  p2 = Plane.create(:name => 'Web框架')
  node2 = p2.nodes.create(:name => 'Rails 3', :key => 'rails3', :introduction => 'Ruby on Rails')
  topic2 = node2.topics.new(:title => 'Rails is not for beginners', :content => 'Rails is cool, but not for beginners')
  topic2.user = user2
  topic2.hit = 100
  topic2.save

  user3 = User.create(:nickname => 'Linus', :email => 'linus@linux.org', :password => password, :password_confirmation => password)
  p3 = Plane.create(:name => 'Web基础架构')
  node3 = p3.nodes.create(:name => 'C', :key => 'c_programming')
  topic3 = node3.topics.new(:title => 'Linux 3.0 released')
  topic3.user = user3
  topic3.save

  Page.create(:key => 'about', :title => '关于我们', :content => '这是一个用rabel5搭建的现代社区')
end

create_seeds_data unless Rails.env.production?
