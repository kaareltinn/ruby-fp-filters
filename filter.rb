class Filter
  def initialize
    # TODO: Implement me!
  end

  def compose
    # TODO: Implement me!
  end
end

tasks = [
  { id: 1, name: 'AAA', global_product_ids: [8] },
  { id: 2, name: 'BBB', global_product_ids: [1, 2, 3] },
  { id: 3, name: 'AAB', global_product_ids: [1, 22, 282] },
  { id: 4, name: 'CBB', global_product_ids: [65, 3] }
]

name_filter1 = Filter.new # filter that checks name is equal to 'AAA'
product_filter1 = Filter.new # filter that checks product with id 8 is present
name_and_product_filter = name_filter1.compose(product_filter1)

tasks.select(&name_and_product_filter) # task with id 1

name_filter2 = Filter.new # filter that checks name contains substraing 'BB'
name_filter3 = name_filter1.compose(name_filter2)

tasks.select(&name_filter3) # tasks with ids 1, 2, 4
