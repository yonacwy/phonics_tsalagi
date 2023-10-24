

local page_start
local page_end
local message_index

phonics_tsalagi = {
	a={name="a", length=.4, gain=1, is_letter=1},
	_a={name="_a", length=.5, gain=1, is_letter=0},
	e={name="e", length=.65, gain=1, is_letter=1},
	_e={name="_e", length=.64, gain=1, is_letter=0},
	i={name="i", length=.65, gain=1, is_letter=1},
	_i={name="_i", length=.45, gain=1, is_letter=0},
	o={name="o", length=.65, gain=1, is_letter=0},
	_o={name="_o", length=.65, gain=1, is_letter=0},
	u={name="u", length=.65, gain=1, is_letter=1},	
	_u={name="_u", length=.92, gain=1, is_letter=0},	
	v={name="v", length=.65, gain=1, is_letter=1},	
	s={name="s", length=.92, gain=1, is_letter=1},
	ga={name="ga", length=.90, gain=1, is_letter=0},
	ka={name="ka", length=.90, gain=1, is_letter=0},
	ge={name="ge", length=.90, gain=1, is_letter=0},
	gi={name="gi", length=.90, gain=1, is_letter=1},
	go={name="go", length=.90, gain=1, is_letter=0},
	gu={name="gu", length=.90, gain=1, is_letter=0},
	gv={name="gv", length=.90, gain=1, is_letter=0},
	ha={name="ha", length=.90, gain=1, is_letter=0},
	he={name="he", length=.90, gain=1, is_letter=0},
	hi={name="hi", length=.90, gain=1, is_letter=0},
	ho={name="ho", length=.90, gain=1, is_letter=0},
	hu={name="hu", length=.90, gain=1, is_letter=0},
	hv={name="hv", length=.90, gain=1, is_letter=0},
	la={name="la", length=.90, gain=1, is_letter=0},
	le={name="le", length=.90, gain=1, is_letter=0}, 
	li={name="li", length=.90, gain=1, is_letter=0},
	lo={name="lo", length=.90, gain=1, is_letter=0},
	lu={name="lu", length=.90, gain=1, is_letter=0},
	lv={name="lv", length=.90, gain=1, is_letter=0},
	ma={name="ma", length=.90, gain=1, is_letter=0},
	me={name="me", length=.90, gain=1, is_letter=0},
	mi={name="mi", length=.90, gain=1, is_letter=0},
	mo={name="mo", length=.90, gain=1, is_letter=0},
	mu={name="mu", length=.90, gain=1, is_letter=0},
	na={name="na", length=.90, gain=1, is_letter=0},
        hna={name="hna", length=.90, gain=1, is_letter=0},
	nah={name="nah", length=.90, gain=1, is_letter=0},	
	ne={name="ne", length=.90, gain=1, is_letter=0},
	ni={name="ni", length=.90, gain=1, is_letter=0},
	no={name="no", length=.90, gain=1, is_letter=0},
	nu={name="nu", length=.90, gain=1, is_letter=0},
	nv={name="nv", length=.90, gain=1, is_letter=0},
	qua={name="qua", length=.90, gain=1, is_letter=0},
	que={name="que", length=.90, gain=1, is_letter=0},
	qui={name="qui", length=.90, gain=1, is_letter=0}, 
	quo={name="quo", length=.90, gain=1, is_letter=0},
	quu={name="quu", length=.90, gain=1, is_letter=0},
	quv={name="quv", length=.90, gain=1, is_letter=0},
	sa={name="sa", length=.90, gain=1, is_letter=0},
	se={name="se", length=.90, gain=1, is_letter=0},
	si={name="si", length=.90, gain=1, is_letter=0},
	so={name="so", length=.90, gain=1, is_letter=0},
	su={name="su", length=.90, gain=1, is_letter=0},
	sv={name="sv", length=.90, gain=1, is_letter=0},
	da={name="da", length=.90, gain=1, is_letter=0},
	ta={name="ta", length=.90, gain=1, is_letter=0},
	de={name="de", length=.90, gain=1, is_letter=0},
	te={name="te", length=.90, gain=1, is_letter=0},
	di={name="di", length=.90, gain=1, is_letter=0},
	ti={name="ti", length=.90, gain=1, is_letter=0},
	["do"]={name="do", length=.90, gain=1, is_letter=0},
	du={name="du", length=.90, gain=1, is_letter=0},
	dv={name="dv", length=.90, gain=1, is_letter=0},
	dla={name="dla", length=.90, gain=1, is_letter=0},
	tla={name="tla", length=.90, gain=1, is_letter=0},
	tle={name="tle", length=.90, gain=1, is_letter=0},
	tli={name="tli", length=.90, gain=1, is_letter=0},
	tlo={name="tlo", length=.90, gain=1, is_letter=0},
	tlu={name="tlu", length=.90, gain=1, is_letter=0},
	tlv={name="tlv", length=.90, gain=1, is_letter=0},
	tsa={name="tsa", length=.90, gain=1, is_letter=0},
	tse={name="tse", length=.90, gain=1, is_letter=0},
	tsi={name="tsi", length=.90, gain=1, is_letter=0},
	tso={name="tso", length=.90, gain=1, is_letter=0},
	tsu={name="tsu", length=.90, gain=1, is_letter=0},
	tsv={name="tsv", length=.90, gain=1, is_letter=0},
	wa={name="wa", length=.90, gain=1, is_letter=0},
	we={name="we", length=.90, gain=1, is_letter=0},
	wi={name="wi", length=.90, gain=1, is_letter=0},
	wo={name="wo", length=.90, gain=1, is_letter=0},
	wu={name="wu", length=.90, gain=1, is_letter=0},
	wv={name="wv", length=.90, gain=1, is_letter=0},
	ya={name="ya", length=.90, gain=1, is_letter=0},
	ye={name="ye", length=.90, gain=1, is_letter=0},
	yi={name="yi", length=.90, gain=1, is_letter=0},
	yo={name="yo", length=.90, gain=1, is_letter=0},
	yu={name="yu", length=.90, gain=1, is_letter=0},
	yv={name="yv", length=.90, gain=1, is_letter=0},
}
	
