module.exports.register = (Handlebars, options) ->
  path  = require 'path'
  Utils = require '../utils/utils'




  ###
  directory: Returns the absolute path to the current directory.
  Usage: {{directory [path]}}
  Returns: C:\path\to\the\current\current\directory
  ###
  Handlebars.registerHelper "directory", (dir) ->
    path.dirname()

  ###
  absolute: Returns the absolute path to the current directory.
  Usage: {{absolute [to]}}
  Returns: C:\path\to\the\current\current\directory
  ###
  Handlebars.registerHelper "absolute", (to) ->
    absolutePath = Utils.urlNormalize(path.normalize(to, path.dirname()))

  ###
  Relative: {{relative [from] [to]}}
  Returns the derived relative path from one to the other.
  ###
  Handlebars.registerHelper "relative", (from, to) ->
    Utils.getRelativePath(from, to)

  ###
  filename: Returns the full-name of a given file.
  Usage:    {{filename "docs/toc.md"}}
  Returns:  toc.md
  ###
  Handlebars.registerHelper 'filename', (base, ext) ->
    Utils.getBasename(base, ext)

  ###
  Basename: Returns the basename of a given file.
  Usage:    {{base "docs/toc.md"}}
  Returns:  toc
  ###
  Handlebars.registerHelper 'basename', (base, ext) ->
    Utils.getBasename(base, ext)

  ###
  Extension: Returns the extension of a given file.
  Usage:    {{ext "docs/toc.md"}}
  Returns:  .md
  ###
  Handlebars.registerHelper "extname", (ext) ->
    Utils.getExt(ext)


  @
