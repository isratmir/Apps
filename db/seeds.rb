# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(email: 'admin@example.com', password: '123456', password_confirmation: '123456')

sites = ActiveSupport::JSON.decode(File.read('db/seeds/websites.json'))

sites.each do |site|
  Website.create!(title: site['title'], url: site['url'], description: site['description'], keywords: site['keywords'])
end


cats = [
        {title: "Государство"},
        {title: "Новости"},
        {title: "Хостинг"},
        {title: "Спецодежда"},
        {title: "PR, реклама и продвижение"},
        {title: "Ремонт дома"},
        {title: "Еда"},
        {title: "Металлоизделия"},
        {title: "Образование"},
        {title: "Создание сайтов"},
        {title: "Юридические услуги"},
        {title: "Блог"},
        {title: "Строительная компания"},
        {title: "Аренда недвижимости"},
        {title: "Дети"}
    ]

cats.map {|i| Category.create(i) }