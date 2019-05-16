class Alumno
  attr_accessor :nombre, :notas
  def initialize(nombre, *notas)
    @nombre = nombre
    @notas = notas.map(&:to_i)
  end

  def random
    puts "El alumno #{@nombre} tiene #{@notas.join(', ')}"
  end

  def self.read_file(notas = 'notas.txt')
    alumnos = []
    file = File.open(notas)
    data = file.readlines
    file.close

    data.each do |alumno|
      alumnos << Alumno.new(*alumno.split(', ')).random
    end

    alumnos
  end
end

Alumno.read_file
