# MineuteCraft
 Minecraft, but it's only one minute... over and over again.

You see *Mineute* - *Mine* and *Minute* - I assume you get that.

So *MineuteCraft* is based on [Sebastian Hahner's](https://www.youtube.com/@skate702) [One Minute Minecraft series](https://www.youtube.com/playlist?list=PL9oBXB6tQnlXfSO9Wg3g8rjc3jzFhGJi9). Just with actually working tech and not 7 years old.

The idea is that you just regularly play Minecraft (you might want to try to beat the game) , but you can only be online for one minute at a time.

## About kicking

So, this datapack is able to kick the player once their timer runs out,  but that is only possible on a multiplayer server. And only on those server that in their *server.properties* file have a *function-permission-level* of at least 3 (default=2). You might want to check the [permission-level MCWiki page](https://minecraft.wiki/w/Permission_level).

Depending on your needs install the KickLessVersion or the KickVersion. Note that the KickVersion will break, if you're on Singeplayer-World/have set a *function-permission-level* of 2 or lower.

## Uninstall

If you want to uninstall the pack use */function speedyonlybetter.mineutecraft.uninstall* before removing the datapack from your worlds datapack-folder.

Under specific circumstances player can stay in the frozen (the player is frozen for the first 5 seconds after joining) after the Uninstall. Just clear their effects using */ effects <PLAYERNAME> clear*.

