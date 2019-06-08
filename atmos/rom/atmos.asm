		* = $c000

; zero page variables
									;$00-$0b		AFAIK can be used by developer
		hex_ptr = $0c 				;$0c,$0d		indirect pointer for screen and hex number construction area.
		screen_ptr = $0e			;$0e,$0f		indirect pointer for the screen.
		hires_cursor_addr = $10		;$10,$11		address of hires cursor.
		text_cursor_addr = $12		;$12,$13		address of text cursor.
		workspace = $14				;$14—$16		expression workspace.
		ctrl_c_flag = $17			;$17			set to 1 if ctrl c pressed, otherwise 0.
		tokenising_ptr = $18		;$18,$19		tokenising pointer.
		ready_routine = $1a			;$1a—$1c		jump location to print 'ready'.
		program_line_counter = $1d	;$1d,$1e		counter for searching through lines of program.
		calc_cursor_addr = $1f		;$1f,$20		calculation of cursor address.
		usr_ptr = $21				;$21—$23		jump location for usr command.
		workspace2 = $24			;$24—$26		expression workspace.
		tmp = $27					;$27			temporary storage — often for characters being printed.
		string_handling = $28		;$28			set to #ff if dealing with strings.
		integer_handling = $29		;$29			bit 7 is set if using integer variable.
		gc_or_data_skip = $2a		;$2a			garbage collection flag or flag for skipping through data statements.
		int_store_recall = $2b		;$2b			bit 7 when set inhibits the use of integers. bit 6 when set	indicates store or recall commands in use.
		input_err_flag = $2c		;$2c			zero if redoing input from start.
		tmp_expr_eval = $2d			;$2d			temporary storage for expression evaluator.
		ctrl_o_flag = $2e			;$2e			ctrl o flag. 0 if output to screen enabled.
		byte_from_cas = $2f			;$2f			next byte to/from cassette.
		cursor_pos = $30			;$30			cursor position for basic printout.
		scr_line_width = $31		;$31			screen line width.
		line_with = $32				;$32			8 - multiple line width.
		int_conv_fpa = $33			;$33,$34		integer values to/from main floating point accumulator.
		input_buf = $35				;$35-$84		input buffer. (79 bytes)
		filename_v10 = $35			;$35-$48		name of program required for cload (v1.0 only).
		loaded_program_v10 = $49	;$49-$5d		name of program just loaded (v1.0 only).
		start_addr_tape_v10 = $5f	;$5f,$60		start address of data to/from tape (v1.0 only).
		end_addr_tape_v10 = $61		;$61,$62		end address of data to/from tape (v1.0 only).
		tape_auto_v10 = $63			;$63			1 when using auto else 0 (v1.0 only).
		load_mode_v10 = $64			;$64			0 for basic, 1 for machine code (v1.0 only).
		tape_speed_v10 = $67		;$67			tape speed - 0 fast, 1 slow (v1.0 only).
		str_stack_ptr = $85			;$85			string block stack pointer.
		active_str_ptr = $86		;$86,$87		address of top active string in memory.
		tmp_str_stack = $88			;$88-$90		temporary string stack.
		str_ptr = $91				;$91,$92		string address pointer.
		mem_ptr = $93				;$93,$94		general memory pointer.
		mul_div_wa = $95			;$95—$99		work area for multiply and divide routines.
		basic_start_ptr = $9a		;$9a,$9b		start of basic pointer.
		basic_end_ptr = $9c			;$9c,$9d		end of basic pointer
		var_end_ptr = $9e			;$9e,$9f		end of variables pointer.
		arr_end_ptr = $a0			;$a0,$a1		end of arrays pointer.
		str_area_end = $a2			;$a2,$a3		bottom of string area pointer.
		alloc_str_ptr = $a4			;$a4,$a5		work pointer for allocating strings.
		himem = $a6					;$a6,$a7		himem.
		cur_line_num = $a8			;$a8,$a9		current line number, top byte is #ff if in command mode.
		prev_line_num = $aa			;$aa,$ab		previous line number.
		last_line_addr = $ac		;$ac,$ad		last line start address.
		tmp_cpy_line_num = $ae		;$ae,$af		temporary copy of line number.
		data1_ptr = $b0				;$b0,$b1		data pointer.
		data2_ptr = $b2				;$b2,$b3		data pointer.
		last_var_accessed = $b4		;$b4,$b5		last variable name accessed.
		last_value_accessed = $b6	;$b6,$b7		address of last variable value accessed.
		tmp_dst_var_ptr = $b8		;$b8,$b9		destination pointer for temporary assignment of variable.
		tmp2_expr_eval = $ba		;$ba			temporary storage for expression evaluator.
									;$bb,$bc		free for developer to use
		tmp_fpa1 = $bd				;$bd—$c1		temporary storage of floating point accumulator.
		fn_ptr = $bd				;$bd,$be		fn (function) pointer.
		str2_ptr = $bf				;$bf,$c0		string pointer.
		str_ptr_size_gc = $c2		;$c2			string pointer size, used in garbage collection.
		jmp_eval_num_fn = $c3		;$c3—$c5		jump location to evaluate numeric functions.
		tmp_rounding = $c5			;$c5 			also used as a temporary store of the rounding byte for mathematical operations.
		tmp_fpa2 = $c6				;$c6—$ca		temporary storage of floating point accumulator.
		ptr1 = $c7					;$c7,$c8		pointer.
		ptr2 = $c9					;$c9,$ca		pointer.
		tmp_fpa3 = $cb				;$cb—$cf		temporary storage of floating point accumulator.
		store_ptr = $ce				;$ce,$cf		pointer for store.
		exp_main_fpa = $d0			;$d0			exponent of main floating point accumulator.
		mantissa_main_fpa = $d1		;$d1—$d4		mantissa of main floating point accumulator.
		sign_main_unpck_fpa = $d5	;$d5			sign of mantissa for main fpa when unpacked.
		series_eval_cnt = $d6		;$d6			series evaluation counter.
		sign_extend_byte = $d7		;$d7			sign extend byte.
		exp_work_fpa = $d8			;$d8			exponent of work floating point accumulator.
		mantissa_work_fpa = $d9		;$d9—$dc		mantissa of work floating point accumulator.
		sign_work_unpck_fpa = $dd	;$dd			sign of mantissa for work fpa when unpacked.
		str3_ptr = $d3				;$de,$df		string pointer.
		xor_sgn_wrk_main_fpa = $de	;$de			holds exclusive or of sign byte of both fpas.
		rounding = $df				;$df			rounding byte for calculations.
		array_str_wa = $e0			;$e0,$e1		array and string workspace.
		next_non_spc_char = $e2		;$e2—$f2		routine to step through program to find next non space char. see $ec9c of disassembly.
		pos_ptr = $e9				;$e9,$ea		position pointer in program.
									;$f3-$f9		free for developer to use
		copy_fpa_for_rnd = $fa		;$fa—$fe		copy of floating point number used by rnd.
		str_cnv =$ff				;$ff			used in number to string conversion.

		;page 2 variables
		scr_handling_ptr = $200		;$200,$201	Pointer for screen handling.
		scr_handling_ptr2 = $202	;$202,$203	Pointer for screen handling.
		hires_wa = $204				;$204-$207	Work bytes for Hires routines.
		key_addr_pressed = $208		;$208		Key address if pressed — #38 if no key pressed.
		key_status = $209			;$209		Key status,
									;			#38 - Default,
									;			#A2 - CONTROL,
									;			#A4 - Left SHIFT,
									;			#A5 - FUNCTION (Atmos only),
									;			#A7 - Right SHIFT.
		repeat_key_col = $20a		;$20A		Saved key column for repeat.
									;$20B		Not used but gets written over by routine that sets $208 - $20A.
		caps_on_flag = $20C			;$20C		Bit 7 is set if CAPS is on otherwise clear.
									;$20D		free for developer to use
		key_repeat_counter = $20E	;$20E		Repeat counter for keyboard.
									;$20F		free for developer to use
		tmp_key_row_repeat = $210	;$210		Temporary store of row of key being tested for repeat.
		tmp_key_row_strobe = $211	;$211		Temporary store of keyboard row during strobe routine.
		fb_hires = $212				;$212		Holds FB code in hires commands.
		pattern_data = $213			;$213		Pattern data for hires screen.
		tmp_pattern_data = $214		;$214		Temporary copy of pattern byte for drawing lines.
		pixel_pos_in_byte = $215	;$215		Holds position of pixel in byte corresponding to position of cursor on hires screen.
		tmp_hires_x_pos = $216		;$216		Temporary store of hires X cursor positions.
		tmp_hires_y_pos = $217		;$217		Temporary store of hires Y cursor positions.
		tmp_pixel_pos_in_byte= $218	;$218		Temporary store for content of pixel_pos_in_byte.
		hires_x_pos = $219			;$219		Hires cursor — X coordinate.
		hires_y_pos = $21A			;$21A		Hires cursor — Y coordinate.
									;$21B-$21E  Unused
		graphics_mode = $21F		;$21F		0 - LORES, 1 - HIRES.
		oric_model = $220			;$220		0 - 48K Oric, 1 - 16K Oric.
									;$221-$227	Unused
									;$228-$22A	Jump to IRQ routine (V1.0).
									;$22B-$22D	Jump to NMI routine (V1.0).
									;$22E,$22F	Unused
									;$230		RTI instruction (V1.0).
									;$231-$237	Unused
		chrout = $238				;$238-$23A	Jump to PRINT CHARACTER on screen (V1.1).
		chrin = $23B				;$23B-$23D	Jump to GET KEY routine (V1.1).
		prtout = $23E				;$23E-$240	Jump to SEND BYTE TO PRINTER (V1.1).
		print_status = $241			;$241-$243	Jump to PRINT TO STATUS LINE (V1.1).
		irq_vec = $244				;$244-$246	Jump to IRQ routine (V1.1).
		nmi_vec = $247				;$247-$249	Jump to NMI routine (V1.1).
		interceptable_rti = $24a 	;$24A—$24C	RTI instruction which can be intercepted by a jump (V1.1).
		tape_speed_v11 = $24D		;$24D		Tape speed, 0 - fast, 1 - slow (V1.1).
		key_repeat_delay_ini=$24e	;$24E		Keyboard initial repeat deiay (V1.1).
		key_repear_delay_suc=$24f 	;$24F		Keyboard successive repeat delay (V1.1).
									;$250		Unused
		cur_enable_in_ctrl = $251	;$251		Cursor enable in CTRL routines (V1.1).
		else_pending = $252			;$252		ELSE pending flag, 1 - on, 0-off (V1.1).
									;$253-$255  Not used?
		printer_width = $256		;$256		Printer width (V1.1).
		screen_width = $257			;$257		Screen width (V1.1).
		printer_cur_pos = $258		;$258		Printer cursor position (V1.1).
		screen_cur_pos = $259		;$259		Screen cursor position (V1.1).
		cassette_join = $25a		;$25A		Cassette JOIN flag, off when 0 (V1.1).
		cassette_verify = $25b		;$25B		Cassette VERIFY flag, off when 0 (V1.1).
		cassette_verify_cnt = $25c	;$25C,$25D	Cassette verify error counter (V1.1).
									;$25E		Not used?
		status_line_msg = $25f		;$25F,$260	Contains 1 byte messages printed to status line.
		ctrl_char_vec = $261		;$261,$262	Indirect jump for CTRL character routine.
		tmp_storage	= $263			;$263,$264	Temporary storage.
		cursor_state = $265			;$265		Current cursor state indicator, 0 - off, 1 — on.
									;$266,$267	Not used?
		cursor_row = $268			;$268		Cursor row number, (status line is row 0).
		cursor_column = $269		;$269		Cursor column position.
		flag = $26a					;$26A		Flag byte.
									;
									;Bit     Flag function when bit is set to 1.
									;0       Cursor on.
									;1       Printout to screen enabled.
									;2       Unused.
									;3       Disable keyclick.
									;4       Previous printed character was ESC
									;5       Protect columns 0 and 1 of screen.
									;6       Double height characters.
									;7       Unused.
									;
		paper_colour = $26b			;$26B		Paper colour (+16).
		ink_colour = $26c			;$26C		Ink colour.
		screen_mem_start = $26d		;$26D,$26E	Start address of screen memory.
		text_lines_avaiable = $26f	;$26F		Number of text lines available on screen (V1.0).
		cursor_on_off = $270		;$270		Cursor on/off flag.
		cursor_invert = $271		;$271		Cursor invert flag.
		keyboard_timer = $272		;$272,$273	Keyboard timer.
		cursor_timer = $274			;$274,$275	Cursor timer.
		spare_counter = $276		;$276,$277	Spare counter — also used by WAIT (and printer in V1.0).
		screen_second_line = $278	;$278,$279	Address of second line on screen (V1.1).
		screen_first_line = $27a	;$27A,$27B	Address of first line on screen (V1.1).
		char_screen_scroll = $27c	;$27C,$27D	Number of characters normally used in screen scrolling,
									;			26 x 40 – 1,040 or #410 (V1.1).
		text_rows_available = $27e	;$27E		Number of rows of text available (V1.1).
		filename_to_load = $27f		;$27F-$28F	Name of program to be loaded off cassette (V1.1).
									;$290-$292	Not used?
		filename_loaded = $293		;$293-$2A3	Name of file just loaded off cassette (V1.1).
									;$2A4-$2A8	Not used?
		cassette_data_start = $2a9	;$2A9,$2AA	Start address of data for / from cassette (V1.1).
		cassette_data_end = $2ab	;$2AB,$2AC	End address of data for/from cassette (V1.1).
		auto_indicator = $2ad		;$2AD		Auto indicator, 0 is off (V1.1).
		program_type = $2ae			;$2AE		Program type.
		arr_type_str_handling = $2af;$2AF		Array type - copy of $28(V1.1).
		arr_type_int_handling = $2b0;$2B0		Array type - copy of $29 (V1. 1).
		format_error = $2b1			;$2B1		Bit 7 set to 1 if format error.
									;$2B2-$2BF	Not used?
		screen_status = $2c0		;$2C0		Screen status, 0=GRAB, 2=TEXT and 3=HIRES.
		hires_char_set = $2c1		;$2C1,$2C2	Char set start address in HIRES mode (V1.1).
		hires_cur_move = $2c3		;$2C3		Cursor movement in hires, 0 = Absolute, 1 = Relative(?)
									;$2C4-$2DE	Not used?
		latest_key_form_kbd = $2df	;$2DF		Latest key from keyboard. Bit 7 set if valid.
		error_snd_graph = $2e0		;$2E0		Non zero if error in Sound / Graphics routines.
		param_loc_1 = $2e1			;$2E1,$2E2	First parameter location for the sound and graphics commands
									;			(including INK and PAPER). Lower byte of integer is at $02E1.
		param_loc_2 = $2e3			;$2E3,$2E4	Second parameter location for the sound and graphics commands.
									;			Lower byte of integer is at $2E3.
		param_loc_3 = $2e5			;$2E5,$2E6	Third parameter location for the sound and graphics commands.
									;			Lower byte of integer is at $2E5.
		param_loc_4 = $2e7			;$2E7,$2E8	Fourth parameter location which is only used by MUSIC and PLAY.
									;			Lower byte of integer is at $2E7.
									;$2E9-$2F0	Not used?
		printer_enabled = $2f1		;$2F1		Bit 7 set to 1 if printer enabled.
		edit_flag = $2f2			;$2F2		Bit 7 is EDIT flag, set to 1 when on.
									;$2F3		Not used?
		trace_flag = $2f4			;$2F4		TRACE flag, set if bit 7 is set.
		exclamation_mark_vec = $2f5	;$2F5,$2F6	Indirect jump for '!' routine.
									;$2F7		Not used?
		plot_row_tmp = $2f8			;$2F8		Temporary row indicator for PLOT.
									;$2F9,$2FA	Not used?
		and_vec = $2fb				;$2FB-$2FD	Jump to '&' routine.
									;$2FE-$2FF	Free for developer use

		; via device addresses:
        via1base = $0300			; VIA 6522 address
        via1rb   = via1base+0     	; write output register b, read input register b
        via1ra   = via1base+1     	; write output register a, read input register a
        via1ddrb = via1base+2     	; data direction register b
        via1ddra = via1base+3     	; data direction register a
        via1t1cl = via1base+4     	; write t1 low-order latches, read t1 low-order counter
        via1t1ch = via1base+5     	; t1 high-order counter
        via1t1ll = via1base+6     	; t1 low-order latches
        via1t1lh = via1base+7     	; t1 high-order latches
        via1t2cl = via1base+8     	; write t2 low-order latches, read t2 low-order counter
        via1t2ch = via1base+9     	; t2 high-order counter
        via1sr   = via1base+$a    	; shift register
        via1acr  = via1base+$b    	; auxiliary control register
        via1pcr  = via1base+$c    	; peripheral control register
        via1ifr  = via1base+$d    	; interrupt flag register
        via1ier  = via1base+$e    	; interrupt enable register
        via1ranh = via1base+$f    	; same as reg a except no "handshake"


		jmp l_eccc		; jump to start basic
		jmp l_c471		; jump to restart basic

; jump table for each of the commands, in token order. The addresses are -1 offseted because of rts adds one.
		.word end-1
		.word edit-1
		.word store-1
		.word recall-1
		.word tron-1
		.word troff-1
		.word pop-1
		.word plot-1
		.word pull-1
		.word lores-1
		.word doke-1
		.word repeat-1
		.word until-1
		.word for-1
		.word llist-1
		.word lprint-1
		.word next-1
		.word data-1
		.word input-1
		.word dim-1
		.word cls-1
		.word read-1
		.byte $1b		;
		.byte $cb		;
		.byte $e4		;
		.byte $c9		;
		.byte $bc		;
		.byte $c9		;
		.byte $6f		;
		.byte $ca		;
		.byte $51		;
		.byte $c9		;
		.byte $c7		;
		.byte $c9		;
		.word return-1
		.byte $98		;
		.byte $ca		;
		.byte $cd		;
		.byte $eb		;
		.byte $e6		;
		.byte $eb		;
		.byte $0b		;
		.byte $ec		;
		.byte $20
		.byte $ec
		.byte $32
		.byte $ec		;
		.byte $b4		;
		.byte $fa		;
		.byte $ca		;
		.byte $fa		;
		.byte $e0		;
		.byte $fa		;
		.byte $9e		;
		.byte $fa		;
		.byte $fb		;
		.byte $ea		;
		.byte $fb		;
		.byte $ea		;
		.byte $fb		;
		.byte $ea		;
		.byte $ef		;
		.byte $ea		;
		.byte $ef		;
		.byte $ea		;
		.byte $ef		;
		.byte $ea		;
		.byte $ef		;
		.byte $ea		;
		.byte $ef		;
		.byte $ea		;
		.byte $ef		;
		.byte $ea		;
		.byte $ef		;
		.byte $ea		;
		.byte $fb		;
		.byte $ea		;
		.byte $fb		;
		.byte $ea		;
		.byte $70		;
		.byte $c9		;
		.byte $c1		;
		.byte $ca		;
		.byte $57		;
		.byte $d9		;
		.byte $5a		;
		.byte $e8		;
		.byte $08		;
		.byte $e9		;
		.byte $b9		;
		.byte $d4		;
		.byte $4e		;
		.byte $d9		;
		.byte $aa		;
		.byte $cb		;
		.byte $9f		;
		.byte $c9		;
		.byte $47		;
		.byte $c7		;
		.byte $0c		;
		.byte $c7		;
		.byte $45		;
		.byte $cd		;
		.byte $45		;
		.byte $e9		;
		.byte $12		;
		.byte $cd		;
		.byte $ed		;
		.byte $c6		;
		.byte $21		;
		.byte $df		;
		.byte $bd		;
		.byte $df		;
		.byte $49		;
		.byte $df		;
		.byte $21		;
		.byte $00
		.byte $7e
		.byte $d4		;
		.byte $a6		;
		.byte $d4		;
		.byte $b5		;
		.byte $d9		;
		.byte $fb		;
		.byte $02		;
		.byte $2e		;
		.byte $e2		;
		.byte $4f		;
		.byte $e3		;
		.byte $af		;
		.byte $dc		;
		.byte $aa		;
		.byte $e2		;
		.byte $8b		;
		.byte $e3		;
		.byte $92		;
		.byte $e3		;
		.byte $db		;
		.byte $e3		;
		.byte $3f		;
		.byte $e4		;
		.byte $38		;
		.byte $d9		;
		.byte $83		;
		.byte $d9		;
		.byte $d4		;
		.byte $dd		;
		.byte $a6		;
		.byte $d8		;
		.byte $93		;
		.byte $d5		;
		.byte $d7		;
		.byte $d8		;
		.byte $b5		;
		.byte $d8		;
		.byte $16		;
		.byte $d8		;
		.byte $77		;
		.byte $de		;
		.byte $0f		;
		.byte $df		;
		.byte $0b		;
		.byte $df		;
		.byte $da		;
		.byte $da		;
		.byte $3f		;
		.byte $da		;
		.byte $45		;
		.byte $ec		;
		.byte $2a		;
		.byte $d8		;
		.byte $56		;
		.byte $d8		;
		.byte $61		;
		.byte $d8		;
		.byte $79		;
		.byte $24		;
		.byte $db		;
		.byte $79		;
		.byte $0d		;
		.byte $db		;
		.byte $7b		;
		.byte $ef		;
		.byte $dc		;
		.byte $7b		;
		.byte $e6		;
		.byte $dd		;
		.byte $7f		;
		.byte $37		;
		.byte $e2		;
		.byte $50		;
		.byte $e5		;
		.byte $d0		;
		.byte $46		;
		.byte $e2		;
		.byte $d0		;
		.byte $7d		;
		.byte $70		;
		.byte $e2		;
		.byte $5a		;
		.byte $3b		;
		.byte $d0		;
		.byte $64		;
		.byte $12		;
		.byte $d1		;

; basic keywords. the last character has bit 7 set
		.text "EN", "D" | $80
		.text "EDI", "T" | $80
		.text "STOR", "E" | $80
		.text "RECAL", "L" | $80
		.text "TRO" , "N" | $80
		.text "TROF", "F" | $80
		.text "PO", "P" | $80
		.text "PLO", "T" | $80
		.text "PUL", "L" | $80
		.text "LORE", "S" | $80
		.text "DOK", "E" | $80
		.text "REPEA", "T" | $80
		.text "UNTI", "L" | $80
		.text "FO", "R" | $80
		.text "LLIS", "T" | $80
		.text "LPRIN", "T" | $80
		.text "NEX", "T" | $80
		.text "DAT", "A" | $80
		.text "INPU", "T" | $80
		.text "DI", "M" | $80
		.text "CL", "S" | $80
		.text "REA", "D" | $80
		.text "LE", "T" | $80
		.text "GOT", "O" | $80
		.text "RU", "N" | $80
		.text "I", "F" | $80
		.text "RESTOR", "E" | $80
		.text "GOSU", "B" | $80
		.text "RETUR", "N" | $80
		.text "RE", "M" | $80
		.text "HIME", "M" | $80
		.text "GRA", "B" | $80
		.text "RELEAS", "E" | $80
		.text "TEX", "T" | $80
		.text "HIRE", "S" | $80
		.text "SHOO", "T" | $80
		.text "EXPLOD", "E" | $80
		.text "ZA", "P" | $80
		.text "PIN", "G" | $80
		.text "SOUN", "D" | $80
		.text "MUSI", "C" | $80
		.text "PLA", "Y" | $80
		.text "CURSE", "T" | $80
		.text "CURMO", "V" | $80
		.text "DRA", "W" | $80
		.text "CIRCL", "E" | $80
		.text "PATTER", "N" | $80
		.text "FIL", "L" | $80
		.text "CHA", "R" | $80
		.text "PAPE", "R" | $80
		.text "IN", "K" | $80
		.text "STO", "P" | $80
		.text "O", "N" | $80
		.text "WAI", "T" | $80
		.text "CLOA", "D" | $80
		.text "CSAV", "E" | $80
		.text "DE", "F" | $80
		.text "POK", "E" | $80
		.text "PRIN", "T" | $80
		.text "CON", "T" | $80
		.text "LIS", "T" | $80
		.text "CLEA", "R" | $80
		.text "GE", "T" | $80
		.text "CAL", "L" | $80
		.text "!" | $80
		.text "NE", "W" | $80
		.text "TAB", "(" | $80
		.text "T", "O" | $80
		.text "F", "N" | $80
		.text "SPC", "(" | $80
		.text "@" | $80
		.text "AUT", "O" | $80
		.text "ELS", "E" | $80
		.text "THE", "N" | $80
		.text "NO", "T" | $80
		.text "STE", "P" | $80
		.text "+" | $80
		.text "-" | $80
		.text "*" | $80
		.text "/" | $80
		.text "^" | $80
		.text "AN", "D" | $80
		.text "O", "R" | $80
		.text ">" | $80
		.text "=" | $80
		.text "<" | $80
		.text "SG", "N" | $80
		.text "IN", "T" | $80
		.text "AB", "S" | $80
		.text "US", "R" | $80
		.text "FR", "E" | $80
		.text "PO", "S" | $80
		.text "HEX", "$" | $80
		.text "&" | $80
		.text "SQ", "R" | $80
		.text "RN", "D" | $80
		.text "L", "N" | $80
		.text "EX", "P" | $80
		.text "CO", "S" | $80
		.text "SI", "N" | $80
		.text "TA", "N" | $80
		.text "AT", "N" | $80
		.text "PEE", "K" | $80
		.text "DEE", "K" | $80
		.text "LO", "G" | $80
		.text "LE", "N" | $80
		.text "STR", "$" | $80
		.text "VA", "L" | $80
		.text "AS", "C" | $80
		.text "CHR", "$" | $80
		.text "P", "I" | $80
		.text "TRU", "E" | $80
		.text "FALS", "E" | $80
		.text "KEY", "$" | $80
		.text "SCR", "N" | $80
		.text "POIN", "T" | $80
		.text "LEFT", "$" | $80
		.text "RIGHT", "$" | $80
		.text "MID", "$" | $80

		.byte $00

;; error messages
		.text "NEXT WITHOUT FO", "R" | $80
		.text "SYNTA", "X" | $80
		.text "RETURN WITHOUT GOSU", "B" | $80
		.text "OUT OF DAT", "A" | $80
		.text "ILLEGAL QUANTIT", "Y" | $80
		.text "OVERFLO", "W" | $80
		.text "OUT OF MEMOR", "Y" | $80
		.text "UNDEF'D STATEMEN", "T" | $80
		.text "BAD SUBSCRIP", "T" | $80
		.text "REDIM'D ARRA", "Y" | $80
		.text "DIVISION BY ZER", "O" | $80
		.text "ILLEGAL DIREC", "T" | $80
		.text "DISP TYPE MISMATC", "H" | $80
		.text "STRING TOO LON", "G" | $80
		.text "FORMULA TOO COMPLE", "X" | $80
		.text "CAN'T CONTINU", "E" | $80
		.text "UNDEF'D FUNCTIO", "N" | $80
		.text "BAD UNTI", "L" | $80
		.null " ERROR"
		.null " IN "
		.byte $0D, $0A
		.text "Ready ", $0D, $0A, $00
		.text $0D, $0A, " BREAK", $00
;; <====================>
;; end of error messages

l_c3c6:
		tsx				;
		inx				;
		inx				;
		inx				;
		inx				;
l_c3cb:
		lda $0101,x		;
		cmp #$8d		;
		bne l_c3f3		;
		lda $b9			;
		bne l_c3e0		;
		lda $0102,x		;
		sta $b8			;
		lda $0103,x		;
		sta $b9			;
l_c3e0:
		cmp $0103,x		;
		bne l_c3ec		;
		lda $b8			;
		cmp $0102,x		;
		beq l_c3f3		;
l_c3ec:
		txa				;
		clc				;
		adc #$12		;
		tax				;
		bne l_c3cb		;
l_c3f3:
		rts				;

l_c3f4:
		jsr l_c444		;
		sta $a0			;
		sty $a1			;
l_c3fb:
		sec				;
		lda $c9			;
		sbc $ce			;
		sta $91			;
		tay				;
		lda $ca			;
		sbc $cf			;
		tax				;
		inx				;
		tya				;
		beq l_c42f		;
		lda $c9			;
		sec				;
		sbc $91			;
		sta $c9			;
		bcs l_c418		;
		dec $ca			;
		sec				;
