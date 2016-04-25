# Alias Maker

# Must reverse name
# Must move vowels to next vowel
# Must move consonants to next consonant
# Must leave space as a space
# Must take into account edge cases
# Must store and display the name and codename into a hash

def alias_maker(name)
    codename = []
    vowels = 'aeio'
    consonants = 'bcdfghjklmnpqrstvwxy'
    name_original = name.downcase.split(' ').reverse.join(' ').chars
    name_original.each do |letter|
        if ['a','e','i','o'].include?(letter)
            vowel_index_no = vowels.index(letter) + 1
            codename << vowels[vowel_index_no]
        elsif letter.include?('u')
            codename << 'a'
        elsif letter.include?(' ')
            codename << ' '
        elsif letter.include?('z')
            codename << 'b'
        else
            consonants_index_no = consonants.index(letter) + 1
            codename << consonants[consonants_index_no]
        end
    end
    alias_final = codename.join('').split(' ')
    alias_final.each do |alias_letter|
        alias_letter.capitalize!
    end
    alias_final.join(' ')
end


puts "What is your original name, agent?"
name = gets.chomp
made_alias = alias_maker(name)
puts "This is your new name, agent."
p made_alias

secret_files = {}

secret_files[name] = made_alias
puts "#{secret_files[name]} is really #{secret_files.keys}"