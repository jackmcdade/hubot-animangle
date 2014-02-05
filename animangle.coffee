# Description:
#   Get your Animangle on!
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot animangle me - Receive a random animangle
#   hubot animamgle <name> - get a specific animangle
#   hubot animangle bomb N - get N animangles!

url = "https://raw.github.com/jackmcdade/animangles/master/"
animangles = [
  'baaterfly',
  'babycamel',
  'beagle',
  'beakyfly',
  'birrel',
  'bouse',
  'cataroo',
  'clizard',
  'colf',
  'cooling',
  'coose',
  'cosh',
  'crocofinch',
  'cuffin',
  'dachsbear',
  'dalf',
  'dat',
  'dogfly',
  'doglion',
  'dragonflog',
  'eagat',
  'echidnabout',
  'flamingmoo',
  'flocodile',
  'fluff',
  'gingercog',
  'golf',
  'highlandcog',
  'hippopotafrog',
  'horsefinch',
  'hypersheep',
  'killerwolf',
  'kwaklala',
  'labrasparrow',
  'lemog',
  'lemog02',
  'leo',
  'lionatang',
  'llamabird',
  'llamouse',
  'magpat',
  'mat',
  'meercant',
  'moosquirrel',
  'moosquirrel02',
  'parrog',
  'raaaaaauack',
  'rhinophant',
  'rhinophant02',
  'rhock',
  'seahorse',
  'seriouskittin',
  'sharkidile',
  'sheepatoo',
  'shock',
  'snog',
  'spy',
  'squeer',
  'squeer02',
  'squck',
  'squimpanzee',
  'squirrelcat',
  'squirridile',
  'turkog',
  'vowel',
  'wowl'
]

module.exports = (robot) ->

  robot.respond /animangle( me)? (.*)/i, (msg) ->
    if msg.match[2] in animangles
      msg.send 'Have a ' + msg.match[2] + '!'
      msg.send url + msg.match[2] + '.jpg'
    else
      randomAnimangle = animangles[Math.floor(Math.random() * animangles.length)]
      msg.send 'Have a ' + randomAnimangle + '!'
      msg.send url + randomAnimangle + '.jpg'

  robot.respond /animangle bomb( (\d+))?/i, (msg) ->
    count = (msg.match[2] || 5) - 1
    for i in [1..count] by 1
      msg.send url + animangles[Math.floor(Math.random() * animangles.length)] + '.jpg'