l_c418:
		lda $c7			;
		sbc $91			;
		sta $c7			;
		bcs l_c428		;
		dec $c8			;
		bcc l_c428		;
l_c424:
		lda ($c9),y		;
		sta ($c7),y		;
l_c428:
		dey				;
		bne l_c424		;
		lda ($c9),y		;
		sta ($c7),y		;
l_c42f:
		dec $ca			;
		dec $c8			;
		dex				;
		bne l_c428		;
		rts				;

l_c437:
		asl				;
		adc #$3e		;
		bcs l_c47c		;
		sta $91			;
		tsx				;
		cpx $91			;
		bcc l_c47c		;
		rts				;

l_c444:
		cpy $a3			;
		bcc l_c470		;
		bne l_c44e		;
		cmp $a2			;
		bcc l_c470		;
l_c44e:
		pha				;
		ldx #$09		;
		tya				;
l_c452:
		pha				;
		lda $c6,x		;
		dex				;
		bpl l_c452		;
		jsr l_d650		;
		ldx #$f7		;
l_c45d:
		pla				;
		sta $d0,x		;
		inx				;
		bmi l_c45d		;
		pla				;
		tay				;
		pla				;
		cpy $a3			;
		bcc l_c470		;
		bne l_c47c		;
		cmp $a2			;
		bcs l_c47c		;
l_c470:
		rts				;

l_c471:
		lda $02c0		;
		and #$fe		;
		sta $02c0		;
		jmp l_c4a8		;

l_c47c:
		ldx #$4d		;
l_c47e:
		jsr l_c82f		;
		lsr $2e			;
		jsr l_cbf0		;
		jsr l_ccd7		;
l_c489:
		lda $c2a8,x		;
		pha				;
		and #$7f		;
		jsr l_ccd9		;
		inx				;
		pla				;
		bpl l_c489		;
		jsr l_c726		;
		lda #$a6		;
		ldy #$c3		;
l_c49d:
		jsr l_ccb0		;
		ldy $a9			;
		iny				;
		beq l_c4a8		;
		jsr l_e0ba		;
l_c4a8:
		lsr $0252		;
		lsr $2e			;
		lsr $02f2		;
		lda #$b2		;
		ldy #$c3		;
		jsr $001a		;
l_c4b7:
		jsr l_c82f		;
		jsr l_c592		;
		stx $e9			;
		sty $ea			;
		jsr $00e2		;
		tax				;
		beq l_c4b7		;
		ldx #$ff		;
		stx $a9			;
		bcc l_c4d3		;
		jsr l_c5fa		;
		jmp l_c90c		;
l_c4d3:
		jsr l_cae2		;
		jsr l_c5fa		;
		sty $26			;
		jsr l_c6b3		;
		bcc l_c524		;
		ldy #$01		;
		lda ($ce),y		;
		sta $92			;
		lda $9c			;
		sta $91			;
		lda $cf			;
		sta $94			;
		lda $ce			;
		dey				;
		sbc ($ce),y		;
		clc				;
		adc $9c			;
		sta $9c			;
		sta $93			;
		lda $9d			;
		adc #$ff		;
		sta $9d			;
		sbc $cf			;
		tax				;
		sec				;
		lda $ce			;
		sbc $9c			;
		tay				;
		bcs l_c50e		;
		inx				;
		dec $94			;
l_c50e:
		clc				;
		adc $91			;
		bcc l_c516		;
		dec $92			;
		clc				;
l_c516:
		lda ($91),y		;
		sta ($93),y		;
		iny				;
		bne l_c516		;
		inc $92			;
		inc $94			;
		dex				;
		bne l_c516		;
l_c524:
		jsr l_c708		;
		jsr l_c55f		;
		lda $35			;
		beq l_c4b7		;
		clc				;
		lda $9c			;
		sta $c9			;
		adc $26			;
		sta $c7			;
		ldy $9d			;
		sty $ca			;
		bcc l_c53e		;
		iny				;
l_c53e:
		sty $c8			;
		jsr l_c3f4		;
		lda $a0			;
		ldy $a1			;
		sta $9c			;
		sty $9d			;
		ldy $26			;
		dey				;
l_c54e:
		lda $0031,y		;
		sta ($ce),y		;
l_c553:
		dey				;
		bpl l_c54e		;
		jsr l_c708		;
		jsr l_c55f		;
		jmp l_c4b7		;

l_c55f:
		lda $9a			;
		ldy $9b			;
		sta $91			;
		sty $92			;
		clc				;
l_c568:
		ldy #$01		;
		lda ($91),y		;
		beq l_c58b		;
		ldy #$04		;
l_c570:
		iny				;
		lda ($91),y		;
		bne l_c570		;
		iny				;
		tya				;
		adc $91			;
		tax				;
		ldy #$00		;
		sta ($91),y		;
		lda $92			;
		adc #$00		;
		iny				;
		sta ($91),y		;
		stx $91			;
		sta $92			;
		bcc l_c568		;
l_c58b:
		rts				;
l_c58c:
		dex				;
		bpl l_c594		;
l_c58f:
		jsr l_cbf0		;
l_c592:
		ldx #$00		;
l_c594:
		jsr l_c5e8		;
		cmp #$01		;
		bne l_c5a8		;
		ldy $0269		;
		lda ($12),y		;
		and #$7f		;
		cmp #$20		;
		bcs l_c5a8		;
		lda #$09		;
l_c5a8:
		pha				;
		jsr l_ccd9		;
		pla				;
		cmp #$7f		;
		beq l_c58c		;
		cmp #$0d		;
		beq l_c5e5		;
		cmp #$03		;
		beq l_c5e1		;
		cmp #$18		;
		beq l_c5c8		;
		cmp #$20		;
		bcc l_c594		;
		sta $35,x		;
		inx				;
		cpx #$4f		;
		bcc l_c5cf		;
l_c5c8:
		lda #$5c		;
		jsr l_ccd9		;
		bne l_c58f		;
l_c5cf:
		cpx #$4c		;
		bcc l_c594		;
		txa				;
		pha				;
		tya				;
		pha				;
		jsr l_fa9f		;
		pla				;
		tay				;
		pla				;
		tax				;
		jmp l_c594		;
l_c5e1:
		inc $17			;
		ldx #$00		;
l_c5e5:
		jmp l_cbea		;

l_c5e8:
		jsr $023b		;
		bpl l_c5e8		;
		cmp #$0f		;
		bne l_c5f9		;
		pha				;
		lda $2e			;
		eor #$ff		;
		sta $2e			;
		pla				;
l_c5f9:
		rts				;

l_c5fa:
		ldx $e9			;
		ldy #$04		;
		sty $2a			;
l_c600:
		lda $00,x		;
		cmp #$20		;
		beq l_c647		;
		sta $25			;
		cmp #$22		;
		beq l_c66b		;
		bit $2a			;
		bvs $c647		;
		cmp #$3f		;
		bne l_c618		;
		lda #$ba		;
		bne l_c647		;
l_c618:
		cmp #$30		;
		bcc l_c620		;
		cmp #$3c		;
		bcc l_c647		;
l_c620:
		sty $e0			;
		ldy #$00		;
		sty $26			;
		lda #$e9		;
		sta $18			;
		lda #$c0		;
		sta $19			;
		stx $e9			;
		dex				;
l_c631:
		inx				;
		inc $18			;
		bne l_c638		;
		inc $19			;
l_c638:
		lda $00,x		;
		sec				;
		sbc ($18),y		;
		beq l_c631		;
		cmp #$80		;
		bne l_c672		;
		ora $26			;
l_c645:
		ldy $e0			;
l_c647:
		inx				;
		iny				;
		sta $0030,y		;
		lda $0030,y		;
		beq l_c68a		;
		sec				;
		sbc #$3a		;
		beq l_c65a		;
		cmp #$57		;
		bne l_c65c		;
l_c65a:
		sta $2a			;
l_c65c:
		sec				;
		sbc #$63		;
		bne l_c600		;
		sta $25			;
l_c663:
		lda $00,x		;
		beq l_c647		;
		cmp $25			;
		beq l_c647		;
l_c66b:
		iny				;
		sta $0030,y		;
		inx				;
		bne l_c663		;
l_c672:
		ldx $e9			;
		inc $26			;
l_c676:
		lda ($18),y		;
		php				;
		inc $18			;
		bne l_c67f		;
		inc $19			;
l_c67f:
		plp				;
		bpl l_c676		;
		lda ($18),y		;
		bne l_c638		;
		lda $00,x		;
		bpl l_c645		;
l_c68a:
		sta $0032,y		;
		lda #$34		;
		sta $e9			;
		rts				;
edit:
		jsr l_cae2		;EDIT Get integer from text. 
		jsr l_c6b3		;
		bcc l_c6b0		;
		ror $02f2		;
		jsr l_c76c		;
		lsr $02f2		;
		jsr l_cbf0		;
		lda #$0b		;
		jsr l_ccd9		;
		pla				;
		pla				;
		jmp l_c4b7		;
l_c6b0:
		jmp l_ca23		;

l_c6b3:
		lda #$00		;
		sta $1d			;
		sta $1e			;
		lda $9a			;
		ldx $9b			;
l_c6bd:
		ldy #$01		;
		sta $ce			;
		stx $cf			;
		lda ($ce),y		;
		beq l_c6ec		;
		iny				;
		iny				;
		inc $1d			;
		bne l_c6cf		;
		inc $1e			;
l_c6cf:
		lda $34			;
		cmp ($ce),y		;
		bcc l_c6ed		;
		beq l_c6da		;
		dey				;
		bne l_c6e3		;
l_c6da:
		lda $33			;
		dey				;
		cmp ($ce),y		;
		bcc l_c6ed		;
		beq l_c6ed		;
l_c6e3:
		dey				;
		lda ($ce),y		;
		tax				;
		dey				;
		lda ($ce),y		;
		bcs l_c6bd		;
l_c6ec:
		clc				;
l_c6ed:
		rts				;
		bne l_c6ed		;
l_c6f0:
		lda #$00		;
		lsr $02f4		;
		tay				;
		sta ($9a),y		;
		iny				;
		sta ($9a),y		;
		lda $9a			;
		clc				;
		adc #$02		;
		sta $9c			;
		lda $9b			;
		adc #$00		;
		sta $9d			;
l_c708:
		jsr l_c73a		;
		lda #$00		;
		bne l_c739		;
l_c70f:
		lda $a6			;
		ldy $a7			;
		sta $a2			;
		sty $a3			;
		lda $9c			;
		ldy $9d			;
		sta $9e			;
		sty $9f			;
		sta $a0			;
		sty $a1			;
		jsr l_c952		;
l_c726:
		ldx #$88		;
		stx $85			;
		pla				;
		tay				;
		pla				;
		ldx #$fe		;
		txs				;
		pha				;
		tya				;
		pha				;
		lda #$00		;
		sta $ad			;
		sta $2b			;
l_c739:
		rts				;

l_c73a:
		clc				;
		lda $9a			;
		adc #$ff		;
		sta $e9			;
		lda $9b			;
		adc #$ff		;
		sta $ea			;
		rts				;

l_c748:
		php				;
		jsr l_cae2		;
		jsr l_c6b3		;
l_c74f:
		plp				;
		beq l_c766		;
		jsr $00e8		;
		beq l_c76c		;
		cmp #$cd		;
		bne l_c6ed		;
		jsr $00e2		;
		beq l_c766		;
		jsr l_cae2		;
		beq l_c76c		;
		rts				;
l_c766:
		lda #$ff		;
		sta $33			;
		sta $34			;
l_c76c:
		ldy #$01		;
		lda ($ce),y		;
		beq l_c7bf		;
		jsr l_c962		;
		cmp #$20		;
		bne l_c787		;
		lsr $02df		;
l_c77c:
		lda $02df		;
		bpl l_c77c		;
		jsr l_c962		;
		lsr $02df		;
l_c787:
		iny				;
		lda ($ce),y		;
		tax				;
		iny				;
		lda ($ce),y		;
		cmp $34			;
		bne l_c796		;
		cpx $33			;
		beq l_c798		;
l_c796:
		bcs l_c7bf		;
l_c798:
		sty $b8			;
		pha				;
		jsr l_cbf0		;
		pla				;
		jsr l_e0c5		;
		lda #$20		;
l_c7a4:
		ldy $b8			;
		and #$7f		;
l_c7a8:
		jsr l_ccd9		;
		iny				;
		beq l_c7bf		;
		lda ($ce),y		;
		bne l_c7d0		;
		tay				;
		lda ($ce),y		;
		tax				;
		iny				;
		lda ($ce),y		;
		stx $ce			;
		sta $cf			;
		bne l_c76c		;
l_c7bf:
		bit $02f2		;
		bpl l_c7c5		;
		rts				;
l_c7c5:
		jsr l_cbf0		;
		jsr l_c82f		;
		pla				;
		pla				;
		jmp l_c4a8		;
l_c7d0:
		bpl l_c7a8		;
		sec				;
		sbc #$7f		;
		tax				;
		sty $b8			;
		ldy #$00		;
		lda #$e9		;
		sta $18			;
		lda #$c0		;
		sta $19			;
l_c7e2:
		dex				;
		beq l_c7f2		;
l_c7e5:
		inc $18			;
		bne l_c7eb		;
		inc $19			;
l_c7eb:
		lda ($18),y		;
		bpl l_c7e5		;
		jmp l_c7e2		;

l_c7f2:
		iny				;
		lda ($18),y		;
		bmi l_c7a4		;
		jsr l_ccd9		;
		jmp l_c7f2		;

;;;
;; LLIST
;;;
llist:
		jsr l_c816		; SET OUTPUT TO PRINTER.
		lsr $02f2		; Set output to printer, clear
		jsr $00e8		; "list return" flag and perform
		jmp l_c748		; list.

;;;
;; LPRINT
;;;
lprint:
		jsr l_c816		; SET OUTPUT TO PRINTER
		jsr $00e8		; Set output to printer, perform
		jsr l_cbab		; PRINT and set output back to
		jsr l_c82f		; screen.
		rts				;

l_c816:
		bit $02f1		;
		bmi l_c854		;
		lda $30			;
		sta $0259		;
		lda $0258		;
		sta $30			;
		sec				;
		ror $02f1		;
		lda $0256		;
		jmp l_c844		;

l_c82f:
		bit $02f1		;
		bpl l_c854		;
		lda $30			;
		sta $0258		;
		lda $0259		;
		sta $30			;
l_c83e:
		lsr $02f1		;
		lda $0257		;
l_c844:
		sta $31			;
l_c846:
		sec				;
		sbc #$08		;
		bcs l_c846		;
		eor #$ff		;
		sbc #$06		;
		clc				;
		adc $31			;
		sta $32			;
l_c854:
		rts				;

;;;
;; FOR
;;;
for:
		lda #$80		;
		sta $2b			;
		jsr l_cb1c		;
		jsr l_c3c6		;
		bne l_c866		;
		txa				;
		adc #$0f		;
		tax				;
		txs				;
l_c866:
		pla				;
		pla				;
		lda #$09		;
		jsr l_c437		;
		jsr l_ca4e		;
		clc				;
		tya				;
		adc $e9			;
		pha				;
		lda $ea			;
		adc #$00		;
		pha				;
		lda $a9			;
		pha				;
		lda $a8			;
		pha				;
		lda #$c3		;
		jsr l_d067		;
		jsr l_cf06		;
		jsr l_cf03		;
		lda $d5			;
		ora #$7f		;
		and $d1			;
		sta $d1			;
		lda #$9e		;
		ldy #$c8		;
		sta $91			;
		sty $92			;
		jmp l_cfc0		;
		lda #$81		;
		ldy #$dc		;
		jsr l_de7b		;
		jsr $00e8		;
		cmp #$cb		;
		bne l_c8b2		;
		jsr $00e2		;
		jsr l_cf03		;
l_c8b2:
		jsr l_df13		;
		jsr l_cfb1		;
		lda $b9			;
		pha				;
		lda $b8			;
		pha				;
		lda #$8d		;
		pha				;
l_c8c1:
		jsr l_c962		;
		lda $e9			;
		ldy $ea			;
		beq l_c8d0		;
		sta $ac			;
		sty $ad			;
		ldy #$00		;
l_c8d0:
		lda ($e9),y		;
		bne l_c92f		;
		lsr $0252		;
		ldy #$02		;
		lda ($e9),y		;
		clc				;
		bne l_c8e1		;
		jmp l_c98a		;
l_c8e1:
		iny				;
		lda ($e9),y		;
		sta $a8			;
		iny				;
		lda ($e9),y		;
		sta $a9			;
		tya				;
		adc $e9			;
		sta $e9			;
		bcc l_c8f4		;
		inc $ea			;
l_c8f4:
		bit $02f4		;
		bpl l_c90c		;
		pha				;
		lda #$5b		;
		jsr l_ccfb		;
		lda $a9			;
		ldx $a8			;
		jsr l_e0c5		;
		lda #$5d		;
		jsr l_ccfb		;
		pla				;
l_c90c:
		jsr $00e2		;
		jsr l_c915		;
		jmp l_c8c1		;

l_c915:
		beq l_c960		;
l_c917:
		sbc #$80		;
		bcc l_c92c		;
		cmp #$42		;
		bcs l_c94f		;
		asl				;
		tay				;
		lda $c007,y		;
		pha				;
		lda $c006,y		;
		pha				;
		jmp $00e2		;
l_c92c:
		jmp l_cb1c		;
l_c92f:
		cmp #$3a		;
		beq l_c8f4		;
		cmp #$c8		;
		bne l_c945		;
		bit $0252		;
		bpl l_c94f		;
		jsr l_cab1		;
		lsr $0252		;
		jmp l_c8c1		;
l_c945:
		cmp #$27		;
		bne l_c94f		;
		jsr l_ca99		;
		jmp l_c8c1		;
l_c94f:
		jmp l_d070		;

l_c952:
		sec				;
		lda $9a			;
		sbc #$01		;
		ldy $9b			;
		bcs l_c95c		;
		dey				;
l_c95c:
		sta $b0			;
		sty $b1			;
l_c960:
		rts				;
l_c961:
		rts				;

l_c962:
		lda $02df		;
		bpl l_c960		;
		and #$7f		;
		ldx #$08		;
		cmp #$03		;
		bne l_c961		;
		cmp #$03		;
		bcs l_c974		;
end:					; END
		clc				;
l_c974:
		bne l_c9b9		;
		lda $e9			;
		ldy $ea			;
		beq l_c988		;
		sta $ac			;
		sty $ad			;
l_c980:
		lda $a8			;
		ldy $a9			;
		sta $aa			;
		sty $ab			;
l_c988:
		pla				;
		pla				;
l_c98a:
		lda #$bd		;
		ldy #$c3		;
		ldx #$00		;
		stx $02f1		;
		stx $02df		;
		stx $2e			;
		bcc l_c99d		;
		jmp l_c49d		;
l_c99d:
		jmp l_c4a8		;
		bne l_c9b9		;
		ldx #$d7		;
		ldy $ad			;
		bne l_c9ab		;
		jmp l_c47e		;
l_c9ab:
		lda $ac			;
		sta $e9			;
		sty $ea			;
		lda $aa			;
		ldy $ab			;
		sta $a8			;
		sty $a9			;
l_c9b9:
		rts				;
		jmp l_d336		;
		bne l_c9c2		;
		jmp l_c708		;
l_c9c2:
		jsr l_c70f		;
		jmp l_c9dc		;
		lda #$03		;
		jsr l_c437		;
		lda $ea			;
		pha				;
		lda $e9			;
		pha				;
		lda $a9			;
		pha				;
		lda $a8			;
		pha				;
		lda #$9b		;
		pha				;
l_c9dc:
		jsr $00e8		;
		jsr l_c9e5		;
		jmp l_c8c1		;

l_c9e5:
		jsr l_e853		;
		jsr l_ca51		;
		lda $a9			;
		cmp $34			;
		bcs l_c9fc		;
		tya				;
		sec				;
		adc $e9			;
		ldx $ea			;
		bcc l_ca00		;
		inx				;
		bcs l_ca00		;
l_c9fc:
		lda $9a			;
		ldx $9b			;
l_ca00:
		jsr l_c6bd		;
		bcc l_ca23		;
		lda $ce			;
		sbc #$01		;
		sta $e9			;
		lda $cf			;
		sbc #$00		;
		sta $ea			;
l_ca11:
		rts				;
;;;
;; POP & RETURN
;;;
pop:
return:					;
		bne l_ca11		;
		lda #$ff		;
		sta $b9			;
		jsr l_c3c6		;
		txs				;
		cmp #$9b		;
		beq l_ca2b		;
		ldx #$16		;
		.byte $2c		; bit $5aa2
l_ca23:
		ldx #$5a

		jmp l_c47e		;
		jmp l_d070		;
l_ca2b:
		pla				;
		pla				;
		cpy #$0c		;
		beq l_ca4a		;
		sta $a8			;
		pla				;
		sta $a9			;
		pla				;
		sta $e9			;
		pla				;
		sta $ea			;
;;;
;; DATA
;;;
data:
		jsr l_ca4e		; Find end of line.
l_ca3f:
		tya				;
		clc				; Adjust program position to
		adc $e9			; end of the line.
		sta $e9			;
		bcc l_ca49		;
		inc $ea			;
l_ca49:
		rts				;
l_ca4a:
		pla				; Correct stack pointer for POP
		pla				; command.
		pla				;
		rts				;

l_ca4e:
		ldx #$3a		;
		.byte $2c
; ca50 : 2c a2 00    bit $00a2            ;
l_ca51
		ldx #$00
		stx $24			;
		ldy #$00		;
		sty $25			;
l_ca59:
		lda $25			;
		ldx $24			;
		sta $24			;
		stx $25			;
l_ca61:
		lda ($e9),y		;
		beq l_ca49		;
		cmp $25			;
		beq l_ca49		;
		iny				;
		cmp #$22		;
		bne l_ca61		;
		beq l_ca59		;
		jsr l_cf17		;
		jsr $00e8		;
		cmp #$97		;
		beq l_ca7f		;
		lda #$c9		;
		jsr l_d067		;
l_ca7f:
		lda $d0			;
		bne l_ca88		;
		jsr l_ca9e		;
		beq l_ca3f		;
l_ca88:
		jsr $00e8		;
		bcs l_ca90		;
		jmp l_c9e5		;
l_ca90:
		php				;
		sec				;
		ror $0252		;
		plp				;
		jmp l_c915		;

l_ca99:
		jsr l_ca51		;
		beq l_ca3f		;
l_ca9e:
		ldy #$00		;
l_caa0:
		lda ($e9),y		;
		beq l_cab0		;
		iny				;
		cmp #$c9		;
		beq l_ca99		;
		cmp #$c8		;
		bne l_caa0		;
		jmp l_ca3f		;
l_cab0:
		rts				;

l_cab1:
		ldy #$ff		;
l_cab3:
		iny				;
		lda ($e9),y		;
		beq l_cabc		;
		cmp #$3a		;
		bne l_cab3		;
l_cabc:
		jmp l_ca3f		;
l_cabf:
		jmp l_d070		;
		jsr l_d8c8		;
		pha				;
		cmp #$9b		;
		beq l_cace		;
l_caca:
		cmp #$97		;
		bne l_cabf		;
l_cace:
		dec $d4			;
		bne l_cad6		;
		pla				;
		jmp l_c917		;
l_cad6:
		jsr $00e2		;
		jsr l_cae2		;
		cmp #$2c		;
		beq l_cace		;
		pla				;
l_cae1:
		rts				;

l_cae2:
		ldx #$00		;
		stx $33			;
		stx $34			;
l_cae8:
		bcs l_cae1		;
		sbc #$2f		;
		sta $24			;
		lda $34			;
		sta $91			;
		cmp #$19		;
		bcs l_caca		;
		lda $33			;
		asl				;
		rol $91			;
		asl				;
		rol $91			;
		adc $33			;
		sta $33			;
		lda $91			;
		adc $34			;
		sta $34			;
		asl $33			;
		rol $34			;
		lda $33			;
		adc $24			;
		sta $33			;
		bcc l_cb16		;
		inc $34			;
l_cb16:
		jsr $00e2		;
		jmp l_cae8		;

l_cb1c:
		jsr l_d188		;
		sta $b8			;
		sty $b9			;
		lda #$d4		;
		jsr l_d067		;
		lda $29			;
		pha				;
		lda $28			;
		pha				;
		jsr l_cf17		;
		pla				;
		rol				;
		jsr l_cf09		;
		bne l_cb50		;
		pla				;
l_cb39:
		bpl l_cb4d		;
		jsr l_def4		;
		jsr l_d2a9		;
		ldy #$00		;
		lda $d3			;
		sta ($b8),y		;
		iny				;
		lda $d4			;
		sta ($b8),y		;
		rts				;
l_cb4d:
		jmp l_dea9		;
l_cb50:
		pla				;
l_cb51:
		ldy #$02		;
		lda ($d3),y		;
		cmp $a3			;
		bcc l_cb70		;
		bne l_cb62		;
		dey				;
		lda ($d3),y		;
		cmp $a2			;
		bcc l_cb70		;
l_cb62:
		ldy $d4			;
		cpy $9d			;
		bcc l_cb70		;
		bne l_cb77		;
		lda $d3			;
		cmp $9c			;
		bcs l_cb77		;
l_cb70:
		lda $d3			;
		ldy $d4			;
		jmp l_cb8d		;
l_cb77:
		ldy #$00		;
		lda ($d3),y		;
		jsr l_d5a3		;
		lda $bf			;
		ldy $c0			;
		sta $de			;
		sty $df			;
		jsr l_d7a4		;
		lda #$d0		;
		ldy #$00		;
l_cb8d:
		sta $bf			;
		sty $c0			;
		jsr l_d805		;
		ldy #$00		;
		lda ($bf),y		;
		sta ($b8),y		;
		iny				;
		lda ($bf),y		;
		sta ($b8),y		;
		iny				;
		lda ($bf),y		;
		sta ($b8),y		;
		rts				;
l_cba5:
		jsr l_ccb3		;
l_cba8:
		jsr $00e8		;
l_cbab:
		beq l_cbf0		;
l_cbad:
		beq l_cc0b		;
		cmp #$c2		;
		beq l_cc2e		;
		cmp #$c5		;
		clc				;
		beq l_cc2e		;
		cmp #$2c		;
		beq l_cc0c		;
		cmp #$3b		;
		beq l_cc2b		;
		cmp #$c6		;
		bne l_cbc7		;
		jmp l_cc59		;
l_cbc7:
		jsr l_cf17		;
		bit $28			;
		bmi l_cba5		;
		jsr l_e0d5		;
		jsr l_d5b5		;
		ldy #$00		;
		lda ($d3),y		;
		clc				;
		adc $30			;
		cmp $31			;
		bcc l_cbe2		;
		jsr l_cbf0		;
l_cbe2:
		jsr l_ccb3		;
		jsr l_ccd4		;
		bne l_cba8		;
l_cbea:
		ldy #$00		;
		sty $35,x		;
		ldx #$34		;
l_cbf0:
		lda $30			;
		pha				;
		lda #$0d		;
		jsr l_ccd9		;
		pla				;
		bit $02f1		;
		bmi l_cc02		;
		cmp $31			;
		beq l_cc0b		;
l_cc02:
		lda #$00		;
		sta $30			;
		lda #$0a		;
		jsr l_ccd9		;
l_cc0b:
		rts				;
l_cc0c:
		lda $30			;
		bit $02f1		;
		bmi l_cc17		;
		sec				;
		sbc $0253		;
l_cc17:
		sec				;
l_cc18:
		sbc #$08		;
		bcs l_cc18		;
		eor #$ff		;
		adc #$01		;
		tax				;
		clc				;
		adc $30			;
		cmp $31			;
		bcc l_cc47		;
		jsr l_cbf0		;
l_cc2b:
		jmp l_cc4b		;
l_cc2e:
		php				;
		jsr l_d8c5		;
		cmp #$29		;
		bne l_cc56		;
		plp				;
		bcc l_cc47		;
		txa				;
		cmp $31			;
		bcc l_cc41		;
		jmp l_d336		;
l_cc41:
		sec				;
		sbc $30			;
		bcc l_cc4b		;
		tax				;
