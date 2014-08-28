
# Create Users
5.times do |i|
  User.create!(name: "Test User #{i}", email: "foo#{i}@bar.com", password: 'foo')
end
User.create!(name: "JD Pagano", email: "foo@bar.com", admin: true, password: 'foo')

# Create PoliceDepartments and Police
3.times do |i|
  u = PoliceDepartment.create!(name: "Department #{i}", address: "123 Foo street", zipcode: "20903", city: "Washington", state: "Zipcode", state_department_id: i)
  4.times do |j|
    Police.create!(badge_id: "000123#{i}#{j}", name: "John Smith#{i}#{j}", police_department_id: u.id)
  end
end

#Create Reports
15.times do |i|
  r = Report.new(description: "Report #{i} about an interaction with a police man",
                     address: "555 Main St", city: "Baltimore", state: "MD", rating: "#{10-i}.#{10-i}".to_f.abs, zipcode: "12345", user_id: User.find(i%3+1).id)

  3.times do |j|
    r.police << Police.find(j%3+1)
    r.save!
  end
end
