$ ->
  nextImage = ->
    removeClasses true
    addClasses img
    (if (img is 3) then img = 1 else img++)
    return
  removeClasses = ->
    first.removeClass 'active'
    second.removeClass 'active'
    third.removeClass 'active'
    return
  addClasses = (i) ->
    switch i
      when 1
        first.addClass 'active'
      when 2
        second.addClass 'active'
      when 3
        third.addClass 'active'
      else
  slider = $('#slider')
  first = $('#slider section:nth-child(1)')
  second = $('#slider section:nth-child(2)')
  third = $('#slider section:nth-child(3)')
  slider.addClass 'slider'
  first.addClass 'active'
  img = 1
  timer = setInterval(nextImage, 4000)
  return
