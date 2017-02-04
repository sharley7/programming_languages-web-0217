def reformat_languages(languages)
  new_hash = {}

  languages.each do | lang_type, lang_name |
    lang_name.each do | lang, att |
      att.each do | type, data |

        if new_hash[lang] == nil
          new_hash[lang] = {}
        end

        new_hash[lang][:style]||= []
        new_hash[lang][:style] << lang_type

        if new_hash[lang][type] == nil
             new_hash[lang][type] = data
        end
              end
            end
          end
          new_hash
        end