l_cc47:
		inx				;
l_cc48:
		dex				;
		bne l_cc51		;
l_cc4b:
		jsr $00e2		;
		jmp l_cbad		;
l_cc51:
		jsr l_ccd4		;
		bne l_cc48		;
l_cc56:
		jmp l_d070		;

l_cc59:
		bit $02f1		;
		bmi l_cc56		;
		ldx $021f		;
		beq l_cc66		;
		jmp l_eaf7		;
l_cc66:
		jsr l_d8c5		;
		cpx #$28		;
		bcs l_ccad		;
		stx $0c			;
		jsr l_d065		;
		jsr l_d8c8		;
		inx				;
		cpx #$1c		;
		bcs l_ccad		;
		lda $026a		;
		pha				;
		and #$fe		;
		sta $026a		;
		lda #$00		;
		jsr l_f801		;
		lda $0c			;
		sta $0269		;
		txa				;
		sta $0268		;
		jsr l_da0c		;
		lda $1f			;
		ldy $20			;
		sta $12			;
		sty $13			;
		pla				;
		sta $026a		;
		lda #$01		;
		jsr l_f801		;
		lda #$3b		;
		jsr l_d067		;
		jmp l_cbad		;
l_ccad:
		jmp l_d8c2		;

l_ccb0:
		jsr l_d5b5		;
l_ccb3:
		jsr l_d7d0		;
		tax				;
		ldy #$00		;
		inx				;
l_ccba:
		dex				;
		beq l_cccd		;
		lda ($91),y		;
		jsr l_ccd9		;
		iny				;
		cmp #$0d		;
		bne l_ccba		;
		jsr l_cc0b		;
		jmp l_ccba		;
l_cccd:
		rts				;

;;;
;; CLS
;;;
cls:
		lda #$0c		;Load A with CTRL L.
		.byte $2c		;BIT instructions are used to 
		lda #$11
		.byte $2c		;hide the loading of A with
l_ccd4:
		lda #$20
		.byte $2c		;different values
l_ccd7:
		lda #$3f
l_ccd9:
		bit $2e			; If CTRL O flag is set then set
		bmi l_cd10		;flags and exit.
		pha				;Save char to be printed.
		cmp #$20		;If control character do not
		bcc l_cced		;check cursor position.
		lda $30			;Compare cursor position with
		cmp $31			;line width.
		bne l_cceb		;
		jsr l_cbf0		;If past end, print Newline.
l_cceb:
		inc $30			;Advance cursor column.
l_cced:
		pla				;
		bit $02f1		;
		bpl l_ccfb		;Printer is off.
		pha				;
		jsr $023e		;Send byte to printer.
		pla				;
		and #$ff		;Set flags and exit.
		rts				;

l_ccfb:
		stx $27			;
		tax				;
		jsr l_f77c		;
		cmp #$20		;
		bcc l_cd09		;
		cmp #$7f		;
		bne l_cd0e		;
l_cd09:
		ldx $0269		;
		stx $30			;
l_cd0e:
		ldx $27			;
l_cd10:
		and #$ff		;
		rts				;
		jmp ($02f5)		;

tron:
		lda #$80		; TRON The BIT instruction is
		.byte $2c		; used to hide an entry point.
troff:					; TROFF
		lda #$00		; Set the TRACE flag to content
		sta $02f4		; of accumulator.
		rts				;

l_cd1f:
		lda $2c			;
		beq l_cd36		;
		bmi l_cd29		;
		ldy #$ff		;
		bne l_cd2d		;
l_cd29:
		lda $ae			;
		ldy $af			;
l_cd2d:
		sta $a8			;
		sty $a9			;
		ldx #$a8		;
		jmp l_c47e		;
l_cd36:
		lda #$85		;
		ldy #$ce		;
		jsr l_ccb0		;
		lda $ac			;
		ldy $ad			;
		sta $e9			;
		sty $ea			;
		rts				;
		jsr l_d4d2		;
		ldx #$36		;
		ldy #$00		;
		sty $36			;
		lda #$40		;
		jsr l_cd8f		;
		rts				;

;;;
;; INPUT
;;;
input:
		lsr $2e			; Turn off CTRL O flag.
		cmp #$22		;
		bne l_cd66		; Double quote is not present.
		jsr l_d025		; Get string after " and update
		lda #$3b		; position pointer.
		jsr l_d067		;  Check for ;
		jsr l_ccb3		; Print out string after "
l_cd66:
		jsr l_d4d2		; Check for ILLEGAL DIRECT error
		lda #$2c		;
		sta $34			;
l_cd6d:
		lda #$00		;
		sta $17			; Reset CTRL C flag.
		jsr l_cd80		; Print ? and input line from KB
		lda $35			;
		bne l_cd8e		; branches to tya
		lda $17			;
		beq l_cd6d		; CTRL C flag is still off.
		clc				;
		jmp l_c980		; Sort out CTRL C.

l_cd80:
		jsr l_ccd7		; Print ?.
		jsr l_ccd4		; Print a space.
		jmp l_c592		; Input line from keyboard.

;;;
;; READ
;;;
read:
		ldx $b0			;
		ldy $b1			;
l_cd8d:
		.byte $a9		; lda #$98 Clear REDO FROM START flag.
l_cd8e:
		tya				; opcode $98
l_cd8f:
		sta $2c			;
		stx $b2			;
		sty $b3			;
l_cd95:
		jsr l_d188		;Get variable from text.
		sta $b8			;Save address of pointer.
		sty $b9			;
		lda $e9			;
		ldy $ea			;Copy program position pointer.
		sta $ba			;
		sty $bb			;
		ldx $b2			;Copy DATA pointer.
		ldy $b3			;
		stx $e9			;
		sty $ea			;
		jsr $00e8		;Get next non space character.
		bne l_cdce		;Branch if not end of line.
		bit $2c			;
		bvc $cdc2		;
l_cdb5:
		jsr l_eb78		;Read next key from keyboard.
		bpl l_cdb5		;Wait until key is valid.
		sta $35			;
		ldx #$34		;
		ldy #$00		;
		beq l_cdca		;
		bmi l_ce35		;
		jsr l_ccd7		;Print ?
		jsr l_cd80		;Print ? and input line from KB
l_cdca:
		stx $e9			;
		sty $ea			;Set position of input.
l_cdce:
		jsr $00e2		;Get next char from text.
		bit $28			;
		bpl l_ce06		;Variable is not string type.
		bit $2c			;
l_cdd7:
		bvc l_cde2		;
		inx				;
		stx $e9			;
		lda #$00		;
		sta $24			;
		beq l_cdee		;
l_cde2:
		sta $24			;
		cmp #$22		;
		beq l_cdef		;
		lda #$3a		;
		sta $24			;
		lda #$2c		;
l_cdee:
		clc				;
l_cdef:
		sta $25			;
		lda $e9			;
		ldy $ea			;
		adc #$00		;
		bcc l_cdfa		;
		iny				;
l_cdfa:
		jsr l_d5bb		;Get string after "
		jsr l_d90d		;Set program ptr to content of
		jsr l_cb51		;$E0/$E1 and assign string.
		jmp l_ce0e		;
l_ce06:
		jsr l_dfe7		;Get number.
		lda $29			;Load integer variable flag.
		jsr l_cb39		;Assign integer.
l_ce0e:
		jsr $00e8		;Get next char from text.
		beq l_ce1a		;End of line reached.
		cmp #$2c		;
		beq l_ce1a		;Character is a comma.
		jmp l_cd1f		;
l_ce1a:
		lda $e9			;Copy program position into
		ldy $ea			;data pointer.
		sta $b2			;
		sty $b3			;
		lda $ba			;Copy temporary pointer into
		ldy $bb			;program position.
		sta $e9			;
		sty $ea			;
		jsr $00e8		;Get next character.
		beq l_ce5b		;End of line reached.
		jsr l_d065		;Test for comma.
		jmp l_cd95		;Get next variable.
l_ce35:
		jsr l_ca4e		;Find end of statement.
		iny				;
		tax				;
		bne l_ce4e		;
		ldx #$2a		;
		iny				;
		lda ($e9),y		;Give "TYPE MISMATCH ERROR" if
		beq l_ceac		;run out of program.
		iny				;
		lda ($e9),y		;Copy line number to temporary
		sta $ae			;pointer.
		iny				;
		lda ($e9),y		;
		iny				;
		sta $af			;
l_ce4e:
		lda ($e9),y		;
		tax				;
		jsr l_ca3f		;Add X to content of $E9/$EA.
		cpx #$91		;
		bne l_ce35		;
		jmp l_cdce		;Jump back to do more.
l_ce5b:
		lda $b2			;
		ldy $b3			;
		ldx $2c			;
		bpl l_ce66		;REDO FROM START flag is set.
		jmp l_c95c		;Exit and update DATA pointer.
l_ce66:
		ldy #$00		;
		lda ($b2),y		;
		beq l_ce73		;No extra data.
		lda #$74		;
		ldy #$ce		;
		jmp l_ccb0		;Print "EXTRA IGNORED".
l_ce73:
		rts				;

		.text "?EXTRA IGNORED", $0d, $0a, $00
		.text "?REDO FROM START", $0d, $0a, $00

;;;
;; NEXT
;;;
next:
		bne l_ce9e		; more input after token.
		ldy #$00		;
		beq l_cea1		; No variable name given.
l_ce9e:
		jsr l_d188		; Get variable from text.
l_cea1:
		sta $b8			; Save pointer to variable.
		sty $b9			;
		jsr l_c3c6		; Search for that var. on stack.
		beq l_ceae		; Variable found.
		ldx #$00		; Print "TYPE MISMATCH ERROR".
l_ceac:
		beq l_cf14		;
l_ceae:
		txs				;
		txa				;
		clc				;
		adc #$04		;
		pha				;
		adc #$06		;
		sta $93			;
		pla				;
		ldy #$01		;
		jsr l_de7b		; Unpack floating point number.
		tsx				;
		lda $0109,x		; Take sign byte off stack and
		sta $d5			; put it in FPA sign byte.
		lda $b8			;
		ldy $b9			;
		jsr l_db22		; Add in STEP value.
		jsr l_dea9		; Pack main FPA and put it in
		ldy #$01		; memory.
		jsr l_df4e		; Compare main FPA with number
		tsx				; pointed to by Y (MSB) and A.
		sec				;
		sbc $0109,x		;
		beq l_cef1		; Exit current FOR-NEXT loop.
		lda $010f,x		; Take line number and program
		sta $a8			; position off stack so that
		lda $0110,x		; program can go back to just
		sta $a9			; after the FOR statement.
		lda $0112,x		;
		sta $e9			;
		lda $0111,x		;
		sta $ea			;
l_ceee:
		jmp l_c8c1		; Goto next statement.
l_cef1:
		txa				; Adjust stack pointer to having
		adc #$11		; one less loop.
		tax				;
		txs				;
		jsr $00e8		; Get next char from program.
		cmp #$2c		; Execute next statement if
		bne l_ceee		; character is not a comma.
		jsr $00e2		; Get next char.
		jsr l_ce9e		; Go round loop again.
l_cf03:
		jsr l_cf17		;
l_cf06:
		clc				;
		.byte $24		; bit
l_cf08:
		sec
l_cf09:
		bit $28

		bmi l_cf10		;
		bcs l_cf12		;
l_cf0f:
		rts				;
l_cf10:
		bcs l_cf0f		;
l_cf12:
		ldx #$a8		;
l_cf14:
		jmp l_c47e		;

l_cf17:
		ldx $e9			;
		bne l_cf1d		;
		dec $ea			;
l_cf1d:
		dec $e9			;
		ldx #$00		;
		.byte $24		; bit $48
l_cf22:
		pha
		txa				;
		pha				;
		lda #$01		;
		jsr l_c437		;
		jsr l_d000		;
		lda #$00		;
		sta $bc			;
l_cf31:
		jsr $00e8		;
l_cf34:
		sec				;
		sbc #$d3		;
		bcc l_cf50		;
		cmp #$03		;
		bcs l_cf50		;
		cmp #$01		;
		rol				;
		eor #$01		;
		eor $bc			;
		cmp $bc			;
		bcc l_cfa9		;
		sta $bc			;
		jsr $00e2		;
		jmp l_cf34		;
l_cf50:
		ldx $bc			;
		bne l_cf80		;
		bcs l_cfd5		;
		adc #$07		;
		bcc l_cfd5		;
		adc $28			;
		bne l_cf61		;
		jmp l_d767		;
l_cf61:
		adc #$ff		;
		sta $91			;
		asl				;
		adc $91			;
		tay				;
l_cf69:
		pla				;
		cmp $c0cc,y		;
		bcs l_cfda		;
		jsr l_cf06		;
l_cf72:
		pha				;
l_cf73:
		jsr l_cf99		;
		pla				;
		ldy $ba			;
		bpl l_cf92		;
		tax				;
		beq l_cfd8		;
		bne l_cfe3		;
l_cf80:
		lsr $28			;
		txa				;
		rol				;
		ldx $e9			;
		bne l_cf8a		;
		dec $ea			;
l_cf8a:
		dec $e9			;
		ldy #$1b		;
		sta $bc			;
		bne l_cf69		;
l_cf92:
		cmp $c0cc,y		;
		bcs l_cfe3		;
		bcc l_cf72		;
l_cf99:
		lda $c0ce,y		;
		pha				;
		lda $c0cd,y		;
		pha				;
		jsr l_cfac		;
		lda $bc			;
		jmp l_cf22		;
l_cfa9:
		jmp l_d070		;

l_cfac:
		lda $d5			;
		ldx $c0cc,y		;
l_cfb1:
		tay				;
		pla				;
		sta $91			;
		pla				;
		sta $92			;
		inc $91			;
		bne l_cfbe		;
		inc $92			;
l_cfbe:
		tya				;
		pha				;
l_cfc0:
		jsr l_def4		;
		lda $d4			;
		pha				;
		lda $d3			;
		pha				;
		lda $d2			;
		pha				;
		lda $d1			;
		pha				;
		lda $d0			;
		pha				;
		jmp ($0091)		;
l_cfd5:
		ldy #$ff		;
		pla				;
l_cfd8:
		beq l_cffd		;
l_cfda:
		cmp #$64		;
		beq l_cfe1		;
		jsr l_cf06		;
l_cfe1:
		sty $ba			;
l_cfe3:
		pla				;
		lsr				;
		sta $2d			;
		pla				;
		sta $d8			;
		pla				;
		sta $d9			;
		pla				;
		sta $da			;
		pla				;
		sta $db			;
		pla				;
		sta $dc			;
		pla				;
		sta $dd			;
		eor $d5			;
		sta $de			;
l_cffd:
		lda $d0			;
		rts				;

l_d000:
		lda #$00		;
		sta $28			;
l_d004:
		jsr $00e2		;
		bcs l_d00c		;
l_d009:
		jmp l_dfe7		;
l_d00c:
		jsr l_d216		;
		bcs l_d07c		;
		cmp #$2e		;
		beq l_d009		;
		cmp #$23		;
		beq l_d009		;
		cmp #$cd		;
		beq l_d075		;
		cmp #$cc		;
		beq l_d004		;
		cmp #$22		;
		bne l_d034		;
l_d025:
		lda $e9			;
		ldy $ea			;
		adc #$00		;
		bcc l_d02e		;
		iny				;
l_d02e:
		jsr l_d5b5		;
		jmp l_d90d		;
l_d034:
		cmp #$ca		;
		bne l_d04b		;
		ldy #$18		;
		bne l_d077		;
		jsr l_d2a9		;
		lda $d4			;
		eor #$ff		;
		tay				;
		lda $d3			;
		eor #$ff		;
		jmp l_d499		;
l_d04b:
		cmp #$c4		;
		bne l_d052		;
		jmp l_d522		;
l_d052:
		cmp #$d6		;
		bcc l_d059		;
		jmp l_d0a0		;

l_d059:
		jsr l_d062		;
		jsr l_cf17		;
l_d05f:
		lda #$29		;
		.byte $2c		; bit
l_d062:
		lda #$28
		.byte $2c		; bit
l_d065:
		lda #$2c
l_d067:
		ldy #$00		;
		cmp ($e9),y		;
		bne l_d070		;
		jmp $00e2		;

l_d070:
		ldx #$10		;
		jmp l_c47e		;
l_d075:
		ldy #$15		;
l_d077:
		pla				;
		pla				;
		jmp l_cf73		;
l_d07c:
		jsr l_d188		;
		sta $d3			;
		sty $d4			;
		ldx $28			;
		beq l_d08c		;
		ldx #$00		;
		stx $df			;
		rts				;
l_d08c:
		ldx $29			;
		bpl l_d09d		;
		ldy #$00		;
		lda ($d3),y		;
		tax				;
		iny				;
		lda ($d3),y		;
		tay				;
		txa				;
		jmp l_d499		;
l_d09d:
		jmp l_de7b		;

l_d0a0:
		asl				;
		pha				;
		tax				;
		jsr $00e2		;
		cpx #$db		;
		bcc l_d0ce		;
		cpx #$e7		;
		bcc l_d0d1		;
		jsr l_d062		;
		jsr l_cf17		;
		jsr l_d065		;
		jsr l_cf08		;
		pla				;
		tax				;
		lda $d4			;
		pha				;
		lda $d3			;
		pha				;
		txa				;
		pha				;
		jsr l_d8c8		;
		pla				;
		tay				;
		txa				;
		pha				;
		jmp l_d0d3		;
l_d0ce:
		jsr l_d059		;
l_d0d1:
		pla				;
		tay				;
l_d0d3:
		lda $bfde,y		;
		sta $c4			;
		lda $bfdf,y		;
		sta $c5			;
		jsr $00c3		;
		jmp l_cf06		;
		ldy #$ff		;
		.byte $2c
		ldy #$00
		sty $26			;
		jsr l_d2a9		;
		lda $d3			;
		eor $26			;
		sta $24			;
		lda $d4			;
		eor $26			;
		sta $25			;
		jsr l_ded5		;
		jsr l_d2a9		;
		lda $d4			;
		eor $26			;
		and $25			;
		eor $26			;
		tay				;
		lda $d3			;
		eor $26			;
		and $24			;
		eor $26			;
		jmp l_d499		;
		jsr l_cf09		;
		bcs l_d12b		;
		lda $dd			;
		ora #$7f		;
		and $d9			;
		sta $d9			;
		lda #$d8		;
		ldy #$00		;
		jsr l_df4c		;
		tax				;
		jmp l_d15e		;
l_d12b:
		lda #$00		;
		sta $28			;
		dec $bc			;
		jsr l_d7d0		;
		sta $d0			;
		stx $d1			;
		sty $d2			;
		lda $db			;
		ldy $dc			;
		jsr l_d7d4		;
		stx $db			;
		sty $dc			;
		tax				;
		sec				;
		sbc $d0			;
		beq l_d153		;
		lda #$01		;
		bcc l_d153		;
		ldx $d0			;
		lda #$ff		;
l_d153:
		sta $d5			;
		ldy #$ff		;
		inx				;
l_d158:
		iny				;
		dex				;
		bne l_d163		;
		ldx $d5			;
l_d15e:
		bmi l_d16f		;
		clc				;
		bcc l_d16f		;
l_d163:
		lda ($db),y		;
		cmp ($d1),y		;
		beq l_d158		;
		ldx #$ff		;
		bcs l_d16f		;
		ldx #$01		;
l_d16f:
		inx				;
		txa				;
		rol				;
		and $2d			;
		beq l_d178		;
		lda #$ff		;
l_d178:
		jmp l_df24		;
l_d17b:
		jsr l_d065		;Check for ","

;;;
;; DIM
;;;
dim:
		tax				;
		jsr l_d18d		;Handle array dimensioning.
		jsr $00e8		;Get next character.
		bne l_d17b		;Loop until end of statement.
		rts				;

l_d188:
		ldx #$00		;
		jsr $00e8		;
l_d18d:
		stx $27			;
l_d18f:
		sta $b4			;
		jsr $00e8		;
		jsr l_d216		;
		bcs l_d19c		;
l_d199:
		jmp l_d070		;
l_d19c:
		ldx #$00		;
		stx $28			;
		stx $29			;
		jsr $00e2		;
		bcc l_d1ac		;
		jsr l_d216		;
		bcc l_d1b7		;
l_d1ac:
		tax				;
l_d1ad:
		jsr $00e2		;
		bcc l_d1ad		;
		jsr l_d216		;
		bcs l_d1ad		;
l_d1b7:
		cmp #$24		;
		bne l_d1c1		;
		lda #$ff		;
		sta $28			;
		bne l_d1d1		;
l_d1c1:
		cmp #$25		;
		bne l_d1d8		;
		lda $2b			;
		bmi l_d199		;
		lda #$80		;
		sta $29			;
		ora $b4			;
		sta $b4			;
l_d1d1:
		txa				;
		ora #$80		;
		tax				;
		jsr $00e2		;
l_d1d8:
		stx $b5			;
		sec				;
		ora $2b			;
		sbc #$28		;
		bne l_d1e4		;
l_d1e1:
		jmp l_d2bb		;
l_d1e4:
		bit $2b			;
		bvs $d1e1		;
		lda #$00		;
		sta $2b			;
		lda $9c			;
		ldx $9d			;
		ldy #$00		;
l_d1f2:
		stx $cf			;
l_d1f4:
		sta $ce			;
		cpx $9f			;
		bne l_d1fe		;
		cmp $9e			;
		beq l_d222		;
l_d1fe:
		lda $b4			;
		cmp ($ce),y		;
		bne l_d20c		;
		lda $b5			;
		iny				;
		cmp ($ce),y		;
		beq l_d277		;
		dey				;
l_d20c:
		clc				;
		lda $ce			;
		adc #$07		;
		bcc l_d1f4		;
		inx				;
		bne l_d1f2		;
l_d216:
		cmp #$41		;
		bcc l_d221		;
		sbc #$5b		;
		sec				;
		sbc #$a5		;
		bcs l_d221		;
l_d221:
		rts				;
l_d222:
		pla				;
		pha				;
		cmp #$7e		;
		bne l_d235		;
		tsx				;
		lda $0102,x		;
		cmp #$d0		;
		bne l_d235		;
		lda #$07		;
		ldy #$e2		;
		rts				;
l_d235:
		lda $9e			;
		ldy $9f			;
		sta $ce			;
		sty $cf			;
		lda $a0			;
		ldy $a1			;
		sta $c9			;
		sty $ca			;
		clc				;
		adc #$07		;
		bcc l_d24b		;
		iny				;
l_d24b:
		sta $c7			;
		sty $c8			;
		jsr l_c3f4		;
		lda $c7			;
		ldy $c8			;
		iny				;
		sta $9e			;
		sty $9f			;
		ldy #$00		;
		lda $b4			;
		sta ($ce),y		;
		iny				;
		lda $b5			;
		sta ($ce),y		;
		lda #$00		;
		iny				;
		sta ($ce),y		;
		iny				;
		sta ($ce),y		;
		iny				;
		sta ($ce),y		;
		iny				;
		sta ($ce),y		;
		iny				;
		sta ($ce),y		;
l_d277:
		lda $ce			;
		clc				;
		adc #$02		;
		ldy $cf			;
		bcc l_d281		;
		iny				;
l_d281:
		sta $b6			;
		sty $b7			;
		rts				;

l_d286:
		lda $26			;
l_d288:
		asl				;
		adc #$05		;
		adc $ce			;
		ldy $cf			;
		bcc l_d292		;
		iny				;
l_d292:
		sta $c7			;
		sty $c8			;
		rts				;

; floating point value of -32768
		.byte $90		;
		.byte $80		;
		.byte $00
		.byte $00		;
		.byte $00

l_d29c:
		jsr $00e2
		jsr $cf17		;

l_d2a2:
		jsr l_cf06		;
		lda $d5			;
		bmi l_d2b6		;

l_d2a9:
		lda $d0			;
		cmp #$90		;
		bcc l_d2b8		;
		lda #$97		;
		ldy #$d2		;
		jsr l_df4c		;
l_d2b6:
		bne l_d336		;
l_d2b8:
		jmp l_df8c		;

l_d2bb:
		lda $2b			;
		bne l_d306		;
		lda $27			;
		ora $29			;
		pha				;
		lda $28			;
		pha				;
		ldy #$00		;
l_d2c9:
		tya				;
		pha				;
		lda $b5			;
		pha				;
		lda $b4			;
		pha				;
		jsr l_d29c		;
		pla				;
		sta $b4			;
		pla				;
		sta $b5			;
		pla				;
		tay				;
		tsx				;
		lda $0102,x		;
		pha				;
		lda $0101,x		;
		pha				;
		lda $d3			;
		sta $0102,x		;
		lda $d4			;
		sta $0101,x		;
		iny				;
		jsr $00e8		;
		cmp #$2c		;
		beq l_d2c9		;
		sty $26			;
		jsr l_d05f		;
		pla				;
		sta $28			;
		pla				;
		sta $29			;
		and #$7f		;
		sta $27			;
l_d306:
		ldx $9e			;
		lda $9f			;
l_d30a:
		stx $ce			;
		sta $cf			;
		cmp $a1			;
		bne l_d316		;
		cpx $a0			;
		beq l_d355		;
l_d316:
		ldy #$00		;
		lda ($ce),y		;
		iny				;
		cmp $b4			;
		bne l_d325		;
		lda $b5			;
		cmp ($ce),y		;
		beq l_d33b		;
l_d325:
		iny				;
		lda ($ce),y		;
		clc				;
		adc $ce			;
		tax				;
		iny				;
		lda ($ce),y		;
		adc $cf			;
		bcc l_d30a		;
l_d333:
		ldx #$6b		;
		.byte $2c		; bit
l_d336:
		ldx #$35
l_d338:
		jmp l_c47e		;
l_d33b:
		ldx #$78		;
		lda $27			;
		bne l_d338		;
		lda $2b			;
		beq l_d347		;
		sec				;
		rts				;
l_d347:
		jsr l_d286		;
		lda $26			;
		ldy #$04		;
		cmp ($ce),y		;
		bne l_d333		;
		jmp l_d3eb		;
l_d355:
		lda $2b			;
		beq l_d361		;
		jsr l_e93d		;
		ldx #$2a		;
		jmp l_c47e		;
l_d361:
		jsr l_d286		;
		jsr l_c444		;
		lda #$00		;
		tay				;
		sta $e1			;
		ldx #$05		;
		lda $b4			;
		sta ($ce),y		;
		bpl l_d375		;
		dex				;
l_d375:
		iny				;
		lda $b5			;
		sta ($ce),y		;
		bpl l_d37e		;
		dex				;
		dex				;
l_d37e:
		stx $e0			;
		lda $26			;
		iny				;
		iny				;
		iny				;
		sta ($ce),y		;
l_d387:
		ldx #$0b		;
		lda #$00		;
		bit $27			;
		bvc l_d397		;
		pla				;
l_d390:
		clc				;
		adc #$01		;
		tax				;
		pla				;
		adc #$00		;
l_d397:
		iny				;
		sta ($ce),y		;
		iny				;
		txa				;
		sta ($ce),y		;
		jsr l_d44d		;
		stx $e0			;
		sta $e1			;
		ldy $91			;
		dec $26			;
		bne l_d387		;
		adc $c8			;
		bcs l_d40c		;
		sta $c8			;
		tay				;
		txa				;
		adc $c7			;
		bcc l_d3ba		;
		iny				;
		beq l_d40c		;
l_d3ba:
		jsr l_c444		;
		sta $a0			;
		sty $a1			;
		lda #$00		;
		inc $e1			;
		ldy $e0			;
		beq l_d3ce		;
l_d3c9:
		dey				;
		sta ($c7),y		;
		bne l_d3c9		;
l_d3ce:
		dec $c8			;
		dec $e1			;
		bne l_d3c9		;
		inc $c8			;
		sec				;
		lda $a0			;
		sbc $ce			;
		ldy #$02		;
		sta ($ce),y		;
		lda $a1			;
		iny				;
		sbc $cf			;
		sta ($ce),y		;
		lda $27			;
		bne l_d44c		;
		iny				;
l_d3eb:
		lda ($ce),y		;
		sta $26			;
		lda #$00		;
		sta $e0			;
