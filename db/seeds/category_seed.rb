Category::NAMES.keys.each do |name|
  Category.where(name: name).first_or_create!
end
