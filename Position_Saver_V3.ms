-- object name and position storage arrays 1-18
P1=#()
P2=#()
P3=#()
P4=#()
P5=#()
P6=#()
P7=#()
P8=#()
P9=#()
P10=#()
P11=#()
P12=#()
P13=#()
P14=#()
P15=#()
P16=#()
P17=#()
P18=#()
-- List's
PaLL = #(P1, P2, P3, P4, P5, P6, P7, P8, P9, P10, P11, P12, P13, P14, P15, P16, P17, P18)
-- List's names string's
PNameAll = #("P1=", "P2=","P3=","P4=","P5=","P6=","P7=","P8=","P9=","P10=","P11=","P12=","P13=","P14=","P15=","P16=","P17=","P18=")
-- Button names strings
Butt_Names = #("Pose_1", "Pose_2", "Pose_3", "Pose_4", "Pose_5", "Pose_6", "Pose_7", "Pose_8", "Pose_9", "Pose_10", "Pose_11", "Pose_12", "Pose_13", "Pose_14", "Pose_15", "Pose_16", "Pose_17", "Pose_18")
-- Button selected to rename
re_Butt =
-- label selected to rename
re_Butt_lab = 
-- Button name position in list
butt_num = 
-- Position Multipler
Multipler = 1
-- current multipler strenght
Curr_mult_str = "1"

-- stores path and chr string in array to make able to wirte in a file as a string
path_to_string = #()
chr_to_string = #()

-- kepes update----------------------------------
-- button base names
button_pic_names = #("Pose_1", "Pose_2", "Pose_3", "Pose_4", "Pose_5", "Pose_6", "Pose_7", "Pose_8", "Pose_9", "Pose_10", "Pose_11", "Pose_12", "Pose_13", "Pose_14", "Pose_15", "Pose_16", "Pose_17", "Pose_18")
-- bitmap sape path
pic_path = "W:/W_SOROZATOK/C_MESE/A_kovacs_es_az_Isten/FPS_Script/"
-- current chr name
CHR = "CHR"
-------------------------------------------------------------

try(DestroyDialog P_S)catch() -- Destroy dialog if its exits

