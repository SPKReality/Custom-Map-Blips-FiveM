local blips = {
    {title="Methlab", colour=1, id=499, x = 809.78, y = -490.81, z = 30.63},
    {title="Weed Farm", colour=2, id=496, x = 951.24, y = -1711.76, z = 30.92},
    {title="Cokelab", colour=22, id=497, x = 1004.64, y =  -1572.91, z = 30.82},
    {title="Money Wash", colour=2, id=500, x = 1005.71, y = -114.71, z = 73.97},
    --{title="Court House", colour=7, id=617, x = -465.51, y = 1167.53, z = 328.68},
    {title="Papa's Pizzeria", colour=1, id=436, x = -570.43, y = -400.33, z = 34.92},
    --{title="Car Auction House", colour=46, id=277, x = 135.77, y = 6457.41, z = 33.32},
  	--{title="Fightclub", colour=29, id=311, x = 187.91, y = -1273.0, z = 29.2},
  	{title="Comedy Club", colour=50, id=102, x = -430.01, y = 262.44, z = 82.72},
  	{title="Weed Shop", colour=2, id=496, x = 377.29, y = -832.53, z = 29.33},
  	{title="Coke Cornerhold", colour=29, id=478, x = 272.95, y = -1824.51, z = 26.91},
  	{title="Weed Cornerhold", colour=2, id=501, x = 464.08, y = -1851.06, z = 27.83},
  	{title="Meth Cornerhold", colour=1, id=514, x = 279.69, y = -1684.23, z = 29.26},
  	{title="Mechanics Shop", colour=47, id=446, x = 146.61, y = -3025.96, z = 7.04},
	--{title="Used Car Sales", colour=5, id=227, x = 1224.76, y = 2728.63, z = 38.01},
	--{title="MI5 Heist", colour=29, id=269, x = 132.11, y = -753.58, z = 54.48},
	{title="Bahama Mamas", colour=19, id=93, x = -1387.12, y = -588.87, z = 30.32},
	--{title="Vanilla Unicorn", colour=11, id=121, x = 128.13, y = -1297.06, z = 29.27},
	--{title="Train Robbery", colour=32, id=587, x = 378.25, y = 3566.52, z = 33.29},
	--{title="ITV Studios", colour=26, id=564, x = -259.1, y = 232.8, z = 92.09},
	--{title="LifeInvader", colour=24, id=77, x = -1077.25, y = -260.3, z = 37.81},
	--{title="Car Show", colour=6, id=523, x = 859.13, y = -2367.51, z = 30.24},
	--{title="Insert Coin Arcade", colour=8, id=484, x = -1277.06, y = -310.08, z = 36.87},
	--{title="Sports Bar", colour=38, id=103, x = -1600.53, y = -991.11, z = 13.08},
	--{title="Humane Labs Robbery", colour=5, id=590, x = 3624.77, y = 3749.85, z = 28.52},
	--{title="Union Depository Robbery", colour=1, id=477, x = -7.25, y = -655.11, z = 33.45},
	--{title="Go-Kart Racing", colour=58, id=545, x = -1013.71, y = -3476.89, z = 14.02},
	--{title="INFORMATION BOOTH", colour=5, id=66, x = 191.28, y = -884.24, z = 30.71},
	--{title="Church Of Spark", colour=24, id=305, x = -1687.47, y = -286.5, z = 51.86},
}
-- ONLY EDIT THE ABOVE, DO NOT TOUCH THE BELOW!
CreateThread(function()

   for _, info in pairs(blips) do
     info.blip = AddBlipForCoord(info.x, info.y, info.z)
     SetBlipSprite(info.blip, info.id)
     SetBlipDisplay(info.blip, 4)
     SetBlipScale(info.blip, 0.8)
     SetBlipColour(info.blip, info.colour)
     SetBlipAsShortRange(info.blip, true)
     BeginTextCommandSetBlipName("STRING")
     AddTextComponentString(info.title)
     EndTextCommandSetBlipName(info.blip)
   end
end)