l_d3f3:
		sta $e1			;
		iny				;
		pla				;
		tax				;
		sta $d3			;
		pla				;
		sta $d4			;
		cmp ($ce),y		;
		bcc l_d40f		;
		bne l_d409		;
		iny				;
		txa				;
		cmp ($ce),y		;
		bcc l_d410		;
l_d409:
		jmp l_d333		;
l_d40c:
		jmp l_c47c		;
l_d40f:
		iny				;
l_d410:
		lda $e1			;
		ora $e0			;
		clc				;
		beq l_d421		;
		jsr l_d44d		;
		txa				;
		adc $d3			;
		tax				;
		tya				;
		ldy $91			;
l_d421:
		adc $d4			;
		stx $e0			;
		dec $26			;
		bne l_d3f3		;
		sta $e1			;
		ldx #$05		;
		lda $b4			;
		bpl l_d432		;
		dex				;
l_d432:
		lda $b5			;
		bpl l_d438		;
		dex				;
		dex				;
l_d438:
		stx $97			;
		lda #$00		;
		jsr l_d456		;
		txa				;
		adc $c7			;
		sta $b6			;
		tya				;
l_d445:
		adc $c8			;
		sta $b7			;
		tay				;
		lda $b6			;
l_d44c:
		rts				;

l_d44d:
		sty $91			;
l_d44f:
		lda ($ce),y		;
		sta $97			;
		dey				;
		lda ($ce),y		;
l_d456:
		sta $98			;
		lda #$10		;
		sta $cc			;
		ldx #$00		;
		ldy #$00		;
l_d460:
		txa				;
		asl				;
		tax				;
		tya				;
		rol				;
		tay				;
		bcs l_d40c		;
		asl $e0			;
		rol $e1			;
		bcc l_d479		;
		clc				;
		txa				;
		adc $97			;
		tax				;
		tya				;
		adc $98			;
		tay				;
		bcs l_d40c		;
l_d479:
		dec $cc			;
		bne l_d460		;
		rts				;
		lda $28			;
		beq l_d485		;
		jsr l_d7d0		;
l_d485:
		jsr l_d650		;
		sec				;
		lda $a2			;
		sbc $a0			;
		tay				;
		lda $a3			;
		sbc $a1			;
		ldx #$00		;
		stx $28			;
		jmp l_df40		;

l_d499:
		ldx #$00		;
		stx $28			;
		sta $d1			;
		sty $d2			;
		ldx #$90		;
		jmp l_df2c		;
		jsr l_d8cb		;
		txa				;
		beq l_d4b4		;
		ldy $0258		;
		bit $02f1		;
		bpl l_d4b6		;
l_d4b4:
		ldy $30			;
l_d4b6:
		lda #$00		;
		beq l_d499		;
		cmp #$d9		;
		bne l_d4df		;
		jsr $00e2		;
		lda #$d4		;
		jsr l_d067		;
		jsr l_e853		;
		lda $33			;
		ldy $34			;
		sta $22			;
		sty $23			;
l_d4d1:
		rts				;

l_d4d2:
		ldx $a9			;
		inx				;
		bne l_d4d1		;
		ldx #$95		;
		.byte $2c		; bit
l_d4da:
		ldx #$e5
		jmp l_c47e		;
l_d4df:
		jsr l_d50d		;
		jsr l_d4d2		;
		jsr l_d062		;
		lda #$80		;
		sta $2b			;
		jsr l_d188		;
		jsr l_cf06		;
		jsr l_d05f		;
		lda #$d4		;
		jsr l_d067		;
		pha				;
		lda $b7			;
		pha				;
		lda $b6			;
		pha				;
		lda $ea			;
		pha				;
		lda $e9			;
		pha				;
		jsr data		;
		jmp l_d57d		;

l_d50d:
		lda #$c4		;
		jsr l_d067		;
		ora #$80		;
		ldx #$80		;
		stx $2b			;
		jsr l_d18f		;
		sta $bd			;
		sty $be			;
		jmp l_cf06		;

l_d522:
		jsr l_d50d		;
		lda $be			;
		pha				;
		lda $bd			;
		pha				;
		jsr l_d059		;
		jsr l_cf06		;
		pla				;
		sta $bd			;
		pla				;
		sta $be			;
		ldy #$02		;
		lda ($bd),y		;
		sta $b6			;
		tax				;
		iny				;
		lda ($bd),y		;
		beq l_d4da		;
		sta $b7			;
		iny				;
l_d546:
		lda ($b6),y		;
		pha				;
		dey				;
		bpl l_d546		;
		ldy $b7			;
		jsr l_dead		;
		lda $ea			;
		pha				;
		lda $e9			;
		pha				;
		lda ($bd),y		;
		sta $e9			;
		iny				;
		lda ($bd),y		;
		sta $ea			;
		lda $b7			;
		pha				;
		lda $b6			;
		pha				;
		jsr l_cf03		;
		pla				;
		sta $bd			;
		pla				;
		sta $be			;
		jsr $00e8		;
		beq l_d577		;
		jmp l_d070		;
l_d577:
		pla				;
		sta $e9			;
		pla				;
		sta $ea			;
l_d57d:
		ldy #$00		;
		pla				;
		sta ($bd),y		;
		pla				;
		iny				;
		sta ($bd),y		;
		pla				;
		iny				;
		sta ($bd),y		;
		pla				;
		iny				;
		sta ($bd),y		;
		pla				;
		iny				;
		sta ($bd),y		;
		rts				;
		jsr l_cf06		;
		ldy #$00		;
		jsr l_e0d7		;
l_d59b:
		pla				;
		pla				;
		lda #$ff		;
		ldy #$00		;
		beq l_d5b5		;
l_d5a3:
		ldx $d3			;
		ldy $d4			;
		stx $bf			;
		sty $c0			;
l_d5ab:
		jsr l_d61e		;
		stx $d1			;
		sty $d2			;
		sta $d0			;
		rts				;

l_d5b5:
		ldx #$22		;
		stx $24			;
		stx $25			;
l_d5bb:
		sta $de			;
		sty $df			;
		sta $d1			;
		sty $d2			;
		ldy #$ff		;
l_d5c5:
		iny				;
		lda ($de),y		;
		beq l_d5d6		;
		cmp $24			;
		beq l_d5d2		;
		cmp $25			;
		bne l_d5c5		;
l_d5d2:
		cmp #$22		;
		beq l_d5d7		;
l_d5d6:
		clc				;
l_d5d7:
		sty $d0			;
		tya				;
		adc $de			;
		sta $e0			;
		ldx $df			;
		bcc l_d5e3		;
		inx				;
l_d5e3:
		stx $e1			;
		lda $df			;
		bne l_d5f4		;
		tya				;
		jsr l_d5a3		;
		ldx $de			;
		ldy $df			;
		jsr l_d7b2		;
l_d5f4:
		ldx $85			;
		cpx #$91		;
		bne l_d5ff		;
		ldx #$c4		;
l_d5fc:
		jmp l_c47e		;
l_d5ff:
		lda $d0			;
		sta $00,x		;
		lda $d1			;
		sta $01,x		;
		lda $d2			;
		sta $02,x		;
		ldy #$00		;
		stx $d3			;
		sty $d4			;
		sty $df			;
		dey				;
		sty $28			;
		stx $86			;
		inx				;
		inx				;
		inx				;
		stx $85			;
		rts				;

l_d61e:
		lsr $2a			;
l_d620:
		pha				;
		eor #$ff		;
		sec				;
		adc $a2			;
		ldy $a3			;
		bcs l_d62b		;
		dey				;
l_d62b:
		cpy $a1			;
		bcc l_d640		;
		bne l_d635		;
		cmp $a0			;
		bcc l_d640		;
l_d635:
		sta $a2			;
		sty $a3			;
		sta $a4			;
		sty $a5			;
		tax				;
		pla				;
		rts				;
l_d640:
		ldx #$4d		;
		lda $2a			;
		bmi l_d5fc		;
		jsr l_d650		;
		lda #$80		;
		sta $2a			;
		pla				;
		bne l_d620		;
l_d650:
		ldx $a6			;
		lda $a7			;
l_d654:
		stx $a2			;
		sta $a3			;
		ldy #$00		;
		sty $be			;
		sty $bd			;
		lda $a0			;
		ldx $a1			;
		sta $ce			;
		stx $cf			;
		lda #$88		;
		ldx #$00		;
		sta $91			;
		stx $92			;
l_d66e:
		cmp $85			;
		beq l_d677		;
		jsr l_d6f1		;
		beq l_d66e		;
l_d677:
		lda #$07		;
		sta $c2			;
		lda $9c			;
		ldx $9d			;
		sta $91			;
		stx $92			;
l_d683:
		cpx $9f			;
		bne l_d68b		;
		cmp $9e			;
		beq l_d690		;
l_d68b:
		jsr l_d6e7		;
		beq l_d683		;
l_d690:
		sta $c7			;
		stx $c8			;
		lda #$03		;
		sta $c2			;
l_d698:
		lda $c7			;
		ldx $c8			;
l_d69c:
		cpx $a1			;
		bne l_d6a7		;
		cmp $a0			;
		bne l_d6a7		;
		jmp l_d730		;
l_d6a7:
		sta $91			;
		stx $92			;
		ldy #$00		;
		lda ($91),y		;
		tax				;
		iny				;
		lda ($91),y		;
		php				;
		iny				;
		lda ($91),y		;
		adc $c7			;
		sta $c7			;
		iny				;
		lda ($91),y		;
		adc $c8			;
		sta $c8			;
		plp				;
		bpl l_d698		;
		txa				;
		bmi l_d698		;
		iny				;
		lda ($91),y		;
		ldy #$00		;
		asl				;
		adc #$05		;
		adc $91			;
		sta $91			;
		bcc l_d6d8		;
		inc $92			;
l_d6d8:
		ldx $92			;
l_d6da:
		cpx $c8			;
		bne l_d6e2		;
		cmp $c7			;
		beq l_d69c		;
l_d6e2:
		jsr l_d6f1		;
		beq l_d6da		;
l_d6e7:
		lda ($91),y		;
		bmi l_d720		;
		iny				;
		lda ($91),y		;
		bpl l_d720		;
		iny				;
l_d6f1:
		lda ($91),y		;
		beq l_d720		;
		iny				;
		lda ($91),y		;
		tax				;
		iny				;
		lda ($91),y		;
		cmp $a3			;
		bcc l_d706		;
		bne l_d720		;
		cpx $a2			;
		bcs l_d720		;
l_d706:
		cmp $cf			;
		bcc l_d720		;
		bne l_d710		;
		cpx $ce			;
		bcc l_d720		;
l_d710:
		stx $ce			;
		sta $cf			;
		lda $91			;
		ldx $92			;
		sta $bd			;
		stx $be			;
		lda $c2			;
		sta $c4			;
l_d720:
		lda $c2			;
		clc				;
		adc $91			;
		sta $91			;
		bcc l_d72b		;
		inc $92			;
l_d72b:
		ldx $92			;
		ldy #$00		;
		rts				;

l_d730:
		lda $be			;
		ora $bd			;
		beq l_d72b		;
		lda $c4			;
		and #$04		;
		lsr				;
		tay				;
		sta $c4			;
		lda ($bd),y		;
		adc $ce			;
		sta $c9			;
		lda $cf			;
		adc #$00		;
		sta $ca			;
		lda $a2			;
		ldx $a3			;
		sta $c7			;
		stx $c8			;
		jsr l_c3fb		;
		ldy $c4			;
		iny				;
		lda $c7			;
		sta ($bd),y		;
		tax				;
		inc $c8			;
		lda $c8			;
		iny				;
		sta ($bd),y		;
		jmp l_d654		;

l_d767:
		lda $d4			;
		pha				;
		lda $d3			;
		pha				;
		jsr l_d000		;
		jsr l_cf08		;
		pla				;
		sta $de			;
		pla				;
		sta $df			;
		ldy #$00		;
		lda ($de),y		;
		clc				;
		adc ($d3),y		;
		bcc l_d787		;
		ldx #$b5		;
		jmp l_c47e		;
l_d787:
		jsr l_d5a3		;
		jsr l_d7a4		;
		lda $bf			;
		ldy $c0			;
		jsr l_d7d4		;
		jsr l_d7b6		;
		lda $de			;
		ldy $df			;
		jsr l_d7d4		;
		jsr l_d5f4		;
		jmp l_cf31		;

l_d7a4:
		ldy #$00		;
		lda ($de),y		;
		pha				;
		iny				;
		lda ($de),y		;
		tax				;
		iny				;
		lda ($de),y		;
		tay				;
		pla				;
l_d7b2:
		stx $91			;
		sty $92			;
l_d7b6:
		tay				;
		beq l_d7c3		;
		pha				;
l_d7ba:
		dey				;
		lda ($91),y		;
		sta ($a4),y		;
		tya				;
		bne l_d7ba		;
		pla				;
l_d7c3:
		clc				;
		adc $a4			;
		sta $a4			;
		bcc l_d7cc		;
		inc $a5			;
l_d7cc:
		rts				;

l_d7cd:
		jsr l_cf08		;
l_d7d0:
		lda $d3			;
		ldy $d4			;
l_d7d4:
		sta $91			;
		sty $92			;
		jsr l_d805		;
		php				;
		ldy #$00		;
		lda ($91),y		;
		pha				;
		iny				;
		lda ($91),y		;
		tax				;
		iny				;
		lda ($91),y		;
		tay				;
		pla				;
		plp				;
		bne l_d800		;
		cpy $a3			;
		bne l_d800		;
		cpx $a2			;
		bne l_d800		;
		pha				;
		clc				;
		adc $a2			;
		sta $a2			;
		bcc l_d7ff		;
		inc $a3			;
l_d7ff:
		pla				;
l_d800:
		stx $91			;
		sty $92			;
		rts				;

l_d805:
		cpy $87			;
		bne l_d815		;
		cmp $86			;
		bne l_d815		;
		sta $85			;
		sbc #$03		;
		sta $86			;
		ldy #$00		;
l_d815:
		rts				;
		jsr l_d8cb		;
		txa				;
		pha				;
		lda #$01		;
		jsr l_d5ab		;
		pla				;
		ldy #$00		;
		sta ($d1),y		;
		pla				;
		pla				;
		jmp l_d5f4		;
		jsr l_d88b		;
		cmp ($bf),y		;
		tya				;
l_d830:
		bcc l_d836		;
		lda ($bf),y		;
		tax				;
		tya				;
l_d836:
		pha				;
l_d837:
		txa				;
l_d838:
		pha				;
		jsr l_d5ab		;
		lda $bf			;
		ldy $c0			;
		jsr l_d7d4		;
		pla				;
		tay				;
l_d845:
		pla				;
		clc				;
		adc $91			;
		sta $91			;
		bcc l_d84f		;
		inc $92			;
l_d84f:
		tya				;
		jsr l_d7b6		;
		jmp l_d5f4		;
		jsr l_d88b		;
		clc				;
		sbc ($bf),y		;
		eor #$ff		;
		jmp l_d830		;
		lda #$ff		;
		sta $d4			;
		jsr $00e8		;
		cmp #$29		;
		beq l_d872		;
		jsr l_d065		;
		jsr l_d8c8		;
l_d872:
		jsr l_d88b		;
		beq l_d8c2		;
		dex				;
		txa				;
		pha				;
		clc				;
		ldx #$00		;
		sbc ($bf),y		;
		bcs l_d837		;
		eor #$ff		;
		cmp $d4			;
		bcc l_d838		;
		lda $d4			;
		bcs l_d838		;
l_d88b:
		jsr l_d05f		;
		pla				;
		tay				;
		pla				;
		sta $c4			;
		pla				;
		pla				;
		pla				;
		tax				;
		pla				;
		sta $bf			;
		pla				;
		sta $c0			;
		lda $c4			;
		pha				;
		tya				;
		pha				;
		ldy #$00		;
		txa				;
		rts				;
		jsr l_d8ac		;
		jmp l_d4b6		;

l_d8ac:
		jsr l_d7cd		;
		ldx #$00		;
		stx $28			;
		tay				;
		rts				;
		jsr l_d8ac		;
		beq l_d8c2		;
		ldy #$00		;
		lda ($91),y		;
		tay				;
		jmp l_d4b6		;

l_d8c2:
		jmp l_d336		;

l_d8c5:
		jsr $00e2		;
l_d8c8:
		jsr l_cf03		;
l_d8cb:
		jsr l_d2a2		;
		ldx $d3			;
		bne l_d8c2		;
		ldx $d4			;
		jmp $00e8		;
		jsr l_d8ac		;
		bne l_d8df		;
		jmp l_dbb2		;
l_d8df:
		ldx $e9			;
		ldy $ea			;
		stx $e0			;
		sty $e1			;
		ldx $91			;
		stx $e9			;
		clc				;
		adc $91			;
		sta $93			;
		ldx $92			;
		stx $ea			;
		bcc l_d8f7		;
		inx				;
l_d8f7:
		stx $94			;
		ldy #$00		;
		lda ($93),y		;
		pha				;
		lda #$00		;
		sta ($93),y		;
		jsr $00e8		;
		jsr l_dfe7		;
		pla				;
		ldy #$00		;
		sta ($93),y		;
l_d90d:
		ldx $e0			;
		ldy $e1			;
		stx $e9			;
		sty $ea			;
		rts				;

l_d916:
		jsr l_cf03		;
		jsr l_d922		;
		jsr l_d065		;
		jmp l_d8c8		;

l_d922:
		lda $d5			;
		bmi l_d8c2		;
		lda $d0			;
		cmp #$91		;
l_d92a:
		bcs l_d8c2		;
		jsr l_df8c		;
		lda $d3			;
		ldy $d4			;
		sty $33			;
		sta $34			;
		rts				;
		lda $34			;
		pha				;
		lda $33			;
		pha				;
		jsr l_d922		;
l_d941:
		ldy #$00		;
		lda ($33),y		;
		tay				;
		pla				;
		sta $33			;
		pla				;
		sta $34			;
		jmp l_d4b6		;
		jsr l_d916		;
		txa				;
		ldy #$00		;
		sta ($33),y		;
		rts				;
		jsr l_cf03		;
		jsr l_d922		;
		ldy $33			;
		ldx $34			;
		lda #$02		;
		jmp l_eec9		;

;;;
;; DOKE
;;;
doke:
		jsr l_e853		;
		lda $33			; Get integer argument and save
		ldy $34			;
		sta $1d			; it in $1D,$1E.
		sty $1e			;
		jsr l_d065		; Test for comma.
		jsr l_e853		; Get integer argument.
		ldy #$01		;
l_d97a:
		lda $0033,y		;
		sta ($1d),y		; Put value into memory.
		dey				;
		bpl l_d97a		;
		rts				;
		jsr l_d922		;
		ldy #$01		;
		lda ($33),y		;
		pha				;
		dey				;
		lda ($33),y		;
		tay				;
		pla				;
l_d990:
		jmp l_df40		;

l_d993:
		pha				;
		lsr				;
		lsr				;
		lsr				;
		lsr				;
		jsr l_d99c		;
		pla				;
l_d99c:
		and #$0f		;
		ora #$30		;
		cmp #$3a		;
		bcc l_d9a6		;
		adc #$06		;
l_d9a6:
		cmp #$30		;
		bne l_d9ae		;
		ldy $2f			;
		beq l_d9b4		;
l_d9ae:
		sta $2f			;
		sta $0100,x		;
		inx				;
l_d9b4:
		rts				;
		jsr l_d922		;
		ldx #$00		;
		stx $2f			;
		lda #$23		;
		sta $ff			;
		lda $34			;
		jsr l_d993		;
		lda $33			;
		jsr l_d993		;
		txa				;
		bne l_d9d3		;
		lda #$30		;
		sta $0100,x		;
		inx				;
l_d9d3:
		lda #$00		;
		sta $0100,x		;
		jmp l_d59b		;
l_d9db:
		jmp l_d070		;

;;;
;; LORES
;;;
lores:
		jsr l_ec21		; Set screen to text.
		jsr l_d8c8		; Get single byte expression.
		txa				;
		beq l_d9ed		; In LORES 0.
		dex				;
		bne l_d9db		; Error if not LORES 1.
		lda #$09		;
		.byte $2c		; bit
l_d9ed:
		lda #$08		;
		ldx #$10		; Set paper to black in temp
		stx $02f8		;  location.
		ldx #$1b		;  Set row counter.
l_d9f6:
		pha				;
		txa				; Calculate start address of Xth
		jsr l_da0c		; row of screen.
		lda $02f8		;
		ldy #$27		;
l_da00:
		sta ($1f),y		; Write paper colour on every
		dey				; column of row except first.
		bne l_da00		;
		pla				;
		sta ($1f),y		; Write char set type for row.
		dex				; Repeat until all rows are done
		bne l_d9f6		; except status line.
		rts				;

l_da0c:
		jsr l_f731		;
		sty $20			;
		clc				;
		adc #$80		;
		pha				;
		sta $1f			;
		lda #$bb		;
		adc $20			;
		sta $20			;
		pla				;
		rts				;
l_da1f:
		jmp l_d8c2		;

l_da22:
		jsr l_daf6		;
		jsr l_d8c8		;
		cpx #$28		;
		bcs l_da1f		;
		stx $02f8		;
		jsr l_d065		;
		jsr l_d8c8		;
		cpx #$1b		;
		bcs l_da1f		;
		inx				;
		txa				;
		jsr l_da0c		;
		rts				;
		jsr l_d062		;
		jsr l_da22		;
		jsr l_d05f		;
		ldy $02f8		;
		lda ($1f),y		;
		tay				;
		jmp l_d4b6		;

plot:
		jsr l_da22		; Get X, Y co-ordinates.
		jsr l_d065		; Test for comma.
		jsr l_cf17		; Evaluate expression.
		bit $28			;
		bpl l_da7b		; Expression not string type.
		jsr l_d7d0		; Set up string in FPA.
		tax				;
		clc				;
		lda $02f8		; Calculate start address for
		adc $1f			; writing string to screen.
		bcc l_da6c		;
		inc $20			;
l_da6c:
		sta $1f			;
		ldy #$00		;
		inx				;
l_da71:
		dex				;
		beq l_da84		; String plotted.
		lda ($91),y		; Write each element to screen.
		sta ($1f),y		;
		iny				;
		bne l_da71		; More to be done.
l_da7b:
		jsr l_d8cb		; Get single byte expression.
		txa				;
		ldy $02f8		;
		sta ($1f),y		; Print it to screen.
l_da84:
		rts				;

;;;
;; REPEAT
;;;
repeat:
		bne l_da9e		;
		lda #$03		;
		jsr l_c437		;
l_da8c:
		lda $ea			;
		pha				;
		lda $e9			;
		pha				;
		lda $a9			;
		pha				;
		lda $a8			;
		pha				;
		lda #$8b		;
		pha				;
		jmp l_c8c1		;
l_da9e:
		jmp l_d070		;

;;;
;; PULL / UNTIL
;;;
pull:
until:
		lda #$ff		;
		sta $b9			;
		jsr l_c3c6		;
		txs				;
		cmp #$8b		;
		beq l_dab2		;
		ldx #$f5		;
		jmp l_c47e		;
l_dab2:
		cpy #$10		;
		bne l_dabb		;
		sty $d0			;
		tya				;
		bne l_dac1		;
l_dabb:
		jsr $00e8		;
		jsr l_cf17		;
l_dac1:
		pla				;
		lda $d0			;
		beq l_dacb		;
		pla				;
		pla				;
		pla				;
		pla				;
		rts				;
l_dacb:
		pla				;
		sta $a8			;
		pla				;
		sta $a9			;
		pla				;
		sta $e9			;
		pla				;
		sta $ea			;
		jmp l_da8c		;
		jsr l_eb78		;
		php				;
		pha				;
		bpl l_dae4		;
		lda #$01		;
		.byte $2c		; bit
l_dae4:
		lda #$00
		jsr l_d5ab		;
		pla				;
		plp				;
		bpl l_daf1		;
		ldy #$00		;
		sta ($d1),y		;
l_daf1:
		pla				;
		pla				;
		jmp l_d5f4		;

l_daf6:
		lda $02c0		;
		and #$01		;
		beq l_db02		;
		ldx #$a3		;
		jmp l_c47e		;
l_db02:
		rts				;
l_db03:
		rts				;

l_db04:
		lda #$05		;
		ldy #$e2		;
		jmp l_db22		;

l_db0b:
		jsr l_dd51		;
l_db0e:
		lda $d5			;
		eor #$ff		;
		sta $d5			;
		eor $dd			;
		sta $de			;
		lda $d0			;
		jmp l_db25		;
l_db1d:
		jsr l_dc54		;
		bcc l_db5e		;
l_db22:
		jsr l_dd51		;
l_db25:
		bne l_db2a		;
		jmp l_ded5		;
l_db2a:
		ldx $df			;
		stx $c5			;
		ldx #$d8		;
		lda $d8			;
l_db32:
		tay				;
		beq l_db03		;
		sec				;
		sbc $d0			;
		beq l_db5e		;
		bcc l_db4e		;
		sty $d0			;
		ldy $dd			;
		sty $d5			;
		eor #$ff		;
		adc #$00		;
		ldy #$00		;
		sty $c5			;
		ldx #$d0		;
		bne l_db52		;
l_db4e:
		ldy #$00		;
		sty $df			;
l_db52:
		cmp #$f9		;
		bmi l_db1d		;
		tay				;
		lda $df			;
		lsr $01,x		;
		jsr l_dc6b		;
l_db5e:
		bit $de			;
		bpl l_dbb9		;
		ldy #$d0		;
		cpx #$d8		;
		beq l_db6a		;
		ldy #$d8		;
l_db6a:
		sec				;
		eor #$ff		;
		adc $c5			;
		sta $df			;
		lda $0004,y		;
		sbc $04,x		;
		sta $d4			;
		lda $0003,y		;
		sbc $03,x		;
		sta $d3			;
		lda $0002,y		;
		sbc $02,x		;
		sta $d2			;
		lda $0001,y		;
		sbc $01,x		;
		sta $d1			;
l_db8d:
		bcs l_db92		;
		jsr l_dc02		;
l_db92:
		ldy #$00		;
		tya				;
		clc				;
l_db96:
		ldx $d1			;
		bne l_dbe4		;
		ldx $d2			;
		stx $d1			;
		ldx $d3			;
		stx $d2			;
		ldx $d4			;
		stx $d3			;
		ldx $df			;
		stx $d4			;
		sty $df			;
		adc #$08		;
		cmp #$28		;
		bne l_db96		;
l_dbb2:
		lda #$00		;
l_dbb4:
		sta $d0			;
l_dbb6:
		sta $d5			;
		rts				;
l_dbb9:
		adc $c5			;
		sta $df			;
		lda $d4			;
		adc $dc			;
		sta $d4			;
		lda $d3			;
		adc $db			;
		sta $d3			;
		lda $d2			;
		adc $da			;
		sta $d2			;
		lda $d1			;
		adc $d9			;
		sta $d1			;
		jmp l_dbf1		;
l_dbd8:
		adc #$01		;
		asl $df			;
		rol $d4			;
		rol $d3			;
		rol $d2			;
		rol $d1			;
l_dbe4:
		bpl l_dbd8		;
		sec				;
		sbc $d0			;
		bcs l_dbb2		;
		eor #$ff		;
		adc #$01		;
		sta $d0			;
l_dbf1:
		bcc l_dc01		;
l_dbf3:
		inc $d0			;
		beq l_dc39		;
		ror $d1			;
		ror $d2			;
		ror $d3			;
		ror $d4			;
		ror $df			;
l_dc01:
		rts				;

l_dc02:
		lda $d5			;
		eor #$ff		;
		sta $d5			;
l_dc08:
		lda $d1			;
		eor #$ff		;
		sta $d1			;
		lda $d2			;
		eor #$ff		;
		sta $d2			;
		lda $d3			;
		eor #$ff		;
		sta $d3			;
		lda $d4			;
		eor #$ff		;
		sta $d4			;
		lda $df			;
		eor #$ff		;
		sta $df			;
		inc $df			;
		bne l_dc38		;
l_dc2a:
		inc $d4			;
		bne l_dc38		;
		inc $d3			;
		bne l_dc38		;
		inc $d2			;
		bne l_dc38		;
		inc $d1			;
l_dc38:
		rts				;

l_dc39:
		ldx #$45		;
		jmp l_c47e		;

