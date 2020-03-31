require 'yaml'
require 'date'

=begin
my_arr = ['first string','second string','third string']

test_string = my_arr.to_yaml

filename = 'storage.txt'

File.open filename, 'w' do |f|
    f.write test_string
end

read_string = File.read filename
read_array = YAML::load read_string

puts( read_string == test_string )
puts( read_array == my_arr )

puts puts read_string

puts puts read_array


=end

def yaml_save object, filename

    File.open filename,'w' do |f|

        f.write(object.to_yaml)

    end

end

def yaml_load filename

    yaml_string = File.read filename
    
    YAML::load yaml_string
    
end


arr = ['ja sam ja','jeremija','prezivam se...nemam pojma','text' => ['imam','novi','niz']]

yaml_save arr,'storage.txt'

puts (yaml_load 'storage.txt')

puts Dir['*rb']

puts Time.gm(2020, 3, 31)

def born_seconds

   moment = DateTime.rfc3339('1989-05-03T03:45:00Z').to_time.to_i

   puts moment

   this_moment = Time.now.to_i

   old_you_are = this_moment - moment

   puts old_you_are/60/60/24/30/12

   puts old_you_are

   until_billion = 1000000000-old_you_are

   in_future_billion = Time.now + until_billion

   puts in_future_billion



end

born_seconds