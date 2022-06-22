-- Requires LuaSocket: https://w3.impa.br/~diego/software/luasocket/

local url = require('socket.url')

function prefix(path)
  return 'https://github.com/comp-rob2b/sample-robot/tree/main/' .. path
end

function Link(element)
  local parsed = url.parse(element.target)
  if not parsed.scheme and not parsed.fragment then
    element.target = prefix(element.target)
  end
  return element
end