l_dc3e:
		ldx #$94		;
l_dc40:
		ldy $04,x		;
		sty $df			;
		ldy $03,x		;
		sty $04,x		;
		ldy $02,x		;
		sty $03,x		;
		ldy $01,x		;
		sty $02,x		;
		ldy $d7			;
		sty $01,x		;
l_dc54:
		adc #$08		;
		bmi l_dc40		;
		beq l_dc40		;
		sbc #$08		;
		tay				;
		lda $df			;
		bcs l_dc75		;
l_dc61:
		asl $01,x		;
		bcc l_dc67		;
		inc $01,x		;
l_dc67:
		ror $01,x		;
		ror $01,x		;
l_dc6b:
		ror $02,x		;
		ror $03,x		;
		ror $04,x		;
		ror				;
		iny				;
		bne l_dc61		;
l_dc75:
		clc				;
		rts				;

; ln(10) f1oating point numbers for use by numeric functions
		.byte $82		;
		.byte $13		;
		.byte $5d		;
		.byte $8d		;
		.byte $de		;
; pi
		.byte $82		;
		.byte $49		;
		.byte $0f		;
		.byte $da		;
		.byte $9e		;
; 1.0
		.byte $81
		.byte $00
		.byte $00
		.byte $00
		.byte $00
		.byte $03
; data for the log series
		.byte $7f		;
		.byte $5e		;
		.byte $56		;
		.byte $cb		;
		.byte $79		;
		.byte $80		;
		.byte $13		;
		.byte $9b		;
		.byte $0b		;
		.byte $64		;
		.byte $80		;
		.byte $76		;
		.byte $38		;
		.byte $93		;
		.byte $16		;
		.byte $82		;
		.byte $38		;
		.byte $aa		;
		.byte $3b		;
		.byte $20
; sqr(.5) more floating point numbers
		.byte $80
		.byte $35
		.byte $04		;
		.byte $f3		;
		.byte $34		;
; sqr(2)
		.byte $81		;
		.byte $35		;
		.byte $04		;
		.byte $f3		;
		.byte $34		;
; -0.5
		.byte $80		;
		.byte $80		;
		.byte $00
		.byte $00
		.byte $00
; ln(2)
		.byte $80
		.byte $31		;
		.byte $72		;
		.byte $17		;
		.byte $f8

l_dcaf:
		jsr l_df13		;
		beq l_dcb6		;
		bpl l_dcb9		;
l_dcb6:
		jmp l_d336		;
l_dcb9:
		lda $d0			;
		sbc #$7f		;
		pha				;
		lda #$80		;
		sta $d0			;
		lda #$9b		;
		ldy #$dc		;
		jsr l_db22		;
		lda #$a0		;
		ldy #$dc		;
		jsr l_dde4		;
		lda #$81		;
		ldy #$dc		;
		jsr l_db0b		;
		lda #$86		;
		ldy #$dc		;
		jsr l_e2fd		;
		lda #$a5		;
		ldy #$dc		;
		jsr l_db22		;
		pla				;
		jsr l_e076		;
		lda #$aa		;
		ldy #$dc		;
l_dced:
		jsr l_dd51		;
		bne l_dcf5		;
		jmp l_dd50		;
l_dcf5:
		jsr l_dd7c		;
		lda #$00		;
		sta $95			;
		sta $96			;
		sta $97			;
		sta $98			;
		lda $df			;
		jsr l_dd1e		;
		lda $d4			;
		jsr l_dd1e		;
		lda $d3			;
		jsr l_dd1e		;
		lda $d2			;
		jsr l_dd1e		;
		lda $d1			;
		jsr l_dd23		;
		jmp l_de64		;

l_dd1e:
		bne l_dd23		;
		jmp l_dc3e		;

l_dd23:
		lsr				;
		ora #$80		;
l_dd26:
		tay				;
		bcc l_dd42		;
		clc				;
		lda $98			;
		adc $dc			;
		sta $98			;
		lda $97			;
		adc $db			;
		sta $97			;
		lda $96			;
		adc $da			;
		sta $96			;
		lda $95			;
		adc $d9			;
		sta $95			;
l_dd42:
		ror $95			;
		ror $96			;
		ror $97			;
		ror $98			;
		ror $df			;
		tya				;
		lsr				;
		bne l_dd26		;
l_dd50:
		rts				;

l_dd51:
		sta $91			;
		sty $92			;
		ldy #$04		;
		lda ($91),y		;
		sta $dc			;
		dey				;
		lda ($91),y		;
		sta $db			;
		dey				;
		lda ($91),y		;
		sta $da			;
		dey				;
		lda ($91),y		;
		sta $dd			;
		eor $d5			;
		sta $de			;
		lda $dd			;
		ora #$80		;
		sta $d9			;
		dey				;
		lda ($91),y		;
		sta $d8			;
		lda $d0			;
		rts				;

l_dd7c:
		lda $d8			;
l_dd7e:
		beq l_dd9f		;
		clc				;
		adc $d0			;
		bcc l_dd89		;
		bmi l_dda4		;
		clc				;
		.byte $2c		; bit
l_dd89:
		bpl l_dd9f
		adc #$80		;
		sta $d0			;
		bne l_dd94		;
		jmp l_dbb6		;
l_dd94:
		lda $de			;
		sta $d5			;
		rts				;

l_dd99:
		lda $d5			;
		eor #$ff		;
		bmi l_dda4		;
l_dd9f:
		pla				;
		pla				;
		jmp l_dbb2		;
l_dda4:
		jmp l_dc39		;

l_dda7:
		jsr l_dee5		;
		tax				;
		beq l_ddbd		;
		clc				;
		adc #$02		;
		bcs l_dda4		;
		ldx #$00		;
		stx $de			;
		jsr l_db32		;
		inc $d0			;
		beq l_dda4		;
l_ddbd:
		rts				;

; floating point number -10
		.byte $84
		.byte $20
		.byte $00
		.byte $00
		.byte $00

l_ddc3:
		jsr l_dee5
		lda #$be		;
		ldy #$dd		;
		ldx #$00		;
l_ddcc:
		stx $de			;
		jsr l_de7b		;
		jmp l_dde7		;
		jsr l_dcaf		;
		jsr l_dee5		;
		lda #$77		;
		ldy #$dc		;
		jsr l_de7b		;
		jmp l_dde7		;

l_dde4:
		jsr l_dd51		;
l_dde7:
		beq l_de5f		;
		jsr l_def4		;
		lda #$00		;
		sec				;
		sbc $d0			;
		sta $d0			;
		jsr l_dd7c		;
		inc $d0			;
		beq l_dda4		;
		ldx #$fc		;
		lda #$01		;
l_ddfe:
		ldy $d9			;
		cpy $d1			;
		bne l_de14		;
		ldy $da			;
		cpy $d2			;
		bne l_de14		;
		ldy $db			;
		cpy $d3			;
		bne l_de14		;
		ldy $dc			;
		cpy $d4			;
l_de14:
		php				;
		rol				;
		bcc l_de21		;
		inx				;
		sta $98,x		;
		beq l_de4f		;
		bpl l_de53		;
		lda #$01		;
l_de21:
		plp				;
		bcs l_de32		;
l_de24:
		asl $dc			;
		rol $db			;
		rol $da			;
		rol $d9			;
		bcs l_de14		;
		bmi l_ddfe		;
		bpl l_de14		;
l_de32:
		tay				;
		lda $dc			;
		sbc $d4			;
		sta $dc			;
		lda $db			;
		sbc $d3			;
		sta $db			;
		lda $da			;
		sbc $d2			;
		sta $da			;
		lda $d9			;
		sbc $d1			;
		sta $d9			;
		tya				;
		jmp l_de24		;
l_de4f:
		lda #$40		;
		bne l_de21		;
l_de53:
		asl				;
		asl				;
		asl				;
		asl				;
		asl				;
		asl				;
		sta $df			;
		plp				;
		jmp l_de64		;
l_de5f:
		ldx #$85		;
		jmp l_c47e		;

l_de64:
		lda $95			;
		sta $d1			;
		lda $96			;
		sta $d2			;
		lda $97			;
		sta $d3			;
		lda $98			;
		sta $d4			;
		jmp l_db92		;
		lda #$7c		;
		ldy #$dc		;
l_de7b:
		sta $91			;
		sty $92			;
		ldy #$04		;
		lda ($91),y		;
		sta $d4			;
		dey				;
		lda ($91),y		;
		sta $d3			;
		dey				;
		lda ($91),y		;
		sta $d2			;
		dey				;
		lda ($91),y		;
		sta $d5			;
		ora #$80		;
		sta $d1			;
		dey				;
		lda ($91),y		;
		sta $d0			;
		sty $df			;
		rts				;

l_dea0:
		ldx #$cb		;
		.byte $2c		; bit
l_dea3:
		ldx #$c6
		ldy #$00		;
		beq l_dead		;
l_dea9:
		ldx $b8			;
		ldy $b9			;
l_dead:
		jsr l_def4		;
		stx $91			;
		sty $92			;
		ldy #$04		;
		lda $d4			;
		sta ($91),y		;
		dey				;
		lda $d3			;
		sta ($91),y		;
		dey				;
		lda $d2			;
		sta ($91),y		;
		dey				;
		lda $d5			;
		ora #$7f		;
		and $d1			;
		sta ($91),y		;
		dey				;
		lda $d0			;
		sta ($91),y		;
		sty $df			;
		rts				;

l_ded5:
		lda $dd			;
l_ded7:
		sta $d5			;
		ldx #$05		;
l_dedb:
		lda $d7,x		;
		sta $cf,x		;
		dex				;
		bne l_dedb		;
		stx $df			;
		rts				;

l_dee5:
		jsr l_def4		;
l_dee8:
		ldx #$06		;
l_deea:
		lda $cf,x		;
		sta $d7,x		;
		dex				;
		bne l_deea		;
		stx $df			;
l_def3:
		rts				;

l_def4:
		lda $d0			;
		beq l_def3		;
		asl $df			;
		bcc l_def3		;
l_defc:
		jsr l_dc2a		;
		bne l_def3		;
		jmp l_dbf3		;
		jsr l_d2a9		;
		lsr $d4			;
		bcs l_df0f		;
		lda #$00		;
		beq l_df24		;
l_df0f:
		lda #$ff		;
		bmi l_df24		;
l_df13:
		lda $d0			;
		beq l_df20		;
l_df17:
		lda $d5			;
l_df19:
		rol				;
		lda #$ff		;
		bcs l_df20		;
		lda #$01		;
l_df20:
		rts				;
		jsr l_df13		;
l_df24:
		sta $d1			;
		lda #$00		;
		sta $d2			;
		ldx #$88		;
l_df2c:
		lda $d1			;
		eor #$ff		;
		rol				;
l_df31:
		lda #$00		;
		sta $d4			;
		sta $d3			;
		stx $d0			;
		sta $df			;
		sta $d5			;
		jmp l_db8d		;

l_df40:
		sta $d1			;
		sty $d2			;
		ldx #$90		;
		sec				;
		bcs l_df31		;
		lsr $d5			;
		rts				;

l_df4c:
		sta $93			;
l_df4e:
		sty $94			;
		ldy #$00		;
		lda ($93),y		;
		iny				;
		tax				;
		beq l_df13		;
		lda ($93),y		;
		eor $d5			;
		bmi l_df17		;
		cpx $d0			;
		bne l_df83		;
		lda ($93),y		;
		ora #$80		;
		cmp $d1			;
		bne l_df83		;
		iny				;
		lda ($93),y		;
		cmp $d2			;
		bne l_df83		;
		iny				;
		lda ($93),y		;
		cmp $d3			;
		bne l_df83		;
		iny				;
		lda #$7f		;
		cmp $df			;
		lda ($93),y		;
		sbc $d4			;
		beq l_dfab		;
l_df83:
		lda $d5			;
		bcc l_df89		;
		eor #$ff		;
l_df89:
		jmp l_df19		;

l_df8c:
		lda $d0			;
		beq l_dfda		;
		sec				;
		sbc #$a0		;
		bit $d5			;
		bpl l_dfa0		;
		tax				;
		lda #$ff		;
		sta $d7			;
		jsr l_dc08		;
		txa				;
l_dfa0:
		ldx #$d0		;
		cmp #$f9		;
		bpl l_dfac		;
		jsr l_dc54		;
		sty $d7			;
l_dfab:
		rts				;
l_dfac:
		tay				;
		lda $d5			;
		and #$80		;
		lsr $d1			;
		ora $d1			;
		sta $d1			;
		jsr l_dc6b		;
		sty $d7			;
		rts				;

l_dfbd:
		lda $d0			;
		cmp #$a0		;
		bcs l_dfe3		;
		jsr l_df8c		;
		sty $df			;
		lda $d5			;
		sty $d5			;
		eor #$80		;
		rol				;
		lda #$a0		;
		sta $d0			;
		lda $d4			;
		sta $24			;
		jmp l_db8d		;
l_dfda:
		sta $d1			;
		sta $d2			;
		sta $d3			;
		sta $d4			;
		tay				;
l_dfe3:
		rts				;
l_dfe4:
		jmp l_e981		;

l_dfe7:
		ldy #$00		;
		ldx #$0a		;
l_dfeb:
		sty $cc,x		;
		dex				;
		bpl l_dfeb		;
		bcc l_e005		;
		cmp #$23		;
		beq l_dfe4		;
		cmp #$2d		;
		bne l_dffe		;
		stx $d6			;
		beq l_e002		;
l_dffe:
		cmp #$2b		;
		bne l_e007		;
l_e002:
		jsr $00e2		;
l_e005:
		bcc l_e062		;
l_e007:
		cmp #$2e		;
		beq l_e039		;
		cmp #$45		;
		bne l_e03f		;
		jsr $00e2		;
		bcc l_e02b		;
		cmp #$cd		;
		beq l_e026		;
		cmp #$2d		;
		beq l_e026		;
		cmp #$cc		;
		beq l_e028		;
		cmp #$2b		;
		beq l_e028		;
		bne l_e02d		;
l_e026:
		ror $cf			;
l_e028:
		jsr $00e2		;
l_e02b:
		bcc l_e089		;
l_e02d:
		bit $cf			;
		bpl l_e03f		;
		lda #$00		;
		sec				;
		sbc $cd			;
		jmp l_e041		;
l_e039:
		ror $ce			;
		bit $ce			;
		bvc l_e002		;
l_e03f:
		lda $cd			;
l_e041:
		sec				;
		sbc $cc			;
		sta $cd			;
		beq l_e05a		;
		bpl l_e053		;
l_e04a:
		jsr l_ddc3		;
		inc $cd			;
		bne l_e04a		;
		beq l_e05a		;
l_e053:
		jsr l_dda7		;
		dec $cd			;
		bne l_e053		;
l_e05a:
		lda $d6			;
		bmi l_e05f		;
		rts				;
l_e05f:
		jmp l_e271		;
l_e062:
		pha				;
		bit $ce			;
		bpl l_e069		;
		inc $cc			;
l_e069:
		jsr l_dda7		;
		pla				;
		sec				;
		sbc #$30		;
		jsr l_e076		;
		jmp l_e002		;

l_e076:
		pha				;
		jsr l_dee5		;
		pla				;
		jsr l_df24		;
		lda $dd			;
		eor $d5			;
		sta $de			;
		ldx $d0			;
		jmp l_db25		;
l_e089:
		lda $cd			;
		cmp #$0a		;
		bcc l_e098		;
		lda #$64		;
		bit $cf			;
		bmi l_e0a6		;
		jmp l_dc39		;
l_e098:
		asl				;
		asl				;
		clc				;
		adc $cd			;
		asl				;
		clc				;
		ldy #$00		;
		adc ($e9),y		;
		sec				;
		sbc #$30		;
l_e0a6:
		sta $cd			;
		jmp l_e028		;

; list of floating point numbers for converting a number to a string
; 1e8
		.byte $9b, $3e, $bc, $1f, $fd		;
; 9.99999e8
		.byte $9e, $6e, $6b, $27, $fd		;
; 1e9
		.byte $9e, $6e, $6b, $28, $00

l_e0ba:
		lda #$ad
		ldy #$c3			;
		jsr l_e0d2		;
		lda $a9			;
		ldx $a8			;
l_e0c5:
		sta $d1			;
		stx $d2			;
		ldx #$90		;
		sec				;
		jsr l_df31		;
		jsr l_e0d5		;
l_e0d2:
		jmp l_ccb0		;

l_e0d5:
		ldy #$01		;
l_e0d7:
		lda #$20		;
		bit $d5			;
		bpl l_e0df		;
		lda #$2d		;
l_e0df:
		sta $00ff,y		;
		sta $d5			;
		sty $e0			;
		iny				;
		lda #$30		;
		ldx $d0			;
		bne l_e0f0		;
		jmp l_e1f8		;
l_e0f0:
		lda #$00		;
		cpx #$80		;
		beq l_e0f8		;
		bcs l_e101		;
l_e0f8:
		lda #$b5		;
		ldy #$e0		;
		jsr l_dced		;
		lda #$f7		;
l_e101:
		sta $cc			;
l_e103:
		lda #$b0		;
		ldy #$e0		;
		jsr l_df4c		;
		beq l_e12a		;
		bpl l_e120		;
l_e10e:
		lda #$ab		;
		ldy #$e0		;
		jsr l_df4c		;
		beq l_e119		;
		bpl l_e127		;
l_e119:
		jsr l_dda7		;
		dec $cc			;
		bne l_e10e		;
l_e120:
		jsr l_ddc3		;
		inc $cc			;
		bne l_e103		;
l_e127:
		jsr l_db04		;
l_e12a:
		jsr l_df8c		;
		ldx #$01		;
		lda $cc			;
		clc				;
		adc #$0a		;
		bmi l_e13f		;
		cmp #$0b		;
		bcs l_e140		;
		adc #$ff		;
		tax				;
		lda #$02		;
l_e13f:
		sec				;
l_e140:
		sbc #$02		;
		sta $cd			;
		stx $cc			;
		txa				;
		beq l_e14b		;
		bpl l_e15e		;
l_e14b:
		ldy $e0			;
		lda #$2e		;
		iny				;
		sta $00ff,y		;
		txa				;
		beq l_e15c		;
		lda #$30		;
		iny				;
		sta $00ff,y		;
l_e15c:
		sty $e0			;
l_e15e:
		ldy #$00		;
		ldx #$80		;
l_e162:
		lda $d4			;
		clc				;
		adc $e20d,y		;
		sta $d4			;
		lda $d3			;
		adc $e20c,y		;
		sta $d3			;
		lda $d2			;
		adc $e20b,y		;
		sta $d2			;
		lda $d1			;
		adc $e20a,y		;
		sta $d1			;
		inx				;
		bcs l_e186		;
		bpl l_e162		;
		bmi l_e188		;
l_e186:
		bmi l_e162		;
l_e188:
		txa				;
		bcc l_e18f		;
		eor #$ff		;
		adc #$0a		;
l_e18f:
		adc #$2f		;
		iny				;
		iny				;
		iny				;
		iny				;
		sty $b6			;
		ldy $e0			;
		iny				;
		tax				;
		and #$7f		;
		sta $00ff,y		;
		dec $cc			;
		bne l_e1aa		;
		lda #$2e		;
		iny				;
		sta $00ff,y		;
l_e1aa:
		sty $e0			;
		ldy $b6			;
		txa				;
		eor #$ff		;
		and #$80		;
		tax				;
		cpy #$24		;
		bne l_e162		;
		ldy $e0			;
l_e1ba:
		lda $00ff,y		;
		dey				;
		cmp #$30		;
		beq l_e1ba		;
		cmp #$2e		;
		beq l_e1c7		;
		iny				;
l_e1c7:
		lda #$2b		;
		ldx $cd			;
		beq l_e1fb		;
		bpl l_e1d7		;
		lda #$00		;
		sec				;
		sbc $cd			;
		tax				;
		lda #$2d		;
l_e1d7:
		sta $0101,y		;
		lda #$45		;
		sta $0100,y		;
		txa				;
		ldx #$2f		;
		sec				;
l_e1e3:
		inx				;
		sbc #$0a		;
		bcs l_e1e3		;
		adc #$3a		;
		sta $0103,y		;
		txa				;
		sta $0102,y		;
		lda #$00		;
		sta $0104,y		;
		beq l_e200		;
l_e1f8:
		sta $00ff,y		;
l_e1fb:
		lda #$00		;
		sta $0100,y		;
l_e200:
		lda #$00		;
		ldy #$01		;
		rts				;

; 0.5
		.byte $80		;
		.byte $00
		.byte $00
		.byte $00
		.byte $00

; four byte integers for use with the routine that
; converts numbers into strings. decimal
; values are also listed in exponent form.
; -1e8
		.byte $fa		;
		.byte $0a		;
		.byte $1f		;
		.byte $00
; +1e7
		.byte $00
		.byte $98		;
		.byte $96		;
		.byte $80		;
; -1e6
		.byte $ff		;
		.byte $f0
		.byte $bd
		.byte $c0		;
; +1e5
		.byte $00
		.byte $01
		.byte $86		;
		.byte $a0		;
; -1e4
		.byte $ff		;
		.byte $ff		;
		.byte $d8
		.byte $f0
; +1e3
		.byte $00
		.byte $00
		.byte $03
		.byte $e8		;
; -1e2
		.byte $ff		;
		.byte $ff		;
		.byte $ff		;
		.byte $9c		;
; +1e1
		.byte $00
		.byte $00
		.byte $00
		.byte $0a
; -1e0
		.byte $ff		;
		.byte $ff		;
		.byte $ff		;
		.byte $ff		;

		jsr l_dee5		;
		lda #$05		;
		ldy #$e2		;
		jsr l_de7b		;
		beq l_e2aa		;
		lda $d8			;
		bne l_e241		;
		jmp l_dbb4		;
l_e241:
		ldx #$bd		;
		ldy #$00		;
		jsr l_dead		;
		lda $dd			;
		bpl l_e25b		;
		jsr l_dfbd		;
		lda #$bd		;
		ldy #$00		;
		jsr l_df4c		;
		bne l_e25b		;
		tya				;
		ldy $24			;
l_e25b:
		jsr l_ded7		;
		tya				;
		pha				;
		jsr l_dcaf		;
		lda #$bd		;
		ldy #$00		;
		jsr l_dced		;
		jsr l_e2aa		;
		pla				;
		lsr				;
		bcc l_e27b		;
l_e271:
		lda $d0			;
		beq l_e27b		;
		lda $d5			;
		eor #$ff		;
		sta $d5			;
l_e27b:
		rts				;

; data for exp routine
		.byte $81		;
		.byte $38		;
		.byte $aa		;
		.byte $3b		;
		.byte $29		;
		.byte $07		;
		.byte $71		;

; unknown data
		.byte $34		;
		.byte $58		;
		.byte $3e		;
		.byte $56		;
		.byte $74		;
		.byte $16		;
		.byte $7e		;
		.byte $b3		;
		.byte $1b		;
		.byte $77		;
		.byte $2f		;
		.byte $ee		;
		.byte $e3		;
		.byte $85		;
		.byte $7a		;
		.byte $1d		;
		.byte $84		;
		.byte $1c		;
		.byte $2a		;
		.byte $7c		;
		.byte $63		;
		.byte $59		;
		.byte $58		;
		.byte $0a		;
		.byte $7e		;
		.byte $75		;
		.byte $fd		;
		.byte $e7		;
		.byte $c6
		.byte $80
		.byte $31
		.byte $72
		.byte $18
		.byte $10
		.byte $81
		.byte $00
		.byte $00
		.byte $00
		.byte $00

l_e2aa:
		lda #$7c		;
		ldy #$e2		;
		jsr l_dced		;
		lda $df			;
		adc #$50		;
		bcc l_e2ba		;
		jsr l_defc		;
l_e2ba:
		sta $c5			;
		jsr l_dee8		;
		lda $d0			;
		cmp #$88		;
		bcc l_e2c8		;
l_e2c5:
		jsr l_dd99		;
l_e2c8:
		jsr l_dfbd		;
		lda $24			;
		clc				;
		adc #$81		;
		beq l_e2c5		;
		sec				;
		sbc #$01		;
		pha				;
		ldx #$05		;
l_e2d8:
		lda $d8,x		;
		ldy $d0,x		;
		sta $d0,x		;
		sty $d8,x		;
		dex				;
		bpl l_e2d8		;
		lda $c5			;
		sta $df			;
		jsr l_db0e		;
		jsr l_e271		;
		lda #$81		;
		ldy #$e2		;
		jsr l_e313		;
		lda #$00		;
		sta $de			;
		pla				;
		jsr l_dd7e		;
		rts				;

l_e2fd:
		sta $e0			;
		sty $e1			;
		jsr l_dea3		;
		lda #$c6		;
		jsr l_dced		;
		jsr l_e317		;
		lda #$c6		;
		ldy #$00		;
		jmp l_dced		;

l_e313:
		sta $e0			;
		sty $e1			;
l_e317:
		jsr l_dea0		;
		lda ($e0),y		;
		sta $d6			;
		ldy $e0			;
		iny				;
		tya				;
		bne l_e326		;
		inc $e1			;
l_e326:
		sta $e0			;
		ldy $e1			;
l_e32a:
		jsr l_dced		;
		lda $e0			;
		ldy $e1			;
		clc				;
		adc #$05		;
		bcc l_e337		;
		iny				;
l_e337:
		sta $e0			;
		sty $e1			;
		jsr l_db22		;
		lda #$cb		;
		ldy #$00		;
		dec $d6			;
		bne l_e32a		;
l_e346:
		rts				;

; data for rnd command.
		.byte $98, $35, $44, $7a	;
		.byte $68, $28, $b1, $46	;

		jsr l_df13		;
		tax				;
		bmi l_e36d		;
		lda #$fa		;
		ldy #$00		;
		jsr l_de7b		;
		txa				;
		beq l_e346		;
		lda #$47		;
		ldy #$e3		;
		jsr l_dced		;
		lda #$4b		;
		ldy #$e3		;
		jsr l_db22		;
l_e36d:
		ldx $d4			;
		lda $d1			;
		sta $d4			;
		stx $d1			;
		lda #$00		;
		sta $d5			;
		lda $d0			;
		sta $df			;
		lda #$80		;
		sta $d0			;
		jsr l_db92		;
		ldx #$fa		;
		ldy #$00		;
l_e388:
		jmp l_dead		;
		lda #$07		;
		ldy #$e4		;
		jsr l_db22		;
l_e392:
		jsr l_dee5		;
		lda #$0c		;
		ldy #$e4		;
		ldx $dd			;
		jsr l_ddcc		;
		jsr l_dee5		;
		jsr l_dfbd		;
		lda #$00		;
		sta $de			;
		jsr l_db0e		;
		lda #$11		;
		ldy #$e4		;
		jsr l_db0b		;
		lda $d5			;
		pha				;
		bpl l_e3c4		;
		jsr l_db04		;
		lda $d5			;
		bmi l_e3c7		;
		lda $2d			;
		eor #$ff		;
		sta $2d			;
l_e3c4:
		jsr l_e271		;
l_e3c7:
		lda #$11		;
		ldy #$e4		;
		jsr l_db22		;
		pla				;
		bpl l_e3d4		;
		jsr l_e271		;
l_e3d4:
		lda #$16		;
		ldy #$e4		;
		jmp l_e2fd		;
		jsr l_dea3		;
		lda #$00		;
		sta $2d			;
		jsr l_e392		;
		ldx #$bd		;
		ldy #$00		;
		jsr l_e388		;
		lda #$c6		;
		ldy #$00		;
		jsr l_de7b		;
		lda #$00		;
		sta $d5			;
		lda $2d			;
		jsr l_e403		;
		lda #$bd		;
		ldy #$00		;
		jmp l_dde4		;

l_e403:
		pha				;
		jmp l_e3c4		;

