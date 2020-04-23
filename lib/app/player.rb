class Player
  attr_accessor :name, :turn

  def initialize(name)
    @name = name
    @turn = false
  end

  def has_played
    # Indique que le tour du joueur est passé en le mettant à false
    @turn = false
  end

  def his_turn?
    # Renvoie vrai si c'est son tour, faux sinon
    @turn
  end
end