two_char_phonics_tsalagi = {
	ga= {name="ga"},
	ka= {name="ka"},
	ge= {name="ge"},
	gi= {name="gi"},
	go= {name="go"},
	gu= {name="gu"},
	gv= {name="gv"},
	ha= {name="ha"},
	he= {name="he"},
	hi= {name="hi"},
	ho= {name="ho"},
	hu= {name="hu"},
	hv= {name="hv"},
	la= {name="la"},
	le= {name="le"},
	li= {name="li"},
	lo= {name="lo"},
	lu= {name="lu"},
	lv= {name="lv"},
	ma= {name="ma"},
	me= {name="me"},
	mi= {name="mi"},
	mo= {name="mo"},
	mu= {name="mu"},
	na= {name="na"},
	ne= {name="ne"},
	ni= {name="ni"},
	no= {name="no"},
	nu= {name="nu"},
	nv= {name="nv"},
	sa= {name="sa"},
	se= {name="se"},
	si= {name="si"},
	so= {name="so"},
	su= {name="su"},
	sv= {name="sv"},
	da= {name="da"},
	ta= {name="ta"},
	de= {name="de"},
	te= {name="te"},
	di= {name="di"},
	ti= {name="ti"},
	["do"]= {name="do"},
	du= {name="du"},
	dv= {name="dv"},
	wa= {name="wa"},
	we= {name="we"},
	wi= {name="wi"},
	wo= {name="wo"},
	wu= {name="wu"},
	wv= {name="wv"},
	ya= {name="ya"},
	ye= {name="ye"},
	yi= {name="yi"},
	yo= {name="yo"},
	yu= {name="yu"},
	yv= {name="yv"},
	--wh= {name="wh"}	
}

three_char_phonics_tsalagi = {
	hna= {name="hna"},
	nah= {name="nah"},
	qua= {name="qua"},
	que= {name="que"},
	qui= {name="qui"},
	qwo= {name="quo"},
	quu= {name="quu"},
	quv= {name="quv"},
	dla= {name="dla"},
	tla= {name="tla"},
	tle= {name="tle"},
	tli= {name="tli"},
	tlo= {name="tlo"},
	tlu= {name="tlu"},
	tlv= {name="tlv"},
	tsa= {name="tsa"},
	tse= {name="tse"},
	tsi= {name="tsi"},
	tso= {name="tso"},
	tsu= {name="tsu"},
	tsv= {name="tsv"},
}

local words = {
	cat={spellings={ {c},{a},{t} } }
}


