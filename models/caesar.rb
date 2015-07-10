def caesar_encrypt(k,target)
  final = Array.new
  
  if k.is_a? Integer
    target = target.chars.each do |char|
      case char
        when /[a-z]/
          final.push((char.ord + k).chr)
          if final[-1].ord > 'z'.ord
            final [-1] = (((final[-1].ord - 'z'.ord)+'a'.ord) - 1).chr
          end
        when /[A-Z]/
          final.push((char.ord + k).chr)
          if final[-1].ord > 'Z'.ord
            final [-1] = (((final[-1].ord - 'Z'.ord)+'A'.ord) - 1).chr
          end
        when /[^a-zA-Z0-9]/
          final.push(char)
        end
      end
    
  final = final.join("")
    
  else
    "The first argument must be an integer."
  end
end

def caesar_decrypt(k,target)
  final = Array.new
  
  if k.is_a? Integer
    target = target.chars.each do |char|
      case char
        when /[a-z]/
          final.push((char.ord - k).chr)
          if final[-1].ord < 'a'.ord
            final [-1] = (((final[-1].ord + 'z'.ord)-'a'.ord) + 1).chr
          end
        when /[A-Z]/
          final.push((char.ord - k).chr)
          if final[-1].ord < 'A'.ord
            final [-1] = (((final[-1].ord + 'A'.ord)-'Z'.ord) + 1).chr
          end
        when /[^a-zA-Z0-9]/
          final.push(char)
        end
      end
    
  final = final.join("")
    
  else
    "The first argument must be an integer."
  end
end
