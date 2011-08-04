module LinksHelper
  #so para fins de testes
  def time(link)
    link.created_at.strftime("%b %d %Y, %I:%M %p")
  end

  def box(&block)
    content_tag :p, capture(&block), class: "box"
  end
end
