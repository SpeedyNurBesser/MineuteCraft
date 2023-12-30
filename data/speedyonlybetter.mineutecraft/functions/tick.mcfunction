## Join Detection
execute as @a[scores={speedyonlybetter.mineutecraft.joinGame = 1..}] run tag @s add speedyonlybetter.mineutecraft.timed
scoreboard players reset @a[scores={speedyonlybetter.mineutecraft.joinGame = 1..}] speedyonlybetter.mineutecraft.joinGame

# What happens when you're timed?
# Here's the answer!
scoreboard players add @a[tag=speedyonlybetter.mineutecraft.timed] speedyonlybetter.mineutecraft.timer 1

# A basic tutorial for minecraft ticks (it's 2.50 AM)
# One tick is one twentieh of a second, assuming the player doesn't change the game's regular speed of 20 ticks per second (TPS)
# The commands in this so called *tick.mcfunction* are run every tick.
# We now know that the player will after one second have a timer score of 20.

## StartCountdown
effect give @a[tag=speedyonlybetter.mineutecraft.timed, scores={speedyonlybetter.mineutecraft.timer=1..100}] blindness infinite 255 true
effect give @a[tag=speedyonlybetter.mineutecraft.timed, scores={speedyonlybetter.mineutecraft.timer=1..100}] slowness infinite 255 true
effect give @a[tag=speedyonlybetter.mineutecraft.timed, scores={speedyonlybetter.mineutecraft.timer=1..100}] jump_boost infinite 128 true
effect give @a[tag=speedyonlybetter.mineutecraft.timed, scores={speedyonlybetter.mineutecraft.timer=1..100}] mining_fatigue infinite 255 true

title @a[tag=speedyonlybetter.mineutecraft.timed, scores={speedyonlybetter.mineutecraft.timer=1}] title "5"
title @a[tag=speedyonlybetter.mineutecraft.timed, scores={speedyonlybetter.mineutecraft.timer=21}] title "4"
title @a[tag=speedyonlybetter.mineutecraft.timed, scores={speedyonlybetter.mineutecraft.timer=41}] title "3"
title @a[tag=speedyonlybetter.mineutecraft.timed, scores={speedyonlybetter.mineutecraft.timer=61}] title "2"
title @a[tag=speedyonlybetter.mineutecraft.timed, scores={speedyonlybetter.mineutecraft.timer=81}] title "1"

title @a[tag=speedyonlybetter.mineutecraft.timed, scores={speedyonlybetter.mineutecraft.timer=101}] clear
effect clear @a[tag=speedyonlybetter.mineutecraft.timed, scores={speedyonlybetter.mineutecraft.timer=101}] blindness
effect clear @a[tag=speedyonlybetter.mineutecraft.timed, scores={speedyonlybetter.mineutecraft.timer=101}] slowness
effect clear @a[tag=speedyonlybetter.mineutecraft.timed, scores={speedyonlybetter.mineutecraft.timer=101}] jump_boost
effect clear @a[tag=speedyonlybetter.mineutecraft.timed, scores={speedyonlybetter.mineutecraft.timer=101}] mining_fatigue

## Time (Ticks) to Time (Seconds)
execute as @a[tag=speedyonlybetter.mineutecraft.timed, scores={speedyonlybetter.mineutecraft.timer=101..}] run function speedyonlybetter.mineutecraft:timetoseconds

## CountUp to Countdown
execute as @a[tag=speedyonlybetter.mineutecraft.timed, scores={speedyonlybetter.mineutecraft.timer=101..}] run function speedyonlybetter.mineutecraft:timetocountdown

## Display Countdown
execute as @a[tag=speedyonlybetter.mineutecraft.timed, scores={speedyonlybetter.mineutecraft.timer=101..}] run title @s actionbar ["",{"score":{"name":"@s","objective":"speedyonlybetter.mineutecraft.timerCountdown"}},{"text":"s"}]
## Time ends
execute as @a[tag=speedyonlybetter.mineutecraft.timed, scores={speedyonlybetter.mineutecraft.timerSeconds=60..}] run function speedyonlybetter.mineutecraft:end