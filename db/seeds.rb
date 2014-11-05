puts 'Delete User and roles'
User.delete_all
Role.delete_all

puts 'Create roles'

Role.create(name: :admin)



puts 'Create admin'

admin = User.create(email: "admin@example.com", password: "zaq12wsx");
admin.add_role :admin

# admin.confirmed_at = Time.no.
# admin.save

