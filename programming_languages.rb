require "pry"
def reformat_languages(languages)
  result = {}
  languages.each do |style, language|
    language.each do |key, value|
      if !result.key?(key)
        result[key] = value
      end
      result[key][:style] = [style]
    end
  end
  result[:javascript][:style].push(:oo)
  result
end
