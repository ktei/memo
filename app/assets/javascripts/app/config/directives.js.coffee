app.directive('anchor', ->
  (scope, element, attrs) ->
    $(element).click((event) ->
      event.preventDefault()
    )
)