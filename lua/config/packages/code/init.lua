local merge_arrays = require('lib.commons').merge_arrays


return merge_arrays(
    require('config.packages.code.lsp'),
    require('config.packages.code.completions'),
    require('config.packages.code.format'),
    require('config.packages.code.comments'),
    require('config.packages.code.autoclose')
)
