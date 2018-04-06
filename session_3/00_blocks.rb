names = %w[Pedro Mario]

def receive_block(elements)
  puts 'Elements received: ' + elements.join(', ')
  # invokes the block only if provided
  yield(elements) if block_given?
end

receive_block(names) # Elements received: Pedro, Mario

receive_block(names) { |elements| elements.each { |e| puts "_#{e}_" } }
# Elements received: Pedro, Mario
# _Pedro_
# _Mario_

receive_block(names) do |elements|
  elements.each { |e| puts "_#{e}_" }
end
# Elements received: Pedro, Mario
# _Pedro_
# _Mario_
