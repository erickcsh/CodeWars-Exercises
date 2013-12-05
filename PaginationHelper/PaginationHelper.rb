# TODO: complete this class

class PaginationHelper

  attr_accessor :collection, :collection_of_pages, :items_per_page
  # The constructor takes in an array of items and a integer indicating how many
  # items fit within a single page
  def initialize(collection, items_per_page)
    self.collection = collection
    self.collection_of_pages = collection.each_slice(items_per_page).to_a
    self.items_per_page = items_per_page
  end
  
  # returns the number of items within the entire collection
  def item_count
    @collection.length
  end
  
  # returns the number of pages
  def page_count
    @collection_of_pages.length
  end
	
  # returns the number of items on the current page. page_index is zero based.
  # this method should return -1 for page_index values that are out of range
  def page_item_count(page_index)
    page = @collection_of_pages[page_index]
    page.nil? ? -1 : page.length
  end
	
  # determines what page an item is on. Zero based indexes.
  # this method should return -1 for item_index values that are out of range
  def page_index(item_index) 
    index = item_index < 0 ? to_positive_index(item_index) : item_index
    index < item_count ? index / @items_per_page : -1
  end
  
  def to_positive_index(item_index)
    index_inverse = item_count + item_index
    index_inverse < 0 ? item_count : index_inverse
  end
end

