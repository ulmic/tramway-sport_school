#= require_tree .

$('.scroll').click (e) ->
  e.preventDefault()
  $.scrollTo "##{$(@).data('id')}"
