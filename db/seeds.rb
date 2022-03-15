user = User.new
user.email = 'medico@mail.com'
user.name = 'Olivia'
user.lastname = 'Dermaglos'
user.password = 'Welcome1!'
user.password_confirmation = 'Welcome1!'
user.role = "medico"
user.save!

5.times do
    User.create(name: Faker::Name.name, lastname: Faker::Name.last_name, email: Faker::Internet.email, password: "paciente",password_confirmation:"paciente",role:"paciente", dob: Faker::Date.birthday(min_age: 18, max_age: 99))
end

2.times do
    Study.create(first_time: 1, second_time: 2, user: User.find(2))
end

p "#{User.count} usuarios creados"