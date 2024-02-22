local Event = require('__stdlib__/stdlib/event/event')

Event.register(Event.core_events.init_and_config, function()
  remote.call('pywiki', 'add_section', 'Test')
  remote.call('pywiki', 'add_page', {
    name = 'Tested-Page',
    section = 'Test',
    text_only = true
  })
  remote.call('pywiki', 'add_page', {
    name = 'Tested-Page-2',
    section = 'Test',
    text_only = true
  })
end)

--[==[
  function Wiki.add_page(args)
  local name = args.name or error('Required parameter missing: name')

  if not args.section then
      global.wiki_pages[name] = args
  else
      global.wiki_pages[args.section].pages[name] = args
  end
end
]==]--