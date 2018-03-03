namespace :pop do
  desc "Populating Games"
  task user: :environment do
    20.times do
      user = User.create(username: Faker::DrWho.character, email: Faker::Internet.email, password: Faker::DrWho.catch_phrase)
      2.times { Playlist.create(name: Faker::DrWho.specie, description: Faker::DrWho.quote)}
    end
  end

end
