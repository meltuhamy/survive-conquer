###
My Player tile
###

class Player
  constructor: (id, tilex, tiley, image, inventory, health, stamina, hunger, thirst, speed) -> 
    @playerImage = new Image()
    @playerImage.onload = => @imgReady = true
    @playerImage.src = if image? then image else "#{window.spriteDir}/sprite.png"
    @inventory = if inventory? then inventory else []
    @health = if health? then health else 10
    @stamina = if stamina? then stamina else 100
    @hunger = if hunger? then hunber else 20
    @thirst = if thirst? then thirst else 20
    @speed = if speed? then speed else 0.8
    @posx = if posx? then posx else 0
    @posy = if posy? then posy else 0
    @id = if id? then id else -1
    @tilex = Math.floor((@posx+12.5) / 25)
    @tiley = Math.floor((@posy+12.5) / 25)
  imgReady: false
  statchange: (tile) -> 
    @health = @health - tile.health_cost
    @stamina = @stamina - tile.stamina_cost
    @hunger = @hunger - tile.hunger_cost
    @thirst = @thirst - tile.thirst_cost
