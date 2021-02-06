['Week 1', 'Week 2'].each do |name|
  Game.where(name: name).first_or_create!
end