; data for trigometric functions
		.byte $81		;
		.byte $49		;
		.byte $0f		;
		.byte $da		;
		.byte $a2		;
		.byte $83		;
		.byte $49		;
		.byte $0f		;
		.byte $da		;
		.byte $a2
		.byte $7f
		.byte $00
		.byte $00
		.byte $00
		.byte $00
		.byte $05		;

		.byte $84		;
		.byte $e6		;
		.byte $1a		;
		.byte $2d		;
		.byte $1b		;
		.byte $86		;
		.byte $28		;
		.byte $07		;
		.byte $fb		;
		.byte $f8		;
		.byte $87		;
		.byte $99		;
		.byte $68		;
		.byte $89		;
		.byte $01		;
		.byte $87		;
		.byte $23		;
		.byte $35		;
		.byte $df		;
		.byte $e1		;
		.byte $86		;
		.byte $a5		;
		.byte $5d		;
		.byte $e7		;
		.byte $28		;
		.byte $83		;
		.byte $49		;
		.byte $0f		;
		.byte $da		;
		.byte $a2		;
		.byte $a1		;
		.byte $54		;
		.byte $46		;
		.byte $8f		;
		.byte $13		;
		.byte $8f		;
		.byte $52		;
		.byte $43		;
		.byte $89		;
		.byte $cd

		lda $d5
		pha				;
		bpl l_e447		;
		jsr l_e271		;
l_e447:
		lda $d0			;
		pha				;
		cmp #$81		;
		bcc l_e455		;
		lda #$81		;
		ldy #$dc		;
		jsr l_dde4		;
l_e455:
		lda #$6f		;
		ldy #$e4		;
		jsr l_e2fd		;
		pla				;
		cmp #$81		;
		bcc l_e468		;
		lda #$07		;
		ldy #$e4		;
		jsr l_db0b		;
l_e468:
		pla				;
		bpl l_e46e		;
		jmp l_e271		;
l_e46e:
		rts				;

; data for atn
		.byte $0b		;
		.byte $76		;
		.byte $b3		;
		.byte $83		;
		.byte $bd		;
		.byte $d3		;
		.byte $79		;
		.byte $1e		;
		.byte $f4		;
		.byte $a6		;
		.byte $f5		;
		.byte $7b		;
		.byte $83		;
		.byte $fc		;
		.byte $b0		;
		.byte $10

		.byte $7c
		.byte $0c		;
		.byte $1f		;
		.byte $67		;
		.byte $ca		;
		.byte $7c		;
		.byte $de		;
		.byte $53		;
		.byte $cb		;
		.byte $c1		;
		.byte $7d		;
		.byte $14		;
		.byte $64		;
		.byte $70		;
		.byte $4c
		.byte $7d
		.byte $b7
		.byte $ea		;
		.byte $51		;
		.byte $7a		;
		.byte $7d		;
		.byte $63		;
		.byte $30		;
		.byte $88		;
		.byte $7e		;
		.byte $7e
		.byte $92
		.byte $44
		.byte $99
		.byte $3a
		.byte $7e
		.byte $4c
		.byte $cc
		.byte $91
		.byte $c7		;
		.byte $7f		;
		.byte $aa		;
		.byte $aa		;
		.byte $aa		;
		.byte $13		;
		.byte $81
		.byte $00
		.byte $00
		.byte $00
		.byte $00

l_e4ac:
		jsr l_e735
l_e4af:
		jsr l_e6c9		;
		cmp #$24		;
		bne l_e4af		;
		stx $02b1		;
		ldx #$09		;
l_e4bb:
		jsr l_e6c9		;
		sta $02a7,x		;
		dex				;
		bne l_e4bb		;
l_e4c4:
		jsr l_e6c9		;
		beq l_e4d3		;
		cpx #$10		;
		bcs l_e4c4		;
		sta $0293,x		;
		inx				;
		bne l_e4c4		;
l_e4d3:
		sta $0293,x		;
		jsr l_e594		;
		jsr l_e790		;
		txa				;
		bne l_e4ac		;
		rts				;

l_e4e0:
		lda $02a9		;
		ldy $02aa		;
		sta $33			;
		sty $34			;
		ldy #$00		;
l_e4ec:
		jsr l_e6c9		;
		ldx $025b		;
		bne l_e4f9		;
		sta ($33),y		;
		jmp l_e505		;
l_e4f9:
		cmp ($33),y		;
		beq l_e505		;
		inc $025c		;
		bne l_e505		;
		inc $025d		;
l_e505:
		jsr l_e56c		;
		bcc l_e4ec		;
		rts				;

		.byte $10, $07
		.null "Searching .."
		.byte $10, $07
		.null "Loading .."
		.byte $0a, $0d	;
		.null "Errors found", $0d, $0a
		.byte $10, $07	;
		.null "Found .."
		.byte $10, $07
		.null "Verifying .."
		.null " Verify errors detected", $0d, $0a

l_e56c:
		lda $33			;
		cmp $02ab		;
		lda $34			;
		sbc $02ac		;
		inc $33			;
		bne l_e57c		;
		inc $34			;
l_e57c:
		rts				;

l_e57d:
		lda #$0b		;
		ldy #$e5		;
		jsr l_e5ea		;
		rts				;

l_e585:
		lda #$45		;
		ldy #$e6		;
		jsr l_e5ea		;
		lda #$7f		;
		ldy #$02		;
		jsr l_e5b6		;
		rts				;

l_e594:
		lda #$38		;
		ldy #$e5		;
		jmp l_e5ab		;

l_e59b:
		lda $025b		;
		bne l_e5a7		;
		lda #$1a		;
		ldy #$e5		;
		jmp l_e5ab		;
l_e5a7:
		lda #$43		;
		ldy #$e5		;
l_e5ab:
		jsr l_e5ea		;
		lda #$93		;
		ldy #$02		;
		jsr l_e5b6		;
		rts				;

l_e5b6:
		jsr l_f865		;
		inx				;
		ldy #$00		;
		sty $025f		;
		lda $02ae		;
		beq l_e5d7		;
		iny				;
		bit $02ae		;
		bmi l_e5d7		;
		iny				;
		bit $02af		;
		bmi l_e5d7		;
		iny				;
		bit $02b0		;
		bmi l_e5d7		;
		iny				;
l_e5d7:
		lda l_e5e5,y	;
		sta $025e		;
		lda #$5e		;
		ldy #$02		;
		jsr l_f865		;
		rts				;

l_e5e5:
		.text "BCSIR"

l_e5ea:
		jsr l_e5f5		;
		ldx #$00		;
		jsr l_f865		;
		inx				;
		inx				;
		rts				;

l_e5f5:
		pha				;
		lda $021f		;
		bne l_e605		;
		ldx #$22		;
		lda #$10		;
l_e5ff:
		sta $bb80,x		;
		dex				;
		bpl l_e5ff		;
l_e605:
		pla				;
		rts				;

l_e607:
		jsr l_e75a		;
		lda #$24		;
		jsr l_e65e		;
		ldx #$09		;
l_e611:
		lda $02a7,x		;
		jsr l_e65e		;
		dex				;
		bne l_e611		;
l_e61a:
		lda $027f,x		;
		beq l_e625		;
		jsr l_e65e		;
		inx				;
		bne l_e61a		;
l_e625:
		jsr l_e65e		;
		ldx #$00		;
l_e62a:
		dex				;
		bne l_e62a		;
		rts				;

l_e62e:
		lda $02a9		;
		ldy $02aa		;
		sta $33			;
		sty $34			;
		ldy #$00		;
l_e63a:
		lda ($33),y		;
		jsr l_e65e		;
		jsr l_e56c		;
		bcc l_e63a		;
		rts				;

		.byte $10, $07
		.null "Saving .."

l_e651:
		lda $02b1		;
		beq l_e65d		;
		lda #$27		;
		ldy #$e5		;
		jsr l_ccb0		;
l_e65d:
		rts				;

l_e65e:
		sta $2f			;
		txa				;
		pha				;
		tya				;
		pha				;
		jsr l_e6c0		;
		clc				;
		ldy #$09		;
		lda #$00		;
		beq l_e674		;
l_e66e:
		lsr $2f			;
		php				;
		adc #$00		;
		plp				;
l_e674:
		jsr l_e68b		;
		dey				;
		bne l_e66e		;
		eor #$01		;
		lsr				;
		ldy #$04		;
l_e67f:
		jsr l_e68b		;
		sec				;
		dey				;
		bne l_e67f		;
		pla				;
		tay				;
		pla				;
		tax				;
		rts				;

l_e68b:
		pha				;
		php				;
		lda $024d		;
		bne l_e69c		;
		sec				;
		jsr l_e6b2		;
		plp				;
		jsr l_e6b2		;
		pla				;
		rts				;
l_e69c:
		jsr l_e6b2		;
		ldx #$0f		;
		plp				;
		bcs l_e6a6		;
		ldx #$07		;
l_e6a6:
		jsr l_e6ab		;
		pla				;
		rts				;

l_e6ab:
		jsr l_e6c0		;
		dex				;
		bne l_e6ab		;
		rts				;

l_e6b2:
		lda #$d0		;
		ldx #$00		;
		bcs l_e6ba		;
		asl				;
		inx				;
l_e6ba:
		sta $0306		;
		stx $0307		;
l_e6c0:
		lda $0304		;
l_e6c3:
		bit $030d		;
		bvc l_e6c3		;
		rts				;

l_e6c9:
		tya				;
		pha				;
		txa				;
		pha				;
		jsr l_e71c		;
l_e6d0:
		jsr l_e71c		;
		bcs l_e6d0		;
		jsr l_e6ff		;
		bcs l_e6f0		;
		lda #$00		;
		ldy #$08		;
l_e6de:
		jsr l_e6fc		;
		php				;
		ror $2f			;
		plp				;
		adc #$00		;
		dey				;
		bne l_e6de		;
		jsr l_e6fc		;
		sbc #$00		;
		lsr				;
l_e6f0:
		bcc l_e6f5		;
		rol $02b1		;
l_e6f5:
		pla				;
		tax				;
		pla				;
		tay				;
		lda $2f			;
		rts				;

l_e6fc:
		jsr l_e71c		;
l_e6ff:
		pha				;
		lda $024d		;
		beq l_e71a		;
		jsr l_e71c		;
		ldx #$02		;
		bcc l_e70e		;
		ldx #$06		;
l_e70e:
		lda #$00		;
l_e710:
		jsr l_e71c		;
		adc #$00		;
		dex				;
		bne l_e710		;
		cmp #$04		;
l_e71a:
		pla				;
		rts				;

l_e71c:
		pha				;
		lda $0300		;
l_e720:
		lda $030d		;
		and #$10		;
		beq l_e720		;
		lda $0309		;
		pha				;
		lda #$ff		;
		sta $0309		;
		pla				;
		cmp #$fe		;
		pla				;
		rts				;

l_e735:
		jsr l_e6fc		;
		ror $2f			;
		lda #$16		;
		cmp $2f			;
		bne l_e735		;
		lda $024d		;
		beq l_e74d		;
		jsr l_e71c		;
l_e748:
		jsr l_e71c		;
		bcs l_e748		;
l_e74d:
		ldx #$03		;
l_e74f:
		jsr l_e6c9		;
		cmp #$16		;
		bne l_e735		;
		dex				;
		bne l_e74f		;
		rts				;

l_e75a:
		ldx #$02		;
		ldy #$03		;
l_e75e:
		lda #$16		;
		jsr l_e65e		;
		dey				;
		bne l_e75e		;
		dex				;
		bne l_e75e		;
		rts				;

l_e76a:
		jsr l_ee1a		;
		ldy #$06		;
		sei				;
l_e770:
		ldx l_e782,y	;
		lda l_e789,y	;
		sta $0300,x		;
		dey				;
		bpl l_e770		;
		lda #$40		;
		sta $0300		;
		rts				;

l_e782:
; 6522 register numbers
		.byte $05		;
		.byte $04		;
		.byte $0b		;
		.byte $02		;
		.byte $0c		;
		.byte $08		;
		.byte $0e		;

l_e789:
; 6522 register data
		.byte $00		;
		.byte $d0		;
		.byte $c0		;
		.byte $ff		;
		.byte $10		;
		.byte $f4		;
		.byte $7f		;

l_e790:
		ldy #$00		;
		ldx #$00		;
		lda $027f		;
		beq l_e7ae		;
l_e799:
		lda $027f,y		;
		cmp $0293,y		;
		beq l_e7a2		;
		inx				;
l_e7a2:
		sta $0293,y		;
		iny				;
		cpy #$11		;
		bcs l_e7ae		;
		pha				;
		pla				;
		bne l_e799		;
l_e7ae:
		rts				;
l_e7af:
		jmp l_d070		;

l_e7b2:
		lda #$00		;
		sta $024d		;
		sta $02ad		;
		sta $02ae		;
		sta $025b		;
		sta $025a		;
		sta $025c		;
		sta $025d		;
		sta $02b1		;
		jsr l_cf17		;
		bit $28			;
		bpl l_e7af		;
		jsr l_d7d0		;
		tax				;
		ldy #$00		;
		inx				;
l_e7da:
		dex				;
		beq l_e7e7		;
		lda ($91),y		;
		sta $027f,y		;
		iny				;
		cpy #$10		;
		bne l_e7da		;
l_e7e7:
		lda #$00		;
		sta $027f,y		;
l_e7ec:
		jsr $00e8		;
		beq l_e852		;
		cmp #$2c		;
		bne l_e7af		;
l_e7f5:
		jsr $00e2		;
		beq l_e852		;
		cmp #$2c		;
		beq l_e7f5		;
		cmp #$c7		;
		bne l_e807		;
		sta $02ad		;
		bcs l_e7f5		;
l_e807:
		cmp #$53		;
		bne l_e810		;
		sta $024d		;
		bcs l_e7f5		;
l_e810:
		cmp #$56		;
		bne l_e819		;
		sta $025b		;
		bcs l_e7f5		;
l_e819:
		cmp #$4a		;
		bne l_e822		;
		sta $025a		;
		bcs l_e7f5		;
l_e822:
		cmp #$41		;
		beq l_e82a		;
		cmp #$45		;
		bne l_e871		;
l_e82a:
		sta $0e			;
		jsr $00e2		;
		ldx #$80		;
		stx $02ae		;
		jsr l_e853		;
		lda $33			;
		ldy $34			;
		ldx $0e			;
		cpx #$41		;
		bne l_e849		;
		sta $02a9		;
		sty $02aa		;
		bcs l_e7ec		;
l_e849:
		sta $02ab		;
		sty $02ac		;
		jmp l_e7ec		;
l_e852:
		rts				;

l_e853:
		jsr l_cf03		;
		jsr l_d922		;
		clc				;
		rts				;
		php				;
		jsr l_e7b2		;
		lda $02ad		;
		ora $02ae		;
		bne l_e871		;
		lda $025a		;
		beq l_e874		;
		lda $025b		;
		beq l_e874		;
l_e871:
		jmp l_d070		;
l_e874:
		jsr l_e76a		;
		jsr l_e57d		;
l_e87a:
		jsr l_e4ac		;
		bit $02ae		;
		bvs l_e87a		;
		lda $025a		;
		beq l_e8b3		;
		lda $02ae		;
		bne l_e87a		;
		lda $9c			;
		ldy $9d			;
		sec				;
		sbc #$02		;
		bcs l_e896		;
		dey				;
l_e896:
		sta $02a9		;
		sty $02aa		;
		sec				;
		sbc $9a			;
		tax				;
		tya				;
		sbc $9b			;
		tay				;
		clc				;
		txa				;
		adc $02ab		;
		sta $02ab		;
		tya				;
		adc $02ac		;
		sta $02ac		;
l_e8b3:
		jsr l_e59b		;
		jsr l_e4e0		;
		jsr l_e93d		;
		plp				;
		lda $025b		;
		beq l_e8d3		;
		ldx $025c		;
		lda $025d		;
		jsr l_e0c5		;
		lda #$52		;
		ldy #$e5		;
		jsr l_ccb0		;
		rts				;
l_e8d3:
		jsr l_e651		;
		lda $02ae		;
		beq l_e8e9		;
		lda $02ad		;
		beq l_e8e8		;
		lda $02b1		;
		nop				;
		nop				;
		jmp ($02a9)		;
l_e8e8:
		rts				;
l_e8e9:
		ldx $02ab		;
		lda $02ac		;
		stx $9c			;
		sta $9d			;
		jsr l_c55f		;
		lda $02ad		;
		beq l_e903		;
		lda $02b1		;
		nop				;
		nop				;
		jmp l_c708		;
l_e903:
		jsr l_c708		;
		jmp l_c4a8		;
		lda $9a			;
		ldy $9b			;
		sta $02a9		;
		sty $02aa		;
		lda $9c			;
		ldy $9d			;
		sta $02ab		;
		sty $02ac		;
		php				;
		jsr l_e7b2		;
		lda $025a		;
		ora $025b		;
		beq l_e92c		;
		jmp l_d070		;
l_e92c:
		jsr l_e76a		;
		jsr l_e585		;
		jsr l_e607		;
		jsr l_e62e		;
		jsr l_e93d		;
		plp				;
		rts				;

l_e93d:
		jsr l_e5f5		;
		jsr l_f9aa		;
		jmp l_ede0		;
		jsr l_e853		;
		jmp ($0033)		;

l_e94c:
		ldx #$00		;
		stx $0c			;
		stx $0d			;
		beq l_e967		;
l_e954:
		ldx #$03		;
		asl				;
		asl				;
		asl				;
		asl				;
l_e95a:
		asl				;
		rol $0c			;
		rol $0d			;
		bcc l_e964		;
		jmp l_dc39		;
l_e964:
		dex				;
		bpl l_e95a		;
l_e967:
		jsr $00e2		;
		cmp #$80		;
		bcs l_e97c		;
		ora #$80		;
		eor #$b0		;
		cmp #$0a		;
		bcc l_e954		;
		adc #$88		;
		cmp #$fa		;
		bcs l_e954		;
l_e97c:
		lda $0d			;
		ldy $0c			;
		rts				;

l_e981:
		jsr l_e94c		;
		jmp l_df40		;

store:
		php				; STORE
		jsr l_ea57		;
		lda #$40		;
		sta $02ae		;
		lda $28			;
		sta $02af		;
		lda $29			;
		sta $02b0		;
		jsr l_e585		;
		jsr l_e607		;
		jsr l_ea9e		;
		jsr l_e62e		;
		bit $28			;
		bpl l_e9cc		;
l_e9aa:
		ldy #$00		;
		lda ($0c),y		;
		beq l_e9c7		;
		tax				;
		ldy #$02		;
l_e9b3:
		lda ($0c),y		;
		sta $00d0,y		;
		dey				;
		bne l_e9b3		;
		inx				;
l_e9bc:
		dex				;
		beq l_e9c7		;
		lda ($d1),y		;
		jsr l_e65e		;
		iny				;
		bne l_e9bc		;
l_e9c7:
		jsr l_ea42		;
		bcc l_e9aa		;
l_e9cc:
		jsr l_e93d		;
		plp				;
		rts				;

recall:
		jsr l_d650		; RECALL Attempt Garbage
		php				;
		jsr l_ea57		;
		jsr l_e57d		;
l_e9db:
		jsr l_e4ac		;
		bit $02ae		;
		bvc l_e9db		;
		lda $02af		;
		eor $28			;
		bne l_e9db		;
		lda $02b0		;
		eor $29			;
		bne l_e9db		;
		jsr l_e59b		;
		ldy #$02		;
		lda ($ce),y		;
		cmp $02a9		;
		iny				;
		lda ($ce),y		;
		sbc $02aa		;
		bcs l_ea09		;
		jsr l_e93d		;
		jmp l_c47c		;
l_ea09:
		jsr l_ea9e		;
		jsr l_e4e0		;
		bit $28			;
		bpl l_ea3a		;
l_ea13:
		ldy #$00		;
		lda ($0c),y		;
		beq l_ea35		;
		jsr l_d5ab		;
		ldy #$00		;
		tax				;
		inx				;
l_ea20:
		dex				;
		beq l_ea2b		;
		jsr l_e6c9		;
		sta ($d1),y		;
		iny				;
		bne l_ea20		;
l_ea2b:
		ldy #$02		;
l_ea2d:
		lda $00d0,y		;
		sta ($0c),y		;
		dey				;
		bne l_ea2d		;
l_ea35:
		jsr l_ea42		;
		bcc l_ea13		;
l_ea3a:
		jsr l_e93d		;
		jsr l_e651		;
		plp				;
		rts				;

l_ea42:
		clc				;
		lda #$03		;
		adc $0c			;
		sta $0c			;
		bcc l_ea4d		;
		inc $0d			;
l_ea4d:
		tay				;
		lda $0d			;
		cpy $02ab		;
		sbc $02ac		;
		rts				;

l_ea57:
		lda #$40		;
		sta $2b			;
		jsr l_d188		;
		lda #$00		;
		sta $2b			;
		ldy #$03		;
		lda ($ce),y		;
		sta $02aa		;
		dey				;
		lda ($ce),y		;
		sta $02a9		;
		bne l_ea74		;
		dec $02aa		;
l_ea74:
		dec $02a9		;
		jsr l_d065		;
		lda $29			;
		pha				;
		lda $28			;
		pha				;
		jsr l_e7b2		;
		pla				;
		sta $28			;
		pla				;
		sta $29			;
		lda $025b		;
		ora $02ad		;
		ora $02ae		;
		ora $025a		;
		beq l_ea9a		;
		jmp l_d070		;
l_ea9a:
		jsr l_e76a		;
		rts				;

l_ea9e:
		clc				;
		lda $ce			;
		adc $02a9		;
		sta $02ab		;
		lda $cf			;
		adc $02aa		;
		sta $02ac		;
		ldy #$04		;
		lda ($ce),y		;
		jsr l_d288		;
		sta $02a9		;
		sty $02aa		;
		sta $0c			;
		sty $0d			;
		rts				;

; this table holds the start addresses less 1 for the
;sound and hires commands. they are in order of token value.
;the second part holds data associated with each routine.
l_eac1:
		.byte $3f		;
l_eac2:
		.byte $fb		;
		.byte $17		;
		.byte $fc		;
		.byte $cf		;
		.byte $fb		;
		.byte $c7		;
		.byte $f0		;
		.byte $fc		;
		.byte $f0		;
		.byte $0f		;
		.byte $f1		;
		.byte $7e		;
		.byte $f3		;
		.byte $1c		;
		.byte $f1		;
		.byte $67		;
		.byte $f2		;
		.byte $2c		;
		.byte $f1		;
		.byte $03		;
		.byte $f2		;
		.byte $0f		;
		.byte $f2		;
		.byte $03		;
		.byte $04		;
		.byte $04		;
		.byte $03		;
		.byte $03		;
		.byte $03		;
		.byte $02		;
		.byte $01		;
		.byte $03		;
		.byte $03		;
		.byte $01
		.byte $01
		.byte $00
		.byte $00
		.byte $00
		.byte $00
		.byte $01
		.byte $01
		.byte $00
		.byte $00
		.byte $00
		.byte $00
		.byte $00

		lda $02c0
		and #$01
		bne l_eafc
l_eaf7:
		ldx #$a3		;
		jmp l_c47e		;
l_eafc:
		cpy #$4e		;
		bcs l_eb03		;
l_eb00:
		jmp l_d070		;
l_eb03:
		cpy #$66		;
		bcs l_eb00		;
		tya				;
		sec				;
		sbc #$4e		;
		tay				;
		lda l_eac2,y	;
		pha				;
		lda l_eac1,y	;
		pha				;
		tya				;
		lsr				;
		tay				;
		lda $ead9,y		;
		pha				;
		lda $eae5,y		;
		sta $02c3		;
		lda #$00		;
		sta $02f0		;
l_eb26:
		jsr l_cf03		;
		lda $02c3		;
		bne l_eb34		;
		jsr l_d922		;
		jmp l_eb3b		;
l_eb34:
		lda $d0			;
		cmp #$90		;
		jsr l_d92a		;
l_eb3b:
		ldy $02f0		;
		lda $33			;
		sta $02e1,y		;
		lda $34			;
		sta $02e2,y		;
		iny				;
		iny				;
		sty $02f0		;
		pla				;
		tay				;
		dey				;
		beq l_eb5a		;
		tya				;
		pha				;
		jsr l_d065		;
		jmp l_eb26		;
l_eb5a:
		lda #$00		;
		sta $02e0		;
		pla				;
		tax				;
		pla				;
		tay				;
		lda #$eb		;
		pha				;
		lda #$6d		;
		pha				;
		tya				;
		pha				;
		txa				;
		pha				;
l_eb6d:
		rts				;
		lda #$01		;
		bit $02e0		;
		beq l_eb6d		;
		jmp l_d336		;

l_eb78:
		lda $02df		;
		bpl l_eb88		;
		php				;
		and #$7f		;
		pha				;
		lda #$00		;
		sta $02df		;
		pla				;
		plp				;
l_eb88:
		rts				;

l_eb89:
		cpy $9d			;
		bcs l_eb8f		;
l_eb8d:
		sec				;
l_eb8e:
		rts				;
l_eb8f:
		bne l_eb97		;
		cmp $9c			;
		bcc l_eb8e		;
		beq l_eb8e		;
l_eb97:
		jsr l_ebb5		;
		bcc l_eb8e		;
		tax				;
		lda $02c0		;
		and #$02		;
		php				;
		txa				;
		plp				;
		bne l_eb8d		;
		tya				;
		pha				;
		sec				;
		sbc #$1c		;
		tay				;
		txa				;
		jsr l_ebb5		;
		pla				;
		tay				;
		txa				;
		rts				;

l_ebb5:
		cpy $02c2		;
		bcc l_ebbc		;
		beq l_ebbd		;
l_ebbc:
		rts				;
l_ebbd:
		cmp $02c1		;
		rts				;

l_ebc1:
		ldy $02c2		;
		lda $02c1		;
		bne l_ebca		;
		dey				;
l_ebca:
		sec				;
		sbc #$01		;
		rts				;
		jsr l_cf03		;
		jsr l_d922		;
		lda $33			;
		ldy $34			;
		jsr l_eb89		;
		bcc l_ebe0		;
l_ebdd:
		jmp l_c47c		;

l_ebe0:
		sta $a6			;
		sty $a7			;
		jmp l_c70f		;
		lda $0260		;
		bne l_ebdd		;
		lda $02c0		;
		pha				;
		and #$01		;
		beq l_ebf9		;
l_ebf4:
		ldx #$a3		;
		jmp l_c47e		;
l_ebf9:
		pla				;
		and #$fd		;
		sta $02c0		;
		jsr l_ebc1		;
		pha				;
		tya				;
		clc				;
		adc #$1c		;
		tay				;
		pla				;
		jmp l_ebe0		;
		jsr l_ebc1		;
		jsr l_eb89		;
		bcs l_ebdd		;
		pha				;
		lda $02c0		;
		ora #$02		;
		sta $02c0		;
		pla				;
		jmp l_ebe0		;

l_ec21:
		lda $02c0		;
		tay				;
		and #$01		;
		beq l_ec32		;
		tya				;
		and #$fe		;
		sta $02c0		;
		jsr l_f967		;
l_ec32:
		rts				;
		lda $02c0		;
		pha				;
		and #$02		;
		beq l_ebf4		;
		pla				;
		ora #$01		;
		sta $02c0		;
		jsr l_f920		;
		rts				;
		jsr l_d062		;
		jsr l_cf17		;
		lda $34			;
		pha				;
		lda $33			;
		pha				;
		jsr l_d922		;
		lda $33			;
		sta $02e1		;
		lda $34			;
		sta $02e2		;
		pla				;
		sta $33			;
		pla				;
		sta $34			;
		jsr l_d065		;
		jsr l_cf17		;
		lda $34			;
		pha				;
		lda $33			;
		pha				;
		jsr l_d922		;
		lda $34			;
		sta $02e4		;
		lda $33			;
		sta $02e3		;
		pla				;
		sta $33			;
		pla				;
		sta $34			;
		jsr l_f1c8		;
		ldy $02e1		;
		lda $02e0		;
		and #$01		;
		bne l_ec99		;
		lda $02e2		;
		jsr l_d499		;
		jmp l_d05f		;
l_ec99:
		jmp l_d8c2		;
l_ec9c:
		inc $e9			;
		bne l_eca2		;
		inc $ea			;
l_eca2:
		lda $ea60		;
		cmp #$20		;
		beq l_ec9c		;
		jsr l_ecb9		;
		rts				;
		bit $ea60		;
		bit $ea60		;
		rts				;

; initial random number.
		.byte $80, $4f, $c7, $52, $58	;

