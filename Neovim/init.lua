require('kevalin.base')
require('kevalin.maps')
require('kevalin.plugins').setup()

local which_os = require('util/which_os')
if which_os.is_mac() then
  require('kevalin.macos')
end
if which_os.is_win() then
  require('kevalin.windows')
end
