#Short version after reviewing several student solutions such as Corey Kazaks
def caesar_cipher message, shift_factor
	alphabet = Array("a".."z")
	shift_factor = shift_factor % 26
	shifted_alphabet  = alphabet[shift_factor.. -1].join + alphabet[0..shift_factor].join
	message = message.tr(alphabet.join, shifted_alphabet)
	message = message.tr(alphabet.join.upcase, shifted_alphabet.upcase)
	message
end

#long version I did on my own
def caesar_cipher_long_original message, shift_factor
	encoded = ""
	message.each_byte do |byte|
		ascii = byte.ord
		#if it is lower case
		shifted = ascii+shift_factor
		if is_lower? ascii 
			if is_lower? shifted
				encoded += shifted.chr
			else 
				encoded += (shifted-26).chr
			end
		elsif is_upper? ascii 
			if is_upper? shifted
				encoded += shifted.chr
			else 
				encoded += (shifted-26).chr
			end
		#if it is not a letter just return it
		else 
			encoded += ascii.chr
		end	
	end
	return encoded

end

def is_lower? ascii
	ascii>="a".ord && ascii<="z".ord
end

def is_upper? ascii
	ascii>="A".ord && ascii<="Z".ord
end