l_ecb9:
		cmp #$c8		;
		beq l_eccb		;
		cmp #$27		;
		beq l_eccb		;
		cmp #$3a		;
		bcs l_eccb		;
		sec				;
		sbc #$30		;
		sec				;
		sbc #$d0		;
l_eccb:
		rts				;

l_eccc:
		cld				;
		ldx #$ff		;
		stx $a9			;
		txs				;
		lda #$cc		;
		ldy #$ec		;
		sta $1b			;
		sty $1c			;
		lda #$4c		;
		sta $1a			;
		sta $c3			;
		sta $21			;
		sta $02fb		;
		lda #$36		;
		ldy #$d3		;
		sta $22			;
		sty $23			;
		sta $02fc		;
		sty $02fd		;
		sta $02f5		;
		sty $02f6		;
		ldx #$1c		;
l_ecfb:
		lda $ec9b,x		;
		sta $e1,x		;
		dex				;
		bne l_ecfb		;
		lda #$03		;
		sta $c2			;
		txa				;
		sta $d7			;
		sta $87			;
		sta $2f			;
		pha				;
		sta $2e			;
		sta $02f2		;
		ldx #$88		;
		stx $85			;
		tay				;
		lda #$02		;
		sta $02c0		;
		lda #$28		;
		sta $0257		;
		lda #$50		;
		sta $0256		;
		lda #$00		;
		sta $30			;
		sta $0258		;
		sta $0259		;
		jsr l_c83e		;
		jsr cls		;
		lda #$96		;
		ldy #$ed		;
		jsr l_ccb0		;
		jsr l_cbf0		;
		ldx #$00		;
		ldy #$05		;
		stx $9a			;
		sty $9b			;
		ldy #$00		;
		tya				;
		sta ($9a),y		;
		inc $9a			;
		bne l_ed55		;
		inc $9b			;
l_ed55:
		jsr l_c6f0		;
		lda $9a			;
		ldy $9b			;
		jsr l_c444		;
		jsr l_cbf0		;
		lda $a6			;
		sec				;
		sbc $9a			;
		tax				;
		lda $a7			;
		sbc $9b			;
		jsr l_e0c5		;
		lda #$88		;
		ldy #$ed		;
		jsr l_ccb0		;
		lda #$b0		;
		ldy #$cc		;
		sta $1b			;
		sty $1c			;
		lda #$10		;
		sta $02f8		;
		jmp l_c4a8		;

		.byte $00, $00
		.null " BYTES FREE", $0a, $0d
		.text "ORIC EXTENDED BASIC V1.1", $0d, $0a
		.byte $60		; © (copyright sign)
		.null " 1983 TANGERINE", $0d, $0a
		.byte $00

l_edc4:
		ldx #$00		;
		ldy #$00		;
l_edc8:
		cpy $10			;
		bne l_edd0		;
		cpx $11			;
		beq l_eddf		;
l_edd0:
		lda ($0c),y		;
		sta ($0e),y		;
		iny				;
		bne l_edc8		;
		inc $0d			;
		inc $0f			;
		inx				;
		jmp l_edc8		;
l_eddf:
		rts				;

l_ede0:
		pha				;
		jsr l_ee8c		;
		lda #$00		;
		ldx #$00		;
		ldy #$03		;
		jsr l_eeab		;
		lda #$01		;
		ldy #$19		;
		jsr l_eeab		;
		lda #$00		;
		sta $0271		;
		lda $030b		;
		and #$7f		;
		ora #$40		;
		sta $030b		;
		lda #$c0		;
		sta $030e		;
		lda #$10		;
		sta $0306		;
		sta $0304		;
		lda #$27		;
		sta $0307		;
		sta $0305		;
		pla				;
		rts				;

l_ee1a:
		pha				;
		lda #$40		;
		sta $030e		;
		pla				;
		rts				;

l_ee22:
		pha				;
		lda $030d		;
		and #$40		;
		beq l_ee30		;
		sta $030d		;
		jsr l_ee34		;
l_ee30:
		pla				;
		jmp $024a		;

l_ee34:
		pha				;
		txa				;
		pha				;
		tya				;
		pha				;
		ldy #$00		;
l_ee3b:
		lda $0272,y		;
		sec				;
		sbc #$01		;
		sta $0272,y		;
		iny				;
		lda $0272,y		;
		sbc #$00		;
		sta $0272,y		;
		iny				;
		cpy #$06		;
		bne l_ee3b		;
		lda #$00		;
		jsr l_ee9d		;
		cpy #$00		;
		bne l_ee6b		;
		ldx #$00		;
		ldy #$03		;
		jsr l_eeab		;
		jsr l_f495		;
		txa				;
		bpl l_ee6b		;
		stx $02df		;
l_ee6b:
		lda #$01		;
		jsr l_ee9d		;
		cpy #$00		;
		bne l_ee86		;
		ldx #$00		;
		ldy #$19		;
		jsr l_eeab		;
		lda $0271		;
		eor #$01		;
		sta $0271		;
		jsr l_f801		;
l_ee86:
		pla				;
		tay				;
		pla				;
		tax				;
		pla				;
		rts				;

l_ee8c:
		pha				;
		tya				;
		pha				;
		ldy #$05		;
		lda #$00		;
l_ee93:
		sta $0272,y		;
		dey				;
		bpl l_ee93		;
		pla				;
		tay				;
		pla				;
		rts				;

l_ee9d:
		pha				;
		asl				;
		tay				;
		sei				;
		lda $0272,y		;
		ldx $0273,y		;
		cli				;
		tay				;
		pla				;
		rts				;

l_eeab:
		pha				;
		txa				;
		pha				;
		tya				;
		pha				;
		tsx				;
		lda $0103,x		;
		asl				;
		tay				;
		pla				;
		pha				;
		sei				;
		sta $0272,y		;
		lda $0102,x		;
		sta $0273,y		;
		cli				;
		pla				;
		tay				;
		pla				;
		tax				;
		pla				;
		rts				;

l_eec9:
		jsr l_eeab		;
l_eecc:
		jsr l_ee9d		;
		cpy #$00		;
		bne l_eecc		;
		cpx #$00		;
		bne l_eecc		;
		rts				;

l_eed8:
		lda $0213		;
		sta $0214		;
l_eede:
		lsr $0212		;
		ror $0212		;
		ror $0212		;
		rts				;

l_eee8:
		pha				;
		tya				;
		pha				;
		jsr l_eede		;
		jsr l_f049		;
		jsr l_f024		;
		pla				;
		tay				;
		pla				;
		rts				;

l_eef8:
		cld				;
		jsr l_eed8		;
		bit $02e2		;
		bpl l_ef0b		;
		lda #$ff		;
		eor $02e1		;
		tax				;
		inx				;
		stx $02e1		;
l_ef0b:
		bit $02e4		;
		bpl l_ef1a		;
		lda #$ff		;
		eor $02e3		;
		tax				;
		inx				;
		stx $02e3		;
l_ef1a:
		lda $02e1		;
		cmp $02e3		;
		bcc l_ef31		;
		ldx $02e1		;
		beq l_ef30		;
		lda $02e3		;
		jsr l_ef40		;
		jsr l_ef84		;
l_ef30:
		rts				;
l_ef31:
		ldx $02e3		;
		beq l_ef3f		;
		lda $02e1		;
		jsr l_ef40		;
		jsr l_ef5c		;
l_ef3f:
		rts				;

l_ef40:
		sta $0d			;
		stx $0200		;
		lda #$00		;
		sta $0c			;
		sta $0201		;
		jsr l_efc8		;
		jsr l_effa		;
		lda #$00		;
		sta $0e			;
		sta $0f			;
		sta $0200		;
		rts				;

l_ef5c:
		bit $02e4		;
		bpl l_ef67		;
		jsr l_f095		;
		jmp l_ef6a		;
l_ef67:
		jsr l_f089		;
l_ef6a:
		jsr l_efac		;
		beq l_ef7d		;
		bit $02e2		;
		bpl l_ef7a		;
		jsr l_f0b2		;
		jmp l_ef7d		;
l_ef7a:
		jsr l_f0a1		;
l_ef7d:
		jsr l_f016		;
		dex				;
		bne l_ef5c		;
		rts				;

l_ef84:
		bit $02e2		;
		bpl l_ef8f		;
		jsr l_f0b2		;
		jmp l_ef92		;
l_ef8f:
		jsr l_f0a1		;
l_ef92:
		jsr l_efac		;
		beq l_efa5		;
		bit $02e4		;
		bpl l_efa2		;
		jsr l_f095		;
		jmp l_efa5		;
l_efa2:
		jsr l_f089		;
l_efa5:
		jsr l_f016		;
		dex				;
		bne l_ef84		;
		rts				;

l_efac:
		cld				;
		clc				;
		lda $0e			;
		adc $0c			;
		sta $0e			;
		lda $0f			;
		adc $0d			;
		sta $0f			;
		bit $0e			;
		bpl l_efc1		;
		clc				;
		adc #$01		;
l_efc1:
		cmp $0200		;
		sta $0200		;
		rts				;

l_efc8:
		pha				;
		txa				;
		pha				;
		tya				;
		pha				;
		lda #$00		;
		sta $0e			;
		sta $0f			;
		ldx #$10		;
l_efd5:
		asl $0c			;
		rol $0d			;
		rol $0e			;
		rol $0f			;
		lda $0e			;
		sec				;
		sbc $0200		;
		tay				;
		lda $0f			;
		sbc $0201		;
		bcc l_eff1		;
		inc $0c			;
		sty $0e			;
		sta $0f			;
l_eff1:
		dex				;
		bne l_efd5		;
		pla				;
		tay				;
		pla				;
		tax				;
		pla				;
		rts				;

l_effa:
		pha				;
		asl $0200		;
		rol $0201		;
		lda $0200		;
		sec				;
		sbc $0e			;
		lda $0201		;
		sbc $0f			;
		bcs l_f014		;
		inc $0c			;
		bne l_f014		;
		inc $0d			;
l_f014:
		pla				;
		rts				;

l_f016:
		bit $0214		;
		clc				;
		bpl l_f020		;
		jsr l_f024		;
		sec				;
l_f020:
		rol $0214		;
		rts				;

l_f024:
		ldy #$00		;
		lda ($10),y		;
		and #$40		;
		beq l_f048		;
		lda $0215		;
		bit $0212		;
		bmi l_f042		;
		bvs $f03d		;
		eor #$ff		;
		and ($10),y		;
		sta ($10),y		;
		rts				;
		ora ($10),y		;
		sta ($10),y		;
		rts				;
l_f042:
		bvs l_f048		;
		eor ($10),y		;
		sta ($10),y		;
l_f048:
		rts				;

l_f049:
		cld				;
		pha				;
		tya				;
		pha				;
		jsr l_f731		;
		clc				;
		adc #$00		;
		sta $10			;
		tya				;
		adc #$a0		;
		sta $11			;
		lda #$00		;
		sta $0d			;
		sta $0201		;
		stx $0c			;
		lda #$06		;
		sta $0200		;
		jsr l_efc8		;
		clc				;
		lda $0c			;
		adc $10			;
		sta $10			;
		lda #$00		;
		adc $11			;
		sta $11			;
		lda #$20		;
		ldy $0e			;
l_f07c:
		beq l_f082		;
		lsr				;
		dey				;
		bcc l_f07c		;
l_f082:
		sta $0215		;
		pla				;
		tay				;
		pla				;
		rts				;

l_f089:
		clc				;
		lda $10			;
		adc #$28		;
		sta $10			;
		bcc l_f094		;
		inc $11			;
l_f094:
		rts				;

l_f095:
		sec				;
		lda $10			;
		sbc #$28		;
		sta $10			;
		bcs l_f0a0		;
		dec $11			;
l_f0a0:
		rts				;

l_f0a1:
		lsr $0215		;
		bcc l_f0b1		;
		lda #$20		;
		sta $0215		;
		inc $10			;
		bne l_f0b1		;
		inc $11			;
l_f0b1:
		rts				;

l_f0b2:
		asl $0215		;
		bit $0215		;
		bvc $f0c7		;
		lda #$01		;
		sta $0215		;
		lda $10			;
		bne l_f0c5		;
		dec $11			;
l_f0c5:
		dec $10			;
		rts				;
		lda #$04		;
		ldx #$e5		;
		jsr l_f2f8		;
		bcs l_f0f9		;
		lda $02e5		;
		sta $0212		;
		lda #$f0		;
		ldx #$e1		;
		jsr l_f2f8		;
		bcs l_f0f9		;
		lda #$c8		;
		ldx #$e3		;
		jsr l_f2f8		;
		bcs l_f0f9		;
		ldx $02e1		;
		stx $0219		;
		ldy $02e3		;
		sty $021a		;
		jsr l_eee8		;
		rts				;
l_f0f9:
		inc $02e0		;
		rts				;
		jsr l_f30a		;
		bcs l_f10c		;
		ldx $0219		;
		ldy $021a		;
		jsr l_eee8		;
		rts				;
l_f10c:
		inc $02e0		;
		rts				;
		jsr l_f30a		;
		bcs l_f119		;
		jsr l_eef8		;
		rts				;
l_f119:
		inc $02e0		;
		rts				;
		ldx $02e2		;
		bne l_f129		;
		ldx $02e1		;
		stx $0213		;
		rts				;
l_f129:
		inc $02e0		;
		rts				;
		ldx $02e2		;
		bne l_f16d		;
		ldx $02e1		;
		cpx #$20		;
		bcc l_f16d		;
		cpx #$80		;
		bcs l_f16d		;
		lda #$02		;
		ldx #$e3		;
		jsr l_f2f8		;
		bcs l_f16d		;
		lda #$04		;
		ldx #$e5		;
		jsr l_f2f8		;
		bcs l_f16d		;
		lda $0219		;
		cmp #$eb		;
		bcs l_f16d		;
		lda $021a		;
		cmp #$c1		;
		bcs l_f16d		;
		jsr l_f171		;
		jsr l_f19b		;
		ldx $0219		;
		ldy $021a		;
		jsr l_f049		;
		rts				;
l_f16d:
		inc $02e0		;
		rts				;

l_f171:
		cld				;
		lda $02e5		;
		sta $0212		;
		jsr l_eede		;
		lda $02e1		;
		sta $0c			;
		lda #$00		;
		sta $0d			;
		ldx #$03		;
l_f186:
		asl $0c			;
		rol $0d			;
		dex				;
		bne l_f186		;
		lda $02e3		;
		asl				;
		asl				;
		clc				;
		adc #$98		;
		clc				;
		adc $0d			;
		sta $0d			;
		rts				;

l_f19b:
		cld				;
		ldy #$00		;
l_f19e:
		sty $0f			;
		lda ($0c),y		;
		sta $0e			;
		jsr l_f35d		;
		rol $0e			;
		rol $0e			;
		ldx #$06		;
l_f1ad:
		rol $0e			;
		bcc l_f1b4		;
		jsr l_f024		;
l_f1b4:
		jsr l_f0a1		;
		dex				;
		bne l_f1ad		;
		jsr l_f36e		;
		jsr l_f089		;
		ldy $0f			;
		iny				;
		cpy #$08		;
		bne l_f19e		;
		rts				;

l_f1c8:
		lda #$f0		;
		ldx #$e1		;
		jsr l_f2f8		;
		bcs l_f200		;
		lda #$c8		;
		ldx #$e3		;
		jsr l_f2f8		;
		bcs l_f200		;
		ldx $02e1		;
		stx $0219		;
		ldy $02e3		;
		sty $021a		;
		jsr l_f049		;
		ldy #$00		;
		lda ($10),y		;
		and $0215		;
		beq l_f1f7		;
		lda #$ff		;
		jmp l_f1f9		;
l_f1f7:
		lda #$00		;
l_f1f9:
		sta $02e1		;
		sta $02e2		;
		rts				;
l_f200:
		inc $02e0		;
		rts				;
		lda #$10		;
		sta $0c			;
		lda #$00		;
		sta $0d			;
		jsr l_f21c		;
		rts				;
		lda #$00		;
		sta $0c			;
		lda #$01		;
		sta $0d			;
		jsr l_f21c		;
		rts				;

l_f21c:
		lda #$08		;
		ldx #$e1		;
		jsr l_f2f8		;
		bcs l_f264		;
		jsr l_f35d		;
		lda $02e1		;
		ora $0c			;
		sta $0202		;
		ldx $021f		;
		bne l_f247		;
		ldx $0d			;
		sta $026b,x		;
		lda #$a8		;
		clc				;
		adc $0d			;
		tax				;
		ldy #$bb		;
		lda #$1b		;
		jmp l_f251		;
l_f247:
		lda #$00		;
		clc				;
		adc $0d			;
		tax				;
		ldy #$a0		;
		lda #$c8		;
l_f251:
		sta $0200		;
		stx $10			;
		sty $11			;
		lda #$01		;
		sta $0201		;
		jsr l_f2cd		;
		jsr l_f36e		;
		rts				;
l_f264:
		inc $02e0		;
		rts				;
		cld				;
		lda $02e3		;
		sta $0201		;
		beq l_f2c9		;
		ldy #$00		;
		lda $0219		;
l_f276:
		sec				;
		sbc #$06		;
		bcc l_f27f		;
		iny				;
		jmp l_f276		;
l_f27f:
		tya				;
		clc				;
		adc $02e3		;
		tay				;
		lda $02e4		;
		adc #$00		;
		bne l_f2c9		;
		cpy #$29		;
		bcs l_f2c9		;
		lda $02e6		;
		bne l_f2c9		;
		lda $02e1		;
		sta $0200		;
		beq l_f2c9		;
		clc				;
		adc $021a		;
		tay				;
		lda $02e2		;
		adc #$00		;
		bne l_f2c9		;
		cpy #$c9		;
		bcs l_f2c9		;
		cpy #$c8		;
		bne l_f2b3		;
		ldy #$00		;
l_f2b3:
		sty $021a		;
		lda $02e5		;
		sta $0202		;
		jsr l_f2cd		;
		ldy $021a		;
		ldx $0219		;
		jsr l_f049		;
		rts				;
l_f2c9:
		inc $02e0		;
		rts				;

l_f2cd:
		cld				;
l_f2ce:
		lda $0202		;
		ldy #$00		;
l_f2d3:
		sta ($10),y		;
		iny				;
		cpy $0201		;
		bne l_f2d3		;
		jsr l_f089		;
		dec $0200		;
		bne l_f2ce		;
		rts				;

l_f2e4:
		sta $0204		;
		lda $0201,x		;
		bne l_f2f6		;
		lda $0200,x		;
		beq l_f2f6		;
		cmp $0204		;
		bcc l_f2f7		;
l_f2f6:
		sec				;
l_f2f7:
		rts				;

l_f2f8:
		sta $0204		;
		lda $0201,x		;
		bne l_f308		;
		lda $0200,x		;
		cmp $0204		;
		bcc l_f309		;
l_f308:
		sec				;
l_f309:
		rts				;

l_f30a:
		lda #$04		;
		ldx #$e5		;
		jsr l_f2f8		;
		bcs l_f35c		;
		clc				;
		lda $02e1		;
		adc $0219		;
		sta $0200		;
		lda $02e2		;
		adc #$00		;
		sta $0201		;
		ldx #$00		;
		lda #$f0		;
		jsr l_f2f8		;
		bcs l_f35c		;
		clc				;
		lda $02e3		;
		adc $021a		;
		sta $0202		;
		lda $02e4		;
		adc #$00		;
		sta $0203		;
		ldx #$02		;
		lda #$c8		;
		jsr l_f2f8		;
		bcs l_f35c		;
		lda $02e5		;
		sta $0212		;
		lda $0200		;
		sta $0219		;
		lda $0202		;
		sta $021a		;
		clc				;
l_f35c:
		rts				;

l_f35d:
		lda $10			;
		sta $0216		;
		lda $11			;
		sta $0217		;
		lda $0215		;
		sta $0218		;
		rts				;

l_f36e:
		lda $0216		;
		sta $10			;
		lda $0217		;
		sta $11			;
		lda $0218		;
		sta $0215		;
		rts				;
		cld				;
		lda $02e2		;
		bne l_f3c2		;
		lda $02e1		;
		beq l_f3c2		;
		lda $0219		;
		cmp $02e1		;
		bcc l_f3c2		;
		clc				;
		adc $02e1		;
		cmp #$f0		;
		bcs l_f3c2		;
		lda $021a		;
		cmp $02e1		;
		bcc l_f3c2		;
		clc				;
		adc $02e1		;
		cmp #$c8		;
		bcs l_f3c2		;
		ldx #$e3		;
		lda #$04		;
		jsr l_f2f8		;
		bcs l_f3c2		;
		lda $02e3		;
		sta $0212		;
		jsr l_eed8		;
		jsr l_f3c6		;
		jmp l_f3c5		;
l_f3c2:
		inc $02e0		;
l_f3c5:
		rts				;

l_f3c6:
		jsr l_f35d		;
		lda $021a		;
		sec				;
		sbc $02e1		;
		tay				;
		ldx $0219		;
		jsr l_f049		;
		lda $02e1		;
		sta $0f			;
		jsr l_f485		;
		lda #$80		;
		sta $021b		;
		sta $021d		;
		lda #$00		;
		sta $021c		;
		lda $02e1		;
		sta $021e		;
l_f3f2:
		lda #$00		;
		sta $0f			;
		jsr l_f414		;
		jsr l_f444		;
		lda $0f			;
		beq l_f403		;
		jsr l_f016		;
l_f403:
		lda $021c		;
		bne l_f3f2		;
		lda $021e		;
		cmp $02e1		;
		bne l_f3f2		;
		jsr l_f36e		;
		rts				;

l_f414:
		lda $021d		;
		ldx $021e		;
		jsr l_f474		;
		lda $0c			;
		clc				;
		adc $021b		;
		sta $021b		;
		lda $021c		;
		sta $0c			;
		adc $0d			;
		sta $021c		;
		cmp $0c			;
		beq l_f443		;
		bcs l_f43c		;
		jsr l_f0a1		;
		jmp l_f43f		;
l_f43c:
		jsr l_f0b2		;
l_f43f:
		lda #$01		;
		sta $0f			;
l_f443:
		rts				;

l_f444:
		lda $021b		;
		ldx $021c		;
		jsr l_f474		;
		sec				;
		lda $021d		;
		sbc $0c			;
		sta $021d		;
		lda $021e		;
		sta $0c			;
		sbc $0d			;
		sta $021e		;
		cmp $0c			;
		beq l_f473		;
		bcs l_f46c		;
		jsr l_f089		;
		jmp l_f46f		;
l_f46c:
		jsr l_f095		;
l_f46f:
		lda #$01		;
		sta $0f			;
l_f473:
		rts				;

l_f474:
		sta $0c			;
		stx $0d			;
		ldx $0e			;
l_f47a:
		lda $0d			;
		rol				;
		ror $0d			;
		ror $0c			;
		dex				;
		bne l_f47a		;
		rts				;

l_f485:
		inc $0f			;
		lda #$00		;
		sta $0e			;
		lda #$01		;
l_f48d:
		asl				;
		inc $0e			;
		cmp $0f			;
		bcc l_f48d		;
		rts				;

l_f495:
		pha				;
		php				;
		tya				;
		pha				;
		cld				;
		lda $0208		;
		bpl l_f4bd		;
		and #$87		;
		sta $0210		;
		ldx $020a		;
		jsr l_f561		;
		cmp $0210		;
		bne l_f4bd		;
		dec $020e		;
		bne l_f4e7		;
		lda $024f		;
		sta $020e		;
		jmp l_f4c6		;
l_f4bd:
		lda $024e		;
		sta $020e		;
		jsr l_f523		;
l_f4c6:
		jsr l_f4ef		;
		tax				;
		bpl l_f4e9		;
		pha				;
		lda $026a		;
		and #$08		;
		bne l_f4e3		;
		pla				;
		pha				;
		cmp #$a0		;
		bcc l_f4e0		;
		jsr l_fb14		;
		jmp l_f4e3		;
l_f4e0:
		jsr l_fb2a		;
l_f4e3:
		pla				;
		jmp l_f4e9		;
l_f4e7:
		lda #$00		;
l_f4e9:
		tax				;
		pla				;
		tay				;
		plp				;
		pla				;
		rts				;

l_f4ef:
		lda $0209		;
		tay				;
		lda #$00		;
		cpy #$a4		;
		beq l_f4fd		;
		cpy #$a7		;
		bne l_f500		;
l_f4fd:
		clc				;
		adc #$40		;
l_f500:
		clc				;
		adc $0208		;
		bpl l_f522		;
		and #$7f		;
		tax				;
		lda $ff78,x		;
		and $020c		;
		bpl l_f514		;
		sec				;
		sbc #$20		;
l_f514:
		and #$7f		;
		cpy #$a2		;
		bne l_f520		;
		cmp #$40		;
		bmi l_f520		;
		and #$1f		;
l_f520:
		ora #$80		;
l_f522:
		rts				;

l_f523:
		lda #$38		;
		sta $020d		;
		sta $0208		;
		sta $0209		;
		lda #$7f		;
		pha				;
l_f531:
		pla				;
		pha				;
		tax				;
		lda #$07		;
		jsr l_f561		;
		ora $020d		;
		bpl l_f550		;
		ldx #$00		;
		ldy #$20		;
		cpy $020d		;
		bne l_f548		;
		inx				;
l_f548:
		sta $0208,x		;
		pla				;
		pha				;
		sta $020a,x		;
l_f550:
		sec				;
		pla				;
		ror				;
		pha				;
		sec				;
		lda $020d		;
		sbc #$08		;
		sta $020d		;
		bpl l_f531		;
		pla				;
		rts				;

l_f561:
		pha				;
		lda #$0e		;
		jsr l_f590		;
		pla				;
		and #$07		;
		tax				;
		sta $0211		;
l_f56e:
		ora #$b8		;
		sta $0300		;
		ldy #$04		;
l_f575:
		dey				;
		bne l_f575		;
		lda $0300		;
		and #$08		;
		bne l_f58c		;
		dex				;
		txa				;
		and #$07		;
		tax				;
		cmp $0211		;
		bne l_f56e		;
		lda #$00		;
		rts				;
l_f58c:
		txa				;
		ora #$80		;
		rts				;

l_f590:
		php				;
		sei				;
		sta $030f		;
		tay				;
		txa				;
		cpy #$07		;
		bne l_f59d		;
		ora #$40		;
l_f59d:
		pha				;
		lda $030c		;
		ora #$ee		;
		sta $030c		;
		and #$11		;
		ora #$cc		;
		sta $030c		;
		tax				;
		pla				;
		sta $030f		;
		txa				;
		ora #$ec		;
		sta $030c		;
		and #$11		;
		ora #$cc		;
		sta $030c		;
		plp				;
		rts				;

l_f5c1:
		php				;
		sei				;
		sta $0301		;
		lda $0300		;
		and #$ef		;
		sta $0300		;
		lda $0300		;
		ora #$10		;
		sta $0300		;
		plp				;
l_f5d7:
		lda $030d		;
		and #$02		;
		beq l_f5d7		;
		lda $030d		;
		rts				;

l_f5e2:
; offset table for each of the control character routines
		.byte $cf		;
		.byte $cf		;
		.byte $cf		;
		.byte $cf		;
		.byte $a3		;
		.byte $cf		;
		.byte $a6
		.byte $cc
		.byte $00
		.byte $27
		.byte $34		;
		.byte $0f		;
		.byte $66
		.byte $99
		.byte $60
		.byte $cf		;
		.byte $a7		;
		.byte $b3		;
		.byte $cf		;
		.byte $a8		;
		.byte $be		;
		.byte $cf		;
		.byte $cf		;
		.byte $cf		;
		.byte $cf		;
		.byte $cf		;
		.byte $a5		;
		.byte $a5		;
		.byte $cf		;
		.byte $a4		;
		.byte $84
		.byte $cf

l_f602:
		and #$1f		;
		tax				;
		lda l_f5e2,x	;
		clc				;
		adc #$2f		;
		sta $0261		;
		lda #$00		;
		adc #$f6		;
		sta $0262		;
		lda $026a		;
		pha				;
		and #$fe		;
		sta $026a		;
		pla				;
		and #$01		;
		sta $0251		;
		lda #$00		;
		jsr l_f801		;
		sec				;
		lda #$00		;
		jmp ($0261)		;
		dec $0269		;
		bmi l_f639		;
		jsr l_f7d7		;
		bne l_f679		;
