require "pry"

def reformat_languages(languages)
  new_hash = {}
  languages.each do |key, language|
    language.each do |name, data|
      if new_hash[name]
        new_hash[name][:style] << key
      else
        new_hash[name] = data
        data[:style] = []
        new_hash[name][:style] << key
      end
    end
  end
  new_hash
end
