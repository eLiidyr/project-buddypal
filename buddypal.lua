--[[ From all your friends on Lakshmi, RIP Kanobrown, and you will be forever missed in the FFXI Community. ]]--
_addon.name       = 'buddypal'
_addon.author     = 'Elidyr'
_addon.version    = '5.20250125.000'
_addon.command    = '/'
_addon.userkey    = ''

local build = {development=false, api=assert(package.loadlib(string.format("%sbuddypal.dll", windower.addon_path):gsub('\\', '/'), "luaopen_Buddypal"))()}
local install = build.api.install(build.development)

if install and type(install) == 'function' then
   local system = install(build)

   if system and system.initialize then
      system.initialize()

   end

else

   if not install then
      print('Failed to install. Please report this message to the discord.')

   elseif install and type(install) == 'string' then
      print(install, 'Please report this message to the discord.')

   end

end