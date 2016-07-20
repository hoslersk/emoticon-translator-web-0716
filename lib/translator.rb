# require modules here
require 'yaml'
#thing = YAML.load_file('some.yml')
#yaml_lib = YAML.load_file('emoticons.yml')

def load_library(file)
  # code goes here
  yaml_lib = YAML.load_file(file)
  emoticons = {}
  emoticons["get_emoticon"] = {}
  emoticons["get_meaning"] = {}
  yaml_lib.each do |meaning, emoticon_arr|
    emoticons["get_meaning"][emoticon_arr[1]] = meaning
    emoticons["get_emoticon"][emoticon_arr[0]] = emoticon_arr[1]
  end
  return emoticons
end

def get_japanese_emoticon(file, emoticon)
  # code goes here
  emoticons = load_library(file)
  if emoticons["get_emoticon"].has_key?(emoticon)
    return emoticons["get_emoticon"][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file, emoticon)
  # code goes here
  emoticons = load_library(file)
  if emoticons["get_meaning"].has_key?(emoticon)
    return emoticons["get_meaning"][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end
