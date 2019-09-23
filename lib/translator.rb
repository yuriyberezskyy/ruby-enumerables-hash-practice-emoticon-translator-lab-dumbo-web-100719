# require modules here

def load_library(emoticon_file)
    emoticons = YAML.load_file('./lib/emoticons.yml')

   emoticon_lib = {'get_meaning'  => {},
                  'get_emoticon' => {} }

   emoticons.each do |meaning, value|  # meaning= "surprised"   # value= [":o", "o_O"]  <-(e,j)
    english = value[0]
    japanese = value[1]
    emoticon_lib['get_meaning'][japanese] = meaning
    emoticon_lib['get_emoticon'][english] = japanese
  end
  emoticon_lib
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end