for key,value in pairs(phonics_tsalagi) do
	minetest.register_node("phonics_tsalagi:"..key, {
	description = key,
	tiles = {"phonics_tsalagi_"..key..".jpg"},
	is_ground_content = true,
	groups = {cracky=3, choppy=3},
	sounds = default.node_sound_stone_defaults(),
	on_punch = function(pos, node, puncher) 
--		minetest.chat_send_all("phonic.on_punch:" .. pos.x ..">" )
		hit_with = puncher:get_wielded_item()
		wear=hit_with:get_wear()
 		if wear == 0 then       
			activate_node({pos, key, phonics_tsalagi[key].length})
		end
	end,	
	})
	minetest.register_node("phonics_tsalagi:"..key.."_active", {
	description = key.."_active",
	tiles = {"phonics_tsalagi_"..key.."_active.png"},
	light_source = 20,
	is_ground_content = true,
	groups = {cracky=3, choppy=3, not_in_creative_inventory=1},
	sounds = default.node_sound_stone_defaults(),
	})	
	if  phonics_tsalagi[key].is_letter ==1 then	
		minetest.register_node("phonics_tsalagi:0"..key, {
		description = "Silent "..key,
		tiles = {"phonics_tsalagi_0"..key..".png"},
		is_ground_content = true,
		groups = {cracky=3, choppy=3},
		sounds = default.node_sound_stone_defaults(),
	 	})	
	end
end


minetest.register_node("phonics_tsalagi:question_mark", {
	description = "Question Mark",
	tiles = {
	"question_mark.png",},
	is_ground_content = true,
		paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
--	on_punch = function(pos, node, puncher)      
--	end
})
minetest.register_node("phonics_tsalagi:exclamation_point", {
	description = "Exclamation Point",
	tiles = {
	"exclamation_point.png",},
	is_ground_content = true,
		paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
--	on_punch = function(pos, node, puncher)      
--	end
})
minetest.register_node("phonics_tsalagi:period", {
	description = "Period",
	tiles = {
	"period.png",},
	is_ground_content = true,
		paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
--	on_punch = function(pos, node, puncher)      
--	end
})

minetest.register_node("phonics_tsalagi:SayWord", {
	description = "say word",
	tiles = {
	"white.jpg",
	"white.jpg",
	"SpeakingMouth64.png",
	"SpeakingMouth64.png",
	"SpeakingMouth64.png",
	"SpeakingMouth64.png",},
	is_ground_content = true,
		paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	on_punch = function(pos, node, puncher) 
		sound_out_word(pos, "x", 1)
	    sound_out_word(pos, "x", -1)
	    sound_out_word(pos, "z", 1)
	    sound_out_word(pos, "z", -1)       
	end
})




minetest.register_node("phonics_tsalagi:PaperStart", {
	description = "Paper Start",
	tiles = {
	"white.jpg",
	"white.jpg",
	"nicubunu_Scroll.png",
	"nicubunu_Scroll.png",
	"nicubunu_Scroll.png",
	"nicubunu_Scroll.png",},
	is_ground_content = true,
		paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	after_place_node = function(pos)        
		get_page_start_loc(pos)
	end,
	on_punch = function(pos, node, puncher)        
		clear_page(pos)
	end--[[,		
	on_dig = function(pos_dig,node)
		replace_page(pos_dig, "x", 1, "air")
	    replace_page(pos_dig, "x", -1, "air")
	    replace_page(pos_dig, "z", 1, "air")
	    replace_page(pos_dig, "z", -1, "air")
	    replace_column(pos_dig, "air")
	end,
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
        local player = digger:get_player_name()
        local itemstack = ItemStack("phonics_tsalagi:PaperStart")
        local inv = minetest.get_inventory({type = "player", name = player})

        if inv and inv:room_for_item("main", itemstack) then
            inv:add_item("main", itemstack)
        else
            -- If the player's inventory is full, spawn the item on the ground
            minetest.add_item(pos, itemstack)
        end
	end]]
})

