class String
  def highlight(selection)
    self.gsub(/(\b#{selection}\b)/i, '(\1)')
  end
end

x = gets.chomp.to_s
selection = gets.chomp
puts x.highlight(selection)
  