-- MAIN WINDOW
rollout P_S "Pose Saver" width:430 height:750
(
	-- Position load buttons
	groupBox POS_GRP "CHR:" width:420 height:625 pos:[5,100]
	-- Firs Line
	button Pose_1 "Pose_1" pos:[10,120] width:131 height:78
	label Pose_1_L "Pose_1" pos:[58,200]
	button Pose_2 "Pose_2" pos:[150,120] width:131 height:78
	label Pose_2_L "Pose_2" pos:[198,200]
	button Pose_3 "Pose_3" pos:[290,120] width:131 height:78
	label Pose_3_L "Pose_3" pos:[338,200]
	
	button Pose_4 "Pose_4" pos:[10,220] width:131 height:78
	label Pose_4_L "Pose_4" pos:[58,300]
	button Pose_5 "Pose_5" pos:[150,220] width:131 height:78
	label Pose_5_L "Pose_5" pos:[198,300]
	button Pose_6 "Pose_6" pos:[290,220] width:131 height:78
	label Pose_6_L "Pose_6" pos:[338,300]
	-- Second line
	button Pose_7 "Pose_7" pos:[10,320] width:131 height:78
	label Pose_7_L "Pose_7" pos:[58,400]
	button Pose_8 "Pose_8" pos:[150,320] width:131 height:78
	label Pose_8_L "Pose_8" pos:[198,400]
	button Pose_9 "Pose_9" pos:[290,320] width:131 height:78
	label Pose_9_L "Pose_9" pos:[338,400]
	
	button Pose_10 "Pose_10" pos:[10,420] width:131 height:78
	label Pose_10_L "Pose_10" pos:[58,500]
	button Pose_11 "Pose_11" pos:[150,420] width:131 height:78
	label Pose_11_L "Pose_11" pos:[198,500]
	button Pose_12 "Pose_12" pos:[290,420] width:131 height:78
	label Pose_12_L "Pose_12" pos:[338,500]
	-- Third line
	button Pose_13 "Pose_13" pos:[10,520] width:131 height:78
	label Pose_13_L "Pose_13" pos:[58,600]
	button Pose_14 "Pose_14" pos:[150,520] width:131 height:78
	label Pose_14_L "Pose_14" pos:[198,600]
	button Pose_15 "Pose_15" pos:[290,520] width:131 height:78
	label Pose_15_L "Pose_15" pos:[338,600]
	
	button Pose_16 "Pose_16" pos:[10,620] width:131 height:78
	label Pose_16_L "Pose_16" pos:[58,700]
	button Pose_17 "Pose_17" pos:[150,620] width:131 height:78
	label Pose_17_L "Pose_17" pos:[198,700]
	button Pose_18 "Pose_18" pos:[290,620] width:131 height:78
	label Pose_18_L "Pose_18" pos:[338,700]
	
	-- Utilliti buttons
	groupBox UTI_GRP "Utilities:" width:420 height:90 pos:[5,5]
	button SAVE_ALL "Save" pos:[10,25] --SAVE
	button LOAD_ALL "Load" pos:[70,25] -- LOAD
	button HELP "HALPH!" pos:[350,15] -- HELP WINDOW
	button SET_PROJECT "Set Project" pos:[350,40] --CHANGE PROJECT FOLDER
	button SET_CHR_DIAL "Set CHR" pos:[350,65] -- CHANGE CHR
	
	label CURR_PATH pic_path pos:[10,728] -- SHOW  current path in window
	
	groupBox CURR_CHR_GRP "Current CHR:" width:90 height:40 pos:[168,10]
	label CURR_CHR CHR pos:[200,25] -- SHOWS CURRENT CHR
	
	-- Multipler Buttons
	button FULL "1,0" pos:[10,70]
	button THIRD "0,75" pos:[50,70]
	button HALF "0,5" pos:[95,70]
	button QUARTER "0,25" pos:[135,70]
	button TENTH "0,1" pos:[180,70]
	
	label CURRENT_MULT_STR "Current Multipler:" pos:[220,75]
	label CURRENT_MULT "1" pos:[315,75] -- SHOWS CURRENT MULTIPLER
	
	
	
	--Fuggvenyek
	
	
	fn BUTT_PIC butt_pos = -- CAPTURE THE VIEWPOT AS BITMAP AND PUT ON THE CELECTED BUTTON AND SAVES IT
	(
	saved_name = CHR+butt_pos -- a mentett nev az aktualis karakter nevebol es a kivalasztott gomb szamatol fugg pl.: Guzu01
	
	view_pic = gw.getViewportDib() -- lakapja a viewot
	
	thumb_pic = bitmap 131 78 -- csinal egy ures tumbnail kepet
	
	copy view_pic thumb_pic -- a view kepet belekopizza az uresbe ezzel atmeretezi
	
	re_Butt.images = #(thumb_pic, undefined, 1,1,1,1,1 ) -- rarakja a képet a definialt gombra
	
	thumb_pic.filename = pic_path + saved_name -- a kep megkapja a lementes helyet es nevet
	
	button_pic_names[butt_num] = saved_name -- a kep nevet lementi egy listaba
	
	save thumb_pic  -- nementi a kepet a megadott helyre a megadott neven
		
	print button_pic_names
	)
	
	
	fn SET_PROJECT_PATH = -- MAKES WINDOW WHERE 
	(
		new_path = getSavePath caption:"Set projecth path" + "/"
		
		pic_path = new_path
		
		CURR_PATH.text = new_path
		
	)
	
	fn SET_CHR_NAME =
	(
		try(DestroyDialog CHR_SET)catch() -- Destroy dialog if its exits
		rollout CHR_SET "Set CHR"
		(
			edittext NEW_NAME "Set CHR"
			button OK_Close "Ok" pos:[10,50]
			
			on NEW_NAME entered txt do
			(
				CHR = txt -- Set new button name
				CURR_CHR.text = txt
			)
			
			on OK_Close pressed do
			(
				destroyDialog CHR_SET
			)
		)
		createDialog CHR_SET
	)
------------------------------------------------------------------------------------------------------------------------------------------------------------	
	
	
	
	fn GET_BUTTON butt_list =
	-- Saves selected obpect positions to selected array
	(
		for i in $ do
		(
			incoll = #()
			a = i.name
			b = i.position.controller.value
			append incoll a
			append incoll b
			append butt_list incoll
		)
	)
	
	fn SET_BUTTON butt_list =
	-- Sets to object to position from selected array
	(
		for i in butt_list do
		(
			print i[1]
			print i[2]
			ctrl = getnodebyname i[1]
			ctrl.position.controller.value = (Multipler*i[2])
				
		)
	)
	
	fn RE_N_B = 
	-- Rename Button dialog
	(
		try(DestroyDialog R_B)catch() -- Destroy dialog if its exits
		rollout R_B "RE_Name Button"
		(
			edittext NEW_NAME "Pose Name"
			button OK_Close "Ok" pos:[10,50]
			
			on NEW_NAME entered txt do
			(
				re_Butt_lab.text = txt -- Set new button name 
				Butt_Names[butt_num] = txt -- Save button new name
			)
			
			on OK_Close pressed do
			(
				destroyDialog R_B
			)
		)
		createDialog R_B
	)
	
	
	
	
	fn SAVE_ARRAYS =
		-- Saves object positions to file
	(
		mydoc = getSaveFileName()
		myfile = createFile mydoc
		-------------------------------------------Save array's
			format "P1=#( " to: myfile
			a = 1
			for i in P1 do
			(
				format "%" i to: myfile
				if  a < P1.count do
				(
					format "," to: myfile
				)
				a = a +1
			)
			format")\n" to: myfile
		-------------------------------------------------------
			format "P2=#( " to: myfile
			a = 1
			for i in P2 do
			(
				format "%" i to: myfile
				if  a < P2.count do
				(
					format "," to: myfile
				)
				a = a +1
			)
			format")\n" to: myfile
		-------------------------------------------------------
			format "P3=#( " to: myfile
			a = 1
			for i in P3 do
			(
				format "%" i to: myfile
				if  a < P3.count do
				(
					format "," to: myfile
				)
				a = a +1
			)
			format")\n" to: myfile
		-------------------------------------------------------
			format "P4=#( " to: myfile
			a = 1
			for i in P4 do
			(
				format "%" i to: myfile
				if  a < P4.count do
				(
					format "," to: myfile
				)
				a = a +1
			)
			format")\n" to: myfile
		-------------------------------------------------------
			format "P5=#( " to: myfile
			a = 1
			for i in P5 do
			(
				format "%" i to: myfile
				if  a < P5.count do
				(
					format "," to: myfile
				)
				a = a +1
			)
			format")\n" to: myfile
		-------------------------------------------------------
			format "P6=#( " to: myfile
			a = 1
			for i in P6 do
			(
				format "%" i to: myfile
				if  a < P6.count do
				(
					format "," to: myfile
				)
				a = a +1
			)
			format")\n" to: myfile
		-------------------------------------------------------
			format "P7=#( " to: myfile
			a = 1
			for i in P7 do
			(
				format "%" i to: myfile
				if  a < P7.count do
				(
					format "," to: myfile
				)
				a = a +1
			)
			format")\n" to: myfile
		-------------------------------------------------------
			format "P8=#( " to: myfile
			a = 1
			for i in P8 do
			(
				format "%" i to: myfile
				if  a < P8.count do
				(
					format "," to: myfile
				)
				a = a +1
			)
			format")\n" to: myfile
		-------------------------------------------------------
			format "P9=#( " to: myfile
			a = 1
			for i in P9 do
			(
				format "%" i to: myfile
				if  a < P9.count do
				(
					format "," to: myfile
				)
				a = a +1
			)
			format")\n" to: myfile
		-------------------------------------------------------
			format "P10=#( " to: myfile
			a = 1
			for i in P10 do
			(
				format "%" i to: myfile
				if  a < P10.count do
				(
					format "," to: myfile
				)
				a = a +1
			)
			format")\n" to: myfile
		-------------------------------------------------------
			format "P11=#( " to: myfile
			a = 1
			for i in P11 do
			(
				format "%" i to: myfile
				if  a < P11.count do
				(
					format "," to: myfile
				)
				a = a +1
			)
			format")\n" to: myfile
		-------------------------------------------------------
			format "P12=#( " to: myfile
			a = 1
			for i in P12 do
			(
				format "%" i to: myfile
				if  a < P12.count do
				(
					format "," to: myfile
				)
				a = a +1
			)
			format")\n" to: myfile
		-------------------------------------------------------
			format "P13=#( " to: myfile
			a = 1
			for i in P13 do
			(
				format "%" i to: myfile
				if  a < P13.count do
				(
					format "," to: myfile
				)
				a = a +1
			)
			format")\n" to: myfile
		-------------------------------------------------------
			format "P14=#( " to: myfile
			a = 1
			for i in P14 do
			(
				format "%" i to: myfile
				if  a < P14.count do
				(
					format "," to: myfile
				)
				a = a +1
			)
			format")\n" to: myfile
		-------------------------------------------------------
			format "P15=#( " to: myfile
			a = 1
			for i in P15 do
			(
				format "%" i to: myfile
				if  a < P15.count do
				(
					format "," to: myfile
				)
				a = a +1
			)
			format")\n" to: myfile
		-------------------------------------------------------
			format "P16=#( " to: myfile
			a = 1
			for i in P16 do
			(
				format "%" i to: myfile
				if  a < P16.count do
				(
					format "," to: myfile
				)
				a = a +1
			)
			format")\n" to: myfile
		-------------------------------------------------------
			format "P17=#( " to: myfile
			a = 1
			for i in P17 do
			(
				format "%" i to: myfile
				if  a < P17.count do
				(
					format "," to: myfile
				)
				a = a +1
			)
			format")\n" to: myfile
		-------------------------------------------------------
			format "P18=#( " to: myfile
			a = 1
			for i in P18 do
			(
				format "%" i to: myfile
				if  a < P18.count do
				(
					format "," to: myfile
				)
				a = a +1
			)
			format")\n" to: myfile
		-------------------------------------------------------
			
		path_to_string = #(pic_path)
		chr_to_string = #(CHR)
		
		format "Butt_Names = %\n" Butt_Names to: myfile
		
		format "button_pic_names = %\n" button_pic_names to: myfile
		
		format "path_to_string = %\n" path_to_string to: myfile
		
		format "chr_to_string = %" chr_to_string to: myfile

		close myfile
		
	)
	
	fn LOAD_DATA =
	(
		MyOpDocPath = getOpenFileName()

		MyOpDoc = openFile MyOpDocPath
		

		execute (MyOpDoc)

		
		close MyOpDoc
	)
	
	
	
	--Button Actions----------------------------------------------------------------------------------
	
	-- Multipler Button actions
	on FULL pressed do
	(
		Multipler = 1
		CURRENT_MULT.text = "1"
	)
	
	on THIRD pressed do
	(
		Multipler = 0.75
		CURRENT_MULT.text = "0,75"
	)
	
	on HALF pressed do
	(
		Multipler = 0.5
		CURRENT_MULT.text = "0,5"
	)
	
	on QUARTER pressed do
	(
		Multipler = 0.25
		CURRENT_MULT.text = "0,25"
	)
	
	on TENTH pressed do
	(
		Multipler = 0.1
		CURRENT_MULT.text = "0,1"
	)
	
	-- Utilliti button actions
	on LOAD_ALL pressed do
	(
		LOAD_DATA()
		
		CHR = chr_to_string[1]
		pic_path = path_to_string[1]
		
		CURR_CHR.text = CHR
		CURR_PATH.text = pic_path
		-- Load button names
		Pose_1_L.text = Butt_Names[1]
		Pose_2_L.text = Butt_Names[2]
		Pose_3_L.text = Butt_Names[3]
		Pose_4_L.text = Butt_Names[4]
		Pose_5_L.text = Butt_Names[5]
		Pose_6_L.text = Butt_Names[6]
		Pose_7_L.text = Butt_Names[7]
		Pose_8_L.text = Butt_Names[8]
		Pose_9_L.text = Butt_Names[9]
		Pose_10_L.text = Butt_Names[10]
		Pose_11_L.text = Butt_Names[11]
		Pose_12_L.text = Butt_Names[12]
		Pose_13_L.text = Butt_Names[13]
		Pose_14_L.text = Butt_Names[14]
		Pose_15_L.text = Butt_Names[15]
		Pose_16_L.text = Butt_Names[16]
		Pose_17_L.text = Butt_Names[17]
		Pose_18_L.text = Butt_Names[18]
		
		try -- Load button picurates
		(
		Pose_1.images = #((pic_path + button_pic_names[1]), undefined, 1,1,1,1,1 )
		Pose_2.images = #((pic_path + button_pic_names[2]), undefined, 1,1,1,1,1 )
		Pose_3.images = #((pic_path + button_pic_names[3]), undefined, 1,1,1,1,1 )
		Pose_4.images = #((pic_path + button_pic_names[4]), undefined, 1,1,1,1,1 )
		Pose_5.images = #((pic_path + button_pic_names[5]), undefined, 1,1,1,1,1 )
		Pose_6.images = #((pic_path + button_pic_names[6]), undefined, 1,1,1,1,1 )
		Pose_7.images = #((pic_path + button_pic_names[7]), undefined, 1,1,1,1,1 )
		Pose_8.images = #((pic_path + button_pic_names[8]), undefined, 1,1,1,1,1 )
		Pose_9.images = #((pic_path + button_pic_names[9]), undefined, 1,1,1,1,1 )
		Pose_10.images = #((pic_path + button_pic_names[10]), undefined, 1,1,1,1,1 )
		Pose_11.images = #((pic_path + button_pic_names[11]), undefined, 1,1,1,1,1 )
		Pose_12.images = #((pic_path + button_pic_names[12]), undefined, 1,1,1,1,1 )
		Pose_13.images = #((pic_path + button_pic_names[13]), undefined, 1,1,1,1,1 )
		Pose_14.images = #((pic_path + button_pic_names[14]), undefined, 1,1,1,1,1 )
		Pose_15.images = #((pic_path + button_pic_names[15]), undefined, 1,1,1,1,1 )
		Pose_16.images = #((pic_path + button_pic_names[16]), undefined, 1,1,1,1,1 )
		Pose_17.images = #((pic_path + button_pic_names[17]), undefined, 1,1,1,1,1 )
		Pose_18.images = #((pic_path + button_pic_names[18]), undefined, 1,1,1,1,1 )
		) 
		catch()
	)
	
	on SAVE_ALL pressed do
	(
		SAVE_ARRAYS() -- Save botton datas and button names in a file
	)
	
	on HELP pressed do
	(
		rollout HALPHI "HELP! Im an animator!"  width:585 height:120 -- Help window
		(
			groupBox HELP_GRP "HELP by TOMI" width:580 height:115 pos:[3,1]
			label HELP_1 "Right Click on button: Saves the actual position of the selected object's and create an image button from the viewport"  pos:[8,15]
			label HELP_2 "Left click on button: Sets the object to the saved position"  pos:[8,30]
			label HELP_3 "Save, Load: Save, load files" pos:[8,45]
			label HELP_4 "Numbered Multipler buttons: Set's the strenght of the saved pose" pos:[8,60]
			label HELP_5 "Set Project button: The path where the viewport picurates get saved" pos:[8,75]
			label HELP_6 "Set CHR button: The current charachter name, this name was used when the picurates begin saved" pos:[8,90]
		)
		
		createDialog HALPHI
	)
	
	on SET_PROJECT pressed do
	(
		SET_PROJECT_PATH()
	)
	
	on SET_CHR_DIAL pressed do
	(
		SET_CHR_NAME()
	)
	
	-- Position button actions
	on Pose_1 rightclick  do
	(
		GET_BUTTON P1
		re_Butt = Pose_1
		re_Butt_lab = Pose_1_L
		butt_num = 1
		BUTT_PIC "01.png" ---------- NEW
		RE_N_B ()
	)
	
	on Pose_1 pressed do
	(
		SET_BUTTON P1
	)
	
	on Pose_2 rightclick  do
	(
		GET_BUTTON P2
		re_Butt = Pose_2
		re_Butt_lab = Pose_2_L
		butt_num = 2
		BUTT_PIC "02.png" ---------- NEW
		RE_N_B ()
	)
	
	on Pose_2 pressed do
	(
		SET_BUTTON P2
	)

		on Pose_3 rightclick  do
	(
		GET_BUTTON P3
		re_Butt = Pose_3
		re_Butt_lab = Pose_3_L
		butt_num = 3
		BUTT_PIC "03.png" ---------- NEW
		RE_N_B ()
	)
	
	on Pose_3 pressed do
	(
		SET_BUTTON P3
	)

		on Pose_4 rightclick  do
	(
		GET_BUTTON P4
		re_Butt = Pose_4
		re_Butt_lab = Pose_4_L
		butt_num = 4
		BUTT_PIC "04.png" ---------- NEW
		RE_N_B ()
	)
	
	on Pose_4 pressed do
	(
		SET_BUTTON P4
	)

		on Pose_5 rightclick  do
	(
		GET_BUTTON P5
		re_Butt = Pose_5
		re_Butt_lab = Pose_5_L
		butt_num = 5
		BUTT_PIC "05.png" ---------- NEW
		RE_N_B ()
	)
	
	on Pose_5 pressed do
	(
		SET_BUTTON P5
	)

		on Pose_6 rightclick  do
	(
		GET_BUTTON P6
		re_Butt = Pose_6
		re_Butt_lab = Pose_6_L
		butt_num = 6
		BUTT_PIC "06.png" ---------- NEW
		RE_N_B ()
	)
	
	on Pose_6 pressed do
	(
		SET_BUTTON P6
	)

		on Pose_7 rightclick  do
	(
		GET_BUTTON P7
		re_Butt = Pose_7
		re_Butt_lab = Pose_7_L
		butt_num = 7
		BUTT_PIC "07.png" ---------- NEW
		RE_N_B ()
	)
	
	on Pose_7 pressed do
	(
		SET_BUTTON P7
	)

		on Pose_8 rightclick  do
	(
		GET_BUTTON P8
		re_Butt = Pose_8
		re_Butt_lab = Pose_8_L
		butt_num = 8
		BUTT_PIC "08.png" ---------- NEW
		RE_N_B ()
	)
	
	on Pose_8 pressed do
	(
		SET_BUTTON P8
	)

		on Pose_9 rightclick  do
	(
		GET_BUTTON P9
		re_Butt = Pose_9
		re_Butt_lab = Pose_9_L
		butt_num = 9
		BUTT_PIC "09.png" ---------- NEW
		RE_N_B ()
	)
	
	on Pose_9 pressed do
	(
		SET_BUTTON P9
	)

		on Pose_10 rightclick  do
	(
		GET_BUTTON P10
		re_Butt = Pose_10
		re_Butt_lab = Pose_10_L
		butt_num = 10
		BUTT_PIC "10.png" ---------- NEW
		RE_N_B ()
	)
	
	on Pose_10 pressed do
	(
		SET_BUTTON P10
	)

		on Pose_11 rightclick  do
	(
		GET_BUTTON P11
		re_Butt = Pose_11
		re_Butt_lab = Pose_11_L
		butt_num = 11
		BUTT_PIC "11.png" ---------- NEW
		RE_N_B ()
	)
	
	on Pose_11 pressed do
	(
		SET_BUTTON P11
	)

		on Pose_12 rightclick  do
	(
		GET_BUTTON P12
		re_Butt = Pose_12
		re_Butt_lab = Pose_12_L
		butt_num = 12
		BUTT_PIC "12.png" ---------- NEW
		RE_N_B ()
	)
	
	on Pose_12 pressed do
	(
		SET_BUTTON P12
	)

		on Pose_13 rightclick  do
	(
		GET_BUTTON P13
		re_Butt = Pose_13
		re_Butt_lab = Pose_13_L
		butt_num = 13
		BUTT_PIC "13.png" ---------- NEW
		RE_N_B ()
	)
	
	on Pose_13 pressed do
	(
		SET_BUTTON P13
	)

		on Pose_14 rightclick  do
	(
		GET_BUTTON P14
		re_Butt = Pose_14
		re_Butt_lab = Pose_14_L
		butt_num = 14
		BUTT_PIC "14.png" ---------- NEW
		RE_N_B ()
	)
	
	on Pose_14 pressed do
	(
		SET_BUTTON P14
	)

		on Pose_15 rightclick  do
	(
		GET_BUTTON P15
		re_Butt = Pose_15
		re_Butt_lab = Pose_15_L
		butt_num = 15
		BUTT_PIC "15.png" ---------- NEW
		RE_N_B ()
	)
	
	on Pose_15 pressed do
	(
		SET_BUTTON P15
	)

		on Pose_16 rightclick  do
	(
		GET_BUTTON P16
		re_Butt = Pose_16
		re_Butt_lab = Pose_16_L
		butt_num = 16
		BUTT_PIC "16.png" ---------- NEW
		RE_N_B ()
	)
	
	on Pose_16 pressed do
	(
		SET_BUTTON P16
	)

		on Pose_17 rightclick  do
	(
		GET_BUTTON P17
		re_Butt = Pose_17
		re_Butt_lab = Pose_7_L
		butt_num = 17
		BUTT_PIC "17.png" ---------- NEW
		RE_N_B ()
	)
	
	on Pose_17 pressed do
	(
		SET_BUTTON P17
	)

		on Pose_18 rightclick  do
	(
		GET_BUTTON P18
		re_Butt = Pose_18
		re_Butt_lab = Pose_18_L
		butt_num = 18
		BUTT_PIC "18.png" ---------- NEW
		RE_N_B ()
	)
	
	on Pose_18 pressed do
	(
		SET_BUTTON P18
	)

	
)



createDialog P_S
