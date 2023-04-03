class LRUCache

    def initialize(max_size)
        @max_size = max_size
        @cache_array = []


    end

    def count
        @cache_array.length
    # returns number of elements currently in cache
    end

    def add(ele)
        if @cache_array.include?(ele)
            # @cache_array.delete(ele)
            # @cache_array.push(ele)  
            self.exist(ele)   
        elsif @cache_array.length == @max_size 
            # @cache_array.shift
            # @cache_array.push(ele)
            self.extra(ele)
        else
            @cache_array.push(ele)
        end
    end

    def show
        print @cache_array
    end

    private
    # helper methods go here!
    def exist(ele)
        @cache_array.delete(ele)
        @cache_array.push(ele)
    end
    def extra(ele)
        @cache_array.shift
        @cache_array.push(ele) 
    end

end


johnny_cache = LRUCache.new(4)

johnny_cache.add("I walk the line")
johnny_cache.add(5)

johnny_cache.count # => returns 2

johnny_cache.add([1,2,3])
johnny_cache.add(5)
johnny_cache.add(-5)
johnny_cache.add({a: 1, b: 2, c: 3})
johnny_cache.add([1,2,3,4])
johnny_cache.add("I walk the line")
johnny_cache.add(:ring_of_fire)
johnny_cache.add("I walk the line")
johnny_cache.add({a: 1, b: 2, c: 3})
johnny_cache.show