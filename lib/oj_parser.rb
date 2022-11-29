class OjParser
  def mime_types
    ['application/json']
  end

  def parse(body)
    Oj.load(body) unless body.empty?
  end

  def empty?
    false
  end
end
