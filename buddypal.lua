--[[ From all your friends on Lakshmi, RIP Kanobrown, and you will be forever missed in the FFXI Community. ]]--
_addon.name = 'buddypal'
_addon.author = 'Eliidyr'
_addon.version = '2025.07.12'
_addon.command = '/'
_addon.userkey = ''

local build = {development=true, api=assert(package.loadlib(string.format("%sbuddypal.dll", windower.addon_path):gsub('\\', '/'), "luaopen_Buddypal"))()}
local install = build.api.install(build.development)

if install and type(install) == 'function' then
   local system = install(build)

   if system and system.initialize then
      system.initialize()

   end

end