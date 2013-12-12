class Hash
  def get_value( default, *args )
    return default if args.empty?
    value = get_hash_of_hash_value(args)
    value.nil? ? default : value 
  end
  
  def get_hash_of_hash_value(args)
  args.reduce(self) do |acc, key| break unless acc.is_a?(Hash)
                                  acc = acc[key]
                                  acc
    end
  end 
end
