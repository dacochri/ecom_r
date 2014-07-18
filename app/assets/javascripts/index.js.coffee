$ ->
  nextImage = ->
    removeClasses true
    addClasses img
    (if (img = 3) then img = 1 else img++)
    return
  removeClasses = ->
    slider.removeClass 'first-image'
    slider.removeClass 'second-image'
    slider.removeClass 'third-image'
    return
  addClasses = (i) ->
    switch i
      when 1
        slider.addClass 'first-image'
      when 2
        slider.addClass 'second-image'
      when 3
        slider.addClass 'third-image'
      else
  slider = $('#slider')
  slider.addClass 'first-image'
  slider.addClass 'slider'
  img = 1
  timer = setInterval(nextImage, 4000)
  return
