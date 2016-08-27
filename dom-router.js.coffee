# =================================================================================================
#
# DOM Routing
#
# ==================================================================================================


# ------------------------------------------------
# Specify Namespace Object
# ------------------------------------------------

window.NameSpace       ||= {}
window.NameSpace.Cache ||= {}


# ------------------------------------------------
# Call Page Specific JS
# ------------------------------------------------

NameSpace.runPageJs = () ->
  if controller = document.body.getAttribute("data-router")
    NameSpace.Cache[controller] ||= NameSpace[controller]
    if NameSpace.Cache[controller] then NameSpace.Cache[controller]()


# ------------------------------------------------
# Call on Doc Ready
# ------------------------------------------------

document.addEventListener 'DOMContentLoaded', ->
  NameSpace.runGlobalJS()
  NameSpace.runPageJs()
