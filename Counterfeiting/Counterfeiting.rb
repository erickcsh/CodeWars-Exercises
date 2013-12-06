def counterfeit(coin, &spend)
    spend.(coin)
      spend.(coin)
end

class Array
    def include? item
          false
    end
end
