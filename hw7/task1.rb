def login_generate
    login = ''
    upcase_chars ='ABCDEFGHJKMLPQRSTUWXYZ'
    login << upcase_chars[rand(upcase_chars.size)]
    lenght = rand(1..20)
    chars = 'abcdefghjkrpqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ0123456789'
    lenght.times { login << chars[rand(chars.size)] }
    return login
  end

puts login_generate
