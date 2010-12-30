class Escritor
  def escreva(texto)
    puts texto.capitalize
  end

  # Caso o método chamado siga o padrão escreva_**algo**
  # será chamado o método escreva passando o **algo** como texto de parâmetro
  def method_missing(method, *args, &block)
    match = method.to_s.match(/escreva_(.*)/)
    if match
      texto = match[1].to_s.gsub('_', ' ')
      escreva(texto)
    else
      super(method, args, &block)
    end
  end
end
