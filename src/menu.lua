function menuloadbuttons()
	love.graphics.reset()
	rato = love.graphics.newImage('assets/rato.png')
	altura = 105
	largura = 180
	play = {
		playi = love.graphics.newImage('assets/play1.png'),
		pressed = love.graphics.newImage('assets/play2.png')
	}
	quit = {
		quiti = love.graphics.newImage('assets/quit1.png'),
		pressed = love.graphics.newImage('assets/quit2.png')
	}
	love.mouse.setVisible(false)
end
function drawcorfundo()
	local x,y=love.mouse.getPosition()
	love.graphics.draw(rato,x,y)
	love.graphics.setBackgroundColor(255,255,255)
end
function drawbuttonsmenuplay()
	love.graphics.draw(play.playi,320,160)
end
function drawbuttonsmenuquit()
	love.graphics.draw(quit.quiti,320,280)
end
function drawup()
	local x,y=love.mouse.getPosition()
	if x>320 and x<=largura+320 and y>160 and y<altura+160 then 
		love.graphics.draw(play.pressed,320,160)
	elseif x>320 and x<=largura+320 and y>280 and y<altura+280 then 
		love.graphics.draw(quit.pressed,320,280)
	end
end

function animationDDX()
	if timer>=0.07 then
		if growing==true then
			num = num+1
		else
			num=num-1
		end
		if num==5 then
			growing=false
		elseif num==1 then
			growing=true
		end
		actualAnimation = ddx[num]
		timer = 0
	end
end
function getMouseAction(button)
	local x,y=love.mouse.getPosition()
	if button==1 and x>320 and x<=largura+320 and y>160 and y<altura+160 then
		return 'play'
	end
	if button==1 and  x>320 and x<=largura+320 and y>280 and y<altura+280 then
		return 'quit'
	end
	return false
end