l_f639:
		lda #$27		;
		sta $0269		;
		lda $0268		;
		cmp #$01		;
		beq l_f679		;
		dec $0268		;
		sec				;
		lda $12			;
		sbc #$28		;
		sta $12			;
		bcs l_f653		;
		dec $13			;
l_f653:
		jmp l_f6fe		;
		inc $0269		;
		ldx #$27		;
		cpx $0269		;
		bpl l_f679		;
		jsr l_f70d		;
		lda $0268		;
		cmp $027e		;
		beq l_f67c		;
		inc $0268		;
		clc				;
		lda $12			;
		adc #$28		;
		sta $12			;
		bcc l_f679		;
		inc $13			;
l_f679:
		jmp l_f6fe		;
l_f67c:
		jsr l_f35d		;
		ldx #$06		;
l_f681:
		lda $0277,x		;
		sta $0b,x		;
		dex				;
		bne l_f681		;
		jsr l_edc4		;
		jsr l_f36e		;
		jsr l_f71a		;
		jmp l_f6fe		;
		ldx $027e		;
		lda $027a		;
		sta $12			;
		lda $027b		;
		sta $13			;
l_f6a2:
		jsr l_f71a		;
		clc				;
		lda $12			;
		adc #$28		;
		sta $12			;
		bcc l_f6b0		;
		inc $13			;
l_f6b0:
		dex				;
		bne l_f6a2		;
		jsr l_f70d		;
		lda #$01		;
		sta $0268		;
		lda $027a		;
		sta $12			;
		lda $027b		;
		sta $13			;
		jmp l_f6fe		;
		jsr l_f70d		;
		stx $0253		;
		jmp l_f6fe		;
		rol				;
		rol				;
		rol				;
		rol				;
		rol				;
		rol				;
		rol				;
		rol				;
		eor $026a		;
		sta $026a		;
		jmp l_f6fe		;
		lda $0251		;
		eor #$01		;
		sta $0251		;
		jmp l_f6fe		;
		lda $020c		;
		eor #$80		;
		sta $020c		;
		jsr l_f75a		;
		jmp l_f6fe		;
		jsr l_fa9f		;
l_f6fe:
		lda $026a		;
		ora $0251		;
		sta $026a		;
		lda #$01		;
		jsr l_f801		;
		rts				;

l_f70d:
		ldx #$00		;
		jsr l_f7de		;
		bne l_f716		;
		inx				;
		inx				;
l_f716:
		stx $0269		;
		rts				;

l_f71a:
		ldy #$27		;
		lda #$20		;
l_f71e:
		sta ($12),y		;
		dey				;
		bpl l_f71e		;
		ldy #$00		;
		lda $026b		;
		sta ($12),y		;
		lda $026c		;
		iny				;
		sta ($12),y		;
		rts				;

l_f731:
		ldy #$00		;
		sty $0263		;
		sta $0264		;
		asl				;
		rol $0263		;
		asl				;
		rol $0263		;
		clc				;
		adc $0264		;
		bcc l_f74a		;
		inc $0263		;
l_f74a:
		asl				;
		rol $0263		;
		asl				;
		rol $0263		;
		asl				;
		rol $0263		;
		ldy $0263		;
		rts				;

l_f75a:
		lda $020c		;
		bpl l_f766		;
		lda #$70		;
		ldy #$f7		;
		jmp l_f76a		;
l_f766:
		lda #$76		;
		ldy #$f7		;
l_f76a:
		ldx #$23		;
		jsr l_f865		;
		rts				;

		.byte $07
		.null "CAPS"

		.byte $07
		.null "    "

l_f77c:
		pha				;
		php				;
		tya				;
		pha				;
		txa				;
		pha				;
		cld				;
		cpx #$13		;
		beq l_f7cd		;
		cpx #$14		;
		beq l_f7cd		;
		cpx #$06		;
		beq l_f7cd		;
		lda $026a		;
		and #$02		;
		beq l_f7d0		;
		txa				;
		cmp #$20		;
		bcc l_f7cd		;
		lda $026a		;
		and #$10		;
		beq l_f7b5		;
		txa				;
		sec				;
		sbc #$40		;
		bmi l_f7b1		;
		and #$1f		;
l_f7aa:
		jsr l_f7e4		;
		lda #$1b		;
		bne l_f7cd		;
l_f7b1:
		lda #$20		;
		bpl l_f7aa		;
l_f7b5:
		cpx #$7f		;
		beq l_f7c1		;
		pla				;
		pha				;
		jsr l_f7e4		;
		jmp l_f7d0		;
l_f7c1:
		lda #$08		;
		jsr l_f602		;
		lda #$20		;
		jsr l_f7e4		;
		lda #$08		;
l_f7cd:
		jsr l_f602		;
l_f7d0:
		pla				;
		tax				;
		pla				;
		tay				;
		plp				;
		pla				;
		rts				;

l_f7d7:
		lda $0269		;
		and #$fe		;
		bne l_f7e3		;
l_f7de:
		lda $026a		;
		and #$20		;
l_f7e3:
		rts				;

l_f7e4:
		pha				;
		ldy $0269		;
		sta ($12),y		;
		bit $026a		;
		bvc l_f7fa		;
		lda $0269		;
		clc				;
		adc #$28		;
		tay				;
		pla				;
		pha				;
		sta ($12),y		;
l_f7fa:
		lda #$09		;
		jsr l_f602		;
		pla				;
		rts				;

l_f801:
		and $026a		;
		lsr				;
		ror				;
		sta $0265		;
		ldy $0269		;
		lda ($12),y		;
		and #$7f		;
		ora $0265		;
		sta ($12),y		;
		rts				;

l_f816:
		lda #$00		;
		sta $0c			;
		lda #$b9		;
		sta $0d			;
		lda #$00		;
		jsr l_f82d		;
		ldy #$ba		;
		sty $0d			;
		lda #$20		;
		jsr l_f82d		;
		rts				;

l_f82d:
		ldy #$00		;
l_f82f:
		pha				;
		jsr l_f854		;
		sta ($0c),y		;
		iny				;
		pla				;
		pha				;
		jsr l_f852		;
		pla				;
		pha				;
		jsr l_f850		;
		sta ($0c),y		;
		iny				;
		cpy #$00		;
		beq l_f84e		;
		pla				;
		clc				;
		adc #$01		;
		jmp l_f82f		;
l_f84e:
		pla				;
		rts				;

l_f850:
		lsr				;
		lsr				;
l_f852:
		lsr				;
		lsr				;
l_f854:
		and #$03		;
		tax				;
		lda l_f861,x	;
		sta ($0c),y		;
		iny				;
		sta ($0c),y		;
		iny				;
		rts				;

l_f861:
		.byte $00, $38, $07, $3f	;

l_f865:
		sta $0c			;
		sty $0d			;
		lda $021f		;
		bne l_f87b		;
		ldy #$00		;
l_f870:
		lda ($0c),y		;
		beq l_f87b		;
		sta $bb80,x		;
		inx				;
		iny				;
		bne l_f870		;
l_f87b:
		rts				;
l_f87c:
		jmp l_f77c		;
		jmp l_eb78		;
		jmp l_f5c1		;
		jmp l_f865		;
		jmp l_ee22		;
		jmp l_f8b2		;
		rti				;

reset:
		ldx #$ff		;
		txs				;
		cli				;
		cld				;
		ldx #$12		;
l_f896:
		lda l_f87c,x	;
		sta $0238,x		;
		dex				;
		bpl l_f896		;
		lda #$20		;
		sta $024e		;
		lda #$04		;
		sta $024f		;
		jsr l_fa14		;
		jsr l_f8b8		;
		jmp l_eccc		;

l_f8b2:
		jsr l_f8b8		;
		jmp l_c471		;

l_f8b8:
		jsr l_f9aa		;
		lda #$07		;
		ldx #$40		;
		jsr l_f590		;
		jsr l_ede0		;
		jsr l_f90e		;
		lda #$ff		;
		sta $020c		;
		jsr l_f9c9		;
		ldx #$05		;
		jsr l_f982		;
		jsr l_f816		;
		jsr l_f75a		;
		rts				;

l_f8dc:
		pha				;
		txa				;
		pha				;
		lda #$01		;
		sta $021f		;
		lda #$bf		;
		sta $027b		;
		sta $0279		;
		lda #$68		;
		sta $027a		;
		lda #$90		;
		sta $0278		;
		lda #$03		;
		sta $027e		;
		lda #$00		;
		sta $027d		;
		lda #$50		;
		sta $027c		;
		ldx #$0c		;
		jsr $0238		;
		pla				;
		tax				;
		pla				;
		rts				;

l_f90e:
		pha				;
		lda #$03		;
		sta $026a		;
		lda #$00		;
		sta $026c		;
		lda #$17		;
		sta $026b		;
		pla				;
		rts				;

l_f920:
		pha				;
		lda $021f		;
		bne l_f92b		;
		ldx #$0b		;
		jsr l_f982		;
l_f92b:
		lda #$fe		;
		and $026a		;
		sta $026a		;
		lda #$1e		;
		sta $bfdf		;
		lda #$40		;
		sta $a000		;
		ldx #$17		;
		jsr l_f982		;
		lda #$00		;
		sta $0219		;
		sta $021a		;
		sta $10			;
		lda #$a0		;
		sta $11			;
		lda #$20		;
		sta $0215		;
		lda #$ff		;
		sta $0213		;
		jsr l_f8dc		;
		lda #$01		;
		ora $026a		;
		sta $026a		;
		pla				;
		rts				;

l_f967:
		pha				;
		lda #$fe		;
		and $026a		;
		sta $026a		;
		ldx #$11		;
		jsr l_f982		;
		jsr l_f9c9		;
		lda #$01		;
		ora $026a		;
		sta $026a		;
		pla				;
		rts				;

l_f982:
		ldy #$06		;
l_f984:
		lda l_f992,x	;
		sta $000b,y		;
		dex				;
		dey				;
		bne l_f984		;
		jsr l_edc4		;
		rts				;

l_f992:
		; unknown data
		.byte $78, $fc, $00, $b5, $00, $03, $00, $b4
		.byte $00, $98, $80, $07, $00, $98, $00, $b4
		.byte $80, $07, $00, $a0, $01, $a0, $3f, $1f

l_f9aa:
		lda #$ff		;
		sta $0303		;
		lda #$f7		;
		sta $0302		;
		lda #$b7		;
		sta $0300		;
		lda #$dd		;
		sta $030c		;
		lda #$7f		;
		sta $030e		;
		lda #$00		;
		sta $030b		;
		rts				;

l_f9c9:
		lda #$1a		;
		jsr l_fa07		;
		lda #$20		;
		ldy #$28		;
l_f9d2:
		sta $bb7f,y		;
		dey				;
		bne l_f9d2		;
		lda #$00		;
		sta $021f		;
		lda #$bb		;
		sta $027b		;
		sta $0279		;
		lda #$a8		;
		sta $027a		;
		lda #$d0		;
		sta $0278		;
		lda #$1b		;
		sta $027e		;
		lda #$04		;
		sta $027d		;
		lda #$10		;
		sta $027c		;
		ldx #$0c		;
		jsr $0238		;
		jsr l_f75a		;
		rts				;

l_fa07:
		sta $bfdf		;
		lda #$02		;
		ldx #$00		;
		ldy #$03		;
		jsr l_eec9		;
		rts				;

l_fa14:
		ldy #$00		;
		sty $0260		;
		sty $0220		;
		sty $0500		;
		sty $0e			;
		dey				;
		sty $0c			;
		sty $4500		;
		lda $0500		;
		bne l_fa30		;
		lda #$c0		;
		bne l_fa35		;
l_fa30:
		inc $0220		;
		lda #$40		;
l_fa35:
		sta $0f			;
		iny				;
		lda #$03		;
		sta $0d			;
l_fa3c:
		inc $0c			;
		bne l_fa42		;
		inc $0d			;
l_fa42:
		lda $0c			;
		cmp $0e			;
		bne l_fa4e		;
		lda $0d			;
		cmp $0f			;
		beq l_fa5d		;
l_fa4e:
		lda #$aa		;
		sta ($0c),y		;
		cmp ($0c),y		;
		bne l_fa5d		;
		lsr				;
		sta ($0c),y		;
		cmp ($0c),y		;
		beq l_fa3c		;
l_fa5d:
		sec				;
		lda $0f			;
		sbc #$28		;
		sta $0f			;
		lda $0e			;
		cmp $0c			;
		lda $0f			;
		sbc $0d			;
		bcc l_fa77		;
		lda $0c			;
		ldy $0d			;
		inc $0260		;
		bne l_fa7b		;
l_fa77:
		lda $0e			;
		ldy $0f			;
l_fa7b:
		sta $a6			;
		sty $a7			;
		sta $02c1		;
		sty $02c2		;
		rts				;

l_fa86:
		php				;
		sei				;
		stx $14			;
		sty $15			;
		ldy #$00		;
l_fa8e:
		lda ($14),y		;
		tax				;
		tya				;
		pha				;
		jsr l_f590		;
		pla				;
		tay				;
		iny				;
		cpy #$0e		;
		bne l_fa8e		;
		plp				;
		rts				;

l_fa9f:
		ldx #<ping		;
		ldy #>ping		;
		jsr l_fa86		;
		rts				;

; data for ping command
ping:
		.byte $18, $00, $00, $00, $00, $00, $00
		.byte $3e, $10, $00, $00, $00, $0f, $00

		ldx #<shoot
		ldy #>shoot		;
		jsr l_fa86		;
		rts				;

shoot:
		.byte $00, $00, $00, $00, $00, $00, $0f	; data for shoot command.
		.byte $07, $10, $10, $10, $00, $08, $00

		ldx #<explode
		ldy #>explode	;
		jsr l_fa86		;
		rts				;

explode:
		.byte $00, $00, $00, $00, $00, $00, $1f	; data for explode command.
		.byte $07, $10, $10, $10, $00, $18, $00

		ldx #<zap
		ldy #>zap		;
		jsr l_fa86		;
		lda #$00		;
		tax				;
l_faeb:
		txa				;
		pha				;
		lda #$00		;
		jsr l_f590		;
		ldx #$00		;
l_faf4:
		dex				;
		bne l_faf4		;
		pla				;
		tax				;
		inx				;
		cpx #$70		;
		bne l_faeb		;
		lda #$08		;
		ldx #$00		;
		jsr l_f590		;
		rts				;

zap:
		.byte $00, $00, $00, $00, $00, $00, $00	; data for zap command.
		.byte $3e, $0f, $00, $00, $00, $00, $00

l_fb14:
		ldx #<high_keyclick
		ldy #>high_keyclick	;
		jsr l_fa86		;
		rts				;

high_keyclick:
		.byte $1f, $00, $00, $00, $00, $00, $00	; data for high pitch keyclick.
		.byte $3e, $10, $00, $00, $1f, $00, $00

l_fb2a:
		ldx #<low_keyclick	;
		ldy #>low_keyclick	;
		jsr l_fa86		;
		rts				;

low_keyclick:
		.byte $2f, $00, $00, $00, $00, $00, $00	; data for low pitch keyclick.
		.byte $3e, $10, $00, $00, $1f, $00, $00

l_fb40:
		lda $02e1		;
		cmp #$01		;
		bne l_fb69		;
		lda #$00		;
		ldx $02e3		;
		jsr l_f590		;
		lda #$01		;
		ldx $02e4		;
		jsr l_f590		;
l_fb57:
		lda $02e5		;
		and #$0f		;
		bne l_fb62		;
		ldx #$10		;
		bne l_fb63		;
l_fb62:
		tax				;
l_fb63:
		lda #$08		;
		jsr l_f590		;
		rts				;
l_fb69:
		cmp #$02		;
		bne l_fb8f		;
		lda #$02		;
		ldx $02e3		;
		jsr l_f590		;
		lda #$03		;
		ldx $02e4		;
		jsr l_f590		;
l_fb7d:
		lda $02e5		;
		and #$0f		;
		bne l_fb88		;
		ldx #$10		;
		bne l_fb89		;
l_fb88:
		tax				;
l_fb89:
		lda #$09		;
		jsr l_f590		;
		rts				;
l_fb8f:
		cmp #$03		;
		bne l_fbb5		;
		lda #$04		;
		ldx $02e3		;
		jsr l_f590		;
		lda #$05		;
		ldx $02e4		;
		jsr l_f590		;
l_fba3:
		lda $02e5		;
		and #$0f		;
		bne l_fbae		;
		ldx #$10		;
		bne l_fbaf		;
l_fbae:
		tax				;
l_fbaf:
		lda #$0a		;
		jsr l_f590		;
		rts				;
l_fbb5:
		lda #$06		;
		ldx $02e3		;
		jsr l_f590		;
		lda $02e1		;
		cmp #$04		;
		beq l_fb57		;
		cmp #$05		;
		beq l_fb7d		;
		cmp #$06		;
		beq l_fba3		;
		inc $02e0		;
		rts				;
		lda $02e3		;
		asl				;
		asl				;
		asl				;
		ora $02e1		;
		eor #$3f		;
		tax				;
		lda #$07		;
		jsr l_f590		;
		clc				;
		lda $02e7		;
		asl				;
		sta $02e7		;
		lda $02e8		;
		rol				;
		sta $02e8		;
		lda #$0b		;
		ldx $02e7		;
		jsr l_f590		;
		lda #$0c		;
		ldx $02e8		;
		jsr l_f590		;
		lda $02e5		;
		and #$07		;
		tay				;
		lda $fc10,y		;
		tax				;
		lda #$0d		;
		jsr l_f590		;
		rts				;

		.byte $00, $00, $04, $08, $0a, $0b, $0c, $0d

		ldx #$e1
		lda #$04		;
		jsr l_f2e4		;
		bcs l_fc5a		;
		ldx #$e3		;
		lda #$08		;
		jsr l_f2f8		;
		bcs l_fc5a		;
		ldx #$e5		;
		lda #$0d		;
		jsr l_f2e4		;
		bcs l_fc5a		;
		ldy $02e3		;
		ldx $02e5		;
		lda l_fc5e,x	;
		sta $02e4		;
		lda l_fc6b,x	;
		sta $02e3		;
		lda $02e7		;
		sta $02e5		;
l_fc4b:
		dey				;
		bmi l_fc57		;
		lsr $02e4		;
		ror $02e3		;
		jmp l_fc4b		;
l_fc57:
		jmp l_fb40		;
l_fc5a:
		inc $02e0		;
		rts				;

l_fc5e:
		.byte $00, $07, $07, $06, $06, $05, $05, $05	;data for the music command.
		.byte $04, $04, $04, $04, $03
l_fc6b:
		.byte $00, $77, $0b	;converts the notes into tone
		.byte $a6, $47, $ec, $97, $47, $fb, $b3, $70	;periods.
		.byte $30, $f4
l_fc78:
		.byte $00, $00, $00, $00, $00, $00, $00, $00	;space start of standard
		.byte $08, $08, $08, $08, $08, $00, $08, $00	;!  character set. each
		.byte $14, $14, $14, $00, $00, $00, $00, $00	;"  row of 8 bytes
		.byte $14, $14, $3e, $14, $3e, $14, $14, $00	;#  represents the bit
		.byte $08, $1e, $28, $1c, $0a, $3c, $08, $00	;$  pattern for each
		.byte $30, $32, $04, $08, $10, $26, $06, $00	;%  character. the first
		.byte $10, $28, $28, $10, $2a, $24, $1a, $00	;&  byte is the bit
		.byte $08, $08, $08, $00, $00, $00, $00, $00	;'  pattern for the top
		.byte $08, $10, $20, $20, $20, $10, $08, $00	;(  row and the last is
		.byte $08, $04, $02, $02, $02, $04, $08, $00	;)  that for the bottom
		.byte $08, $2a, $1c, $08, $1c, $2a, $08, $00	;*  row. the list works
		.byte $00, $08, $08, $3e, $08, $08, $00, $00	;+  its way up the ascii
		.byte $00, $00, $00, $00, $00, $08, $08, $10	;, set from space to del.
		.byte $00, $00, $00, $3e, $00, $00, $00, $00	;-
		.byte $00, $00, $00, $00, $00, $04, $00, $00	;.  on power up, this data
		.byte $00, $02, $04, $08, $10, $20, $00, $00	;/  is copied to below the
		.byte $1c, $22, $26, $2a, $32, $22, $1c, $00	;0  screen memory.
		.byte $08, $18, $08, $08, $08, $08, $1c, $00	;1
		.byte $1c, $22, $02, $04, $08, $10, $3e, $00	;2
		.byte $3e, $02, $04, $0c, $02, $22, $1c, $00	;3
		.byte $04, $0c, $14, $24, $3e, $04, $04, $00	;4
		.byte $3e, $20, $3c, $02, $02, $22, $1c, $00	;5
		.byte $0c, $10, $20, $3c, $22, $22, $1c, $00	;6
		.byte $3e, $02, $04, $08, $10, $10, $10, $00	;7
		.byte $1c, $22, $22, $1c, $22, $22, $1c, $00	;8
		.byte $1c, $22, $22, $1e, $02, $04, $18, $00	;9
		.byte $00, $00, $08, $00, $00, $08, $00, $00	;:
		.byte $00, $00, $08, $00, $00, $08, $08, $10	;;
		.byte $04, $08, $10, $20, $10, $08, $04, $00	;<
		.byte $00, $00, $3e, $00, $3e, $00, $00, $00	;=
		.byte $10, $08, $04, $02, $04, $08, $10, $00	;>
		.byte $1c, $22, $04, $08, $08, $00, $08, $00	;?
		.byte $1c, $22, $2a, $2e, $2c, $20, $1e, $00	;@
		.byte $08, $14, $22, $22, $3e, $22, $22, $00	;a
		.byte $3c, $22, $22, $3c, $22, $22, $3c, $00	;b
		.byte $1c, $22, $20, $20, $20, $22, $1c, $00	;c
		.byte $3c, $22, $22, $22, $22, $22, $3c, $00	;d
		.byte $3e, $20, $20, $3c, $20, $20, $3e, $00	;e
		.byte $3e, $20, $20, $3c, $20, $20, $20, $00	;f
		.byte $1e, $20, $20, $20, $26, $22, $1e, $00	;g
		.byte $22, $22, $22, $3e, $22, $22, $22, $00	;h
		.byte $1c, $08, $08, $08, $08, $08, $1c, $00	;i
		.byte $02, $02, $02, $02, $02, $22, $1c, $00	;j
		.byte $22, $24, $28, $30, $28, $24, $22, $00	;k
		.byte $20, $20, $20, $20, $20, $20, $3e, $00	;l
		.byte $22, $36, $2a, $2a, $22, $22, $22, $00	;m
		.byte $22, $22, $32, $2a, $26, $22, $22, $00	;n
		.byte $1c, $22, $22, $22, $22, $22, $1c, $00	;0
		.byte $3c, $22, $22, $3c, $20, $20, $20, $00	;p
		.byte $1c, $22, $22, $22, $2a, $24, $1a, $00	;q
		.byte $3c, $22, $22, $3c, $28, $24, $22, $00	;r
		.byte $1c, $22, $20, $1c, $02, $22, $1c, $00	;s
		.byte $3e, $08, $08, $08, $08, $08, $08, $00	;t
		.byte $22, $22, $22, $22, $22, $22, $1c, $00	;u
		.byte $22, $22, $22, $22, $22, $14, $08, $00	;v
		.byte $22, $22, $22, $2a, $2a, $36, $22, $00	;w
		.byte $22, $22, $14, $08, $14, $22, $22, $00	;x
		.byte $22, $22, $14, $08, $08, $08, $08, $00	;y
		.byte $3e, $02, $04, $08, $10, $20, $3e, $00	;z
		.byte $1e, $10, $10, $10, $10, $10, $1e, $00	;[
		.byte $00, $20, $10, $08, $04, $02, $00, $00	;\
		.byte $3c, $04, $04, $04, $04, $04, $3c, $00	;]
		.byte $08, $14, $2a, $08, $08, $08, $08, $00	;f
		.byte $0e, $10, $10, $10, $3c, $10, $3e, $00	;g
		.byte $0c, $12, $2d, $29, $29, $2d, $12, $0c	;(c)
		.byte $00, $00, $1c, $02, $1e, $22, $1e, $00	;a
		.byte $20, $20, $3c, $22, $22, $22, $3c, $00	;b
		.byte $00, $00, $1e, $20, $20, $20, $1e, $00	;c
		.byte $02, $02, $1e, $22, $22, $22, $1e, $00	;d
		.byte $00, $00, $1c, $22, $3e, $20, $1e, $00	;e
		.byte $0c, $12, $10, $3c, $10, $10, $10, $00	;f
		.byte $00, $00, $1c, $22, $22, $1e, $02, $1c	;g
		.byte $20, $20, $3c, $22, $22, $22, $22, $00	;h
		.byte $08, $00, $18, $08, $08, $08, $1c, $00	;i
		.byte $04, $00, $0c, $04, $04, $04, $24, $18	;j
		.byte $20, $20, $22, $24, $38, $24, $22, $00	;k
		.byte $18, $08, $08, $08, $08, $08, $1c, $00	;1
		.byte $00, $00, $36, $2a, $2a, $2a, $22, $00	;m
		.byte $00, $00, $3c, $22, $22, $22, $22, $00	;n
		.byte $00, $00, $1c, $22, $22, $22, $1c, $00	;o
		.byte $00, $00, $3c, $22, $22, $3c, $20, $20	;p
		.byte $00, $00, $1e, $22, $22, $1e, $02, $02	;q
		.byte $00, $00, $2e, $30, $20, $20, $20, $00	;r
		.byte $00, $00, $1e, $20, $1c, $02, $3c, $00	;s
		.byte $10, $10, $3c, $10, $10, $12, $0c, $00	;t
		.byte $00, $00, $22, $22, $22, $26, $1a, $00	;u
		.byte $00, $00, $22, $22, $22, $14, $08, $00	;v
		.byte $00, $00, $22, $22, $2a, $2a, $36, $00	;w
		.byte $00, $00, $22, $14, $08, $14, $22, $00	;x
		.byte $00, $00, $22, $22, $22, $1e, $02, $1c	;y
		.byte $00, $00, $3e, $04, $08, $10, $3e, $00	;z
		.byte $0e, $18, $18, $30, $18, $18, $0e, $00	;{
		.byte $08, $08, $08, $08, $08, $08, $08, $08	;|
		.byte $38, $0c, $0c, $06, $0c, $0c, $38, $00	;}
		.byte $2a, $15, $2a, $15, $2a, $15, $2a, $15	;chequered grid.
		.byte $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f	;del

		.byte $37, $ea, $ed, $eb, $20, $f5, $f9, $38	;look up table for the
		.byte $ee, $f4, $36, $39, $2c, $e9, $e8, $ec	;conversion of the key-code to
		.byte $35, $f2, $e2, $3b, $2e, $ef, $e7, $30	;corresponding ascii character.
		.byte $f6, $e6, $34, $2d, $0b, $f0, $e5, $2f	;the first half of the table
		.byte $00, $00, $00, $00, $00, $00, $00, $00	;corresponds to the ascii
		.byte $31, $1b, $fa, $00, $08, $7f, $e1, $0d	;values with the shift key off.
		.byte $f8, $f1, $32, $5c, $0a, $5d, $f3, $00	;the second half of the table
		.byte $33, $e4, $e3, $27, $09, $5b, $f7, $3d	;corresponds to the ascii
		.byte $26, $4a, $4d, $4b, $20, $55, $59, $2a	;values with the shift key
		.byte $4e, $54, $5e, $28, $3c, $49, $48, $4c	;pressed.
		.byte $25, $52, $42, $3a, $3e, $4f, $47, $29
		.byte $56, $46, $24, $5f, $0b, $50, $45, $3f
		.byte $00, $00, $00, $00, $00, $00, $00, $00
		.byte $21, $1b, $5a, $00, $08, $7f, $41, $0d
		.byte $58, $51, $40, $7c, $0a, $7d, $53, $00
		.byte $23, $44, $43, $22, $09, $7b, $57, $2b
		.byte $d0, 01

		* = $fffa
		nmi = $0247
		irq = $0244
		.word nmi		; $0247
		.word reset		; $f88f
		.word irq		; $0244
