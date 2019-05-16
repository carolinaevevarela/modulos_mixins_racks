module Formula
  def perimetro
    puts "El perímetro de #{self.class} es #{(@largo + @ancho)*2}"
  end

  def area
    puts "El área de #{self.class} es #{@largo * @ancho}"
  end

  end
class Rectangulo
    include Formula
  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end
  def lados
    puts "El largo del rectángulo es #{@largo} y el ancho es #{@ancho}"
  end
end

class Cuadrado
    include Formula
  def initialize(lado)
    @lado = lado
    @largo = @lado
    @ancho = @lado
  end
  def lados
    puts "Los lados del cuadrado miden #{@lado}"
  end
end

r = Rectangulo.new(3, 5)
r.lados
r.perimetro
r.area

c = Cuadrado.new(4)
c.lados
c.perimetro
c.area
