module Port
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    city[0, 4].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    cargo = ship_identifier.to_s[0, 3]
    cargo == "OIL" || cargo == "GAS" ? :A : :B
  end
end
