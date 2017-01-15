# Hack - add as extension/include on specific structures 
# http://stackoverflow.com/questions/28313102/ruby-serialize-struct-with-json
# https://ruhe.tumblr.com/post/565540643/generate-json-from-ruby-struct
class Struct
  def to_map
    map = Hash.new
    self.members.each { |m| map[m] = self[m] }
    map
  end

  def to_json(*a)
    to_map.to_json(*a)
  end
end
