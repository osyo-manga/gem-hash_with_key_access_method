require "hash_with_key_access_method/version"

module HashWithKeyAccessMethod
	def method_missing name, *args
		if name =~ /=$/
			self[name[0..-2].to_sym] = args[0]
		else
			super unless has_key?(name)
			self[name]
		end
	end
end

