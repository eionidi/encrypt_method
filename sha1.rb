require 'digest'

puts 'Введите слово или фразу для шифрования:'
string = STDIN.gets.chomp

encrypt_method = ''

until([1,2].include?(encrypt_method)) do
  puts "\nКаким способом зашифровать:\n1. MD5\n2. SHA1"
  encrypt_method = STDIN.gets.chomp.to_i
end

puts "Вот что получилось:"

case encrypt_method
  when 1
    puts Digest::MD5.hexdigest(string)
  when 2
    puts Digest::SHA1.hexdigest(string)
end