function clear_page(pos)
	local clear_pos = {} --needed this because the node being passed to revertnode was incremented (must have been by reference
      clear_pos.x = pos.x 
      clear_pos.y = pos.y 
      clear_pos.z = pos.z 

	replace_page(clear_pos, "x", 1, "phonics_tsalagi:BlankPaper")
	replace_page(clear_pos, "x", -1, "phonics_tsalagi:BlankPaper")
	replace_page(clear_pos, "z", 1, "phonics_tsalagi:BlankPaper")
	replace_page(clear_pos, "z", -1, "phonics_tsalagi:BlankPaper")
	replace_column(clear_pos, "phonics_tsalagi:BlankPaper")
	page_start = pos
	page_end = pos
end
	    
minetest.register_node("phonics_tsalagi:PaperFinish", {
	description = "Paper Finish",
	tiles = {
	"white.jpg",
	"white.jpg",
	"finish_line_flag_pin_th.png",
	"finish_line_flag_pin_th.png",
	"finish_line_flag_pin_th.png",
	"finish_line_flag_pin_th.png",},
	is_ground_content = true,
		paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	after_place_node = function(pos)
		blank_page(pos)
	end
})
minetest.register_node("phonics_tsalagi:BlankPaper", {
	description = "Blank Paper",
	tiles = {
	"white.jpg",
	"white.jpg",
	"white.jpg",
	"white.jpg",
	"white.jpg",
	"white.jpg",},
	is_ground_content = true,
		paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})


function split(str, pat)
   local t = {}  -- NOTE: use {n = 0} in Lua-5.0
   local fpat = "(.-)" .. pat
   local last_end = 1
   local s, e, cap = str:find(fpat, 1)
   while s do
      if s ~= 1 or cap ~= "" then
	 table.insert(t,cap)
      end
      last_end = e+1
      s, e, cap = str:find(fpat, last_end)
   end
   if last_end <= #str then
      cap = str:sub(last_end)
      table.insert(t, cap)
   end
   return t
end

local play_sound = function(list, soundname)
		local gain = 1.0
		local handler = minetest.sound_play("phonics_tsalagi_"..soundname, {gain=gain})
end

function revertnode(parms)  
 	local pos3 = parms[1]
 	local node3= parms[2]
 	minetest.env:remove_node(pos3,{name="phonics_tsalagi:"..node3.."_active"})
 	minetest.env:place_node(pos3,{name="phonics_tsalagi:"..node3})
end

function activate_node(anparms)
	local pos2 = anparms[1]
	local nodename = anparms[2]
	local duration = anparms[3]
 	minetest.env:remove_node(pos2,{name="phonics_tsalagi:"..nodename})
 	minetest.env:place_node(pos2,{name="phonics_tsalagi:"..nodename.."_active"}) 
 	play_sound(phonics_tsalagi, nodename) 
 	local np = {}  --needed this because the node being passed to revertnode was incremented (must have been by reference
              np.x = pos2.x 
              np.y = pos2.y 
              np.z = pos2.z 
 	minetest.after(duration, revertnode, {np, nodename})		
end

function sound_out_word(pos1, axis, direction)
	local cumulative_delay = 0
	local mpos = {}  --needed this because the node being passed to revertnode was incremented (must have been by reference
      mpos.x = pos1.x 
      mpos.y = pos1.y 
      mpos.z = pos1.z 
--see if there are any sounds next to mouth on this axis.  (or if there is a BlankPage before it.) If not, do nothing.  
	local test_pos = {} 
      test_pos.x = pos1.x 
      test_pos.y = pos1.y 
      test_pos.z = pos1.z 
	if axis == "x" then
		test_pos.x=test_pos.x+direction
	end	
	if axis == "z" then
		test_pos.z=test_pos.z+direction
	end	
	local test_nodename = minetest.env:get_node(test_pos).name 
	local test_nodenamearray = split(test_nodename, ":")
	local test_nodename_prefix = test_nodenamearray[1]
	local test_nodename_suffix = test_nodenamearray[2]
	--see if blank page before it		
	if axis == "x" then
		test_pos.x=test_pos.x-(direction*2)
	end	
	if axis == "z" then
		test_pos.z=test_pos.z-(direction*2)
	end			
	local b4_nodename = minetest.env:get_node(test_pos).name 			
	if b4_nodename ~="phonics_tsalagi:BlankPaper" then	
	   	if test_nodename_prefix ~="phonics_tsalagi" or test_nodename_suffix == "BlankPaper" or test_nodename_suffix =="PaperStart" then 
	   		return
	    end
	end
    
    local row_count = 1
    repeat  --go to next row 1 time    	      
		repeat  --continue sounding on this row until you reach blank paper or a non phonics_tsalagi node
			if axis == "x" then
				mpos.x=mpos.x+direction
			end	
			if axis == "z" then
					mpos.z=mpos.z+direction
			end	
			local nodename = minetest.env:get_node(mpos).name 
			local nodenamearray = split(nodename, ":")
			local nodename_prefix = nodenamearray[1]
			local nodename_suffix = nodenamearray[2]
			local delay = phonics_tsalagi[nodename_suffix]
			if  delay ~=nil and nodename_prefix =="phonics_tsalagi"  then 		
				local lpos = {}  --needed this because the node being passed to revertnode was incremented (must have been by reference
	              lpos.x = mpos.x 
	              lpos.y = mpos.y 
	              lpos.z = mpos.z 	
				minetest.after(cumulative_delay, activate_node, {lpos, nodename_suffix, phonics_tsalagi[nodename_suffix].length}) 
				cumulative_delay = cumulative_delay + phonics_tsalagi[nodename_suffix].length 
			end
		until nodename_prefix ~="phonics_tsalagi" or nodename_suffix == "BlankPaper"
--if I will find a BlankPaper in this row, then dont look in next row
		local find_blank_pos = {}  --needed this because the node being passed to revertnode was incremented (must have been by reference
      	find_blank_pos.x = mpos.x 
      	find_blank_pos.y = mpos.y 
      	find_blank_pos.z = mpos.z 	
		repeat
			--is this node BlankPaper?
			local find_blank_nodename = minetest.env:get_node(find_blank_pos).name 
			local find_blank_nodenamearray = split(find_blank_nodename, ":")
			local find_blank_nodename_prefix = find_blank_nodenamearray[1]
			local find_blank_nodename_suffix = find_blank_nodenamearray[2]			
			if find_blank_nodename_suffix == "BlankPaper" then
				return
			end			
			--if not, increment pointer and repeat search
			if axis == "x" then
				find_blank_pos.x=find_blank_pos.x+direction
			end	
			if axis == "z" then
					find_blank_pos.z=find_blank_pos.z+direction
			end			
		until find_blank_nodename_prefix ~="phonics_tsalagi"--prefix not phonics_tsalagi

--we're not done, so search next row for more phonics_tsalagi to sound out
		local new_row_pos = {}  --needed this because the node being passed to revertnode was incremented (must have been by reference
      	new_row_pos.x = mpos.x 
      	new_row_pos.y = mpos.y 
      	new_row_pos.z = mpos.z 	
		new_row_pos.y=new_row_pos.y-1		
		if nodename_suffix == "BlankPaper" then 
			return
		end
		repeat  --go to the beginning of the new row				
			if axis == "x" then
				new_row_pos.x=new_row_pos.x-direction
			end	
			if axis == "z" then
					new_row_pos.z=new_row_pos.z-direction
			end	
			local new_row_nodename = minetest.env:get_node(new_row_pos).name 
			local new_row_nodenamearray = split(new_row_nodename, ":")
			local new_row_nodename_prefix = new_row_nodenamearray[1]
			local new_row_nodename_suffix = new_row_nodenamearray[2]
			mpos.x = new_row_pos.x 
			mpos.y = new_row_pos.y
			mpos.z = new_row_pos.z
		until new_row_nodename_prefix ~="phonics_tsalagi"
		row_count= row_count +1
	until row_count >2 or nodename_suffix == "BlankPaper"
end

function write_message_to_page(message)
	local start_page_pos = {}  --needed this because the node being passed to revertnode was incremented (must have been by reference
    start_page_pos.x = page_start.x 
    start_page_pos.y = page_start.y 
    start_page_pos.z = page_start.z 	
	local start_message_pos = {}  --needed this because the node being passed to revertnode was incremented (must have been by reference
      start_message_pos.x = page_start.x 
      start_message_pos.y = page_start.y 
      start_message_pos.z = page_start.z 
	write_message_to_page_on_axis(start_message_pos, "x", 1, message)
	write_message_to_page_on_axis(start_message_pos, "x", -1, message)
	write_message_to_page_on_axis(start_message_pos, "z", 1, message)
	write_message_to_page_on_axis(start_message_pos, "z", -1, message)	
end

function write_message_to_page_on_axis(pos, axis, direction,message)
	local page_position = {}  --needed this because the node being passed to revertnode was incremented (must have been by reference
    page_position.x = pos.x 
    page_position.y = pos.y 
    page_position.z = pos.z 
    message_index = 1
    --if the first node after the PageStart node is not a phonic, skip everything.
    local first_position = {}    
    first_position.x = pos.x 
    first_position.y = pos.y 
    first_position.z = pos.z 
    if axis=="x" then
    	first_position.x = first_position.x +direction
    end
    if axis=="z" then
    	first_position.z = first_position.z +direction
    end
    local first_nodename = minetest.env:get_node(first_position).name 
	local firstnamearray = split(first_nodename, ":")
	local firstname_prefix = firstnamearray[1]
	if firstname_prefix == "phonics_tsalagi" then  --we have phonics_tsalagi on this axis		      
		repeat
			local current_nodename = minetest.env:get_node(page_position).name 
			local nodenamearray = split(current_nodename, ":")
			local nodename_prefix = nodenamearray[1]
			local nodename_suffix = nodenamearray[2]
			write_page_row(page_position, axis, direction,message)
			page_position.y = page_position.y-1
		until nodename_prefix ~="phonics_tsalagi" or message_index > string.len(message)		
	end
end


function write_page_row(pos, axis, direction, message)
	local replace_pointer = {} --needed this because the node being passed to revertnode was incremented (must have been by reference
	replace_pointer.x = pos.x 
    replace_pointer.y = pos.y 
    replace_pointer.z = pos.z 
	local nodename = minetest.env:get_node(replace_pointer).name 
	if nodename=="phonics_tsalagi:PaperStart" then
		if axis == "x" then
			replace_pointer.x=replace_pointer.x+direction
			new_nodename ="phonics_tsalagi:SayWord" 
			minetest.env:add_node(replace_pointer, {name=new_nodename})	
			replace_pointer.x=replace_pointer.x+direction
		end	
		if axis == "z" then
			replace_pointer.z=replace_pointer.z+direction
			new_nodename ="phonics_tsalagi:SayWord"
			minetest.env:add_node(replace_pointer, {name=new_nodename})	
			replace_pointer.z=replace_pointer.z+direction
		end	
	end	
--1get me node at current location
--2if node prefix is phonics_tsalagi then replace node with next phonic in the message
--3(and have some code behind the scenes automatically bump the message_index)
--4increment the replace pointer
--5repeat 1-4 until node prefix at current location is not phonics_tsalagi	
	repeat
		local nodename = minetest.env:get_node(replace_pointer).name 
		local nodenamearray = split(nodename, ":")
		local nodename_prefix = nodenamearray[1]
		local nodename_suffix = nodenamearray[2]
		if nodename_prefix =="phonics_tsalagi"  then 			
			if new_nodename =="phonics_tsalagi:BlankPaper" then
			--if we had a space between words then inject sayword block into stream
				new_nodename ="phonics_tsalagi:SayWord"
				minetest.env:add_node(replace_pointer, {name=new_nodename})				
			else
				new_nodename = get_next_phonic_in_message(message)
				if minetest.registered_nodes[new_nodename] then
					minetest.env:add_node(replace_pointer, {name=new_nodename})	--*******************************************		
				end
			end	
			if minetest.registered_nodes[new_nodename] then
				if axis == "x" then
					replace_pointer.x=replace_pointer.x+direction
				end	
				if axis == "z" then
					replace_pointer.z=replace_pointer.z+direction
				end				
			end
		end
	until nodename_prefix ~="phonics_tsalagi" or message_index > string.len(message)	
end

function get_next_phonic_in_message(message)
--and have some code behind the scenes automatically bump the message_index	
	string.len(message)
	if message_index <= string.len(message) then
		local current_char_in_message = string.sub(message,message_index,message_index)	
		phonics_tsalagi = current_char_in_message
		--if currentchar=" " then just set cpim to blankPaper and skip all the char business"
		if current_char_in_message==" " then 
			current_phonic_in_message = "phonics_tsalagi:BlankPaper"
		elseif current_char_in_message=="." then 
			current_phonic_in_message = "phonics_tsalagi:period"
		elseif current_char_in_message=="?" then 
			current_phonic_in_message = "phonics_tsalagi:question_mark"			
		elseif current_char_in_message=="!" then 
			current_phonic_in_message = "phonics_tsalagi:exclamation_point"						
		else
			if current_char_in_message == "0" or current_char_in_message == "_" then			
				message_index = message_index +1
				current_char_in_message = string.sub(message,message_index,message_index)		
				phonics_tsalagi = phonics_tsalagi..current_char_in_message
			end	
			char_after_current_char = string.sub(message,message_index+1,message_index+1)
			third_char = string.sub(message,message_index+2,message_index+2)
			two_chars = current_char_in_message..char_after_current_char
			three_chars = two_chars..third_char
			--minetest.log("x", "phonics_tsalagi: "..phonics_tsalagi)
			--minetest.log("x", "phonics_tsalagi 1st char: "..string.sub(phonics_tsalagi,1,1))
			--minetest.log("x", "two_chars: "..two_chars)
			--check to see if this is a 2 character phonic.  But only if it doesn't begin with an "_" or if it is _oo.
			--this is because the only two character phonic that can use the "_" prefix is the "_oo" phonic.
			if (two_char_phonics_tsalagi[two_chars] ~= nil and string.sub(phonics_tsalagi,1,1) ~= "_" and string.sub(phonics_tsalagi,1,1) ~= "0") or (two_chars == "oo" and string.sub(phonics_tsalagi,1,1) ~= "0") then										
				phonics_tsalagi = phonics_tsalagi..char_after_current_char
				message_index = message_index +1
			end	
			if (three_char_phonics_tsalagi[three_chars] ~= nil and string.sub(phonics_tsalagi,1,1) ~= "_" and string.sub(phonics_tsalagi,1,1) ~= "0")then						
				phonics_tsalagi = phonics_tsalagi..string.sub(message,message_index+1,message_index+2)
				message_index = message_index +2
			end			
			current_phonic_in_message = "phonics_tsalagi:"..phonics_tsalagi
		end
		message_index = message_index +1	
	else
		current_phonic_in_message = "phonics_tsalagi:BlankPaper"
	end 	
	return current_phonic_in_message			
end

function replace_page(pos, axis, direction,new_nodename)
	local replace_row_pos = {}  --needed this because the node being passed to revertnode was incremented (must have been by reference
      replace_row_pos.x = pos.x 
      replace_row_pos.y = pos.y 
      replace_row_pos.z = pos.z 
	repeat
		local current_nodename = minetest.env:get_node(replace_row_pos).name 
		local nodenamearray = split(current_nodename, ":")
		local nodename_prefix = nodenamearray[1]
		local nodename_suffix = nodenamearray[2]
		replace_page_row(replace_row_pos, axis, direction,new_nodename)
		replace_row_pos.y = replace_row_pos.y-1
	until nodename_prefix ~="phonics_tsalagi"	
end

function replace_column(pos, new_nodename)
	replace_column_pos= pos
	repeat
		local current_nodename = minetest.env:get_node(replace_column_pos).name 
		local nodenamearray = split(current_nodename, ":")
		local nodename_prefix = nodenamearray[1]
		local nodename_suffix = nodenamearray[2]
		if nodename_prefix =="phonics_tsalagi" then	
			if new_nodename =="air" then					
				minetest.env:add_node(replace_column_pos, {name=new_nodename})			
			end
			if new_nodename =="phonics_tsalagi:BlankPaper" and current_nodename ~="phonics_tsalagi:PaperStart" then					
				minetest.env:add_node(replace_column_pos, {name=new_nodename})			
			end
		end
		replace_column_pos.y = replace_column_pos.y-1
	until nodename_prefix ~="phonics_tsalagi"
end

function replace_page_row(pos, axis, direction, new_nodename)
	local replace_pointer = {} --needed this because the node being passed to revertnode was incremented (must have been by reference
	replace_pointer.x = pos.x 
    replace_pointer.y = pos.y 
    replace_pointer.z = pos.z 	
	repeat
		if axis == "x" then
			replace_pointer.x=replace_pointer.x+direction
		end	
		if axis == "z" then
			replace_pointer.z=replace_pointer.z+direction
		end	
		local nodename = minetest.env:get_node(replace_pointer).name 
		local nodenamearray = split(nodename, ":")
		local nodename_prefix = nodenamearray[1]
		local nodename_suffix = nodenamearray[2]
		if  nodename_prefix =="phonics_tsalagi"  then 		
			minetest.env:add_node(replace_pointer, {name=new_nodename})
		end
	until nodename_prefix ~="phonics_tsalagi"	
end

function get_page_start_loc(pos)
	page_start = pos
end

function blank_page(pos)
	page_end = pos
	if page_start ~= nil and math.abs(page_start.x-page_end.x) <20 and math.abs(page_start.y-page_end.y) <20 and math.abs(page_start.z-page_end.z) <20 then 
		if page_end.y <= page_start.y then  --if the page end block was placed at or below page start block
			if page_end.x == page_start.x then
				buildwall(page_start.z, pos.z, page_start.y, pos.y, "x", pos.x, "phonics_tsalagi:BlankPaper")	
			end
			if page_end.z == page_start.z then  
				buildwall(page_start.x, pos.x, page_start.y, pos.y, "z", pos.z, "phonics_tsalagi:BlankPaper")	
			end	
		end	
	end 
end

function buildwall(hstart, hend, ystart, yend, haxis, haxis_fixed, nodename)	
	repeat
	buildrow(hstart, hend, ystart, haxis, haxis_fixed, nodename)
	ystart = ystart -1
	until ystart < yend
end

function buildrow(hstart, hend, y, haxis, haxis_fixed, nodename)
	local hpos = math.min(hstart, hend)
	local hmax = math.max(hstart, hend)
	local current_pos={}
	current_pos.y = y
	repeat
		if haxis =="x" then
			current_pos.z = hpos
			current_pos.x = haxis_fixed		
		end
		if haxis =="z" then
			current_pos.x = hpos
			current_pos.z = haxis_fixed		
		end	
		if minetest.env:get_node(current_pos).name ~= "phonics_tsalagi:PaperStart" then   --leave paperstart node there.
			minetest.env:add_node(current_pos, {name=nodename})
		end
		hpos = hpos +1
	until hpos> hmax
end

minetest.register_chatcommand("w", {
	params = "<message>",
	description = "Write phonics_tsalagi message on a page",
	privs = {shout=true},
	func = function(name, param)
		if page_start == nil or page_end == nil then minetest.chat_send_player(name, "You need to create a page first") return end
		write_message(string.lower(param))
	end,		})
	
function write_message(param)
	write_message_to_page(param)		
end	
 
--turn the phonics_tsalagi nodes into ores:

-- Function to generate the phonics_tsalagi nodes underground

phonics_tsalagi_scarcity = tonumber(minetest.settings:get("phonics_tsalagi_scarcity")) or 350

if phonics_tsalagi_scarcity >0 then
	-- Register nodes based on the phonics_tsalagi data
	for key, value in pairs(phonics_tsalagi) do
		-- Generate the nodes underground using the register_ore function
		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "phonics_tsalagi:" .. key,
			wherein        = "default:stone",
			clust_scarcity = phonics_tsalagi_scarcity,
			clust_num_ores = 1,
			clust_size     = 1,
			y_min          = -31000,  -- Adjust these values for your desired depth range
			y_max          = 100,
		})

		if  phonics_tsalagi[key].is_letter ==1 then	
			minetest.register_ore({
				ore_type       = "scatter",
				ore            = "phonics_tsalagi:0" .. key,
				wherein        = "default:stone",
				clust_scarcity = phonics_tsalagi_scarcity,
				clust_num_ores = 1,
				clust_size     = 1,
				y_min          = -31000,  -- Adjust these values for your desired depth range
				y_max          = 100,
			})
		end
	end
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "phonics_tsalagi:SayWord",
		wherein        = "default:stone",
		clust_scarcity = phonics_tsalagi_scarcity,
		clust_num_ores = 1,
		clust_size     = 1,
		y_min          = -31000,  -- Adjust these values for your desired depth range
		y_max          = 100,
	})
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "phonics_tsalagi:PaperStart",
		wherein        = "default:stone",
		clust_scarcity = phonics_tsalagi_scarcity,
		clust_num_ores = 1,
		clust_size     = 1,
		y_min          = -31000,  -- Adjust these values for your desired depth range
		y_max          = 100,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "phonics_tsalagi:PaperFinish",
		wherein        = "default:stone",
		clust_scarcity = phonics_tsalagi_scarcity,
		clust_num_ores = 1,
		clust_size     = 1,
		y_min          = -31000,  -- Adjust these values for your desired depth range
		y_max          = 100,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "phonics_tsalagi:period",
		wherein        = "default:stone",
		clust_scarcity = phonics_tsalagi_scarcity,
		clust_num_ores = 1,
		clust_size     = 1,
		y_min          = -31000,  -- Adjust these values for your desired depth range
		y_max          = 100,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "phonics_tsalagi:exclamation_point",
		wherein        = "default:stone",
		clust_scarcity = phonics_tsalagi_scarcity,
		clust_num_ores = 1,
		clust_size     = 1,
		y_min          = -31000,  -- Adjust these values for your desired depth range
		y_max          = 100,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "phonics_tsalagi:question_mark",
		wherein        = "default:stone",
		clust_scarcity = phonics_tsalagi_scarcity,
		clust_num_ores = 1,
		clust_size     = 1,
		y_min          = -31000,  -- Adjust these values for your desired depth range
		y_max          = 100,
	})
end


local dpath = minetest.get_modpath("phonics_tsalagi") .. "/"
dofile(dpath .. "crafting.lua")
print("phonics_tsalagi Mod Loaded!")
 	--minetest.env:punch_node(pos) 
 	--minetest.env:dig_node(pos) 
 	--http://minetest.net/forum/viewtopic.php?id=2602
 	--https://c9.io/lkjoel/minetest-modder/workspace/parseme.txt
