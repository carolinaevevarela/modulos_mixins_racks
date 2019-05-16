module Formula
  def perimetro
    puts "El perímetro es #{(@largo + @ancho)*2}"
  end

  def area
    puts "El área es #{@largo * @ancho}"
  end

  end
class Rectangulo
    include Formula
  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end
  def lados
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
  end
end

r = Rectangulo.new(3, 5)
r.perimetro
r.area

c = Cuadrado.new(4)
c.perimetro
c.area
