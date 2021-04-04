	.text
	.file	"speedtest.cpp"
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90         # -- Begin function __cxx_global_var_init
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$_ZStL8__ioinit, %rdi
	callq	_ZNSt8ios_base4InitC1Ev
	movabsq	$_ZNSt8ios_base4InitD1Ev, %rdi
	movabsq	$_ZStL8__ioinit, %rsi
	movabsq	$__dso_handle, %rdx
	callq	__cxa_atexit
	movl	%eax, -4(%rbp)          # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	__cxx_global_var_init, .Lfunc_end0-__cxx_global_var_init
	.cfi_endproc
                                        # -- End function
	.text
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$2336, %rsp             # imm = 0x920
	movl	$512, -48(%rbp)         # imm = 0x200
	movl	$512, -44(%rbp)         # imm = 0x200
	leaq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$2, -32(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1808(%rbp)       # 8-byte Spill
	callq	_ZNSaIiEC2Ev
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
.Ltmp0:
	leaq	-24(%rbp), %rdi
	movq	-1808(%rbp), %rcx       # 8-byte Reload
	callq	_ZNSt6vectorIiSaIiEEC2ESt16initializer_listIiERKS0_
.Ltmp1:
	jmp	.LBB1_1
.LBB1_1:                                # %invoke.cont
	leaq	-56(%rbp), %rdi
	callq	_ZNSaIiED2Ev
	movl	$512, -176(%rbp)        # imm = 0x200
	movl	$512, -172(%rbp)        # imm = 0x200
	leaq	-176(%rbp), %rdi
	movq	%rdi, -168(%rbp)
	movq	$2, -160(%rbp)
	movq	-168(%rbp), %rsi
	movq	-160(%rbp), %rdx
.Ltmp3:
	leaq	-152(%rbp), %rdi
	movl	$24, %ecx
	callq	_Z18make_random_tensorIfE6TensorIT_ESt16initializer_listIiEj
.Ltmp4:
	jmp	.LBB1_2
.LBB1_2:                                # %invoke.cont10
	movl	$512, -280(%rbp)        # imm = 0x200
	movl	$512, -276(%rbp)        # imm = 0x200
	leaq	-280(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	$2, -264(%rbp)
	movq	-272(%rbp), %rsi
	movq	-264(%rbp), %rdx
.Ltmp6:
	leaq	-256(%rbp), %rdi
	movl	$24, %ecx
	callq	_Z18make_random_tensorIfE6TensorIT_ESt16initializer_listIiEj
.Ltmp7:
	jmp	.LBB1_3
.LBB1_3:                                # %invoke.cont19
.Ltmp9:
	leaq	-360(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZN6TensorIfEC2ERKSt6vectorIiSaIiEE
.Ltmp10:
	jmp	.LBB1_4
.LBB1_4:                                # %invoke.cont21
.Ltmp12:
	leaq	-392(%rbp), %rdi
	leaq	-152(%rbp), %rsi
	callq	_ZN6TensorIfE8as_tspanILi2EEE5TSpanIXT_EfEv
.Ltmp13:
	jmp	.LBB1_5
.LBB1_5:                                # %invoke.cont23
.Ltmp15:
	leaq	-424(%rbp), %rdi
	leaq	-256(%rbp), %rsi
	callq	_ZN6TensorIfE8as_tspanILi2EEE5TSpanIXT_EfEv
.Ltmp16:
	jmp	.LBB1_6
.LBB1_6:                                # %invoke.cont25
.Ltmp18:
	leaq	-456(%rbp), %rdi
	leaq	-360(%rbp), %rsi
	callq	_ZN6TensorIfE8as_tspanILi2EEE5TSpanIXT_EfEv
.Ltmp19:
	jmp	.LBB1_7
.LBB1_7:                                # %invoke.cont27
.Ltmp21:
	movl	$_ZSt4cout, %eax
	movl	%eax, %edi
	movl	$.L.str, %eax
	movl	%eax, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp22:
	movq	%rax, -1816(%rbp)       # 8-byte Spill
	jmp	.LBB1_8
.LBB1_8:                                # %invoke.cont29
	leaq	-552(%rbp), %rax
.Ltmp23:
	leaq	-392(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, -1824(%rbp)       # 8-byte Spill
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp24:
	jmp	.LBB1_9
.LBB1_9:                                # %invoke.cont31
	leaq	-520(%rbp), %rax
.Ltmp25:
	leaq	-424(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, -1832(%rbp)       # 8-byte Spill
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp26:
	jmp	.LBB1_10
.LBB1_10:                               # %invoke.cont33
	leaq	-488(%rbp), %rdi
.Ltmp28:
	leaq	-456(%rbp), %rsi
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp29:
	jmp	.LBB1_11
.LBB1_11:                               # %invoke.cont35
.Ltmp31:
	movl	$100, %edi
	leaq	-552(%rbp), %rsi
	callq	_Z7time_fnIZ4mainE3$_0JEEviT_DpT0_
.Ltmp32:
	jmp	.LBB1_12
.LBB1_12:                               # %invoke.cont37
	leaq	-552(%rbp), %rdi
	callq	_ZZ4mainEN3$_0D2Ev
.Ltmp34:
	leaq	-632(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZN6TensorIfEC2ERKSt6vectorIiSaIiEE
.Ltmp35:
	jmp	.LBB1_13
.LBB1_13:                               # %invoke.cont39
.Ltmp37:
	leaq	-664(%rbp), %rdi
	leaq	-632(%rbp), %rsi
	callq	_ZN6TensorIfE8as_tspanILi2EEE5TSpanIXT_EfEv
.Ltmp38:
	jmp	.LBB1_14
.LBB1_14:                               # %invoke.cont41
.Ltmp40:
	movl	$_ZSt4cout, %eax
	movl	%eax, %edi
	movl	$.L.str.1, %eax
	movl	%eax, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp41:
	movq	%rax, -1840(%rbp)       # 8-byte Spill
	jmp	.LBB1_15
.LBB1_15:                               # %invoke.cont43
	leaq	-760(%rbp), %rax
.Ltmp42:
	leaq	-392(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, -1848(%rbp)       # 8-byte Spill
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp43:
	jmp	.LBB1_16
.LBB1_16:                               # %invoke.cont46
	leaq	-728(%rbp), %rax
.Ltmp44:
	leaq	-424(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, -1856(%rbp)       # 8-byte Spill
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp45:
	jmp	.LBB1_17
.LBB1_17:                               # %invoke.cont48
	leaq	-696(%rbp), %rdi
.Ltmp47:
	leaq	-664(%rbp), %rsi
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp48:
	jmp	.LBB1_18
.LBB1_18:                               # %invoke.cont50
.Ltmp50:
	movl	$100, %edi
	leaq	-760(%rbp), %rsi
	callq	_Z7time_fnIZ4mainE3$_1JEEviT_DpT0_
.Ltmp51:
	jmp	.LBB1_19
.LBB1_19:                               # %invoke.cont54
	leaq	-760(%rbp), %rdi
	callq	_ZZ4mainEN3$_1D2Ev
.Ltmp53:
	movl	$_ZSt4cout, %eax
	movl	%eax, %edi
	movl	$.L.str.2, %eax
	movl	%eax, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp54:
	movq	%rax, -1864(%rbp)       # 8-byte Spill
	jmp	.LBB1_20
.LBB1_20:                               # %invoke.cont56
.Ltmp55:
	leaq	-664(%rbp), %rdi
	leaq	-456(%rbp), %rsi
	callq	_ZNK5TSpanILi2EfEeqERKS0_
.Ltmp56:
	movb	%al, -1865(%rbp)        # 1-byte Spill
	jmp	.LBB1_21
.LBB1_21:                               # %invoke.cont58
.Ltmp57:
	movb	-1865(%rbp), %al        # 1-byte Reload
	movzbl	%al, %ecx
	andl	$1, %ecx
	movq	-1864(%rbp), %rdi       # 8-byte Reload
	movl	%ecx, %esi
	callq	_ZNSolsEb
.Ltmp58:
	movq	%rax, -1880(%rbp)       # 8-byte Spill
	jmp	.LBB1_22
.LBB1_22:                               # %invoke.cont60
.Ltmp59:
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %eax
	movl	%eax, %esi
	movq	-1880(%rbp), %rdi       # 8-byte Reload
	callq	_ZNSolsEPFRSoS_E
.Ltmp60:
	movq	%rax, -1888(%rbp)       # 8-byte Spill
	jmp	.LBB1_23
.LBB1_23:                               # %invoke.cont62
.Ltmp61:
	leaq	-840(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZN6TensorIfEC2ERKSt6vectorIiSaIiEE
.Ltmp62:
	jmp	.LBB1_24
.LBB1_24:                               # %invoke.cont65
	leaq	-632(%rbp), %rax
	leaq	-840(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, -1896(%rbp)       # 8-byte Spill
	movq	%rcx, -1904(%rbp)       # 8-byte Spill
	callq	_ZN6TensorIfEaSEOS0_
	movq	-1904(%rbp), %rdi       # 8-byte Reload
	movq	%rax, -1912(%rbp)       # 8-byte Spill
	callq	_ZN6TensorIfED2Ev
.Ltmp63:
	leaq	-872(%rbp), %rdi
	movq	-1896(%rbp), %rsi       # 8-byte Reload
	callq	_ZN6TensorIfE8as_tspanILi2EEE5TSpanIXT_EfEv
.Ltmp64:
	jmp	.LBB1_25
.LBB1_25:                               # %invoke.cont68
.Ltmp65:
	leaq	-664(%rbp), %rdi
	leaq	-872(%rbp), %rsi
	callq	_ZN5TSpanILi2EfEaSEOS0_
.Ltmp66:
	movq	%rax, -1920(%rbp)       # 8-byte Spill
	jmp	.LBB1_26
.LBB1_26:                               # %invoke.cont70
	leaq	-872(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.Ltmp68:
	movl	$_ZSt4cout, %eax
	movl	%eax, %edi
	movl	$.L.str.3, %eax
	movl	%eax, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp69:
	movq	%rax, -1928(%rbp)       # 8-byte Spill
	jmp	.LBB1_27
.LBB1_27:                               # %invoke.cont73
	leaq	-968(%rbp), %rax
.Ltmp70:
	leaq	-392(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, -1936(%rbp)       # 8-byte Spill
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp71:
	jmp	.LBB1_28
.LBB1_28:                               # %invoke.cont76
	leaq	-936(%rbp), %rax
.Ltmp72:
	leaq	-424(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, -1944(%rbp)       # 8-byte Spill
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp73:
	jmp	.LBB1_29
.LBB1_29:                               # %invoke.cont78
	leaq	-904(%rbp), %rdi
.Ltmp75:
	leaq	-664(%rbp), %rsi
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp76:
	jmp	.LBB1_30
.LBB1_30:                               # %invoke.cont80
.Ltmp78:
	movl	$100, %edi
	leaq	-968(%rbp), %rsi
	callq	_Z7time_fnIZ4mainE3$_2JEEviT_DpT0_
.Ltmp79:
	jmp	.LBB1_31
.LBB1_31:                               # %invoke.cont84
	leaq	-968(%rbp), %rdi
	callq	_ZZ4mainEN3$_2D2Ev
.Ltmp81:
	movl	$_ZSt4cout, %eax
	movl	%eax, %edi
	movl	$.L.str.2, %eax
	movl	%eax, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp82:
	movq	%rax, -1952(%rbp)       # 8-byte Spill
	jmp	.LBB1_32
.LBB1_32:                               # %invoke.cont86
.Ltmp83:
	leaq	-664(%rbp), %rdi
	leaq	-456(%rbp), %rsi
	callq	_ZNK5TSpanILi2EfEeqERKS0_
.Ltmp84:
	movb	%al, -1953(%rbp)        # 1-byte Spill
	jmp	.LBB1_33
.LBB1_33:                               # %invoke.cont88
.Ltmp85:
	movb	-1953(%rbp), %al        # 1-byte Reload
	movzbl	%al, %ecx
	andl	$1, %ecx
	movq	-1952(%rbp), %rdi       # 8-byte Reload
	movl	%ecx, %esi
	callq	_ZNSolsEb
.Ltmp86:
	movq	%rax, -1968(%rbp)       # 8-byte Spill
	jmp	.LBB1_34
.LBB1_34:                               # %invoke.cont90
.Ltmp87:
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %eax
	movl	%eax, %esi
	movq	-1968(%rbp), %rdi       # 8-byte Reload
	callq	_ZNSolsEPFRSoS_E
.Ltmp88:
	movq	%rax, -1976(%rbp)       # 8-byte Spill
	jmp	.LBB1_35
.LBB1_35:                               # %invoke.cont92
.Ltmp89:
	leaq	-1048(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZN6TensorIfEC2ERKSt6vectorIiSaIiEE
.Ltmp90:
	jmp	.LBB1_36
.LBB1_36:                               # %invoke.cont95
	leaq	-632(%rbp), %rax
	leaq	-1048(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, -1984(%rbp)       # 8-byte Spill
	movq	%rcx, -1992(%rbp)       # 8-byte Spill
	callq	_ZN6TensorIfEaSEOS0_
	movq	-1992(%rbp), %rdi       # 8-byte Reload
	movq	%rax, -2000(%rbp)       # 8-byte Spill
	callq	_ZN6TensorIfED2Ev
.Ltmp91:
	leaq	-1080(%rbp), %rdi
	movq	-1984(%rbp), %rsi       # 8-byte Reload
	callq	_ZN6TensorIfE8as_tspanILi2EEE5TSpanIXT_EfEv
.Ltmp92:
	jmp	.LBB1_37
.LBB1_37:                               # %invoke.cont98
.Ltmp93:
	leaq	-664(%rbp), %rdi
	leaq	-1080(%rbp), %rsi
	callq	_ZN5TSpanILi2EfEaSEOS0_
.Ltmp94:
	movq	%rax, -2008(%rbp)       # 8-byte Spill
	jmp	.LBB1_38
.LBB1_38:                               # %invoke.cont100
	leaq	-1080(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.Ltmp96:
	movl	$_ZSt4cout, %eax
	movl	%eax, %edi
	movl	$.L.str.4, %eax
	movl	%eax, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp97:
	movq	%rax, -2016(%rbp)       # 8-byte Spill
	jmp	.LBB1_39
.LBB1_39:                               # %invoke.cont103
	leaq	-1176(%rbp), %rax
.Ltmp98:
	leaq	-392(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, -2024(%rbp)       # 8-byte Spill
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp99:
	jmp	.LBB1_40
.LBB1_40:                               # %invoke.cont106
	leaq	-1144(%rbp), %rax
.Ltmp100:
	leaq	-424(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, -2032(%rbp)       # 8-byte Spill
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp101:
	jmp	.LBB1_41
.LBB1_41:                               # %invoke.cont108
	leaq	-1112(%rbp), %rdi
.Ltmp103:
	leaq	-664(%rbp), %rsi
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp104:
	jmp	.LBB1_42
.LBB1_42:                               # %invoke.cont110
.Ltmp106:
	movl	$100, %edi
	leaq	-1176(%rbp), %rsi
	callq	_Z7time_fnIZ4mainE3$_3JEEviT_DpT0_
.Ltmp107:
	jmp	.LBB1_43
.LBB1_43:                               # %invoke.cont114
	leaq	-1176(%rbp), %rdi
	callq	_ZZ4mainEN3$_3D2Ev
.Ltmp109:
	movl	$_ZSt4cout, %eax
	movl	%eax, %edi
	movl	$.L.str.2, %eax
	movl	%eax, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp110:
	movq	%rax, -2040(%rbp)       # 8-byte Spill
	jmp	.LBB1_44
.LBB1_44:                               # %invoke.cont116
.Ltmp111:
	leaq	-664(%rbp), %rdi
	leaq	-456(%rbp), %rsi
	callq	_ZNK5TSpanILi2EfEeqERKS0_
.Ltmp112:
	movb	%al, -2041(%rbp)        # 1-byte Spill
	jmp	.LBB1_45
.LBB1_45:                               # %invoke.cont118
.Ltmp113:
	movb	-2041(%rbp), %al        # 1-byte Reload
	movzbl	%al, %ecx
	andl	$1, %ecx
	movq	-2040(%rbp), %rdi       # 8-byte Reload
	movl	%ecx, %esi
	callq	_ZNSolsEb
.Ltmp114:
	movq	%rax, -2056(%rbp)       # 8-byte Spill
	jmp	.LBB1_46
.LBB1_46:                               # %invoke.cont120
.Ltmp115:
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %eax
	movl	%eax, %esi
	movq	-2056(%rbp), %rdi       # 8-byte Reload
	callq	_ZNSolsEPFRSoS_E
.Ltmp116:
	movq	%rax, -2064(%rbp)       # 8-byte Spill
	jmp	.LBB1_47
.LBB1_47:                               # %invoke.cont122
.Ltmp117:
	leaq	-1256(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZN6TensorIfEC2ERKSt6vectorIiSaIiEE
.Ltmp118:
	jmp	.LBB1_48
.LBB1_48:                               # %invoke.cont125
	leaq	-632(%rbp), %rax
	leaq	-1256(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, -2072(%rbp)       # 8-byte Spill
	movq	%rcx, -2080(%rbp)       # 8-byte Spill
	callq	_ZN6TensorIfEaSEOS0_
	movq	-2080(%rbp), %rdi       # 8-byte Reload
	movq	%rax, -2088(%rbp)       # 8-byte Spill
	callq	_ZN6TensorIfED2Ev
.Ltmp119:
	leaq	-1288(%rbp), %rdi
	movq	-2072(%rbp), %rsi       # 8-byte Reload
	callq	_ZN6TensorIfE8as_tspanILi2EEE5TSpanIXT_EfEv
.Ltmp120:
	jmp	.LBB1_49
.LBB1_49:                               # %invoke.cont128
.Ltmp121:
	leaq	-664(%rbp), %rdi
	leaq	-1288(%rbp), %rsi
	callq	_ZN5TSpanILi2EfEaSEOS0_
.Ltmp122:
	movq	%rax, -2096(%rbp)       # 8-byte Spill
	jmp	.LBB1_50
.LBB1_50:                               # %invoke.cont130
	leaq	-1288(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.Ltmp124:
	movl	$_ZSt4cout, %eax
	movl	%eax, %edi
	movl	$.L.str.5, %eax
	movl	%eax, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp125:
	movq	%rax, -2104(%rbp)       # 8-byte Spill
	jmp	.LBB1_51
.LBB1_51:                               # %invoke.cont133
	leaq	-1384(%rbp), %rax
.Ltmp126:
	leaq	-392(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, -2112(%rbp)       # 8-byte Spill
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp127:
	jmp	.LBB1_52
.LBB1_52:                               # %invoke.cont136
	leaq	-1352(%rbp), %rax
.Ltmp128:
	leaq	-424(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, -2120(%rbp)       # 8-byte Spill
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp129:
	jmp	.LBB1_53
.LBB1_53:                               # %invoke.cont138
	leaq	-1320(%rbp), %rdi
.Ltmp131:
	leaq	-664(%rbp), %rsi
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp132:
	jmp	.LBB1_54
.LBB1_54:                               # %invoke.cont140
.Ltmp134:
	movl	$100, %edi
	leaq	-1384(%rbp), %rsi
	callq	_Z7time_fnIZ4mainE3$_4JEEviT_DpT0_
.Ltmp135:
	jmp	.LBB1_55
.LBB1_55:                               # %invoke.cont144
	leaq	-1384(%rbp), %rdi
	callq	_ZZ4mainEN3$_4D2Ev
.Ltmp137:
	movl	$_ZSt4cout, %eax
	movl	%eax, %edi
	movl	$.L.str.2, %eax
	movl	%eax, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp138:
	movq	%rax, -2128(%rbp)       # 8-byte Spill
	jmp	.LBB1_56
.LBB1_56:                               # %invoke.cont146
.Ltmp139:
	leaq	-664(%rbp), %rdi
	leaq	-456(%rbp), %rsi
	callq	_ZNK5TSpanILi2EfEeqERKS0_
.Ltmp140:
	movb	%al, -2129(%rbp)        # 1-byte Spill
	jmp	.LBB1_57
.LBB1_57:                               # %invoke.cont148
.Ltmp141:
	movb	-2129(%rbp), %al        # 1-byte Reload
	movzbl	%al, %ecx
	andl	$1, %ecx
	movq	-2128(%rbp), %rdi       # 8-byte Reload
	movl	%ecx, %esi
	callq	_ZNSolsEb
.Ltmp142:
	movq	%rax, -2144(%rbp)       # 8-byte Spill
	jmp	.LBB1_58
.LBB1_58:                               # %invoke.cont150
.Ltmp143:
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %eax
	movl	%eax, %esi
	movq	-2144(%rbp), %rdi       # 8-byte Reload
	callq	_ZNSolsEPFRSoS_E
.Ltmp144:
	movq	%rax, -2152(%rbp)       # 8-byte Spill
	jmp	.LBB1_59
.LBB1_59:                               # %invoke.cont152
.Ltmp145:
	leaq	-1464(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZN6TensorIfEC2ERKSt6vectorIiSaIiEE
.Ltmp146:
	jmp	.LBB1_60
.LBB1_60:                               # %invoke.cont155
	leaq	-632(%rbp), %rax
	leaq	-1464(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, -2160(%rbp)       # 8-byte Spill
	movq	%rcx, -2168(%rbp)       # 8-byte Spill
	callq	_ZN6TensorIfEaSEOS0_
	movq	-2168(%rbp), %rdi       # 8-byte Reload
	movq	%rax, -2176(%rbp)       # 8-byte Spill
	callq	_ZN6TensorIfED2Ev
.Ltmp147:
	leaq	-1496(%rbp), %rdi
	movq	-2160(%rbp), %rsi       # 8-byte Reload
	callq	_ZN6TensorIfE8as_tspanILi2EEE5TSpanIXT_EfEv
.Ltmp148:
	jmp	.LBB1_61
.LBB1_61:                               # %invoke.cont158
.Ltmp149:
	leaq	-664(%rbp), %rdi
	leaq	-1496(%rbp), %rsi
	callq	_ZN5TSpanILi2EfEaSEOS0_
.Ltmp150:
	movq	%rax, -2184(%rbp)       # 8-byte Spill
	jmp	.LBB1_62
.LBB1_62:                               # %invoke.cont160
	leaq	-1496(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.Ltmp152:
	movl	$_ZSt4cout, %eax
	movl	%eax, %edi
	movl	$.L.str.6, %eax
	movl	%eax, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp153:
	movq	%rax, -2192(%rbp)       # 8-byte Spill
	jmp	.LBB1_63
.LBB1_63:                               # %invoke.cont163
	leaq	-1592(%rbp), %rax
.Ltmp154:
	leaq	-392(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, -2200(%rbp)       # 8-byte Spill
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp155:
	jmp	.LBB1_64
.LBB1_64:                               # %invoke.cont166
	leaq	-1560(%rbp), %rax
.Ltmp156:
	leaq	-424(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, -2208(%rbp)       # 8-byte Spill
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp157:
	jmp	.LBB1_65
.LBB1_65:                               # %invoke.cont168
	leaq	-1528(%rbp), %rdi
.Ltmp159:
	leaq	-664(%rbp), %rsi
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp160:
	jmp	.LBB1_66
.LBB1_66:                               # %invoke.cont170
.Ltmp162:
	movl	$100, %edi
	leaq	-1592(%rbp), %rsi
	callq	_Z7time_fnIZ4mainE3$_5JEEviT_DpT0_
.Ltmp163:
	jmp	.LBB1_67
.LBB1_67:                               # %invoke.cont174
	leaq	-1592(%rbp), %rdi
	callq	_ZZ4mainEN3$_5D2Ev
.Ltmp165:
	movl	$_ZSt4cout, %eax
	movl	%eax, %edi
	movl	$.L.str.2, %eax
	movl	%eax, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp166:
	movq	%rax, -2216(%rbp)       # 8-byte Spill
	jmp	.LBB1_68
.LBB1_68:                               # %invoke.cont176
.Ltmp167:
	leaq	-664(%rbp), %rdi
	leaq	-456(%rbp), %rsi
	callq	_ZNK5TSpanILi2EfEeqERKS0_
.Ltmp168:
	movb	%al, -2217(%rbp)        # 1-byte Spill
	jmp	.LBB1_69
.LBB1_69:                               # %invoke.cont178
.Ltmp169:
	movb	-2217(%rbp), %al        # 1-byte Reload
	movzbl	%al, %ecx
	andl	$1, %ecx
	movq	-2216(%rbp), %rdi       # 8-byte Reload
	movl	%ecx, %esi
	callq	_ZNSolsEb
.Ltmp170:
	movq	%rax, -2232(%rbp)       # 8-byte Spill
	jmp	.LBB1_70
.LBB1_70:                               # %invoke.cont180
.Ltmp171:
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %eax
	movl	%eax, %esi
	movq	-2232(%rbp), %rdi       # 8-byte Reload
	callq	_ZNSolsEPFRSoS_E
.Ltmp172:
	movq	%rax, -2240(%rbp)       # 8-byte Spill
	jmp	.LBB1_71
.LBB1_71:                               # %invoke.cont182
.Ltmp173:
	leaq	-1672(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZN6TensorIfEC2ERKSt6vectorIiSaIiEE
.Ltmp174:
	jmp	.LBB1_72
.LBB1_72:                               # %invoke.cont185
	leaq	-632(%rbp), %rax
	leaq	-1672(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, -2248(%rbp)       # 8-byte Spill
	movq	%rcx, -2256(%rbp)       # 8-byte Spill
	callq	_ZN6TensorIfEaSEOS0_
	movq	-2256(%rbp), %rdi       # 8-byte Reload
	movq	%rax, -2264(%rbp)       # 8-byte Spill
	callq	_ZN6TensorIfED2Ev
.Ltmp175:
	leaq	-1704(%rbp), %rdi
	movq	-2248(%rbp), %rsi       # 8-byte Reload
	callq	_ZN6TensorIfE8as_tspanILi2EEE5TSpanIXT_EfEv
.Ltmp176:
	jmp	.LBB1_73
.LBB1_73:                               # %invoke.cont188
.Ltmp177:
	leaq	-664(%rbp), %rdi
	leaq	-1704(%rbp), %rsi
	callq	_ZN5TSpanILi2EfEaSEOS0_
.Ltmp178:
	movq	%rax, -2272(%rbp)       # 8-byte Spill
	jmp	.LBB1_74
.LBB1_74:                               # %invoke.cont190
	leaq	-1704(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.Ltmp180:
	movl	$_ZSt4cout, %eax
	movl	%eax, %edi
	movl	$.L.str.7, %eax
	movl	%eax, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp181:
	movq	%rax, -2280(%rbp)       # 8-byte Spill
	jmp	.LBB1_75
.LBB1_75:                               # %invoke.cont193
	leaq	-1800(%rbp), %rax
.Ltmp182:
	leaq	-392(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, -2288(%rbp)       # 8-byte Spill
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp183:
	jmp	.LBB1_76
.LBB1_76:                               # %invoke.cont196
	leaq	-1768(%rbp), %rax
.Ltmp184:
	leaq	-424(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, -2296(%rbp)       # 8-byte Spill
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp185:
	jmp	.LBB1_77
.LBB1_77:                               # %invoke.cont198
	leaq	-1736(%rbp), %rdi
.Ltmp187:
	leaq	-664(%rbp), %rsi
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp188:
	jmp	.LBB1_78
.LBB1_78:                               # %invoke.cont200
.Ltmp190:
	movl	$100, %edi
	leaq	-1800(%rbp), %rsi
	callq	_Z7time_fnIZ4mainE3$_6JEEviT_DpT0_
.Ltmp191:
	jmp	.LBB1_79
.LBB1_79:                               # %invoke.cont204
	leaq	-1800(%rbp), %rdi
	callq	_ZZ4mainEN3$_6D2Ev
.Ltmp193:
	movl	$_ZSt4cout, %eax
	movl	%eax, %edi
	movl	$.L.str.2, %eax
	movl	%eax, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp194:
	movq	%rax, -2304(%rbp)       # 8-byte Spill
	jmp	.LBB1_80
.LBB1_80:                               # %invoke.cont206
.Ltmp195:
	leaq	-664(%rbp), %rdi
	leaq	-456(%rbp), %rsi
	callq	_ZNK5TSpanILi2EfEeqERKS0_
.Ltmp196:
	movb	%al, -2305(%rbp)        # 1-byte Spill
	jmp	.LBB1_81
.LBB1_81:                               # %invoke.cont208
.Ltmp197:
	movb	-2305(%rbp), %al        # 1-byte Reload
	movzbl	%al, %ecx
	andl	$1, %ecx
	movq	-2304(%rbp), %rdi       # 8-byte Reload
	movl	%ecx, %esi
	callq	_ZNSolsEb
.Ltmp198:
	movq	%rax, -2320(%rbp)       # 8-byte Spill
	jmp	.LBB1_82
.LBB1_82:                               # %invoke.cont210
.Ltmp199:
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %eax
	movl	%eax, %esi
	movq	-2320(%rbp), %rdi       # 8-byte Reload
	callq	_ZNSolsEPFRSoS_E
.Ltmp200:
	movq	%rax, -2328(%rbp)       # 8-byte Spill
	jmp	.LBB1_83
.LBB1_83:                               # %invoke.cont212
	leaq	-664(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-632(%rbp), %rdi
	callq	_ZN6TensorIfED2Ev
	leaq	-456(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-424(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-392(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-360(%rbp), %rdi
	callq	_ZN6TensorIfED2Ev
	leaq	-256(%rbp), %rdi
	callq	_ZN6TensorIfED2Ev
	leaq	-152(%rbp), %rdi
	callq	_ZN6TensorIfED2Ev
	leaq	-24(%rbp), %rdi
	callq	_ZNSt6vectorIiSaIiEED2Ev
	xorl	%eax, %eax
	addq	$2336, %rsp             # imm = 0x920
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_84:                               # %lpad
	.cfi_def_cfa %rbp, 16
.Ltmp2:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	leaq	-56(%rbp), %rdi
	callq	_ZNSaIiED2Ev
	jmp	.LBB1_136
.LBB1_85:                               # %lpad9
.Ltmp5:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	jmp	.LBB1_135
.LBB1_86:                               # %lpad18
.Ltmp8:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	jmp	.LBB1_134
.LBB1_87:                               # %lpad20
.Ltmp11:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	jmp	.LBB1_133
.LBB1_88:                               # %lpad22
.Ltmp14:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	jmp	.LBB1_132
.LBB1_89:                               # %lpad24
.Ltmp17:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	jmp	.LBB1_131
.LBB1_90:                               # %lpad26
.Ltmp20:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	jmp	.LBB1_130
.LBB1_91:                               # %lpad28
.Ltmp36:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	jmp	.LBB1_129
.LBB1_92:                               # %lpad32
.Ltmp27:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	jmp	.LBB1_94
.LBB1_93:                               # %lpad34
.Ltmp30:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movq	-1832(%rbp), %rdi       # 8-byte Reload
	callq	_ZN5TSpanILi2EfED2Ev
.LBB1_94:                               # %ehcleanup
	movq	-1824(%rbp), %rdi       # 8-byte Reload
	callq	_ZN5TSpanILi2EfED2Ev
	jmp	.LBB1_129
.LBB1_95:                               # %lpad36
.Ltmp33:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	leaq	-552(%rbp), %rdi
	callq	_ZZ4mainEN3$_0D2Ev
	jmp	.LBB1_129
.LBB1_96:                               # %lpad40
.Ltmp39:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	jmp	.LBB1_128
.LBB1_97:                               # %lpad42
.Ltmp201:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	jmp	.LBB1_127
.LBB1_98:                               # %lpad47
.Ltmp46:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	jmp	.LBB1_100
.LBB1_99:                               # %lpad49
.Ltmp49:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movq	-1856(%rbp), %rdi       # 8-byte Reload
	callq	_ZN5TSpanILi2EfED2Ev
.LBB1_100:                              # %ehcleanup52
	movq	-1848(%rbp), %rdi       # 8-byte Reload
	callq	_ZN5TSpanILi2EfED2Ev
	jmp	.LBB1_127
.LBB1_101:                              # %lpad53
.Ltmp52:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	leaq	-760(%rbp), %rdi
	callq	_ZZ4mainEN3$_1D2Ev
	jmp	.LBB1_127
.LBB1_102:                              # %lpad69
.Ltmp67:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	leaq	-872(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	jmp	.LBB1_127
.LBB1_103:                              # %lpad77
.Ltmp74:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	jmp	.LBB1_105
.LBB1_104:                              # %lpad79
.Ltmp77:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movq	-1944(%rbp), %rdi       # 8-byte Reload
	callq	_ZN5TSpanILi2EfED2Ev
.LBB1_105:                              # %ehcleanup82
	movq	-1936(%rbp), %rdi       # 8-byte Reload
	callq	_ZN5TSpanILi2EfED2Ev
	jmp	.LBB1_127
.LBB1_106:                              # %lpad83
.Ltmp80:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	leaq	-968(%rbp), %rdi
	callq	_ZZ4mainEN3$_2D2Ev
	jmp	.LBB1_127
.LBB1_107:                              # %lpad99
.Ltmp95:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	leaq	-1080(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	jmp	.LBB1_127
.LBB1_108:                              # %lpad107
.Ltmp102:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	jmp	.LBB1_110
.LBB1_109:                              # %lpad109
.Ltmp105:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movq	-2032(%rbp), %rdi       # 8-byte Reload
	callq	_ZN5TSpanILi2EfED2Ev
.LBB1_110:                              # %ehcleanup112
	movq	-2024(%rbp), %rdi       # 8-byte Reload
	callq	_ZN5TSpanILi2EfED2Ev
	jmp	.LBB1_127
.LBB1_111:                              # %lpad113
.Ltmp108:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	leaq	-1176(%rbp), %rdi
	callq	_ZZ4mainEN3$_3D2Ev
	jmp	.LBB1_127
.LBB1_112:                              # %lpad129
.Ltmp123:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	leaq	-1288(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	jmp	.LBB1_127
.LBB1_113:                              # %lpad137
.Ltmp130:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	jmp	.LBB1_115
.LBB1_114:                              # %lpad139
.Ltmp133:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movq	-2120(%rbp), %rdi       # 8-byte Reload
	callq	_ZN5TSpanILi2EfED2Ev
.LBB1_115:                              # %ehcleanup142
	movq	-2112(%rbp), %rdi       # 8-byte Reload
	callq	_ZN5TSpanILi2EfED2Ev
	jmp	.LBB1_127
.LBB1_116:                              # %lpad143
.Ltmp136:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	leaq	-1384(%rbp), %rdi
	callq	_ZZ4mainEN3$_4D2Ev
	jmp	.LBB1_127
.LBB1_117:                              # %lpad159
.Ltmp151:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	leaq	-1496(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	jmp	.LBB1_127
.LBB1_118:                              # %lpad167
.Ltmp158:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	jmp	.LBB1_120
.LBB1_119:                              # %lpad169
.Ltmp161:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movq	-2208(%rbp), %rdi       # 8-byte Reload
	callq	_ZN5TSpanILi2EfED2Ev
.LBB1_120:                              # %ehcleanup172
	movq	-2200(%rbp), %rdi       # 8-byte Reload
	callq	_ZN5TSpanILi2EfED2Ev
	jmp	.LBB1_127
.LBB1_121:                              # %lpad173
.Ltmp164:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	leaq	-1592(%rbp), %rdi
	callq	_ZZ4mainEN3$_5D2Ev
	jmp	.LBB1_127
.LBB1_122:                              # %lpad189
.Ltmp179:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	leaq	-1704(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	jmp	.LBB1_127
.LBB1_123:                              # %lpad197
.Ltmp186:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	jmp	.LBB1_125
.LBB1_124:                              # %lpad199
.Ltmp189:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movq	-2296(%rbp), %rdi       # 8-byte Reload
	callq	_ZN5TSpanILi2EfED2Ev
.LBB1_125:                              # %ehcleanup202
	movq	-2288(%rbp), %rdi       # 8-byte Reload
	callq	_ZN5TSpanILi2EfED2Ev
	jmp	.LBB1_127
.LBB1_126:                              # %lpad203
.Ltmp192:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	leaq	-1800(%rbp), %rdi
	callq	_ZZ4mainEN3$_6D2Ev
.LBB1_127:                              # %ehcleanup214
	leaq	-664(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB1_128:                              # %ehcleanup215
	leaq	-632(%rbp), %rdi
	callq	_ZN6TensorIfED2Ev
.LBB1_129:                              # %ehcleanup216
	leaq	-456(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB1_130:                              # %ehcleanup217
	leaq	-424(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB1_131:                              # %ehcleanup218
	leaq	-392(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB1_132:                              # %ehcleanup219
	leaq	-360(%rbp), %rdi
	callq	_ZN6TensorIfED2Ev
.LBB1_133:                              # %ehcleanup220
	leaq	-256(%rbp), %rdi
	callq	_ZN6TensorIfED2Ev
.LBB1_134:                              # %ehcleanup221
	leaq	-152(%rbp), %rdi
	callq	_ZN6TensorIfED2Ev
.LBB1_135:                              # %ehcleanup222
	leaq	-24(%rbp), %rdi
	callq	_ZNSt6vectorIiSaIiEED2Ev
.LBB1_136:                              # %eh.resume
	movq	-64(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table1:
.Lexception0:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0   # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0          #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0   #     jumps to .Ltmp2
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0   # >> Call Site 2 <<
	.uleb128 .Ltmp4-.Ltmp3          #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0   #     jumps to .Ltmp5
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0   # >> Call Site 3 <<
	.uleb128 .Ltmp7-.Ltmp6          #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0   #     jumps to .Ltmp8
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0   # >> Call Site 4 <<
	.uleb128 .Ltmp10-.Ltmp9         #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0  #     jumps to .Ltmp11
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0  # >> Call Site 5 <<
	.uleb128 .Ltmp13-.Ltmp12        #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0  #     jumps to .Ltmp14
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0  # >> Call Site 6 <<
	.uleb128 .Ltmp16-.Ltmp15        #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0  #     jumps to .Ltmp17
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0  # >> Call Site 7 <<
	.uleb128 .Ltmp19-.Ltmp18        #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0  #     jumps to .Ltmp20
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0  # >> Call Site 8 <<
	.uleb128 .Ltmp24-.Ltmp21        #   Call between .Ltmp21 and .Ltmp24
	.uleb128 .Ltmp36-.Lfunc_begin0  #     jumps to .Ltmp36
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin0  # >> Call Site 9 <<
	.uleb128 .Ltmp26-.Ltmp25        #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin0  #     jumps to .Ltmp27
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin0  # >> Call Site 10 <<
	.uleb128 .Ltmp29-.Ltmp28        #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin0  #     jumps to .Ltmp30
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin0  # >> Call Site 11 <<
	.uleb128 .Ltmp32-.Ltmp31        #   Call between .Ltmp31 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin0  #     jumps to .Ltmp33
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin0  # >> Call Site 12 <<
	.uleb128 .Ltmp35-.Ltmp34        #   Call between .Ltmp34 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin0  #     jumps to .Ltmp36
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin0  # >> Call Site 13 <<
	.uleb128 .Ltmp38-.Ltmp37        #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin0  #     jumps to .Ltmp39
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin0  # >> Call Site 14 <<
	.uleb128 .Ltmp43-.Ltmp40        #   Call between .Ltmp40 and .Ltmp43
	.uleb128 .Ltmp201-.Lfunc_begin0 #     jumps to .Ltmp201
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin0  # >> Call Site 15 <<
	.uleb128 .Ltmp45-.Ltmp44        #   Call between .Ltmp44 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin0  #     jumps to .Ltmp46
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin0  # >> Call Site 16 <<
	.uleb128 .Ltmp48-.Ltmp47        #   Call between .Ltmp47 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin0  #     jumps to .Ltmp49
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin0  # >> Call Site 17 <<
	.uleb128 .Ltmp51-.Ltmp50        #   Call between .Ltmp50 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin0  #     jumps to .Ltmp52
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin0  # >> Call Site 18 <<
	.uleb128 .Ltmp64-.Ltmp53        #   Call between .Ltmp53 and .Ltmp64
	.uleb128 .Ltmp201-.Lfunc_begin0 #     jumps to .Ltmp201
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin0  # >> Call Site 19 <<
	.uleb128 .Ltmp66-.Ltmp65        #   Call between .Ltmp65 and .Ltmp66
	.uleb128 .Ltmp67-.Lfunc_begin0  #     jumps to .Ltmp67
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin0  # >> Call Site 20 <<
	.uleb128 .Ltmp71-.Ltmp68        #   Call between .Ltmp68 and .Ltmp71
	.uleb128 .Ltmp201-.Lfunc_begin0 #     jumps to .Ltmp201
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin0  # >> Call Site 21 <<
	.uleb128 .Ltmp73-.Ltmp72        #   Call between .Ltmp72 and .Ltmp73
	.uleb128 .Ltmp74-.Lfunc_begin0  #     jumps to .Ltmp74
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin0  # >> Call Site 22 <<
	.uleb128 .Ltmp76-.Ltmp75        #   Call between .Ltmp75 and .Ltmp76
	.uleb128 .Ltmp77-.Lfunc_begin0  #     jumps to .Ltmp77
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin0  # >> Call Site 23 <<
	.uleb128 .Ltmp79-.Ltmp78        #   Call between .Ltmp78 and .Ltmp79
	.uleb128 .Ltmp80-.Lfunc_begin0  #     jumps to .Ltmp80
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin0  # >> Call Site 24 <<
	.uleb128 .Ltmp92-.Ltmp81        #   Call between .Ltmp81 and .Ltmp92
	.uleb128 .Ltmp201-.Lfunc_begin0 #     jumps to .Ltmp201
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin0  # >> Call Site 25 <<
	.uleb128 .Ltmp94-.Ltmp93        #   Call between .Ltmp93 and .Ltmp94
	.uleb128 .Ltmp95-.Lfunc_begin0  #     jumps to .Ltmp95
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin0  # >> Call Site 26 <<
	.uleb128 .Ltmp99-.Ltmp96        #   Call between .Ltmp96 and .Ltmp99
	.uleb128 .Ltmp201-.Lfunc_begin0 #     jumps to .Ltmp201
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin0 # >> Call Site 27 <<
	.uleb128 .Ltmp101-.Ltmp100      #   Call between .Ltmp100 and .Ltmp101
	.uleb128 .Ltmp102-.Lfunc_begin0 #     jumps to .Ltmp102
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin0 # >> Call Site 28 <<
	.uleb128 .Ltmp104-.Ltmp103      #   Call between .Ltmp103 and .Ltmp104
	.uleb128 .Ltmp105-.Lfunc_begin0 #     jumps to .Ltmp105
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin0 # >> Call Site 29 <<
	.uleb128 .Ltmp107-.Ltmp106      #   Call between .Ltmp106 and .Ltmp107
	.uleb128 .Ltmp108-.Lfunc_begin0 #     jumps to .Ltmp108
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin0 # >> Call Site 30 <<
	.uleb128 .Ltmp120-.Ltmp109      #   Call between .Ltmp109 and .Ltmp120
	.uleb128 .Ltmp201-.Lfunc_begin0 #     jumps to .Ltmp201
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp121-.Lfunc_begin0 # >> Call Site 31 <<
	.uleb128 .Ltmp122-.Ltmp121      #   Call between .Ltmp121 and .Ltmp122
	.uleb128 .Ltmp123-.Lfunc_begin0 #     jumps to .Ltmp123
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin0 # >> Call Site 32 <<
	.uleb128 .Ltmp127-.Ltmp124      #   Call between .Ltmp124 and .Ltmp127
	.uleb128 .Ltmp201-.Lfunc_begin0 #     jumps to .Ltmp201
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp128-.Lfunc_begin0 # >> Call Site 33 <<
	.uleb128 .Ltmp129-.Ltmp128      #   Call between .Ltmp128 and .Ltmp129
	.uleb128 .Ltmp130-.Lfunc_begin0 #     jumps to .Ltmp130
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp131-.Lfunc_begin0 # >> Call Site 34 <<
	.uleb128 .Ltmp132-.Ltmp131      #   Call between .Ltmp131 and .Ltmp132
	.uleb128 .Ltmp133-.Lfunc_begin0 #     jumps to .Ltmp133
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp134-.Lfunc_begin0 # >> Call Site 35 <<
	.uleb128 .Ltmp135-.Ltmp134      #   Call between .Ltmp134 and .Ltmp135
	.uleb128 .Ltmp136-.Lfunc_begin0 #     jumps to .Ltmp136
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp137-.Lfunc_begin0 # >> Call Site 36 <<
	.uleb128 .Ltmp148-.Ltmp137      #   Call between .Ltmp137 and .Ltmp148
	.uleb128 .Ltmp201-.Lfunc_begin0 #     jumps to .Ltmp201
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp149-.Lfunc_begin0 # >> Call Site 37 <<
	.uleb128 .Ltmp150-.Ltmp149      #   Call between .Ltmp149 and .Ltmp150
	.uleb128 .Ltmp151-.Lfunc_begin0 #     jumps to .Ltmp151
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp152-.Lfunc_begin0 # >> Call Site 38 <<
	.uleb128 .Ltmp155-.Ltmp152      #   Call between .Ltmp152 and .Ltmp155
	.uleb128 .Ltmp201-.Lfunc_begin0 #     jumps to .Ltmp201
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp156-.Lfunc_begin0 # >> Call Site 39 <<
	.uleb128 .Ltmp157-.Ltmp156      #   Call between .Ltmp156 and .Ltmp157
	.uleb128 .Ltmp158-.Lfunc_begin0 #     jumps to .Ltmp158
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp159-.Lfunc_begin0 # >> Call Site 40 <<
	.uleb128 .Ltmp160-.Ltmp159      #   Call between .Ltmp159 and .Ltmp160
	.uleb128 .Ltmp161-.Lfunc_begin0 #     jumps to .Ltmp161
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp162-.Lfunc_begin0 # >> Call Site 41 <<
	.uleb128 .Ltmp163-.Ltmp162      #   Call between .Ltmp162 and .Ltmp163
	.uleb128 .Ltmp164-.Lfunc_begin0 #     jumps to .Ltmp164
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp165-.Lfunc_begin0 # >> Call Site 42 <<
	.uleb128 .Ltmp176-.Ltmp165      #   Call between .Ltmp165 and .Ltmp176
	.uleb128 .Ltmp201-.Lfunc_begin0 #     jumps to .Ltmp201
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp177-.Lfunc_begin0 # >> Call Site 43 <<
	.uleb128 .Ltmp178-.Ltmp177      #   Call between .Ltmp177 and .Ltmp178
	.uleb128 .Ltmp179-.Lfunc_begin0 #     jumps to .Ltmp179
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp180-.Lfunc_begin0 # >> Call Site 44 <<
	.uleb128 .Ltmp183-.Ltmp180      #   Call between .Ltmp180 and .Ltmp183
	.uleb128 .Ltmp201-.Lfunc_begin0 #     jumps to .Ltmp201
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp184-.Lfunc_begin0 # >> Call Site 45 <<
	.uleb128 .Ltmp185-.Ltmp184      #   Call between .Ltmp184 and .Ltmp185
	.uleb128 .Ltmp186-.Lfunc_begin0 #     jumps to .Ltmp186
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp187-.Lfunc_begin0 # >> Call Site 46 <<
	.uleb128 .Ltmp188-.Ltmp187      #   Call between .Ltmp187 and .Ltmp188
	.uleb128 .Ltmp189-.Lfunc_begin0 #     jumps to .Ltmp189
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp190-.Lfunc_begin0 # >> Call Site 47 <<
	.uleb128 .Ltmp191-.Ltmp190      #   Call between .Ltmp190 and .Ltmp191
	.uleb128 .Ltmp192-.Lfunc_begin0 #     jumps to .Ltmp192
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp193-.Lfunc_begin0 # >> Call Site 48 <<
	.uleb128 .Ltmp200-.Ltmp193      #   Call between .Ltmp193 and .Ltmp200
	.uleb128 .Ltmp201-.Lfunc_begin0 #     jumps to .Ltmp201
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp200-.Lfunc_begin0 # >> Call Site 49 <<
	.uleb128 .Lfunc_end1-.Ltmp200   #   Call between .Ltmp200 and .Lfunc_end1
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end0:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSaIiEC2Ev,"axG",@progbits,_ZNSaIiEC2Ev,comdat
	.weak	_ZNSaIiEC2Ev            # -- Begin function _ZNSaIiEC2Ev
	.p2align	4, 0x90
	.type	_ZNSaIiEC2Ev,@function
_ZNSaIiEC2Ev:                           # @_ZNSaIiEC2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx13new_allocatorIiEC2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	_ZNSaIiEC2Ev, .Lfunc_end2-_ZNSaIiEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEEC2ESt16initializer_listIiERKS0_,"axG",@progbits,_ZNSt6vectorIiSaIiEEC2ESt16initializer_listIiERKS0_,comdat
	.weak	_ZNSt6vectorIiSaIiEEC2ESt16initializer_listIiERKS0_ # -- Begin function _ZNSt6vectorIiSaIiEEC2ESt16initializer_listIiERKS0_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIiSaIiEEC2ESt16initializer_listIiERKS0_,@function
_ZNSt6vectorIiSaIiEEC2ESt16initializer_listIiERKS0_: # @_ZNSt6vectorIiSaIiEEC2ESt16initializer_listIiERKS0_
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception1
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_
	leaq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	_ZNKSt16initializer_listIiE5beginEv
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	_ZNKSt16initializer_listIiE3endEv
.Ltmp202:
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt6vectorIiSaIiEE19_M_range_initializeIPKiEEvT_S5_St20forward_iterator_tag
.Ltmp203:
	jmp	.LBB3_1
.LBB3_1:                                # %invoke.cont
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB3_2:                                # %lpad
	.cfi_def_cfa %rbp, 16
.Ltmp204:
	movl	%edx, %ecx
	movq	%rax, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseIiSaIiEED2Ev
# %bb.3:                                # %eh.resume
	movq	-56(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end3:
	.size	_ZNSt6vectorIiSaIiEEC2ESt16initializer_listIiERKS0_, .Lfunc_end3-_ZNSt6vectorIiSaIiEEC2ESt16initializer_listIiERKS0_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table3:
.Lexception1:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp202-.Lfunc_begin1 # >> Call Site 1 <<
	.uleb128 .Ltmp203-.Ltmp202      #   Call between .Ltmp202 and .Ltmp203
	.uleb128 .Ltmp204-.Lfunc_begin1 #     jumps to .Ltmp204
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp203-.Lfunc_begin1 # >> Call Site 2 <<
	.uleb128 .Lfunc_end3-.Ltmp203   #   Call between .Ltmp203 and .Lfunc_end3
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end1:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSaIiED2Ev,"axG",@progbits,_ZNSaIiED2Ev,comdat
	.weak	_ZNSaIiED2Ev            # -- Begin function _ZNSaIiED2Ev
	.p2align	4, 0x90
	.type	_ZNSaIiED2Ev,@function
_ZNSaIiED2Ev:                           # @_ZNSaIiED2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx13new_allocatorIiED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	_ZNSaIiED2Ev, .Lfunc_end4-_ZNSaIiED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function _Z18make_random_tensorIfE6TensorIT_ESt16initializer_listIiEj
.LCPI5_0:
	.long	3212836864              # float -1
.LCPI5_1:
	.long	1065353216              # float 1
	.section	.text._Z18make_random_tensorIfE6TensorIT_ESt16initializer_listIiEj,"axG",@progbits,_Z18make_random_tensorIfE6TensorIT_ESt16initializer_listIiEj,comdat
	.weak	_Z18make_random_tensorIfE6TensorIT_ESt16initializer_listIiEj
	.p2align	4, 0x90
	.type	_Z18make_random_tensorIfE6TensorIT_ESt16initializer_listIiEj,@function
_Z18make_random_tensorIfE6TensorIT_ESt16initializer_listIiEj: # @_Z18make_random_tensorIfE6TensorIT_ESt16initializer_listIiEj
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception2
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, %rax
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movl	%ecx, -20(%rbp)
	movups	-16(%rbp), %xmm0
	movaps	%xmm0, -64(%rbp)
	leaq	-72(%rbp), %rdx
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	callq	_ZNSaIiEC2Ev
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rdx
.Ltmp205:
	leaq	-48(%rbp), %rdi
	movq	-168(%rbp), %rcx        # 8-byte Reload
	callq	_ZNSt6vectorIiSaIiEEC2ESt16initializer_listIiERKS0_
.Ltmp206:
	jmp	.LBB5_1
.LBB5_1:                                # %invoke.cont
	leaq	-72(%rbp), %rdi
	callq	_ZNSaIiED2Ev
.Ltmp208:
	leaq	-112(%rbp), %rdi
	movss	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI5_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movl	$24, %esi
	callq	_ZN15uniform_randgenIfEC2Effj
.Ltmp209:
	jmp	.LBB5_2
.LBB5_2:                                # %invoke.cont2
	movq	-96(%rbp), %rax
	movq	%rax, -128(%rbp)
	movups	-112(%rbp), %xmm0
	movaps	%xmm0, -144(%rbp)
.Ltmp210:
	movq	-128(%rbp), %rax
	movq	%rsp, %rcx
	movq	%rax, 16(%rcx)
	movaps	-144(%rbp), %xmm0
	movups	%xmm0, (%rcx)
	leaq	-48(%rbp), %rsi
	movq	-152(%rbp), %rdi        # 8-byte Reload
	callq	_ZN6TensorIfEC2I15uniform_randgenIfEEERKSt6vectorIiSaIiEET_
.Ltmp211:
	jmp	.LBB5_3
.LBB5_3:                                # %invoke.cont4
	leaq	-48(%rbp), %rdi
	callq	_ZNSt6vectorIiSaIiEED2Ev
	movq	-160(%rbp), %rax        # 8-byte Reload
	addq	$192, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_4:                                # %lpad
	.cfi_def_cfa %rbp, 16
.Ltmp207:
	movl	%edx, %ecx
	movq	%rax, -80(%rbp)
	movl	%ecx, -84(%rbp)
	leaq	-72(%rbp), %rdi
	callq	_ZNSaIiED2Ev
	jmp	.LBB5_6
.LBB5_5:                                # %lpad1
.Ltmp212:
	movl	%edx, %ecx
	movq	%rax, -80(%rbp)
	movl	%ecx, -84(%rbp)
	leaq	-48(%rbp), %rdi
	callq	_ZNSt6vectorIiSaIiEED2Ev
.LBB5_6:                                # %eh.resume
	movq	-80(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end5:
	.size	_Z18make_random_tensorIfE6TensorIT_ESt16initializer_listIiEj, .Lfunc_end5-_Z18make_random_tensorIfE6TensorIT_ESt16initializer_listIiEj
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table5:
.Lexception2:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp205-.Lfunc_begin2 # >> Call Site 1 <<
	.uleb128 .Ltmp206-.Ltmp205      #   Call between .Ltmp205 and .Ltmp206
	.uleb128 .Ltmp207-.Lfunc_begin2 #     jumps to .Ltmp207
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp208-.Lfunc_begin2 # >> Call Site 2 <<
	.uleb128 .Ltmp211-.Ltmp208      #   Call between .Ltmp208 and .Ltmp211
	.uleb128 .Ltmp212-.Lfunc_begin2 #     jumps to .Ltmp212
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp211-.Lfunc_begin2 # >> Call Site 3 <<
	.uleb128 .Lfunc_end5-.Ltmp211   #   Call between .Ltmp211 and .Lfunc_end5
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end2:
	.p2align	2
                                        # -- End function
	.section	.text._ZN6TensorIfEC2ERKSt6vectorIiSaIiEE,"axG",@progbits,_ZN6TensorIfEC2ERKSt6vectorIiSaIiEE,comdat
	.weak	_ZN6TensorIfEC2ERKSt6vectorIiSaIiEE # -- Begin function _ZN6TensorIfEC2ERKSt6vectorIiSaIiEE
	.p2align	4, 0x90
	.type	_ZN6TensorIfEC2ERKSt6vectorIiSaIiEE,@function
_ZN6TensorIfEC2ERKSt6vectorIiSaIiEE:    # @_ZN6TensorIfEC2ERKSt6vectorIiSaIiEE
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	callq	_ZNKSt6vectorIiSaIiEE4dataEv
	movq	-16(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	_ZNKSt6vectorIiSaIiEE4sizeEv
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZN6TensorIfEC2EPKim
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	_ZN6TensorIfEC2ERKSt6vectorIiSaIiEE, .Lfunc_end6-_ZN6TensorIfEC2ERKSt6vectorIiSaIiEE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6TensorIfE8as_tspanILi2EEE5TSpanIXT_EfEv,"axG",@progbits,_ZN6TensorIfE8as_tspanILi2EEE5TSpanIXT_EfEv,comdat
	.weak	_ZN6TensorIfE8as_tspanILi2EEE5TSpanIXT_EfEv # -- Begin function _ZN6TensorIfE8as_tspanILi2EEE5TSpanIXT_EfEv
	.p2align	4, 0x90
	.type	_ZN6TensorIfE8as_tspanILi2EEE5TSpanIXT_EfEv,@function
_ZN6TensorIfE8as_tspanILi2EEE5TSpanIXT_EfEv: # @_ZN6TensorIfE8as_tspanILi2EEE5TSpanIXT_EfEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, %rax
	movq	%rsi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	_ZNK6TensorIfEcv5TSpanIXT_EfEILi2EEEv
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	_ZN6TensorIfE8as_tspanILi2EEE5TSpanIXT_EfEv, .Lfunc_end7-_ZN6TensorIfE8as_tspanILi2EEE5TSpanIXT_EfEv
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function _Z7time_fnIZ4mainE3$_0JEEviT_DpT0_
	.type	_Z7time_fnIZ4mainE3$_0JEEviT_DpT0_,@function
_Z7time_fnIZ4mainE3$_0JEEviT_DpT0_:     # @"_Z7time_fnIZ4mainE3$_0JEEviT_DpT0_"
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB8_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	_ZZ4mainENK3$_0clEv
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB8_1
.LBB8_4:                                # %for.end
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -56(%rbp)
	leaq	-56(%rbp), %rdi
	callq	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rdi
	callq	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv
	movq	%rax, -40(%rbp)
	movl	-4(%rbp), %esi
	movabsq	$_ZSt4cout, %rdi
	callq	_ZNSolsEi
	movq	%rax, %rdi
	movabsq	$.L.str.11, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEl
	movq	%rax, %rdi
	movabsq	$.L.str.12, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	movabsq	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %rsi
	callq	_ZNSolsEPFRSoS_E
	movq	%rax, -72(%rbp)         # 8-byte Spill
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	_Z7time_fnIZ4mainE3$_0JEEviT_DpT0_, .Lfunc_end8-_Z7time_fnIZ4mainE3$_0JEEviT_DpT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5TSpanILi2EfEC2ERKS0_,"axG",@progbits,_ZN5TSpanILi2EfEC2ERKS0_,comdat
	.weak	_ZN5TSpanILi2EfEC2ERKS0_ # -- Begin function _ZN5TSpanILi2EfEC2ERKS0_
	.p2align	4, 0x90
	.type	_ZN5TSpanILi2EfEC2ERKS0_,@function
_ZN5TSpanILi2EfEC2ERKS0_:               # @_ZN5TSpanILi2EfEC2ERKS0_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	24(%rax), %r8
	callq	_ZN5TSpanILi2EfEC2EPKfPKiS4_P11RCTSpanData
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end9:
	.size	_ZN5TSpanILi2EfEC2ERKS0_, .Lfunc_end9-_ZN5TSpanILi2EfEC2ERKS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5TSpanILi2EfED2Ev,"axG",@progbits,_ZN5TSpanILi2EfED2Ev,comdat
	.weak	_ZN5TSpanILi2EfED2Ev    # -- Begin function _ZN5TSpanILi2EfED2Ev
	.p2align	4, 0x90
	.type	_ZN5TSpanILi2EfED2Ev,@function
_ZN5TSpanILi2EfED2Ev:                   # @_ZN5TSpanILi2EfED2Ev
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception3
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 24(%rdi)
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	je	.LBB10_3
# %bb.1:                                # %if.then
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	24(%rax), %rdi
.Ltmp213:
	callq	_ZN11RCTSpanData5derefEv
.Ltmp214:
	jmp	.LBB10_2
.LBB10_2:                               # %invoke.cont
	jmp	.LBB10_3
.LBB10_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB10_4:                               # %terminate.lpad
	.cfi_def_cfa %rbp, 16
.Ltmp215:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -20(%rbp)         # 4-byte Spill
	callq	__clang_call_terminate
.Lfunc_end10:
	.size	_ZN5TSpanILi2EfED2Ev, .Lfunc_end10-_ZN5TSpanILi2EfED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table10:
.Lexception3:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp213-.Lfunc_begin3 # >> Call Site 1 <<
	.uleb128 .Ltmp214-.Ltmp213      #   Call between .Ltmp213 and .Ltmp214
	.uleb128 .Ltmp215-.Lfunc_begin3 #     jumps to .Ltmp215
	.byte	1                       #   On action: 1
.Lcst_end3:
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
.Lttbase0:
	.p2align	2
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function _ZZ4mainEN3$_0D2Ev
	.type	_ZZ4mainEN3$_0D2Ev,@function
_ZZ4mainEN3$_0D2Ev:                     # @"_ZZ4mainEN3$_0D2Ev"
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	addq	$64, %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$32, %rax
	movq	%rax, %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	movq	-16(%rbp), %rdi         # 8-byte Reload
	callq	_ZN5TSpanILi2EfED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end11:
	.size	_ZZ4mainEN3$_0D2Ev, .Lfunc_end11-_ZZ4mainEN3$_0D2Ev
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _Z7time_fnIZ4mainE3$_1JEEviT_DpT0_
	.type	_Z7time_fnIZ4mainE3$_1JEEviT_DpT0_,@function
_Z7time_fnIZ4mainE3$_1JEEviT_DpT0_:     # @"_Z7time_fnIZ4mainE3$_1JEEviT_DpT0_"
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB12_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	_ZZ4mainENK3$_1clEv
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB12_1
.LBB12_4:                               # %for.end
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -56(%rbp)
	leaq	-56(%rbp), %rdi
	callq	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rdi
	callq	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv
	movq	%rax, -40(%rbp)
	movl	-4(%rbp), %esi
	movabsq	$_ZSt4cout, %rdi
	callq	_ZNSolsEi
	movq	%rax, %rdi
	movabsq	$.L.str.11, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEl
	movq	%rax, %rdi
	movabsq	$.L.str.12, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	movabsq	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %rsi
	callq	_ZNSolsEPFRSoS_E
	movq	%rax, -72(%rbp)         # 8-byte Spill
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end12:
	.size	_Z7time_fnIZ4mainE3$_1JEEviT_DpT0_, .Lfunc_end12-_Z7time_fnIZ4mainE3$_1JEEviT_DpT0_
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _ZZ4mainEN3$_1D2Ev
	.type	_ZZ4mainEN3$_1D2Ev,@function
_ZZ4mainEN3$_1D2Ev:                     # @"_ZZ4mainEN3$_1D2Ev"
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	addq	$64, %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$32, %rax
	movq	%rax, %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	movq	-16(%rbp), %rdi         # 8-byte Reload
	callq	_ZN5TSpanILi2EfED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end13:
	.size	_ZZ4mainEN3$_1D2Ev, .Lfunc_end13-_ZZ4mainEN3$_1D2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK5TSpanILi2EfEeqERKS0_,"axG",@progbits,_ZNK5TSpanILi2EfEeqERKS0_,comdat
	.weak	_ZNK5TSpanILi2EfEeqERKS0_ # -- Begin function _ZNK5TSpanILi2EfEeqERKS0_
	.p2align	4, 0x90
	.type	_ZNK5TSpanILi2EfEeqERKS0_,@function
_ZNK5TSpanILi2EfEeqERKS0_:              # @_ZNK5TSpanILi2EfEeqERKS0_
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception4
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rdi
	movl	(%rdi), %eax
	movq	-24(%rbp), %rdi
	movq	8(%rdi), %rdi
	cmpl	(%rdi), %eax
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	je	.LBB14_2
# %bb.1:                                # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB14_14
.LBB14_2:                               # %if.end
	movl	$0, -28(%rbp)
.LBB14_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	8(%rcx), %rdx
	cmpl	(%rdx), %eax
	jge	.LBB14_13
# %bb.4:                                # %for.body
                                        #   in Loop: Header=BB14_3 Depth=1
	movl	-28(%rbp), %edx
	leaq	-64(%rbp), %rdi
	movq	-120(%rbp), %rsi        # 8-byte Reload
	callq	_ZNK5TSpanILi2EfEixILb0EEEKNSt9enable_ifIXntT_ES_ILi1EfEE4typeEi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
.Ltmp216:
	leaq	-96(%rbp), %rdi
	callq	_ZNK5TSpanILi2EfEixILb0EEEKNSt9enable_ifIXntT_ES_ILi1EfEE4typeEi
.Ltmp217:
	jmp	.LBB14_5
.LBB14_5:                               # %invoke.cont
                                        #   in Loop: Header=BB14_3 Depth=1
.Ltmp219:
	leaq	-64(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	callq	_ZL7compareI5TSpanILi1EfEEbRKT_S4_
.Ltmp220:
	movb	%al, -121(%rbp)         # 1-byte Spill
	jmp	.LBB14_6
.LBB14_6:                               # %invoke.cont9
                                        #   in Loop: Header=BB14_3 Depth=1
	movb	-121(%rbp), %al         # 1-byte Reload
	xorb	$-1, %al
	leaq	-96(%rbp), %rdi
	movb	%al, -122(%rbp)         # 1-byte Spill
	callq	_ZN5TSpanILi1EfED2Ev
	leaq	-64(%rbp), %rdi
	callq	_ZN5TSpanILi1EfED2Ev
	movb	-122(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB14_7
	jmp	.LBB14_11
.LBB14_7:                               # %if.then10
	movb	$0, -1(%rbp)
	jmp	.LBB14_14
.LBB14_8:                               # %lpad
.Ltmp218:
	movl	%edx, %ecx
	movq	%rax, -104(%rbp)
	movl	%ecx, -108(%rbp)
	jmp	.LBB14_10
.LBB14_9:                               # %lpad8
.Ltmp221:
	movl	%edx, %ecx
	movq	%rax, -104(%rbp)
	movl	%ecx, -108(%rbp)
	leaq	-96(%rbp), %rdi
	callq	_ZN5TSpanILi1EfED2Ev
.LBB14_10:                              # %ehcleanup
	leaq	-64(%rbp), %rdi
	callq	_ZN5TSpanILi1EfED2Ev
	jmp	.LBB14_15
.LBB14_11:                              # %if.end11
                                        #   in Loop: Header=BB14_3 Depth=1
	jmp	.LBB14_12
.LBB14_12:                              # %for.inc
                                        #   in Loop: Header=BB14_3 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB14_3
.LBB14_13:                              # %for.end
	movb	$1, -1(%rbp)
.LBB14_14:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$128, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB14_15:                              # %eh.resume
	.cfi_def_cfa %rbp, 16
	movq	-104(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end14:
	.size	_ZNK5TSpanILi2EfEeqERKS0_, .Lfunc_end14-_ZNK5TSpanILi2EfEeqERKS0_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table14:
.Lexception4:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4 # >> Call Site 1 <<
	.uleb128 .Ltmp216-.Lfunc_begin4 #   Call between .Lfunc_begin4 and .Ltmp216
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp216-.Lfunc_begin4 # >> Call Site 2 <<
	.uleb128 .Ltmp217-.Ltmp216      #   Call between .Ltmp216 and .Ltmp217
	.uleb128 .Ltmp218-.Lfunc_begin4 #     jumps to .Ltmp218
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp219-.Lfunc_begin4 # >> Call Site 3 <<
	.uleb128 .Ltmp220-.Ltmp219      #   Call between .Ltmp219 and .Ltmp220
	.uleb128 .Ltmp221-.Lfunc_begin4 #     jumps to .Ltmp221
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp220-.Lfunc_begin4 # >> Call Site 4 <<
	.uleb128 .Lfunc_end14-.Ltmp220  #   Call between .Ltmp220 and .Lfunc_end14
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end4:
	.p2align	2
                                        # -- End function
	.section	.text._ZN6TensorIfEaSEOS0_,"axG",@progbits,_ZN6TensorIfEaSEOS0_,comdat
	.weak	_ZN6TensorIfEaSEOS0_    # -- Begin function _ZN6TensorIfEaSEOS0_
	.p2align	4, 0x90
	.type	_ZN6TensorIfEaSEOS0_,@function
_ZN6TensorIfEaSEOS0_:                   # @_ZN6TensorIfEaSEOS0_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	callq	_ZNSt6vectorIfSaIfEEaSEOS1_
	movq	-32(%rbp), %rsi         # 8-byte Reload
	addq	$24, %rsi
	movq	-16(%rbp), %rdi
	addq	$24, %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	_ZNSt6vectorIiSaIiEEaSEOS1_
	movq	-32(%rbp), %rsi         # 8-byte Reload
	addq	$48, %rsi
	movq	-16(%rbp), %rdi
	addq	$48, %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	_ZNSt6vectorIiSaIiEEaSEOS1_
	movq	-16(%rbp), %rsi
	movq	72(%rsi), %rsi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, 72(%rdi)
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rdi, %rax
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end15:
	.size	_ZN6TensorIfEaSEOS0_, .Lfunc_end15-_ZN6TensorIfEaSEOS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6TensorIfED2Ev,"axG",@progbits,_ZN6TensorIfED2Ev,comdat
	.weak	_ZN6TensorIfED2Ev       # -- Begin function _ZN6TensorIfED2Ev
	.p2align	4, 0x90
	.type	_ZN6TensorIfED2Ev,@function
_ZN6TensorIfED2Ev:                      # @_ZN6TensorIfED2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	addq	$48, %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	_ZNSt6vectorIiSaIiEED2Ev
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$24, %rax
	movq	%rax, %rdi
	callq	_ZNSt6vectorIiSaIiEED2Ev
	movq	-16(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt6vectorIfSaIfEED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end16:
	.size	_ZN6TensorIfED2Ev, .Lfunc_end16-_ZN6TensorIfED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5TSpanILi2EfEaSEOS0_,"axG",@progbits,_ZN5TSpanILi2EfEaSEOS0_,comdat
	.weak	_ZN5TSpanILi2EfEaSEOS0_ # -- Begin function _ZN5TSpanILi2EfEaSEOS0_
	.p2align	4, 0x90
	.type	_ZN5TSpanILi2EfEaSEOS0_,@function
_ZN5TSpanILi2EfEaSEOS0_:                # @_ZN5TSpanILi2EfEaSEOS0_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	je	.LBB17_4
# %bb.1:                                # %if.then
	movq	-24(%rbp), %rax         # 8-byte Reload
	cmpq	$0, 24(%rax)
	je	.LBB17_3
# %bb.2:                                # %if.then2
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	24(%rax), %rdi
	callq	_ZN11RCTSpanData5derefEv
.LBB17_3:                               # %if.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
.LBB17_4:                               # %if.end13
	movq	-24(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end17:
	.size	_ZN5TSpanILi2EfEaSEOS0_, .Lfunc_end17-_ZN5TSpanILi2EfEaSEOS0_
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function _Z7time_fnIZ4mainE3$_2JEEviT_DpT0_
	.type	_Z7time_fnIZ4mainE3$_2JEEviT_DpT0_,@function
_Z7time_fnIZ4mainE3$_2JEEviT_DpT0_:     # @"_Z7time_fnIZ4mainE3$_2JEEviT_DpT0_"
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB18_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB18_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	_ZZ4mainENK3$_2clEv
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB18_1
.LBB18_4:                               # %for.end
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -56(%rbp)
	leaq	-56(%rbp), %rdi
	callq	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rdi
	callq	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv
	movq	%rax, -40(%rbp)
	movl	-4(%rbp), %esi
	movabsq	$_ZSt4cout, %rdi
	callq	_ZNSolsEi
	movq	%rax, %rdi
	movabsq	$.L.str.11, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEl
	movq	%rax, %rdi
	movabsq	$.L.str.12, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	movabsq	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %rsi
	callq	_ZNSolsEPFRSoS_E
	movq	%rax, -72(%rbp)         # 8-byte Spill
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end18:
	.size	_Z7time_fnIZ4mainE3$_2JEEviT_DpT0_, .Lfunc_end18-_Z7time_fnIZ4mainE3$_2JEEviT_DpT0_
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _ZZ4mainEN3$_2D2Ev
	.type	_ZZ4mainEN3$_2D2Ev,@function
_ZZ4mainEN3$_2D2Ev:                     # @"_ZZ4mainEN3$_2D2Ev"
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	addq	$64, %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$32, %rax
	movq	%rax, %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	movq	-16(%rbp), %rdi         # 8-byte Reload
	callq	_ZN5TSpanILi2EfED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end19:
	.size	_ZZ4mainEN3$_2D2Ev, .Lfunc_end19-_ZZ4mainEN3$_2D2Ev
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _Z7time_fnIZ4mainE3$_3JEEviT_DpT0_
	.type	_Z7time_fnIZ4mainE3$_3JEEviT_DpT0_,@function
_Z7time_fnIZ4mainE3$_3JEEviT_DpT0_:     # @"_Z7time_fnIZ4mainE3$_3JEEviT_DpT0_"
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB20_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB20_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	_ZZ4mainENK3$_3clEv
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB20_1
.LBB20_4:                               # %for.end
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -56(%rbp)
	leaq	-56(%rbp), %rdi
	callq	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rdi
	callq	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv
	movq	%rax, -40(%rbp)
	movl	-4(%rbp), %esi
	movabsq	$_ZSt4cout, %rdi
	callq	_ZNSolsEi
	movq	%rax, %rdi
	movabsq	$.L.str.11, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEl
	movq	%rax, %rdi
	movabsq	$.L.str.12, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	movabsq	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %rsi
	callq	_ZNSolsEPFRSoS_E
	movq	%rax, -72(%rbp)         # 8-byte Spill
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end20:
	.size	_Z7time_fnIZ4mainE3$_3JEEviT_DpT0_, .Lfunc_end20-_Z7time_fnIZ4mainE3$_3JEEviT_DpT0_
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _ZZ4mainEN3$_3D2Ev
	.type	_ZZ4mainEN3$_3D2Ev,@function
_ZZ4mainEN3$_3D2Ev:                     # @"_ZZ4mainEN3$_3D2Ev"
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	addq	$64, %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$32, %rax
	movq	%rax, %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	movq	-16(%rbp), %rdi         # 8-byte Reload
	callq	_ZN5TSpanILi2EfED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end21:
	.size	_ZZ4mainEN3$_3D2Ev, .Lfunc_end21-_ZZ4mainEN3$_3D2Ev
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _Z7time_fnIZ4mainE3$_4JEEviT_DpT0_
	.type	_Z7time_fnIZ4mainE3$_4JEEviT_DpT0_,@function
_Z7time_fnIZ4mainE3$_4JEEviT_DpT0_:     # @"_Z7time_fnIZ4mainE3$_4JEEviT_DpT0_"
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB22_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB22_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	_ZZ4mainENK3$_4clEv
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB22_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB22_1
.LBB22_4:                               # %for.end
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -56(%rbp)
	leaq	-56(%rbp), %rdi
	callq	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rdi
	callq	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv
	movq	%rax, -40(%rbp)
	movl	-4(%rbp), %esi
	movabsq	$_ZSt4cout, %rdi
	callq	_ZNSolsEi
	movq	%rax, %rdi
	movabsq	$.L.str.11, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEl
	movq	%rax, %rdi
	movabsq	$.L.str.12, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	movabsq	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %rsi
	callq	_ZNSolsEPFRSoS_E
	movq	%rax, -72(%rbp)         # 8-byte Spill
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end22:
	.size	_Z7time_fnIZ4mainE3$_4JEEviT_DpT0_, .Lfunc_end22-_Z7time_fnIZ4mainE3$_4JEEviT_DpT0_
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _ZZ4mainEN3$_4D2Ev
	.type	_ZZ4mainEN3$_4D2Ev,@function
_ZZ4mainEN3$_4D2Ev:                     # @"_ZZ4mainEN3$_4D2Ev"
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	addq	$64, %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$32, %rax
	movq	%rax, %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	movq	-16(%rbp), %rdi         # 8-byte Reload
	callq	_ZN5TSpanILi2EfED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end23:
	.size	_ZZ4mainEN3$_4D2Ev, .Lfunc_end23-_ZZ4mainEN3$_4D2Ev
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _Z7time_fnIZ4mainE3$_5JEEviT_DpT0_
	.type	_Z7time_fnIZ4mainE3$_5JEEviT_DpT0_,@function
_Z7time_fnIZ4mainE3$_5JEEviT_DpT0_:     # @"_Z7time_fnIZ4mainE3$_5JEEviT_DpT0_"
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB24_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB24_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	_ZZ4mainENK3$_5clEv
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB24_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB24_1
.LBB24_4:                               # %for.end
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -56(%rbp)
	leaq	-56(%rbp), %rdi
	callq	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rdi
	callq	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv
	movq	%rax, -40(%rbp)
	movl	-4(%rbp), %esi
	movabsq	$_ZSt4cout, %rdi
	callq	_ZNSolsEi
	movq	%rax, %rdi
	movabsq	$.L.str.11, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEl
	movq	%rax, %rdi
	movabsq	$.L.str.12, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	movabsq	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %rsi
	callq	_ZNSolsEPFRSoS_E
	movq	%rax, -72(%rbp)         # 8-byte Spill
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end24:
	.size	_Z7time_fnIZ4mainE3$_5JEEviT_DpT0_, .Lfunc_end24-_Z7time_fnIZ4mainE3$_5JEEviT_DpT0_
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _ZZ4mainEN3$_5D2Ev
	.type	_ZZ4mainEN3$_5D2Ev,@function
_ZZ4mainEN3$_5D2Ev:                     # @"_ZZ4mainEN3$_5D2Ev"
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	addq	$64, %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$32, %rax
	movq	%rax, %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	movq	-16(%rbp), %rdi         # 8-byte Reload
	callq	_ZN5TSpanILi2EfED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end25:
	.size	_ZZ4mainEN3$_5D2Ev, .Lfunc_end25-_ZZ4mainEN3$_5D2Ev
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _Z7time_fnIZ4mainE3$_6JEEviT_DpT0_
	.type	_Z7time_fnIZ4mainE3$_6JEEviT_DpT0_,@function
_Z7time_fnIZ4mainE3$_6JEEviT_DpT0_:     # @"_Z7time_fnIZ4mainE3$_6JEEviT_DpT0_"
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB26_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB26_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	_ZZ4mainENK3$_6clEv
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB26_1
.LBB26_4:                               # %for.end
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -56(%rbp)
	leaq	-56(%rbp), %rdi
	callq	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rdi
	callq	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv
	movq	%rax, -40(%rbp)
	movl	-4(%rbp), %esi
	movabsq	$_ZSt4cout, %rdi
	callq	_ZNSolsEi
	movq	%rax, %rdi
	movabsq	$.L.str.11, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZNSolsEl
	movq	%rax, %rdi
	movabsq	$.L.str.12, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	movabsq	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %rsi
	callq	_ZNSolsEPFRSoS_E
	movq	%rax, -72(%rbp)         # 8-byte Spill
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end26:
	.size	_Z7time_fnIZ4mainE3$_6JEEviT_DpT0_, .Lfunc_end26-_Z7time_fnIZ4mainE3$_6JEEviT_DpT0_
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _ZZ4mainEN3$_6D2Ev
	.type	_ZZ4mainEN3$_6D2Ev,@function
_ZZ4mainEN3$_6D2Ev:                     # @"_ZZ4mainEN3$_6D2Ev"
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	addq	$64, %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$32, %rax
	movq	%rax, %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	movq	-16(%rbp), %rdi         # 8-byte Reload
	callq	_ZN5TSpanILi2EfED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end27:
	.size	_ZZ4mainEN3$_6D2Ev, .Lfunc_end27-_ZZ4mainEN3$_6D2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEED2Ev,"axG",@progbits,_ZNSt6vectorIiSaIiEED2Ev,comdat
	.weak	_ZNSt6vectorIiSaIiEED2Ev # -- Begin function _ZNSt6vectorIiSaIiEED2Ev
	.p2align	4, 0x90
	.type	_ZNSt6vectorIiSaIiEED2Ev,@function
_ZNSt6vectorIiSaIiEED2Ev:               # @_ZNSt6vectorIiSaIiEED2Ev
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception5
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	movq	8(%rdi), %rsi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
.Ltmp222:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E
.Ltmp223:
	jmp	.LBB28_1
.LBB28_1:                               # %invoke.cont
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseIiSaIiEED2Ev
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB28_2:                               # %lpad
	.cfi_def_cfa %rbp, 16
.Ltmp224:
	movl	%edx, %ecx
	movq	%rax, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseIiSaIiEED2Ev
# %bb.3:                                # %terminate.handler
	movq	-16(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end28:
	.size	_ZNSt6vectorIiSaIiEED2Ev, .Lfunc_end28-_ZNSt6vectorIiSaIiEED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table28:
.Lexception5:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp222-.Lfunc_begin5 # >> Call Site 1 <<
	.uleb128 .Ltmp223-.Ltmp222      #   Call between .Ltmp222 and .Ltmp223
	.uleb128 .Ltmp224-.Lfunc_begin5 #     jumps to .Ltmp224
	.byte	1                       #   On action: 1
.Lcst_end5:
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
.Lttbase1:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt6vectorIfSaIfEEaSEOS1_,"axG",@progbits,_ZNSt6vectorIfSaIfEEaSEOS1_,comdat
	.weak	_ZNSt6vectorIfSaIfEEaSEOS1_ # -- Begin function _ZNSt6vectorIfSaIfEEaSEOS1_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIfSaIfEEaSEOS1_,@function
_ZNSt6vectorIfSaIfEEaSEOS1_:            # @_ZNSt6vectorIfSaIfEEaSEOS1_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movb	$1, -17(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	_ZSt4moveIRSt6vectorIfSaIfEEEONSt16remove_referenceIT_E4typeEOS5_
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	_ZNSt6vectorIfSaIfEE14_M_move_assignEOS1_St17integral_constantIbLb1EE
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end29:
	.size	_ZNSt6vectorIfSaIfEEaSEOS1_, .Lfunc_end29-_ZNSt6vectorIfSaIfEEaSEOS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEEaSEOS1_,"axG",@progbits,_ZNSt6vectorIiSaIiEEaSEOS1_,comdat
	.weak	_ZNSt6vectorIiSaIiEEaSEOS1_ # -- Begin function _ZNSt6vectorIiSaIiEEaSEOS1_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIiSaIiEEaSEOS1_,@function
_ZNSt6vectorIiSaIiEEaSEOS1_:            # @_ZNSt6vectorIiSaIiEEaSEOS1_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movb	$1, -17(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	_ZSt4moveIRSt6vectorIiSaIiEEEONSt16remove_referenceIT_E4typeEOS5_
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end30:
	.size	_ZNSt6vectorIiSaIiEEaSEOS1_, .Lfunc_end30-_ZNSt6vectorIiSaIiEEaSEOS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIfSaIfEE14_M_move_assignEOS1_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorIfSaIfEE14_M_move_assignEOS1_St17integral_constantIbLb1EE,comdat
	.weak	_ZNSt6vectorIfSaIfEE14_M_move_assignEOS1_St17integral_constantIbLb1EE # -- Begin function _ZNSt6vectorIfSaIfEE14_M_move_assignEOS1_St17integral_constantIbLb1EE
	.p2align	4, 0x90
	.type	_ZNSt6vectorIfSaIfEE14_M_move_assignEOS1_St17integral_constantIbLb1EE,@function
_ZNSt6vectorIfSaIfEE14_M_move_assignEOS1_St17integral_constantIbLb1EE: # @_ZNSt6vectorIfSaIfEE14_M_move_assignEOS1_St17integral_constantIbLb1EE
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception6
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	leaq	-56(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	_ZNKSt12_Vector_baseIfSaIfEE13get_allocatorEv
	leaq	-48(%rbp), %rsi
	movq	%rsi, %rdi
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	callq	_ZNSt6vectorIfSaIfEEC2ERKS0_
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSaIfED2Ev
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	callq	_ZNSt12_Vector_baseIfSaIfEE12_Vector_impl12_M_swap_dataERS2_
	movq	-24(%rbp), %rsi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt12_Vector_baseIfSaIfEE12_Vector_impl12_M_swap_dataERS2_
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv
	movq	-24(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv
.Ltmp225:
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_ZSt15__alloc_on_moveISaIfEEvRT_S2_
.Ltmp226:
	jmp	.LBB31_1
.LBB31_1:                               # %invoke.cont
	leaq	-48(%rbp), %rdi
	callq	_ZNSt6vectorIfSaIfEED2Ev
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB31_2:                               # %lpad
	.cfi_def_cfa %rbp, 16
.Ltmp227:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	leaq	-48(%rbp), %rdi
	callq	_ZNSt6vectorIfSaIfEED2Ev
# %bb.3:                                # %terminate.handler
	movq	-64(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end31:
	.size	_ZNSt6vectorIfSaIfEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, .Lfunc_end31-_ZNSt6vectorIfSaIfEE14_M_move_assignEOS1_St17integral_constantIbLb1EE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table31:
.Lexception6:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp225-.Lfunc_begin6 # >> Call Site 1 <<
	.uleb128 .Ltmp226-.Ltmp225      #   Call between .Ltmp225 and .Ltmp226
	.uleb128 .Ltmp227-.Lfunc_begin6 #     jumps to .Ltmp227
	.byte	1                       #   On action: 1
.Lcst_end6:
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
.Lttbase2:
	.p2align	2
                                        # -- End function
	.section	.text._ZSt4moveIRSt6vectorIfSaIfEEEONSt16remove_referenceIT_E4typeEOS5_,"axG",@progbits,_ZSt4moveIRSt6vectorIfSaIfEEEONSt16remove_referenceIT_E4typeEOS5_,comdat
	.weak	_ZSt4moveIRSt6vectorIfSaIfEEEONSt16remove_referenceIT_E4typeEOS5_ # -- Begin function _ZSt4moveIRSt6vectorIfSaIfEEEONSt16remove_referenceIT_E4typeEOS5_
	.p2align	4, 0x90
	.type	_ZSt4moveIRSt6vectorIfSaIfEEEONSt16remove_referenceIT_E4typeEOS5_,@function
_ZSt4moveIRSt6vectorIfSaIfEEEONSt16remove_referenceIT_E4typeEOS5_: # @_ZSt4moveIRSt6vectorIfSaIfEEEONSt16remove_referenceIT_E4typeEOS5_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end32:
	.size	_ZSt4moveIRSt6vectorIfSaIfEEEONSt16remove_referenceIT_E4typeEOS5_, .Lfunc_end32-_ZSt4moveIRSt6vectorIfSaIfEEEONSt16remove_referenceIT_E4typeEOS5_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt12_Vector_baseIfSaIfEE13get_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIfSaIfEE13get_allocatorEv,comdat
	.weak	_ZNKSt12_Vector_baseIfSaIfEE13get_allocatorEv # -- Begin function _ZNKSt12_Vector_baseIfSaIfEE13get_allocatorEv
	.p2align	4, 0x90
	.type	_ZNKSt12_Vector_baseIfSaIfEE13get_allocatorEv,@function
_ZNKSt12_Vector_baseIfSaIfEE13get_allocatorEv: # @_ZNKSt12_Vector_baseIfSaIfEE13get_allocatorEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, %rax
	movq	%rsi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	_ZNKSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	_ZNSaIfEC2ERKS_
	movq	-24(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end33:
	.size	_ZNKSt12_Vector_baseIfSaIfEE13get_allocatorEv, .Lfunc_end33-_ZNKSt12_Vector_baseIfSaIfEE13get_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIfSaIfEEC2ERKS0_,"axG",@progbits,_ZNSt6vectorIfSaIfEEC2ERKS0_,comdat
	.weak	_ZNSt6vectorIfSaIfEEC2ERKS0_ # -- Begin function _ZNSt6vectorIfSaIfEEC2ERKS0_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIfSaIfEEC2ERKS0_,@function
_ZNSt6vectorIfSaIfEEC2ERKS0_:           # @_ZNSt6vectorIfSaIfEEC2ERKS0_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	_ZNSt12_Vector_baseIfSaIfEEC2ERKS0_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end34:
	.size	_ZNSt6vectorIfSaIfEEC2ERKS0_, .Lfunc_end34-_ZNSt6vectorIfSaIfEEC2ERKS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSaIfED2Ev,"axG",@progbits,_ZNSaIfED2Ev,comdat
	.weak	_ZNSaIfED2Ev            # -- Begin function _ZNSaIfED2Ev
	.p2align	4, 0x90
	.type	_ZNSaIfED2Ev,@function
_ZNSaIfED2Ev:                           # @_ZNSaIfED2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx13new_allocatorIfED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end35:
	.size	_ZNSaIfED2Ev, .Lfunc_end35-_ZNSaIfED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIfSaIfEE12_Vector_impl12_M_swap_dataERS2_,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEE12_Vector_impl12_M_swap_dataERS2_,comdat
	.weak	_ZNSt12_Vector_baseIfSaIfEE12_Vector_impl12_M_swap_dataERS2_ # -- Begin function _ZNSt12_Vector_baseIfSaIfEE12_Vector_impl12_M_swap_dataERS2_
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIfSaIfEE12_Vector_impl12_M_swap_dataERS2_,@function
_ZNSt12_Vector_baseIfSaIfEE12_Vector_impl12_M_swap_dataERS2_: # @_ZNSt12_Vector_baseIfSaIfEE12_Vector_impl12_M_swap_dataERS2_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	callq	_ZSt4swapIPfENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	$8, %rax
	movq	-16(%rbp), %rsi
	addq	$8, %rsi
	movq	%rax, %rdi
	callq	_ZSt4swapIPfENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	$16, %rax
	movq	-16(%rbp), %rsi
	addq	$16, %rsi
	movq	%rax, %rdi
	callq	_ZSt4swapIPfENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end36:
	.size	_ZNSt12_Vector_baseIfSaIfEE12_Vector_impl12_M_swap_dataERS2_, .Lfunc_end36-_ZNSt12_Vector_baseIfSaIfEE12_Vector_impl12_M_swap_dataERS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt15__alloc_on_moveISaIfEEvRT_S2_,"axG",@progbits,_ZSt15__alloc_on_moveISaIfEEvRT_S2_,comdat
	.weak	_ZSt15__alloc_on_moveISaIfEEvRT_S2_ # -- Begin function _ZSt15__alloc_on_moveISaIfEEvRT_S2_
	.p2align	4, 0x90
	.type	_ZSt15__alloc_on_moveISaIfEEvRT_S2_,@function
_ZSt15__alloc_on_moveISaIfEEvRT_S2_:    # @_ZSt15__alloc_on_moveISaIfEEvRT_S2_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZSt18__do_alloc_on_moveISaIfEEvRT_S2_St17integral_constantIbLb1EE
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end37:
	.size	_ZSt15__alloc_on_moveISaIfEEvRT_S2_, .Lfunc_end37-_ZSt15__alloc_on_moveISaIfEEvRT_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv # -- Begin function _ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv,@function
_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv: # @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end38:
	.size	_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv, .Lfunc_end38-_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIfSaIfEED2Ev,"axG",@progbits,_ZNSt6vectorIfSaIfEED2Ev,comdat
	.weak	_ZNSt6vectorIfSaIfEED2Ev # -- Begin function _ZNSt6vectorIfSaIfEED2Ev
	.p2align	4, 0x90
	.type	_ZNSt6vectorIfSaIfEED2Ev,@function
_ZNSt6vectorIfSaIfEED2Ev:               # @_ZNSt6vectorIfSaIfEED2Ev
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception7
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	movq	8(%rdi), %rsi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv
.Ltmp228:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZSt8_DestroyIPffEvT_S1_RSaIT0_E
.Ltmp229:
	jmp	.LBB39_1
.LBB39_1:                               # %invoke.cont
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseIfSaIfEED2Ev
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB39_2:                               # %lpad
	.cfi_def_cfa %rbp, 16
.Ltmp230:
	movl	%edx, %ecx
	movq	%rax, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseIfSaIfEED2Ev
# %bb.3:                                # %terminate.handler
	movq	-16(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end39:
	.size	_ZNSt6vectorIfSaIfEED2Ev, .Lfunc_end39-_ZNSt6vectorIfSaIfEED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table39:
.Lexception7:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp228-.Lfunc_begin7 # >> Call Site 1 <<
	.uleb128 .Ltmp229-.Ltmp228      #   Call between .Ltmp228 and .Ltmp229
	.uleb128 .Ltmp230-.Lfunc_begin7 #     jumps to .Ltmp230
	.byte	1                       #   On action: 1
.Lcst_end7:
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
.Lttbase3:
	.p2align	2
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate  # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	4, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# %bb.0:
	pushq	%rax
	callq	__cxa_begin_catch
	movq	%rax, (%rsp)            # 8-byte Spill
	callq	_ZSt9terminatev
.Lfunc_end40:
	.size	__clang_call_terminate, .Lfunc_end40-__clang_call_terminate
                                        # -- End function
	.section	.text._ZNKSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNKSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv # -- Begin function _ZNKSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv
	.p2align	4, 0x90
	.type	_ZNKSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv,@function
_ZNKSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv: # @_ZNKSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end41:
	.size	_ZNKSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv, .Lfunc_end41-_ZNKSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSaIfEC2ERKS_,"axG",@progbits,_ZNSaIfEC2ERKS_,comdat
	.weak	_ZNSaIfEC2ERKS_         # -- Begin function _ZNSaIfEC2ERKS_
	.p2align	4, 0x90
	.type	_ZNSaIfEC2ERKS_,@function
_ZNSaIfEC2ERKS_:                        # @_ZNSaIfEC2ERKS_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	_ZN9__gnu_cxx13new_allocatorIfEC2ERKS1_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end42:
	.size	_ZNSaIfEC2ERKS_, .Lfunc_end42-_ZNSaIfEC2ERKS_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIfEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIfEC2ERKS1_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIfEC2ERKS1_ # -- Begin function _ZN9__gnu_cxx13new_allocatorIfEC2ERKS1_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIfEC2ERKS1_,@function
_ZN9__gnu_cxx13new_allocatorIfEC2ERKS1_: # @_ZN9__gnu_cxx13new_allocatorIfEC2ERKS1_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end43:
	.size	_ZN9__gnu_cxx13new_allocatorIfEC2ERKS1_, .Lfunc_end43-_ZN9__gnu_cxx13new_allocatorIfEC2ERKS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIfSaIfEEC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEEC2ERKS0_,comdat
	.weak	_ZNSt12_Vector_baseIfSaIfEEC2ERKS0_ # -- Begin function _ZNSt12_Vector_baseIfSaIfEEC2ERKS0_
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIfSaIfEEC2ERKS0_,@function
_ZNSt12_Vector_baseIfSaIfEEC2ERKS0_:    # @_ZNSt12_Vector_baseIfSaIfEEC2ERKS0_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2ERKS0_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end44:
	.size	_ZNSt12_Vector_baseIfSaIfEEC2ERKS0_, .Lfunc_end44-_ZNSt12_Vector_baseIfSaIfEEC2ERKS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2ERKS0_,comdat
	.weak	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2ERKS0_ # -- Begin function _ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2ERKS0_
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2ERKS0_,@function
_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2ERKS0_: # @_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2ERKS0_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	-16(%rbp), %rax
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	callq	_ZNSaIfEC2ERKS_
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end45:
	.size	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2ERKS0_, .Lfunc_end45-_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2ERKS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIfED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIfED2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIfED2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorIfED2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIfED2Ev,@function
_ZN9__gnu_cxx13new_allocatorIfED2Ev:    # @_ZN9__gnu_cxx13new_allocatorIfED2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end46:
	.size	_ZN9__gnu_cxx13new_allocatorIfED2Ev, .Lfunc_end46-_ZN9__gnu_cxx13new_allocatorIfED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt4swapIPfENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_,"axG",@progbits,_ZSt4swapIPfENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_,comdat
	.weak	_ZSt4swapIPfENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_ # -- Begin function _ZSt4swapIPfENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_
	.p2align	4, 0x90
	.type	_ZSt4swapIPfENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_,@function
_ZSt4swapIPfENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_: # @_ZSt4swapIPfENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZSt4moveIRPfEONSt16remove_referenceIT_E4typeEOS3_
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZSt4moveIRPfEONSt16remove_referenceIT_E4typeEOS3_
	movq	(%rax), %rax
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi)
	leaq	-24(%rbp), %rdi
	callq	_ZSt4moveIRPfEONSt16remove_referenceIT_E4typeEOS3_
	movq	(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsi)
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end47:
	.size	_ZSt4swapIPfENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_, .Lfunc_end47-_ZSt4swapIPfENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt4moveIRPfEONSt16remove_referenceIT_E4typeEOS3_,"axG",@progbits,_ZSt4moveIRPfEONSt16remove_referenceIT_E4typeEOS3_,comdat
	.weak	_ZSt4moveIRPfEONSt16remove_referenceIT_E4typeEOS3_ # -- Begin function _ZSt4moveIRPfEONSt16remove_referenceIT_E4typeEOS3_
	.p2align	4, 0x90
	.type	_ZSt4moveIRPfEONSt16remove_referenceIT_E4typeEOS3_,@function
_ZSt4moveIRPfEONSt16remove_referenceIT_E4typeEOS3_: # @_ZSt4moveIRPfEONSt16remove_referenceIT_E4typeEOS3_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end48:
	.size	_ZSt4moveIRPfEONSt16remove_referenceIT_E4typeEOS3_, .Lfunc_end48-_ZSt4moveIRPfEONSt16remove_referenceIT_E4typeEOS3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt18__do_alloc_on_moveISaIfEEvRT_S2_St17integral_constantIbLb1EE,"axG",@progbits,_ZSt18__do_alloc_on_moveISaIfEEvRT_S2_St17integral_constantIbLb1EE,comdat
	.weak	_ZSt18__do_alloc_on_moveISaIfEEvRT_S2_St17integral_constantIbLb1EE # -- Begin function _ZSt18__do_alloc_on_moveISaIfEEvRT_S2_St17integral_constantIbLb1EE
	.p2align	4, 0x90
	.type	_ZSt18__do_alloc_on_moveISaIfEEvRT_S2_St17integral_constantIbLb1EE,@function
_ZSt18__do_alloc_on_moveISaIfEEvRT_S2_St17integral_constantIbLb1EE: # @_ZSt18__do_alloc_on_moveISaIfEEvRT_S2_St17integral_constantIbLb1EE
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	_ZSt4moveIRSaIfEEONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, -32(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end49:
	.size	_ZSt18__do_alloc_on_moveISaIfEEvRT_S2_St17integral_constantIbLb1EE, .Lfunc_end49-_ZSt18__do_alloc_on_moveISaIfEEvRT_S2_St17integral_constantIbLb1EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt4moveIRSaIfEEONSt16remove_referenceIT_E4typeEOS3_,"axG",@progbits,_ZSt4moveIRSaIfEEONSt16remove_referenceIT_E4typeEOS3_,comdat
	.weak	_ZSt4moveIRSaIfEEONSt16remove_referenceIT_E4typeEOS3_ # -- Begin function _ZSt4moveIRSaIfEEONSt16remove_referenceIT_E4typeEOS3_
	.p2align	4, 0x90
	.type	_ZSt4moveIRSaIfEEONSt16remove_referenceIT_E4typeEOS3_,@function
_ZSt4moveIRSaIfEEONSt16remove_referenceIT_E4typeEOS3_: # @_ZSt4moveIRSaIfEEONSt16remove_referenceIT_E4typeEOS3_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end50:
	.size	_ZSt4moveIRSaIfEEONSt16remove_referenceIT_E4typeEOS3_, .Lfunc_end50-_ZSt4moveIRSaIfEEONSt16remove_referenceIT_E4typeEOS3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt8_DestroyIPffEvT_S1_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPffEvT_S1_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPffEvT_S1_RSaIT0_E # -- Begin function _ZSt8_DestroyIPffEvT_S1_RSaIT0_E
	.p2align	4, 0x90
	.type	_ZSt8_DestroyIPffEvT_S1_RSaIT0_E,@function
_ZSt8_DestroyIPffEvT_S1_RSaIT0_E:       # @_ZSt8_DestroyIPffEvT_S1_RSaIT0_E
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZSt8_DestroyIPfEvT_S1_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end51:
	.size	_ZSt8_DestroyIPffEvT_S1_RSaIT0_E, .Lfunc_end51-_ZSt8_DestroyIPffEvT_S1_RSaIT0_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIfSaIfEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEED2Ev,comdat
	.weak	_ZNSt12_Vector_baseIfSaIfEED2Ev # -- Begin function _ZNSt12_Vector_baseIfSaIfEED2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIfSaIfEED2Ev,@function
_ZNSt12_Vector_baseIfSaIfEED2Ev:        # @_ZNSt12_Vector_baseIfSaIfEED2Ev
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception8
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	movq	16(%rdi), %rcx
	subq	%rax, %rcx
	sarq	$2, %rcx
.Ltmp231:
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm
.Ltmp232:
	jmp	.LBB52_1
.LBB52_1:                               # %invoke.cont
	movq	-32(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD2Ev
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB52_2:                               # %lpad
	.cfi_def_cfa %rbp, 16
.Ltmp233:
	movl	%edx, %ecx
	movq	%rax, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-32(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD2Ev
# %bb.3:                                # %terminate.handler
	movq	-16(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end52:
	.size	_ZNSt12_Vector_baseIfSaIfEED2Ev, .Lfunc_end52-_ZNSt12_Vector_baseIfSaIfEED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table52:
.Lexception8:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp231-.Lfunc_begin8 # >> Call Site 1 <<
	.uleb128 .Ltmp232-.Ltmp231      #   Call between .Ltmp231 and .Ltmp232
	.uleb128 .Ltmp233-.Lfunc_begin8 #     jumps to .Ltmp233
	.byte	1                       #   On action: 1
.Lcst_end8:
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
.Lttbase4:
	.p2align	2
                                        # -- End function
	.section	.text._ZSt8_DestroyIPfEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPfEvT_S1_,comdat
	.weak	_ZSt8_DestroyIPfEvT_S1_ # -- Begin function _ZSt8_DestroyIPfEvT_S1_
	.p2align	4, 0x90
	.type	_ZSt8_DestroyIPfEvT_S1_,@function
_ZSt8_DestroyIPfEvT_S1_:                # @_ZSt8_DestroyIPfEvT_S1_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end53:
	.size	_ZSt8_DestroyIPfEvT_S1_, .Lfunc_end53-_ZSt8_DestroyIPfEvT_S1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_ # -- Begin function _ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_
	.p2align	4, 0x90
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_,@function
_ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_: # @_ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end54:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_, .Lfunc_end54-_ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm,comdat
	.weak	_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm # -- Begin function _ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm,@function
_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm: # @_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	cmpq	$0, -16(%rbp)
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	je	.LBB55_2
# %bb.1:                                # %if.then
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	_ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm
.LBB55_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end55:
	.size	_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm, .Lfunc_end55-_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIfSaIfEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD2Ev,comdat
	.weak	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD2Ev # -- Begin function _ZNSt12_Vector_baseIfSaIfEE12_Vector_implD2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD2Ev,@function
_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD2Ev: # @_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSaIfED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end56:
	.size	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD2Ev, .Lfunc_end56-_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm,"axG",@progbits,_ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm,comdat
	.weak	_ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm # -- Begin function _ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm,@function
_ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm: # @_ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-32(%rbp), %rdx         # 8-byte Reload
	callq	_ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end57:
	.size	_ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm, .Lfunc_end57-_ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm # -- Begin function _ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm,@function
_ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm: # @_ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	callq	_ZdlPv
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end58:
	.size	_ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm, .Lfunc_end58-_ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE,comdat
	.weak	_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE # -- Begin function _ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE
	.p2align	4, 0x90
	.type	_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE,@function
_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE: # @_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception9
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	leaq	-56(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	_ZNKSt12_Vector_baseIiSaIiEE13get_allocatorEv
	leaq	-48(%rbp), %rsi
	movq	%rsi, %rdi
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	callq	_ZNSt6vectorIiSaIiEEC2ERKS0_
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSaIiED2Ev
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	callq	_ZNSt12_Vector_baseIiSaIiEE12_Vector_impl12_M_swap_dataERS2_
	movq	-24(%rbp), %rsi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt12_Vector_baseIiSaIiEE12_Vector_impl12_M_swap_dataERS2_
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	movq	-24(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
.Ltmp234:
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_ZSt15__alloc_on_moveISaIiEEvRT_S2_
.Ltmp235:
	jmp	.LBB59_1
.LBB59_1:                               # %invoke.cont
	leaq	-48(%rbp), %rdi
	callq	_ZNSt6vectorIiSaIiEED2Ev
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB59_2:                               # %lpad
	.cfi_def_cfa %rbp, 16
.Ltmp236:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	leaq	-48(%rbp), %rdi
	callq	_ZNSt6vectorIiSaIiEED2Ev
# %bb.3:                                # %terminate.handler
	movq	-64(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end59:
	.size	_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, .Lfunc_end59-_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table59:
.Lexception9:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Ltmp234-.Lfunc_begin9 # >> Call Site 1 <<
	.uleb128 .Ltmp235-.Ltmp234      #   Call between .Ltmp234 and .Ltmp235
	.uleb128 .Ltmp236-.Lfunc_begin9 #     jumps to .Ltmp236
	.byte	1                       #   On action: 1
.Lcst_end9:
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
.Lttbase5:
	.p2align	2
                                        # -- End function
	.section	.text._ZSt4moveIRSt6vectorIiSaIiEEEONSt16remove_referenceIT_E4typeEOS5_,"axG",@progbits,_ZSt4moveIRSt6vectorIiSaIiEEEONSt16remove_referenceIT_E4typeEOS5_,comdat
	.weak	_ZSt4moveIRSt6vectorIiSaIiEEEONSt16remove_referenceIT_E4typeEOS5_ # -- Begin function _ZSt4moveIRSt6vectorIiSaIiEEEONSt16remove_referenceIT_E4typeEOS5_
	.p2align	4, 0x90
	.type	_ZSt4moveIRSt6vectorIiSaIiEEEONSt16remove_referenceIT_E4typeEOS5_,@function
_ZSt4moveIRSt6vectorIiSaIiEEEONSt16remove_referenceIT_E4typeEOS5_: # @_ZSt4moveIRSt6vectorIiSaIiEEEONSt16remove_referenceIT_E4typeEOS5_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end60:
	.size	_ZSt4moveIRSt6vectorIiSaIiEEEONSt16remove_referenceIT_E4typeEOS5_, .Lfunc_end60-_ZSt4moveIRSt6vectorIiSaIiEEEONSt16remove_referenceIT_E4typeEOS5_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt12_Vector_baseIiSaIiEE13get_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIiSaIiEE13get_allocatorEv,comdat
	.weak	_ZNKSt12_Vector_baseIiSaIiEE13get_allocatorEv # -- Begin function _ZNKSt12_Vector_baseIiSaIiEE13get_allocatorEv
	.p2align	4, 0x90
	.type	_ZNKSt12_Vector_baseIiSaIiEE13get_allocatorEv,@function
_ZNKSt12_Vector_baseIiSaIiEE13get_allocatorEv: # @_ZNKSt12_Vector_baseIiSaIiEE13get_allocatorEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, %rax
	movq	%rsi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	_ZNSaIiEC2ERKS_
	movq	-24(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end61:
	.size	_ZNKSt12_Vector_baseIiSaIiEE13get_allocatorEv, .Lfunc_end61-_ZNKSt12_Vector_baseIiSaIiEE13get_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEEC2ERKS0_,"axG",@progbits,_ZNSt6vectorIiSaIiEEC2ERKS0_,comdat
	.weak	_ZNSt6vectorIiSaIiEEC2ERKS0_ # -- Begin function _ZNSt6vectorIiSaIiEEC2ERKS0_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIiSaIiEEC2ERKS0_,@function
_ZNSt6vectorIiSaIiEEC2ERKS0_:           # @_ZNSt6vectorIiSaIiEEC2ERKS0_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end62:
	.size	_ZNSt6vectorIiSaIiEEC2ERKS0_, .Lfunc_end62-_ZNSt6vectorIiSaIiEEC2ERKS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIiSaIiEE12_Vector_impl12_M_swap_dataERS2_,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE12_Vector_impl12_M_swap_dataERS2_,comdat
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_impl12_M_swap_dataERS2_ # -- Begin function _ZNSt12_Vector_baseIiSaIiEE12_Vector_impl12_M_swap_dataERS2_
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIiSaIiEE12_Vector_impl12_M_swap_dataERS2_,@function
_ZNSt12_Vector_baseIiSaIiEE12_Vector_impl12_M_swap_dataERS2_: # @_ZNSt12_Vector_baseIiSaIiEE12_Vector_impl12_M_swap_dataERS2_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	callq	_ZSt4swapIPiENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	$8, %rax
	movq	-16(%rbp), %rsi
	addq	$8, %rsi
	movq	%rax, %rdi
	callq	_ZSt4swapIPiENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	$16, %rax
	movq	-16(%rbp), %rsi
	addq	$16, %rsi
	movq	%rax, %rdi
	callq	_ZSt4swapIPiENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end63:
	.size	_ZNSt12_Vector_baseIiSaIiEE12_Vector_impl12_M_swap_dataERS2_, .Lfunc_end63-_ZNSt12_Vector_baseIiSaIiEE12_Vector_impl12_M_swap_dataERS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt15__alloc_on_moveISaIiEEvRT_S2_,"axG",@progbits,_ZSt15__alloc_on_moveISaIiEEvRT_S2_,comdat
	.weak	_ZSt15__alloc_on_moveISaIiEEvRT_S2_ # -- Begin function _ZSt15__alloc_on_moveISaIiEEvRT_S2_
	.p2align	4, 0x90
	.type	_ZSt15__alloc_on_moveISaIiEEvRT_S2_,@function
_ZSt15__alloc_on_moveISaIiEEvRT_S2_:    # @_ZSt15__alloc_on_moveISaIiEEvRT_S2_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZSt18__do_alloc_on_moveISaIiEEvRT_S2_St17integral_constantIbLb1EE
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end64:
	.size	_ZSt15__alloc_on_moveISaIiEEvRT_S2_, .Lfunc_end64-_ZSt15__alloc_on_moveISaIiEEvRT_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv # -- Begin function _ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,@function
_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv: # @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end65:
	.size	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, .Lfunc_end65-_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv # -- Begin function _ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.p2align	4, 0x90
	.type	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,@function
_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv: # @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end66:
	.size	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, .Lfunc_end66-_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSaIiEC2ERKS_,"axG",@progbits,_ZNSaIiEC2ERKS_,comdat
	.weak	_ZNSaIiEC2ERKS_         # -- Begin function _ZNSaIiEC2ERKS_
	.p2align	4, 0x90
	.type	_ZNSaIiEC2ERKS_,@function
_ZNSaIiEC2ERKS_:                        # @_ZNSaIiEC2ERKS_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end67:
	.size	_ZNSaIiEC2ERKS_, .Lfunc_end67-_ZNSaIiEC2ERKS_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_ # -- Begin function _ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_,@function
_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_: # @_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end68:
	.size	_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_, .Lfunc_end68-_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIiSaIiEEC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_,comdat
	.weak	_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_ # -- Begin function _ZNSt12_Vector_baseIiSaIiEEC2ERKS0_
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_,@function
_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_:    # @_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end69:
	.size	_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_, .Lfunc_end69-_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_,comdat
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_ # -- Begin function _ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_,@function
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_: # @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	-16(%rbp), %rax
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	callq	_ZNSaIiEC2ERKS_
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end70:
	.size	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, .Lfunc_end70-_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt4swapIPiENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_,"axG",@progbits,_ZSt4swapIPiENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_,comdat
	.weak	_ZSt4swapIPiENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_ # -- Begin function _ZSt4swapIPiENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_
	.p2align	4, 0x90
	.type	_ZSt4swapIPiENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_,@function
_ZSt4swapIPiENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_: # @_ZSt4swapIPiENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_
	movq	(%rax), %rax
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi)
	leaq	-24(%rbp), %rdi
	callq	_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_
	movq	(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsi)
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end71:
	.size	_ZSt4swapIPiENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_, .Lfunc_end71-_ZSt4swapIPiENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_,"axG",@progbits,_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_,comdat
	.weak	_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_ # -- Begin function _ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_
	.p2align	4, 0x90
	.type	_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_,@function
_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_: # @_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end72:
	.size	_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_, .Lfunc_end72-_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt18__do_alloc_on_moveISaIiEEvRT_S2_St17integral_constantIbLb1EE,"axG",@progbits,_ZSt18__do_alloc_on_moveISaIiEEvRT_S2_St17integral_constantIbLb1EE,comdat
	.weak	_ZSt18__do_alloc_on_moveISaIiEEvRT_S2_St17integral_constantIbLb1EE # -- Begin function _ZSt18__do_alloc_on_moveISaIiEEvRT_S2_St17integral_constantIbLb1EE
	.p2align	4, 0x90
	.type	_ZSt18__do_alloc_on_moveISaIiEEvRT_S2_St17integral_constantIbLb1EE,@function
_ZSt18__do_alloc_on_moveISaIiEEvRT_S2_St17integral_constantIbLb1EE: # @_ZSt18__do_alloc_on_moveISaIiEEvRT_S2_St17integral_constantIbLb1EE
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	_ZSt4moveIRSaIiEEONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, -32(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end73:
	.size	_ZSt18__do_alloc_on_moveISaIiEEvRT_S2_St17integral_constantIbLb1EE, .Lfunc_end73-_ZSt18__do_alloc_on_moveISaIiEEvRT_S2_St17integral_constantIbLb1EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt4moveIRSaIiEEONSt16remove_referenceIT_E4typeEOS3_,"axG",@progbits,_ZSt4moveIRSaIiEEONSt16remove_referenceIT_E4typeEOS3_,comdat
	.weak	_ZSt4moveIRSaIiEEONSt16remove_referenceIT_E4typeEOS3_ # -- Begin function _ZSt4moveIRSaIiEEONSt16remove_referenceIT_E4typeEOS3_
	.p2align	4, 0x90
	.type	_ZSt4moveIRSaIiEEONSt16remove_referenceIT_E4typeEOS3_,@function
_ZSt4moveIRSaIiEEONSt16remove_referenceIT_E4typeEOS3_: # @_ZSt4moveIRSaIiEEONSt16remove_referenceIT_E4typeEOS3_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end74:
	.size	_ZSt4moveIRSaIiEEONSt16remove_referenceIT_E4typeEOS3_, .Lfunc_end74-_ZSt4moveIRSaIiEEONSt16remove_referenceIT_E4typeEOS3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIiEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiEC2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIiEC2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorIiEC2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIiEC2Ev,@function
_ZN9__gnu_cxx13new_allocatorIiEC2Ev:    # @_ZN9__gnu_cxx13new_allocatorIiEC2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end75:
	.size	_ZN9__gnu_cxx13new_allocatorIiEC2Ev, .Lfunc_end75-_ZN9__gnu_cxx13new_allocatorIiEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIiED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiED2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIiED2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorIiED2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIiED2Ev,@function
_ZN9__gnu_cxx13new_allocatorIiED2Ev:    # @_ZN9__gnu_cxx13new_allocatorIiED2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end76:
	.size	_ZN9__gnu_cxx13new_allocatorIiED2Ev, .Lfunc_end76-_ZN9__gnu_cxx13new_allocatorIiED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEE19_M_range_initializeIPKiEEvT_S5_St20forward_iterator_tag,"axG",@progbits,_ZNSt6vectorIiSaIiEE19_M_range_initializeIPKiEEvT_S5_St20forward_iterator_tag,comdat
	.weak	_ZNSt6vectorIiSaIiEE19_M_range_initializeIPKiEEvT_S5_St20forward_iterator_tag # -- Begin function _ZNSt6vectorIiSaIiEE19_M_range_initializeIPKiEEvT_S5_St20forward_iterator_tag
	.p2align	4, 0x90
	.type	_ZNSt6vectorIiSaIiEE19_M_range_initializeIPKiEEvT_S5_St20forward_iterator_tag,@function
_ZNSt6vectorIiSaIiEE19_M_range_initializeIPKiEEvT_S5_St20forward_iterator_tag: # @_ZNSt6vectorIiSaIiEE19_M_range_initializeIPKiEEvT_S5_St20forward_iterator_tag
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	_ZSt8distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rax, (%rdx)
	movq	(%rdx), %rax
	movq	-40(%rbp), %rsi
	shlq	$2, %rsi
	addq	%rsi, %rax
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	(%rdx), %rdx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	_ZSt22__uninitialized_copy_aIPKiPiiET0_T_S4_S3_RSaIT1_E
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, 8(%rcx)
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end77:
	.size	_ZNSt6vectorIiSaIiEE19_M_range_initializeIPKiEEvT_S5_St20forward_iterator_tag, .Lfunc_end77-_ZNSt6vectorIiSaIiEE19_M_range_initializeIPKiEEvT_S5_St20forward_iterator_tag
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt16initializer_listIiE5beginEv,"axG",@progbits,_ZNKSt16initializer_listIiE5beginEv,comdat
	.weak	_ZNKSt16initializer_listIiE5beginEv # -- Begin function _ZNKSt16initializer_listIiE5beginEv
	.p2align	4, 0x90
	.type	_ZNKSt16initializer_listIiE5beginEv,@function
_ZNKSt16initializer_listIiE5beginEv:    # @_ZNKSt16initializer_listIiE5beginEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end78:
	.size	_ZNKSt16initializer_listIiE5beginEv, .Lfunc_end78-_ZNKSt16initializer_listIiE5beginEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt16initializer_listIiE3endEv,"axG",@progbits,_ZNKSt16initializer_listIiE3endEv,comdat
	.weak	_ZNKSt16initializer_listIiE3endEv # -- Begin function _ZNKSt16initializer_listIiE3endEv
	.p2align	4, 0x90
	.type	_ZNKSt16initializer_listIiE3endEv,@function
_ZNKSt16initializer_listIiE3endEv:      # @_ZNKSt16initializer_listIiE3endEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	_ZNKSt16initializer_listIiE5beginEv
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	_ZNKSt16initializer_listIiE4sizeEv
	shlq	$2, %rax
	movq	-24(%rbp), %rdi         # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end79:
	.size	_ZNKSt16initializer_listIiE3endEv, .Lfunc_end79-_ZNKSt16initializer_listIiE3endEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIiSaIiEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEED2Ev,comdat
	.weak	_ZNSt12_Vector_baseIiSaIiEED2Ev # -- Begin function _ZNSt12_Vector_baseIiSaIiEED2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIiSaIiEED2Ev,@function
_ZNSt12_Vector_baseIiSaIiEED2Ev:        # @_ZNSt12_Vector_baseIiSaIiEED2Ev
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception10
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	movq	16(%rdi), %rcx
	subq	%rax, %rcx
	sarq	$2, %rcx
.Ltmp237:
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
.Ltmp238:
	jmp	.LBB80_1
.LBB80_1:                               # %invoke.cont
	movq	-32(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB80_2:                               # %lpad
	.cfi_def_cfa %rbp, 16
.Ltmp239:
	movl	%edx, %ecx
	movq	%rax, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-32(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
# %bb.3:                                # %terminate.handler
	movq	-16(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end80:
	.size	_ZNSt12_Vector_baseIiSaIiEED2Ev, .Lfunc_end80-_ZNSt12_Vector_baseIiSaIiEED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table80:
.Lexception10:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Ltmp237-.Lfunc_begin10 # >> Call Site 1 <<
	.uleb128 .Ltmp238-.Ltmp237      #   Call between .Ltmp237 and .Ltmp238
	.uleb128 .Ltmp239-.Lfunc_begin10 #     jumps to .Ltmp239
	.byte	1                       #   On action: 1
.Lcst_end10:
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
.Lttbase6:
	.p2align	2
                                        # -- End function
	.section	.text._ZSt8distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_,"axG",@progbits,_ZSt8distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_,comdat
	.weak	_ZSt8distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_ # -- Begin function _ZSt8distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.p2align	4, 0x90
	.type	_ZSt8distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_,@function
_ZSt8distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_: # @_ZSt8distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	-8(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	_ZSt19__iterator_categoryIPKiENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	_ZSt10__distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end81:
	.size	_ZSt8distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_, .Lfunc_end81-_ZSt8distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm,comdat
	.weak	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm # -- Begin function _ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm,@function
_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm: # @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	$0, -16(%rbp)
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	je	.LBB82_2
# %bb.1:                                # %cond.true
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZNSt16allocator_traitsISaIiEE8allocateERS0_m
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB82_3
.LBB82_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB82_3
.LBB82_3:                               # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end82:
	.size	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, .Lfunc_end82-_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt22__uninitialized_copy_aIPKiPiiET0_T_S4_S3_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIPKiPiiET0_T_S4_S3_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIPKiPiiET0_T_S4_S3_RSaIT1_E # -- Begin function _ZSt22__uninitialized_copy_aIPKiPiiET0_T_S4_S3_RSaIT1_E
	.p2align	4, 0x90
	.type	_ZSt22__uninitialized_copy_aIPKiPiiET0_T_S4_S3_RSaIT1_E,@function
_ZSt22__uninitialized_copy_aIPKiPiiET0_T_S4_S3_RSaIT1_E: # @_ZSt22__uninitialized_copy_aIPKiPiiET0_T_S4_S3_RSaIT1_E
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZSt18uninitialized_copyIPKiPiET0_T_S4_S3_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end83:
	.size	_ZSt22__uninitialized_copy_aIPKiPiiET0_T_S4_S3_RSaIT1_E, .Lfunc_end83-_ZSt22__uninitialized_copy_aIPKiPiiET0_T_S4_S3_RSaIT1_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt10__distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag,comdat
	.weak	_ZSt10__distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag # -- Begin function _ZSt10__distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.p2align	4, 0x90
	.type	_ZSt10__distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag,@function
_ZSt10__distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag: # @_ZSt10__distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	subq	%rdi, %rsi
	sarq	$2, %rsi
	movq	%rsi, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end84:
	.size	_ZSt10__distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, .Lfunc_end84-_ZSt10__distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt19__iterator_categoryIPKiENSt15iterator_traitsIT_E17iterator_categoryERKS3_,"axG",@progbits,_ZSt19__iterator_categoryIPKiENSt15iterator_traitsIT_E17iterator_categoryERKS3_,comdat
	.weak	_ZSt19__iterator_categoryIPKiENSt15iterator_traitsIT_E17iterator_categoryERKS3_ # -- Begin function _ZSt19__iterator_categoryIPKiENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.p2align	4, 0x90
	.type	_ZSt19__iterator_categoryIPKiENSt15iterator_traitsIT_E17iterator_categoryERKS3_,@function
_ZSt19__iterator_categoryIPKiENSt15iterator_traitsIT_E17iterator_categoryERKS3_: # @_ZSt19__iterator_categoryIPKiENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end85:
	.size	_ZSt19__iterator_categoryIPKiENSt15iterator_traitsIT_E17iterator_categoryERKS3_, .Lfunc_end85-_ZSt19__iterator_categoryIPKiENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaIiEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIiEE8allocateERS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaIiEE8allocateERS0_m # -- Begin function _ZNSt16allocator_traitsISaIiEE8allocateERS0_m
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaIiEE8allocateERS0_m,@function
_ZNSt16allocator_traitsISaIiEE8allocateERS0_m: # @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end86:
	.size	_ZNSt16allocator_traitsISaIiEE8allocateERS0_m, .Lfunc_end86-_ZNSt16allocator_traitsISaIiEE8allocateERS0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv # -- Begin function _ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv,@function
_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv: # @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv
	movq	-32(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jbe	.LBB87_2
# %bb.1:                                # %if.then
	callq	_ZSt17__throw_bad_allocv
.LBB87_2:                               # %if.end
	movq	-16(%rbp), %rax
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	_Znwm
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end87:
	.size	_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv, .Lfunc_end87-_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv,comdat
	.weak	_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv # -- Begin function _ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv,@function
_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv: # @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movabsq	$4611686018427387903, %rax # imm = 0x3FFFFFFFFFFFFFFF
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end88:
	.size	_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv, .Lfunc_end88-_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt18uninitialized_copyIPKiPiET0_T_S4_S3_,"axG",@progbits,_ZSt18uninitialized_copyIPKiPiET0_T_S4_S3_,comdat
	.weak	_ZSt18uninitialized_copyIPKiPiET0_T_S4_S3_ # -- Begin function _ZSt18uninitialized_copyIPKiPiET0_T_S4_S3_
	.p2align	4, 0x90
	.type	_ZSt18uninitialized_copyIPKiPiET0_T_S4_S3_,@function
_ZSt18uninitialized_copyIPKiPiET0_T_S4_S3_: # @_ZSt18uninitialized_copyIPKiPiET0_T_S4_S3_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movb	$1, -25(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKiPiEET0_T_S6_S5_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end89:
	.size	_ZSt18uninitialized_copyIPKiPiET0_T_S4_S3_, .Lfunc_end89-_ZSt18uninitialized_copyIPKiPiET0_T_S4_S3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKiPiEET0_T_S6_S5_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKiPiEET0_T_S6_S5_,comdat
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKiPiEET0_T_S6_S5_ # -- Begin function _ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKiPiEET0_T_S6_S5_
	.p2align	4, 0x90
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKiPiEET0_T_S6_S5_,@function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKiPiEET0_T_S6_S5_: # @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKiPiEET0_T_S6_S5_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZSt4copyIPKiPiET0_T_S4_S3_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end90:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKiPiEET0_T_S6_S5_, .Lfunc_end90-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKiPiEET0_T_S6_S5_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt4copyIPKiPiET0_T_S4_S3_,"axG",@progbits,_ZSt4copyIPKiPiET0_T_S4_S3_,comdat
	.weak	_ZSt4copyIPKiPiET0_T_S4_S3_ # -- Begin function _ZSt4copyIPKiPiET0_T_S4_S3_
	.p2align	4, 0x90
	.type	_ZSt4copyIPKiPiET0_T_S4_S3_,@function
_ZSt4copyIPKiPiET0_T_S4_S3_:            # @_ZSt4copyIPKiPiET0_T_S4_S3_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZSt12__miter_baseIPKiET_S2_
	movq	-16(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	_ZSt12__miter_baseIPKiET_S2_
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end91:
	.size	_ZSt4copyIPKiPiET0_T_S4_S3_, .Lfunc_end91-_ZSt4copyIPKiPiET0_T_S4_S3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_ # -- Begin function _ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_
	.p2align	4, 0x90
	.type	_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_,@function
_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_: # @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZSt12__niter_baseIPKiET_S2_
	movq	-16(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	_ZSt12__niter_baseIPKiET_S2_
	movq	-24(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	_ZSt12__niter_baseIPiET_S1_
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end92:
	.size	_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_, .Lfunc_end92-_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__miter_baseIPKiET_S2_,"axG",@progbits,_ZSt12__miter_baseIPKiET_S2_,comdat
	.weak	_ZSt12__miter_baseIPKiET_S2_ # -- Begin function _ZSt12__miter_baseIPKiET_S2_
	.p2align	4, 0x90
	.type	_ZSt12__miter_baseIPKiET_S2_,@function
_ZSt12__miter_baseIPKiET_S2_:           # @_ZSt12__miter_baseIPKiET_S2_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end93:
	.size	_ZSt12__miter_baseIPKiET_S2_, .Lfunc_end93-_ZSt12__miter_baseIPKiET_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_,"axG",@progbits,_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_,comdat
	.weak	_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_ # -- Begin function _ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_
	.p2align	4, 0x90
	.type	_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_,@function
_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_: # @_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movb	$1, -25(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end94:
	.size	_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_, .Lfunc_end94-_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__niter_baseIPKiET_S2_,"axG",@progbits,_ZSt12__niter_baseIPKiET_S2_,comdat
	.weak	_ZSt12__niter_baseIPKiET_S2_ # -- Begin function _ZSt12__niter_baseIPKiET_S2_
	.p2align	4, 0x90
	.type	_ZSt12__niter_baseIPKiET_S2_,@function
_ZSt12__niter_baseIPKiET_S2_:           # @_ZSt12__niter_baseIPKiET_S2_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end95:
	.size	_ZSt12__niter_baseIPKiET_S2_, .Lfunc_end95-_ZSt12__niter_baseIPKiET_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__niter_baseIPiET_S1_,"axG",@progbits,_ZSt12__niter_baseIPiET_S1_,comdat
	.weak	_ZSt12__niter_baseIPiET_S1_ # -- Begin function _ZSt12__niter_baseIPiET_S1_
	.p2align	4, 0x90
	.type	_ZSt12__niter_baseIPiET_S1_,@function
_ZSt12__niter_baseIPiET_S1_:            # @_ZSt12__niter_baseIPiET_S1_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end96:
	.size	_ZSt12__niter_baseIPiET_S1_, .Lfunc_end96-_ZSt12__niter_baseIPiET_S1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_ # -- Begin function _ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_
	.p2align	4, 0x90
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_,@function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_: # @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	subq	%rsi, %rdx
	sarq	$2, %rdx
	movq	%rdx, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB97_2
# %bb.1:                                # %if.then
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rdx
	shlq	$2, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memmove
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB97_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end97:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_, .Lfunc_end97-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt16initializer_listIiE4sizeEv,"axG",@progbits,_ZNKSt16initializer_listIiE4sizeEv,comdat
	.weak	_ZNKSt16initializer_listIiE4sizeEv # -- Begin function _ZNKSt16initializer_listIiE4sizeEv
	.p2align	4, 0x90
	.type	_ZNKSt16initializer_listIiE4sizeEv,@function
_ZNKSt16initializer_listIiE4sizeEv:     # @_ZNKSt16initializer_listIiE4sizeEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end98:
	.size	_ZNKSt16initializer_listIiE4sizeEv, .Lfunc_end98-_ZNKSt16initializer_listIiE4sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim,comdat
	.weak	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim # -- Begin function _ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim,@function
_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim: # @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	cmpq	$0, -16(%rbp)
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	je	.LBB99_2
# %bb.1:                                # %if.then
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim
.LBB99_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end99:
	.size	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, .Lfunc_end99-_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev,comdat
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev # -- Begin function _ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev,@function
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev: # @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSaIiED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end100:
	.size	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev, .Lfunc_end100-_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim,"axG",@progbits,_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim,comdat
	.weak	_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim # -- Begin function _ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim,@function
_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim: # @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-32(%rbp), %rdx         # 8-byte Reload
	callq	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end101:
	.size	_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim, .Lfunc_end101-_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim # -- Begin function _ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim,@function
_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim: # @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	callq	_ZdlPv
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end102:
	.size	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim, .Lfunc_end102-_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt8_DestroyIPiiEvT_S1_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E # -- Begin function _ZSt8_DestroyIPiiEvT_S1_RSaIT0_E
	.p2align	4, 0x90
	.type	_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E,@function
_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E:       # @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZSt8_DestroyIPiEvT_S1_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end103:
	.size	_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, .Lfunc_end103-_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt8_DestroyIPiEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPiEvT_S1_,comdat
	.weak	_ZSt8_DestroyIPiEvT_S1_ # -- Begin function _ZSt8_DestroyIPiEvT_S1_
	.p2align	4, 0x90
	.type	_ZSt8_DestroyIPiEvT_S1_,@function
_ZSt8_DestroyIPiEvT_S1_:                # @_ZSt8_DestroyIPiEvT_S1_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end104:
	.size	_ZSt8_DestroyIPiEvT_S1_, .Lfunc_end104-_ZSt8_DestroyIPiEvT_S1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_ # -- Begin function _ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	.p2align	4, 0x90
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_,@function
_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_: # @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end105:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_, .Lfunc_end105-_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN15uniform_randgenIfEC2Effj,"axG",@progbits,_ZN15uniform_randgenIfEC2Effj,comdat
	.weak	_ZN15uniform_randgenIfEC2Effj # -- Begin function _ZN15uniform_randgenIfEC2Effj
	.p2align	4, 0x90
	.type	_ZN15uniform_randgenIfEC2Effj,@function
_ZN15uniform_randgenIfEC2Effj:          # @_ZN15uniform_randgenIfEC2Effj
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movss	%xmm1, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	callq	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEC2Em
	movq	-32(%rbp), %rcx         # 8-byte Reload
	addq	$8, %rcx
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-16(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rcx, %rdi
	callq	_ZNSt25uniform_real_distributionIfEC2Eff
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE4seedEm
	movq	-32(%rbp), %rcx         # 8-byte Reload
	addq	$8, %rcx
	movq	%rcx, %rdi
	movq	-32(%rbp), %rsi         # 8-byte Reload
	callq	_ZNSt25uniform_real_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movss	%xmm0, 16(%rcx)
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end106:
	.size	_ZN15uniform_randgenIfEC2Effj, .Lfunc_end106-_ZN15uniform_randgenIfEC2Effj
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6TensorIfEC2I15uniform_randgenIfEEERKSt6vectorIiSaIiEET_,"axG",@progbits,_ZN6TensorIfEC2I15uniform_randgenIfEEERKSt6vectorIiSaIiEET_,comdat
	.weak	_ZN6TensorIfEC2I15uniform_randgenIfEEERKSt6vectorIiSaIiEET_ # -- Begin function _ZN6TensorIfEC2I15uniform_randgenIfEEERKSt6vectorIiSaIiEET_
	.p2align	4, 0x90
	.type	_ZN6TensorIfEC2I15uniform_randgenIfEEERKSt6vectorIiSaIiEET_,@function
_ZN6TensorIfEC2I15uniform_randgenIfEEERKSt6vectorIiSaIiEET_: # @_ZN6TensorIfEC2I15uniform_randgenIfEEERKSt6vectorIiSaIiEET_
.Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception11
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	leaq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	_ZN6TensorIfEC2ERKSt6vectorIiSaIiEE
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	_ZNSt6vectorIfSaIfEE5beginEv
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	_ZNSt6vectorIfSaIfEE3endEv
	movq	%rax, -40(%rbp)
.LBB107_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	leaq	-32(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	_ZN9__gnu_cxxneIPfSt6vectorIfSaIfEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	testb	$1, %al
	jne	.LBB107_2
	jmp	.LBB107_7
.LBB107_2:                              # %for.body
                                        #   in Loop: Header=BB107_1 Depth=1
	leaq	-32(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEdeEv
	movq	%rax, -48(%rbp)
.Ltmp240:
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	_ZN15uniform_randgenIfEdeEv
.Ltmp241:
	movss	%xmm0, -92(%rbp)        # 4-byte Spill
	jmp	.LBB107_3
.LBB107_3:                              # %invoke.cont
                                        #   in Loop: Header=BB107_1 Depth=1
	movq	-48(%rbp), %rax
	movss	-92(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rax)
.Ltmp242:
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	_ZN15uniform_randgenIfEppEv
.Ltmp243:
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB107_4
.LBB107_4:                              # %invoke.cont7
                                        #   in Loop: Header=BB107_1 Depth=1
	jmp	.LBB107_5
.LBB107_5:                              # %for.inc
                                        #   in Loop: Header=BB107_1 Depth=1
	leaq	-32(%rbp), %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEppEv
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB107_1
.LBB107_6:                              # %lpad
.Ltmp244:
	movl	%edx, %ecx
	movq	%rax, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	_ZN6TensorIfED2Ev
	jmp	.LBB107_8
.LBB107_7:                              # %for.end
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB107_8:                              # %eh.resume
	.cfi_def_cfa %rbp, 16
	movq	-56(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end107:
	.size	_ZN6TensorIfEC2I15uniform_randgenIfEEERKSt6vectorIiSaIiEET_, .Lfunc_end107-_ZN6TensorIfEC2I15uniform_randgenIfEEERKSt6vectorIiSaIiEET_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table107:
.Lexception11:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Lfunc_begin11-.Lfunc_begin11 # >> Call Site 1 <<
	.uleb128 .Ltmp240-.Lfunc_begin11 #   Call between .Lfunc_begin11 and .Ltmp240
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp240-.Lfunc_begin11 # >> Call Site 2 <<
	.uleb128 .Ltmp243-.Ltmp240      #   Call between .Ltmp240 and .Ltmp243
	.uleb128 .Ltmp244-.Lfunc_begin11 #     jumps to .Ltmp244
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp243-.Lfunc_begin11 # >> Call Site 3 <<
	.uleb128 .Lfunc_end107-.Ltmp243 #   Call between .Ltmp243 and .Lfunc_end107
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end11:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEC2Em,"axG",@progbits,_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEC2Em,comdat
	.weak	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEC2Em # -- Begin function _ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEC2Em
	.p2align	4, 0x90
	.type	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEC2Em,@function
_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEC2Em: # @_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEC2Em
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE4seedEm
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end108:
	.size	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEC2Em, .Lfunc_end108-_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEC2Em
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt25uniform_real_distributionIfEC2Eff,"axG",@progbits,_ZNSt25uniform_real_distributionIfEC2Eff,comdat
	.weak	_ZNSt25uniform_real_distributionIfEC2Eff # -- Begin function _ZNSt25uniform_real_distributionIfEC2Eff
	.p2align	4, 0x90
	.type	_ZNSt25uniform_real_distributionIfEC2Eff,@function
_ZNSt25uniform_real_distributionIfEC2Eff: # @_ZNSt25uniform_real_distributionIfEC2Eff
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movss	%xmm1, -16(%rbp)
	movq	-8(%rbp), %rdi
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-16(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	callq	_ZNSt25uniform_real_distributionIfE10param_typeC2Eff
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end109:
	.size	_ZNSt25uniform_real_distributionIfEC2Eff, .Lfunc_end109-_ZNSt25uniform_real_distributionIfEC2Eff
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE4seedEm,"axG",@progbits,_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE4seedEm,comdat
	.weak	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE4seedEm # -- Begin function _ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE4seedEm
	.p2align	4, 0x90
	.type	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE4seedEm,@function
_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE4seedEm: # @_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE4seedEm
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	_ZNSt8__detail5__modImLm2147483647ELm1ELm0EEET_S1_
	cmpq	$0, %rax
	jne	.LBB110_3
# %bb.1:                                # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	_ZNSt8__detail5__modImLm2147483647ELm1ELm0EEET_S1_
	cmpq	$0, %rax
	jne	.LBB110_3
# %bb.2:                                # %if.then
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	$1, (%rax)
	jmp	.LBB110_4
.LBB110_3:                              # %if.else
	movq	-16(%rbp), %rdi
	callq	_ZNSt8__detail5__modImLm2147483647ELm1ELm0EEET_S1_
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, (%rdi)
.LBB110_4:                              # %if.end
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end110:
	.size	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE4seedEm, .Lfunc_end110-_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE4seedEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt25uniform_real_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_,"axG",@progbits,_ZNSt25uniform_real_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_,comdat
	.weak	_ZNSt25uniform_real_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_ # -- Begin function _ZNSt25uniform_real_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_
	.p2align	4, 0x90
	.type	_ZNSt25uniform_real_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_,@function
_ZNSt25uniform_real_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_: # @_ZNSt25uniform_real_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-32(%rbp), %rdx         # 8-byte Reload
	callq	_ZNSt25uniform_real_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_RKNS0_10param_typeE
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end111:
	.size	_ZNSt25uniform_real_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_, .Lfunc_end111-_ZNSt25uniform_real_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt25uniform_real_distributionIfE10param_typeC2Eff,"axG",@progbits,_ZNSt25uniform_real_distributionIfE10param_typeC2Eff,comdat
	.weak	_ZNSt25uniform_real_distributionIfE10param_typeC2Eff # -- Begin function _ZNSt25uniform_real_distributionIfE10param_typeC2Eff
	.p2align	4, 0x90
	.type	_ZNSt25uniform_real_distributionIfE10param_typeC2Eff,@function
_ZNSt25uniform_real_distributionIfE10param_typeC2Eff: # @_ZNSt25uniform_real_distributionIfE10param_typeC2Eff
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movss	%xmm1, -16(%rbp)
	movq	-8(%rbp), %rdi
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rdi)
	movss	-16(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 4(%rdi)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end112:
	.size	_ZNSt25uniform_real_distributionIfE10param_typeC2Eff, .Lfunc_end112-_ZNSt25uniform_real_distributionIfE10param_typeC2Eff
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8__detail5__modImLm2147483647ELm1ELm0EEET_S1_,"axG",@progbits,_ZNSt8__detail5__modImLm2147483647ELm1ELm0EEET_S1_,comdat
	.weak	_ZNSt8__detail5__modImLm2147483647ELm1ELm0EEET_S1_ # -- Begin function _ZNSt8__detail5__modImLm2147483647ELm1ELm0EEET_S1_
	.p2align	4, 0x90
	.type	_ZNSt8__detail5__modImLm2147483647ELm1ELm0EEET_S1_,@function
_ZNSt8__detail5__modImLm2147483647ELm1ELm0EEET_S1_: # @_ZNSt8__detail5__modImLm2147483647ELm1ELm0EEET_S1_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt8__detail4_ModImLm2147483647ELm1ELm0ELb1ELb1EE6__calcEm
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end113:
	.size	_ZNSt8__detail5__modImLm2147483647ELm1ELm0EEET_S1_, .Lfunc_end113-_ZNSt8__detail5__modImLm2147483647ELm1ELm0EEET_S1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8__detail4_ModImLm2147483647ELm1ELm0ELb1ELb1EE6__calcEm,"axG",@progbits,_ZNSt8__detail4_ModImLm2147483647ELm1ELm0ELb1ELb1EE6__calcEm,comdat
	.weak	_ZNSt8__detail4_ModImLm2147483647ELm1ELm0ELb1ELb1EE6__calcEm # -- Begin function _ZNSt8__detail4_ModImLm2147483647ELm1ELm0ELb1ELb1EE6__calcEm
	.p2align	4, 0x90
	.type	_ZNSt8__detail4_ModImLm2147483647ELm1ELm0ELb1ELb1EE6__calcEm,@function
_ZNSt8__detail4_ModImLm2147483647ELm1ELm0ELb1ELb1EE6__calcEm: # @_ZNSt8__detail4_ModImLm2147483647ELm1ELm0ELb1ELb1EE6__calcEm
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	shlq	$0, %rdi
	addq	$0, %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	%rcx
	movq	%rdx, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end114:
	.size	_ZNSt8__detail4_ModImLm2147483647ELm1ELm0ELb1ELb1EE6__calcEm, .Lfunc_end114-_ZNSt8__detail4_ModImLm2147483647ELm1ELm0ELb1ELb1EE6__calcEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt25uniform_real_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_RKNS0_10param_typeE,"axG",@progbits,_ZNSt25uniform_real_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_RKNS0_10param_typeE,comdat
	.weak	_ZNSt25uniform_real_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_RKNS0_10param_typeE # -- Begin function _ZNSt25uniform_real_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_RKNS0_10param_typeE
	.p2align	4, 0x90
	.type	_ZNSt25uniform_real_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_RKNS0_10param_typeE,@function
_ZNSt25uniform_real_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_RKNS0_10param_typeE: # @_ZNSt25uniform_real_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_RKNS0_10param_typeE
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rsi
	leaq	-32(%rbp), %rdi
	callq	_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEC2ERS2_
	leaq	-32(%rbp), %rdi
	callq	_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEclEv
	movq	-24(%rbp), %rdi
	movss	%xmm0, -36(%rbp)        # 4-byte Spill
	callq	_ZNKSt25uniform_real_distributionIfE10param_type1bEv
	movq	-24(%rbp), %rdi
	movss	%xmm0, -40(%rbp)        # 4-byte Spill
	callq	_ZNKSt25uniform_real_distributionIfE10param_type1aEv
	movss	-40(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	-36(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movq	-24(%rbp), %rdi
	movss	%xmm0, -44(%rbp)        # 4-byte Spill
	callq	_ZNKSt25uniform_real_distributionIfE10param_type1aEv
	movss	-44(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end115:
	.size	_ZNSt25uniform_real_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_RKNS0_10param_typeE, .Lfunc_end115-_ZNSt25uniform_real_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_RKNS0_10param_typeE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEC2ERS2_,"axG",@progbits,_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEC2ERS2_,comdat
	.weak	_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEC2ERS2_ # -- Begin function _ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEC2ERS2_
	.p2align	4, 0x90
	.type	_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEC2ERS2_,@function
_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEC2ERS2_: # @_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEC2ERS2_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, (%rsi)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end116:
	.size	_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEC2ERS2_, .Lfunc_end116-_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEC2ERS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEclEv,"axG",@progbits,_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEclEv,comdat
	.weak	_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEclEv # -- Begin function _ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEclEv
	.p2align	4, 0x90
	.type	_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEclEv,@function
_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEclEv: # @_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEclEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	_ZSt18generate_canonicalIfLm24ESt26linear_congruential_engineImLm16807ELm0ELm2147483647EEET_RT1_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end117:
	.size	_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEclEv, .Lfunc_end117-_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEclEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt25uniform_real_distributionIfE10param_type1bEv,"axG",@progbits,_ZNKSt25uniform_real_distributionIfE10param_type1bEv,comdat
	.weak	_ZNKSt25uniform_real_distributionIfE10param_type1bEv # -- Begin function _ZNKSt25uniform_real_distributionIfE10param_type1bEv
	.p2align	4, 0x90
	.type	_ZNKSt25uniform_real_distributionIfE10param_type1bEv,@function
_ZNKSt25uniform_real_distributionIfE10param_type1bEv: # @_ZNKSt25uniform_real_distributionIfE10param_type1bEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movss	4(%rdi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end118:
	.size	_ZNKSt25uniform_real_distributionIfE10param_type1bEv, .Lfunc_end118-_ZNKSt25uniform_real_distributionIfE10param_type1bEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt25uniform_real_distributionIfE10param_type1aEv,"axG",@progbits,_ZNKSt25uniform_real_distributionIfE10param_type1aEv,comdat
	.weak	_ZNKSt25uniform_real_distributionIfE10param_type1aEv # -- Begin function _ZNKSt25uniform_real_distributionIfE10param_type1aEv
	.p2align	4, 0x90
	.type	_ZNKSt25uniform_real_distributionIfE10param_type1aEv,@function
_ZNKSt25uniform_real_distributionIfE10param_type1aEv: # @_ZNKSt25uniform_real_distributionIfE10param_type1aEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movss	(%rdi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end119:
	.size	_ZNKSt25uniform_real_distributionIfE10param_type1aEv, .Lfunc_end119-_ZNKSt25uniform_real_distributionIfE10param_type1aEv
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function _ZSt18generate_canonicalIfLm24ESt26linear_congruential_engineImLm16807ELm0ELm2147483647EEET_RT1_
.LCPI120_0:
	.long	1065353216              # float 1
.LCPI120_2:
	.long	1073741824              # float 2
.LCPI120_3:
	.long	1593835520              # float 9.22337203E+18
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI120_1:
	.quad	1602224128              # 0x5f800000
	.section	.text._ZSt18generate_canonicalIfLm24ESt26linear_congruential_engineImLm16807ELm0ELm2147483647EEET_RT1_,"axG",@progbits,_ZSt18generate_canonicalIfLm24ESt26linear_congruential_engineImLm16807ELm0ELm2147483647EEET_RT1_,comdat
	.weak	_ZSt18generate_canonicalIfLm24ESt26linear_congruential_engineImLm16807ELm0ELm2147483647EEET_RT1_
	.p2align	4, 0x90
	.type	_ZSt18generate_canonicalIfLm24ESt26linear_congruential_engineImLm16807ELm0ELm2147483647EEET_RT1_,@function
_ZSt18generate_canonicalIfLm24ESt26linear_congruential_engineImLm16807ELm0ELm2147483647EEET_RT1_: # @_ZSt18generate_canonicalIfLm24ESt26linear_congruential_engineImLm16807ELm0ELm2147483647EEET_RT1_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	$24, -24(%rbp)
	movq	$24, -32(%rbp)
	leaq	-24(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	_ZSt3minImERKT_S2_S2_
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	callq	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3maxEv
	movq	%rax, -120(%rbp)
	testq	%rax, %rax
	setns	%cl
	movzbl	%cl, %edx
	movl	%edx, %eax
	flds	.LCPI120_1(,%rax,4)
	fildll	-120(%rbp)
	faddp	%st(1)
	fstpt	-156(%rbp)              # 10-byte Folded Spill
	callq	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3minEv
	movq	%rax, -112(%rbp)
	testq	%rax, %rax
	setns	%cl
	movzbl	%cl, %edx
	movl	%edx, %eax
	flds	.LCPI120_1(,%rax,4)
	fildll	-112(%rbp)
	faddp	%st(1)
	fldt	-156(%rbp)              # 10-byte Folded Reload
	fsubp	%st(1)
	fld1
	faddp	%st(1)
	fstpt	-48(%rbp)
	fldt	-48(%rbp)
	movq	%rsp, %rax
	fstpt	(%rax)
	callq	_ZSt3loge
	movq	%rsp, %rax
	flds	.LCPI120_2(%rip)
	fstpt	(%rax)
	fstpt	-168(%rbp)              # 10-byte Folded Spill
	callq	_ZSt3loge
	fldt	-168(%rbp)              # 10-byte Folded Reload
	fdivp	%st(1)
	flds	.LCPI120_3(%rip)
	fld	%st(1)
	fsub	%st(1)
	fnstcw	-142(%rbp)
	movw	-142(%rbp), %r8w
	movw	$3199, -142(%rbp)       # imm = 0xC7F
	fldcw	-142(%rbp)
	movw	%r8w, -142(%rbp)
	fistpll	-128(%rbp)
	fldcw	-142(%rbp)
	fnstcw	-144(%rbp)
	movw	-144(%rbp), %r8w
	movw	$3199, -144(%rbp)       # imm = 0xC7F
	fldcw	-144(%rbp)
	movw	%r8w, -144(%rbp)
	fld	%st(1)
	fistpll	-136(%rbp)
	fldcw	-144(%rbp)
	movq	-128(%rbp), %rax
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	xorq	%rsi, %rax
	movq	-136(%rbp), %rsi
	fxch	%st(1)
	fucompi	%st(1)
	fstp	%st(0)
	cmovbq	%rsi, %rax
	movq	%rax, -56(%rbp)
	movq	$1, -72(%rbp)
	movq	-56(%rbp), %rax
	addq	$24, %rax
	subq	$1, %rax
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	-56(%rbp)
	movq	%rax, -80(%rbp)
	leaq	-72(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	callq	_ZSt3maxImERKT_S2_S2_
	movss	.LCPI120_0(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	xorps	%xmm1, %xmm1
	movss	%xmm1, -88(%rbp)
	movss	%xmm0, -92(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)
.LBB120_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB120_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB120_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEclEv
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3minEv
	movq	-176(%rbp), %rdi        # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, %rax
	shrq	%rax
	movl	%edi, %ecx
	andl	$1, %ecx
	movl	%ecx, %edx
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
	cvtsi2ssq	%rdi, %xmm1
	testq	%rdi, %rdi
	movss	%xmm1, -180(%rbp)       # 4-byte Spill
	movss	%xmm0, -184(%rbp)       # 4-byte Spill
	js	.LBB120_8
# %bb.7:                                # %for.body
                                        #   in Loop: Header=BB120_1 Depth=1
	movss	-180(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -184(%rbp)       # 4-byte Spill
.LBB120_8:                              # %for.body
                                        #   in Loop: Header=BB120_1 Depth=1
	movss	-184(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-92(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	-88(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm1
	movss	%xmm1, -88(%rbp)
	fldt	-48(%rbp)
	flds	-92(%rbp)
	fmulp	%st(1)
	fstps	-140(%rbp)
	movss	-140(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -92(%rbp)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB120_1 Depth=1
	movq	-104(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB120_1
.LBB120_4:                              # %for.end
	movss	.LCPI120_0(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movss	-88(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	divss	-92(%rbp), %xmm1
	movss	%xmm1, -84(%rbp)
	movss	-84(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jb	.LBB120_6
# %bb.5:                                # %if.then
	movss	.LCPI120_0(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	callq	_ZSt9nextafterff
	movss	%xmm0, -84(%rbp)
.LBB120_6:                              # %if.end
	movss	-84(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addq	$208, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end120:
	.size	_ZSt18generate_canonicalIfLm24ESt26linear_congruential_engineImLm16807ELm0ELm2147483647EEET_RT1_, .Lfunc_end120-_ZSt18generate_canonicalIfLm24ESt26linear_congruential_engineImLm16807ELm0ELm2147483647EEET_RT1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_   # -- Begin function _ZSt3minImERKT_S2_S2_
	.p2align	4, 0x90
	.type	_ZSt3minImERKT_S2_S2_,@function
_ZSt3minImERKT_S2_S2_:                  # @_ZSt3minImERKT_S2_S2_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-16(%rbp), %rdi
	cmpq	(%rdi), %rsi
	jae	.LBB121_2
# %bb.1:                                # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB121_3
.LBB121_2:                              # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB121_3:                              # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end121:
	.size	_ZSt3minImERKT_S2_S2_, .Lfunc_end121-_ZSt3minImERKT_S2_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3maxEv,"axG",@progbits,_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3maxEv,comdat
	.weak	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3maxEv # -- Begin function _ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3maxEv
	.p2align	4, 0x90
	.type	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3maxEv,@function
_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3maxEv: # @_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3maxEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$2147483646, %eax       # imm = 0x7FFFFFFE
                                        # kill: def $rax killed $eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end122:
	.size	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3maxEv, .Lfunc_end122-_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3maxEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3minEv,"axG",@progbits,_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3minEv,comdat
	.weak	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3minEv # -- Begin function _ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3minEv
	.p2align	4, 0x90
	.type	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3minEv,@function
_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3minEv: # @_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3minEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$1, %eax
                                        # kill: def $rax killed $eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end123:
	.size	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3minEv, .Lfunc_end123-_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3minEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt3loge,"axG",@progbits,_ZSt3loge,comdat
	.weak	_ZSt3loge               # -- Begin function _ZSt3loge
	.p2align	4, 0x90
	.type	_ZSt3loge,@function
_ZSt3loge:                              # @_ZSt3loge
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	fldt	16(%rbp)
	fstpt	-16(%rbp)
	fldt	-16(%rbp)
	movq	%rsp, %rax
	fstpt	(%rax)
	callq	logl
	fld	%st(0)
	fstpt	-28(%rbp)               # 10-byte Folded Spill
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end124:
	.size	_ZSt3loge, .Lfunc_end124-_ZSt3loge
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_   # -- Begin function _ZSt3maxImERKT_S2_S2_
	.p2align	4, 0x90
	.type	_ZSt3maxImERKT_S2_S2_,@function
_ZSt3maxImERKT_S2_S2_:                  # @_ZSt3maxImERKT_S2_S2_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-24(%rbp), %rdi
	cmpq	(%rdi), %rsi
	jae	.LBB125_2
# %bb.1:                                # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB125_3
.LBB125_2:                              # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB125_3:                              # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end125:
	.size	_ZSt3maxImERKT_S2_S2_, .Lfunc_end125-_ZSt3maxImERKT_S2_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEclEv,"axG",@progbits,_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEclEv,comdat
	.weak	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEclEv # -- Begin function _ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEclEv
	.p2align	4, 0x90
	.type	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEclEv,@function
_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEclEv: # @_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEclEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	_ZNSt8__detail5__modImLm2147483647ELm16807ELm0EEET_S1_
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, (%rdi)
	movq	(%rdi), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end126:
	.size	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEclEv, .Lfunc_end126-_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEclEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt9nextafterff,"axG",@progbits,_ZSt9nextafterff,comdat
	.weak	_ZSt9nextafterff        # -- Begin function _ZSt9nextafterff
	.p2align	4, 0x90
	.type	_ZSt9nextafterff,@function
_ZSt9nextafterff:                       # @_ZSt9nextafterff
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	-8(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	callq	nextafterf
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end127:
	.size	_ZSt9nextafterff, .Lfunc_end127-_ZSt9nextafterff
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8__detail5__modImLm2147483647ELm16807ELm0EEET_S1_,"axG",@progbits,_ZNSt8__detail5__modImLm2147483647ELm16807ELm0EEET_S1_,comdat
	.weak	_ZNSt8__detail5__modImLm2147483647ELm16807ELm0EEET_S1_ # -- Begin function _ZNSt8__detail5__modImLm2147483647ELm16807ELm0EEET_S1_
	.p2align	4, 0x90
	.type	_ZNSt8__detail5__modImLm2147483647ELm16807ELm0EEET_S1_,@function
_ZNSt8__detail5__modImLm2147483647ELm16807ELm0EEET_S1_: # @_ZNSt8__detail5__modImLm2147483647ELm16807ELm0EEET_S1_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt8__detail4_ModImLm2147483647ELm16807ELm0ELb1ELb1EE6__calcEm
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end128:
	.size	_ZNSt8__detail5__modImLm2147483647ELm16807ELm0EEET_S1_, .Lfunc_end128-_ZNSt8__detail5__modImLm2147483647ELm16807ELm0EEET_S1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8__detail4_ModImLm2147483647ELm16807ELm0ELb1ELb1EE6__calcEm,"axG",@progbits,_ZNSt8__detail4_ModImLm2147483647ELm16807ELm0ELb1ELb1EE6__calcEm,comdat
	.weak	_ZNSt8__detail4_ModImLm2147483647ELm16807ELm0ELb1ELb1EE6__calcEm # -- Begin function _ZNSt8__detail4_ModImLm2147483647ELm16807ELm0ELb1ELb1EE6__calcEm
	.p2align	4, 0x90
	.type	_ZNSt8__detail4_ModImLm2147483647ELm16807ELm0ELb1ELb1EE6__calcEm,@function
_ZNSt8__detail4_ModImLm2147483647ELm16807ELm0ELb1ELb1EE6__calcEm: # @_ZNSt8__detail4_ModImLm2147483647ELm16807ELm0ELb1ELb1EE6__calcEm
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	imulq	$16807, -8(%rbp), %rdi  # imm = 0x41A7
	addq	$0, %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	%rcx
	movq	%rdx, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end129:
	.size	_ZNSt8__detail4_ModImLm2147483647ELm16807ELm0ELb1ELb1EE6__calcEm, .Lfunc_end129-_ZNSt8__detail4_ModImLm2147483647ELm16807ELm0ELb1ELb1EE6__calcEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIfSaIfEE5beginEv,"axG",@progbits,_ZNSt6vectorIfSaIfEE5beginEv,comdat
	.weak	_ZNSt6vectorIfSaIfEE5beginEv # -- Begin function _ZNSt6vectorIfSaIfEE5beginEv
	.p2align	4, 0x90
	.type	_ZNSt6vectorIfSaIfEE5beginEv,@function
_ZNSt6vectorIfSaIfEE5beginEv:           # @_ZNSt6vectorIfSaIfEE5beginEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	leaq	-8(%rbp), %rax
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEC2ERKS1_
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end130:
	.size	_ZNSt6vectorIfSaIfEE5beginEv, .Lfunc_end130-_ZNSt6vectorIfSaIfEE5beginEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIfSaIfEE3endEv,"axG",@progbits,_ZNSt6vectorIfSaIfEE3endEv,comdat
	.weak	_ZNSt6vectorIfSaIfEE3endEv # -- Begin function _ZNSt6vectorIfSaIfEE3endEv
	.p2align	4, 0x90
	.type	_ZNSt6vectorIfSaIfEE3endEv,@function
_ZNSt6vectorIfSaIfEE3endEv:             # @_ZNSt6vectorIfSaIfEE3endEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	addq	$8, %rdi
	leaq	-8(%rbp), %rax
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEC2ERKS1_
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end131:
	.size	_ZNSt6vectorIfSaIfEE3endEv, .Lfunc_end131-_ZNSt6vectorIfSaIfEE3endEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxxneIPfSt6vectorIfSaIfEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,"axG",@progbits,_ZN9__gnu_cxxneIPfSt6vectorIfSaIfEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,comdat
	.weak	_ZN9__gnu_cxxneIPfSt6vectorIfSaIfEEEEbRKNS_17__normal_iteratorIT_T0_EESA_ # -- Begin function _ZN9__gnu_cxxneIPfSt6vectorIfSaIfEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxxneIPfSt6vectorIfSaIfEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,@function
_ZN9__gnu_cxxneIPfSt6vectorIfSaIfEEEEbRKNS_17__normal_iteratorIT_T0_EESA_: # @_ZN9__gnu_cxxneIPfSt6vectorIfSaIfEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEE4baseEv
	movq	(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEE4baseEv
	movq	-24(%rbp), %rsi         # 8-byte Reload
	cmpq	(%rax), %rsi
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end132:
	.size	_ZN9__gnu_cxxneIPfSt6vectorIfSaIfEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, .Lfunc_end132-_ZN9__gnu_cxxneIPfSt6vectorIfSaIfEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEdeEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEdeEv # -- Begin function _ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEdeEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEdeEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEdeEv: # @_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEdeEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end133:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEdeEv, .Lfunc_end133-_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEdeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN15uniform_randgenIfEdeEv,"axG",@progbits,_ZN15uniform_randgenIfEdeEv,comdat
	.weak	_ZN15uniform_randgenIfEdeEv # -- Begin function _ZN15uniform_randgenIfEdeEv
	.p2align	4, 0x90
	.type	_ZN15uniform_randgenIfEdeEv,@function
_ZN15uniform_randgenIfEdeEv:            # @_ZN15uniform_randgenIfEdeEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movss	16(%rdi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end134:
	.size	_ZN15uniform_randgenIfEdeEv, .Lfunc_end134-_ZN15uniform_randgenIfEdeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN15uniform_randgenIfEppEv,"axG",@progbits,_ZN15uniform_randgenIfEppEv,comdat
	.weak	_ZN15uniform_randgenIfEppEv # -- Begin function _ZN15uniform_randgenIfEppEv
	.p2align	4, 0x90
	.type	_ZN15uniform_randgenIfEppEv,@function
_ZN15uniform_randgenIfEppEv:            # @_ZN15uniform_randgenIfEppEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	addq	$8, %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-16(%rbp), %rsi         # 8-byte Reload
	callq	_ZNSt25uniform_real_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_
	movq	-16(%rbp), %rax         # 8-byte Reload
	movss	%xmm0, 16(%rax)
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end135:
	.size	_ZN15uniform_randgenIfEppEv, .Lfunc_end135-_ZN15uniform_randgenIfEppEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEppEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEppEv,comdat
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEppEv # -- Begin function _ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEppEv
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEppEv,@function
_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEppEv: # @_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEppEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	addq	$4, %rax
	movq	%rax, (%rdi)
	movq	%rdi, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end136:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEppEv, .Lfunc_end136-_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEppEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6vectorIiSaIiEE4dataEv,"axG",@progbits,_ZNKSt6vectorIiSaIiEE4dataEv,comdat
	.weak	_ZNKSt6vectorIiSaIiEE4dataEv # -- Begin function _ZNKSt6vectorIiSaIiEE4dataEv
	.p2align	4, 0x90
	.type	_ZNKSt6vectorIiSaIiEE4dataEv,@function
_ZNKSt6vectorIiSaIiEE4dataEv:           # @_ZNKSt6vectorIiSaIiEE4dataEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rsi
	callq	_ZNKSt6vectorIiSaIiEE11_M_data_ptrIiEEPT_S4_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end137:
	.size	_ZNKSt6vectorIiSaIiEE4dataEv, .Lfunc_end137-_ZNKSt6vectorIiSaIiEE4dataEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6vectorIiSaIiEE4sizeEv,"axG",@progbits,_ZNKSt6vectorIiSaIiEE4sizeEv,comdat
	.weak	_ZNKSt6vectorIiSaIiEE4sizeEv # -- Begin function _ZNKSt6vectorIiSaIiEE4sizeEv
	.p2align	4, 0x90
	.type	_ZNKSt6vectorIiSaIiEE4sizeEv,@function
_ZNKSt6vectorIiSaIiEE4sizeEv:           # @_ZNKSt6vectorIiSaIiEE4sizeEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
	subq	%rdi, %rax
	sarq	$2, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end138:
	.size	_ZNKSt6vectorIiSaIiEE4sizeEv, .Lfunc_end138-_ZNKSt6vectorIiSaIiEE4sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6TensorIfEC2EPKim,"axG",@progbits,_ZN6TensorIfEC2EPKim,comdat
	.weak	_ZN6TensorIfEC2EPKim    # -- Begin function _ZN6TensorIfEC2EPKim
	.p2align	4, 0x90
	.type	_ZN6TensorIfEC2EPKim,@function
_ZN6TensorIfEC2EPKim:                   # @_ZN6TensorIfEC2EPKim
.Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception12
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rdx, %rdi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	_ZNSt6vectorIfSaIfEEC2Ev
	movq	-96(%rbp), %rdx         # 8-byte Reload
	addq	$24, %rdx
	movq	-24(%rbp), %rsi
	leaq	-32(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	_ZNSaIiEC2Ev
.Ltmp245:
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	_ZNSt6vectorIiSaIiEEC2EmRKS0_
.Ltmp246:
	jmp	.LBB139_1
.LBB139_1:                              # %invoke.cont
	leaq	-32(%rbp), %rdi
	callq	_ZNSaIiED2Ev
	movq	-104(%rbp), %rdi        # 8-byte Reload
	addq	$48, %rdi
	movq	-24(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	_ZNSaIiEC2Ev
.Ltmp248:
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movq	-144(%rbp), %rdx        # 8-byte Reload
	callq	_ZNSt6vectorIiSaIiEEC2EmRKS0_
.Ltmp249:
	jmp	.LBB139_2
.LBB139_2:                              # %invoke.cont5
	leaq	-48(%rbp), %rdi
	callq	_ZNSaIiED2Ev
	movq	-24(%rbp), %rdi
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rdi, 72(%rax)
	movq	-16(%rbp), %rsi
.Ltmp251:
	movq	%rax, %rdi
	callq	_ZN6TensorIfE21copy_dims_get_stridesEPKi
.Ltmp252:
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB139_3
.LBB139_3:                              # %invoke.cont7
	movl	-156(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
	movslq	-52(%rbp), %rsi
	movl	$0, -84(%rbp)
	leaq	-88(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	callq	_ZNSaIfEC2Ev
.Ltmp254:
	leaq	-80(%rbp), %rdi
	leaq	-84(%rbp), %rdx
	movq	-168(%rbp), %rsi        # 8-byte Reload
	movq	-176(%rbp), %rcx        # 8-byte Reload
	callq	_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_
.Ltmp255:
	jmp	.LBB139_4
.LBB139_4:                              # %invoke.cont12
	movq	-104(%rbp), %rdi        # 8-byte Reload
	leaq	-80(%rbp), %rsi
	callq	_ZNSt6vectorIfSaIfEEaSEOS1_
	leaq	-80(%rbp), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	_ZNSt6vectorIfSaIfEED2Ev
	leaq	-88(%rbp), %rdi
	callq	_ZNSaIfED2Ev
	addq	$192, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB139_5:                              # %lpad
	.cfi_def_cfa %rbp, 16
.Ltmp247:
	movl	%edx, %ecx
	movq	%rax, -40(%rbp)
	movl	%ecx, -44(%rbp)
	leaq	-32(%rbp), %rdi
	callq	_ZNSaIiED2Ev
	jmp	.LBB139_11
.LBB139_6:                              # %lpad4
.Ltmp250:
	movl	%edx, %ecx
	movq	%rax, -40(%rbp)
	movl	%ecx, -44(%rbp)
	leaq	-48(%rbp), %rdi
	callq	_ZNSaIiED2Ev
	jmp	.LBB139_10
.LBB139_7:                              # %lpad6
.Ltmp253:
	movl	%edx, %ecx
	movq	%rax, -40(%rbp)
	movl	%ecx, -44(%rbp)
	jmp	.LBB139_9
.LBB139_8:                              # %lpad11
.Ltmp256:
	movl	%edx, %ecx
	movq	%rax, -40(%rbp)
	movl	%ecx, -44(%rbp)
	leaq	-88(%rbp), %rdi
	callq	_ZNSaIfED2Ev
.LBB139_9:                              # %ehcleanup
	movq	-136(%rbp), %rdi        # 8-byte Reload
	callq	_ZNSt6vectorIiSaIiEED2Ev
.LBB139_10:                             # %ehcleanup15
	movq	-120(%rbp), %rdi        # 8-byte Reload
	callq	_ZNSt6vectorIiSaIiEED2Ev
.LBB139_11:                             # %ehcleanup16
	movq	-96(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt6vectorIfSaIfEED2Ev
# %bb.12:                               # %eh.resume
	movq	-40(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end139:
	.size	_ZN6TensorIfEC2EPKim, .Lfunc_end139-_ZN6TensorIfEC2EPKim
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table139:
.Lexception12:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Ltmp245-.Lfunc_begin12 # >> Call Site 1 <<
	.uleb128 .Ltmp246-.Ltmp245      #   Call between .Ltmp245 and .Ltmp246
	.uleb128 .Ltmp247-.Lfunc_begin12 #     jumps to .Ltmp247
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp248-.Lfunc_begin12 # >> Call Site 2 <<
	.uleb128 .Ltmp249-.Ltmp248      #   Call between .Ltmp248 and .Ltmp249
	.uleb128 .Ltmp250-.Lfunc_begin12 #     jumps to .Ltmp250
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp251-.Lfunc_begin12 # >> Call Site 3 <<
	.uleb128 .Ltmp252-.Ltmp251      #   Call between .Ltmp251 and .Ltmp252
	.uleb128 .Ltmp253-.Lfunc_begin12 #     jumps to .Ltmp253
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp254-.Lfunc_begin12 # >> Call Site 4 <<
	.uleb128 .Ltmp255-.Ltmp254      #   Call between .Ltmp254 and .Ltmp255
	.uleb128 .Ltmp256-.Lfunc_begin12 #     jumps to .Ltmp256
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp255-.Lfunc_begin12 # >> Call Site 5 <<
	.uleb128 .Lfunc_end139-.Ltmp255 #   Call between .Ltmp255 and .Lfunc_end139
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end12:
	.p2align	2
                                        # -- End function
	.section	.text._ZNKSt6vectorIiSaIiEE11_M_data_ptrIiEEPT_S4_,"axG",@progbits,_ZNKSt6vectorIiSaIiEE11_M_data_ptrIiEEPT_S4_,comdat
	.weak	_ZNKSt6vectorIiSaIiEE11_M_data_ptrIiEEPT_S4_ # -- Begin function _ZNKSt6vectorIiSaIiEE11_M_data_ptrIiEEPT_S4_
	.p2align	4, 0x90
	.type	_ZNKSt6vectorIiSaIiEE11_M_data_ptrIiEEPT_S4_,@function
_ZNKSt6vectorIiSaIiEE11_M_data_ptrIiEEPT_S4_: # @_ZNKSt6vectorIiSaIiEE11_M_data_ptrIiEEPT_S4_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end140:
	.size	_ZNKSt6vectorIiSaIiEE11_M_data_ptrIiEEPT_S4_, .Lfunc_end140-_ZNKSt6vectorIiSaIiEE11_M_data_ptrIiEEPT_S4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIfSaIfEEC2Ev,"axG",@progbits,_ZNSt6vectorIfSaIfEEC2Ev,comdat
	.weak	_ZNSt6vectorIfSaIfEEC2Ev # -- Begin function _ZNSt6vectorIfSaIfEEC2Ev
	.p2align	4, 0x90
	.type	_ZNSt6vectorIfSaIfEEC2Ev,@function
_ZNSt6vectorIfSaIfEEC2Ev:               # @_ZNSt6vectorIfSaIfEEC2Ev
.Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception13
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
.Ltmp257:
	callq	_ZNSt12_Vector_baseIfSaIfEEC2Ev
.Ltmp258:
	jmp	.LBB141_1
.LBB141_1:                              # %invoke.cont
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB141_2:                              # %terminate.lpad
	.cfi_def_cfa %rbp, 16
.Ltmp259:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -12(%rbp)         # 4-byte Spill
	callq	__clang_call_terminate
.Lfunc_end141:
	.size	_ZNSt6vectorIfSaIfEEC2Ev, .Lfunc_end141-_ZNSt6vectorIfSaIfEEC2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table141:
.Lexception13:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Ltmp257-.Lfunc_begin13 # >> Call Site 1 <<
	.uleb128 .Ltmp258-.Ltmp257      #   Call between .Ltmp257 and .Ltmp258
	.uleb128 .Ltmp259-.Lfunc_begin13 #     jumps to .Ltmp259
	.byte	1                       #   On action: 1
.Lcst_end13:
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
.Lttbase7:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIiSaIiEEC2EmRKS0_,comdat
	.weak	_ZNSt6vectorIiSaIiEEC2EmRKS0_ # -- Begin function _ZNSt6vectorIiSaIiEEC2EmRKS0_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIiSaIiEEC2EmRKS0_,@function
_ZNSt6vectorIiSaIiEEC2EmRKS0_:          # @_ZNSt6vectorIiSaIiEEC2EmRKS0_
.Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception14
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_
	movq	-16(%rbp), %rsi
.Ltmp260:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt6vectorIiSaIiEE21_M_default_initializeEm
.Ltmp261:
	jmp	.LBB142_1
.LBB142_1:                              # %invoke.cont
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB142_2:                              # %lpad
	.cfi_def_cfa %rbp, 16
.Ltmp262:
	movl	%edx, %ecx
	movq	%rax, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseIiSaIiEED2Ev
# %bb.3:                                # %eh.resume
	movq	-32(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end142:
	.size	_ZNSt6vectorIiSaIiEEC2EmRKS0_, .Lfunc_end142-_ZNSt6vectorIiSaIiEEC2EmRKS0_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table142:
.Lexception14:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Lfunc_begin14-.Lfunc_begin14 # >> Call Site 1 <<
	.uleb128 .Ltmp260-.Lfunc_begin14 #   Call between .Lfunc_begin14 and .Ltmp260
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp260-.Lfunc_begin14 # >> Call Site 2 <<
	.uleb128 .Ltmp261-.Ltmp260      #   Call between .Ltmp260 and .Ltmp261
	.uleb128 .Ltmp262-.Lfunc_begin14 #     jumps to .Ltmp262
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp261-.Lfunc_begin14 # >> Call Site 3 <<
	.uleb128 .Lfunc_end142-.Ltmp261 #   Call between .Ltmp261 and .Lfunc_end142
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end14:
	.p2align	2
                                        # -- End function
	.section	.text._ZN6TensorIfE21copy_dims_get_stridesEPKi,"axG",@progbits,_ZN6TensorIfE21copy_dims_get_stridesEPKi,comdat
	.weak	_ZN6TensorIfE21copy_dims_get_stridesEPKi # -- Begin function _ZN6TensorIfE21copy_dims_get_stridesEPKi
	.p2align	4, 0x90
	.type	_ZN6TensorIfE21copy_dims_get_stridesEPKi,@function
_ZN6TensorIfE21copy_dims_get_stridesEPKi: # @_ZN6TensorIfE21copy_dims_get_stridesEPKi
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	$1, -20(%rbp)
	movq	72(%rsi), %rdi
	subq	$1, %rdi
	movl	%edi, %eax
	movl	%eax, -24(%rbp)
	movq	%rsi, -32(%rbp)         # 8-byte Spill
.LBB143_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -24(%rbp)
	jl	.LBB143_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB143_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	$24, %rax
	movslq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -36(%rbp)         # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-36(%rbp), %edx         # 4-byte Reload
	movl	%edx, (%rax)
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	$48, %rax
	movslq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -40(%rbp)         # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-40(%rbp), %edx         # 4-byte Reload
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	imull	-20(%rbp), %edx
	movl	%edx, -20(%rbp)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB143_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB143_1
.LBB143_4:                              # %for.end
	movl	-20(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end143:
	.size	_ZN6TensorIfE21copy_dims_get_stridesEPKi, .Lfunc_end143-_ZN6TensorIfE21copy_dims_get_stridesEPKi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSaIfEC2Ev,"axG",@progbits,_ZNSaIfEC2Ev,comdat
	.weak	_ZNSaIfEC2Ev            # -- Begin function _ZNSaIfEC2Ev
	.p2align	4, 0x90
	.type	_ZNSaIfEC2Ev,@function
_ZNSaIfEC2Ev:                           # @_ZNSaIfEC2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx13new_allocatorIfEC2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end144:
	.size	_ZNSaIfEC2Ev, .Lfunc_end144-_ZNSaIfEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIfSaIfEEC2EmRKfRKS0_,"axG",@progbits,_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_,comdat
	.weak	_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_ # -- Begin function _ZNSt6vectorIfSaIfEEC2EmRKfRKS0_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_,@function
_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_:       # @_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_
.Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception15
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
.Ltmp263:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt6vectorIfSaIfEE18_M_fill_initializeEmRKf
.Ltmp264:
	jmp	.LBB145_1
.LBB145_1:                              # %invoke.cont
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB145_2:                              # %lpad
	.cfi_def_cfa %rbp, 16
.Ltmp265:
	movl	%edx, %ecx
	movq	%rax, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseIfSaIfEED2Ev
# %bb.3:                                # %eh.resume
	movq	-40(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end145:
	.size	_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_, .Lfunc_end145-_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table145:
.Lexception15:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Lfunc_begin15-.Lfunc_begin15 # >> Call Site 1 <<
	.uleb128 .Ltmp263-.Lfunc_begin15 #   Call between .Lfunc_begin15 and .Ltmp263
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp263-.Lfunc_begin15 # >> Call Site 2 <<
	.uleb128 .Ltmp264-.Ltmp263      #   Call between .Ltmp263 and .Ltmp264
	.uleb128 .Ltmp265-.Lfunc_begin15 #     jumps to .Ltmp265
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp264-.Lfunc_begin15 # >> Call Site 3 <<
	.uleb128 .Lfunc_end145-.Ltmp264 #   Call between .Ltmp264 and .Lfunc_end145
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end15:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIfSaIfEEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEEC2Ev,comdat
	.weak	_ZNSt12_Vector_baseIfSaIfEEC2Ev # -- Begin function _ZNSt12_Vector_baseIfSaIfEEC2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIfSaIfEEC2Ev,@function
_ZNSt12_Vector_baseIfSaIfEEC2Ev:        # @_ZNSt12_Vector_baseIfSaIfEEC2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end146:
	.size	_ZNSt12_Vector_baseIfSaIfEEC2Ev, .Lfunc_end146-_ZNSt12_Vector_baseIfSaIfEEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2Ev,comdat
	.weak	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2Ev # -- Begin function _ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2Ev,@function
_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2Ev: # @_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	_ZNSaIfEC2Ev
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end147:
	.size	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2Ev, .Lfunc_end147-_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIfEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIfEC2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIfEC2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorIfEC2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIfEC2Ev,@function
_ZN9__gnu_cxx13new_allocatorIfEC2Ev:    # @_ZN9__gnu_cxx13new_allocatorIfEC2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end148:
	.size	_ZN9__gnu_cxx13new_allocatorIfEC2Ev, .Lfunc_end148-_ZN9__gnu_cxx13new_allocatorIfEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_,comdat
	.weak	_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_ # -- Begin function _ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_,@function
_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_:   # @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_
.Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception16
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_
	movq	-16(%rbp), %rsi
.Ltmp266:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm
.Ltmp267:
	jmp	.LBB149_1
.LBB149_1:                              # %invoke.cont
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB149_2:                              # %lpad
	.cfi_def_cfa %rbp, 16
.Ltmp268:
	movl	%edx, %ecx
	movq	%rax, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
# %bb.3:                                # %eh.resume
	movq	-32(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end149:
	.size	_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, .Lfunc_end149-_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table149:
.Lexception16:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Ltmp266-.Lfunc_begin16 # >> Call Site 1 <<
	.uleb128 .Ltmp267-.Ltmp266      #   Call between .Ltmp266 and .Ltmp267
	.uleb128 .Ltmp268-.Lfunc_begin16 #     jumps to .Ltmp268
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp267-.Lfunc_begin16 # >> Call Site 2 <<
	.uleb128 .Lfunc_end149-.Ltmp267 #   Call between .Ltmp267 and .Lfunc_end149
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end16:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEE21_M_default_initializeEm,"axG",@progbits,_ZNSt6vectorIiSaIiEE21_M_default_initializeEm,comdat
	.weak	_ZNSt6vectorIiSaIiEE21_M_default_initializeEm # -- Begin function _ZNSt6vectorIiSaIiEE21_M_default_initializeEm
	.p2align	4, 0x90
	.type	_ZNSt6vectorIiSaIiEE21_M_default_initializeEm,@function
_ZNSt6vectorIiSaIiEE21_M_default_initializeEm: # @_ZNSt6vectorIiSaIiEE21_M_default_initializeEm
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-16(%rbp), %rax
	movq	%rsi, %rcx
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movq	%rax, 8(%rcx)
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end150:
	.size	_ZNSt6vectorIiSaIiEE21_M_default_initializeEm, .Lfunc_end150-_ZNSt6vectorIiSaIiEE21_M_default_initializeEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm,comdat
	.weak	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm # -- Begin function _ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm,@function
_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm: # @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	callq	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rax, (%rsi)
	movq	(%rsi), %rax
	movq	%rax, 8(%rsi)
	movq	(%rsi), %rax
	movq	-16(%rbp), %rdi
	shlq	$2, %rdi
	addq	%rdi, %rax
	movq	%rax, 16(%rsi)
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end151:
	.size	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm, .Lfunc_end151-_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E,"axG",@progbits,_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E,comdat
	.weak	_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E # -- Begin function _ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E
	.p2align	4, 0x90
	.type	_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E,@function
_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E: # @_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZSt25__uninitialized_default_nIPimET_S1_T0_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end152:
	.size	_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E, .Lfunc_end152-_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt25__uninitialized_default_nIPimET_S1_T0_,"axG",@progbits,_ZSt25__uninitialized_default_nIPimET_S1_T0_,comdat
	.weak	_ZSt25__uninitialized_default_nIPimET_S1_T0_ # -- Begin function _ZSt25__uninitialized_default_nIPimET_S1_T0_
	.p2align	4, 0x90
	.type	_ZSt25__uninitialized_default_nIPimET_S1_T0_,@function
_ZSt25__uninitialized_default_nIPimET_S1_T0_: # @_ZSt25__uninitialized_default_nIPimET_S1_T0_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	$1, -17(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end153:
	.size	_ZSt25__uninitialized_default_nIPimET_S1_T0_, .Lfunc_end153-_ZSt25__uninitialized_default_nIPimET_S1_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_,"axG",@progbits,_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_,comdat
	.weak	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_ # -- Begin function _ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_
	.p2align	4, 0x90
	.type	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_,@function
_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_: # @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	$0, -20(%rbp)
	leaq	-20(%rbp), %rdx
	callq	_ZSt6fill_nIPimiET_S1_T0_RKT1_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end154:
	.size	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_, .Lfunc_end154-_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt6fill_nIPimiET_S1_T0_RKT1_,"axG",@progbits,_ZSt6fill_nIPimiET_S1_T0_RKT1_,comdat
	.weak	_ZSt6fill_nIPimiET_S1_T0_RKT1_ # -- Begin function _ZSt6fill_nIPimiET_S1_T0_RKT1_
	.p2align	4, 0x90
	.type	_ZSt6fill_nIPimiET_S1_T0_RKT1_,@function
_ZSt6fill_nIPimiET_S1_T0_RKT1_:         # @_ZSt6fill_nIPimiET_S1_T0_RKT1_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZSt12__niter_baseIPiET_S1_
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end155:
	.size	_ZSt6fill_nIPimiET_S1_T0_RKT1_, .Lfunc_end155-_ZSt6fill_nIPimiET_S1_T0_RKT1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_,"axG",@progbits,_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_,comdat
	.weak	_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_ # -- Begin function _ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_
	.p2align	4, 0x90
	.type	_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_,@function
_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_: # @_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movl	(%rdx), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -40(%rbp)
.LBB156_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	jbe	.LBB156_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB156_1 Depth=1
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB156_1 Depth=1
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB156_1
.LBB156_4:                              # %for.end
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end156:
	.size	_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_, .Lfunc_end156-_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEEixEm,"axG",@progbits,_ZNSt6vectorIiSaIiEEixEm,comdat
	.weak	_ZNSt6vectorIiSaIiEEixEm # -- Begin function _ZNSt6vectorIiSaIiEEixEm
	.p2align	4, 0x90
	.type	_ZNSt6vectorIiSaIiEEixEm,@function
_ZNSt6vectorIiSaIiEEixEm:               # @_ZNSt6vectorIiSaIiEEixEm
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-16(%rbp), %rdi
	shlq	$2, %rdi
	addq	%rdi, %rsi
	movq	%rsi, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end157:
	.size	_ZNSt6vectorIiSaIiEEixEm, .Lfunc_end157-_ZNSt6vectorIiSaIiEEixEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_,comdat
	.weak	_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_ # -- Begin function _ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_,@function
_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_:   # @_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_
.Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception17
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2ERKS0_
	movq	-16(%rbp), %rsi
.Ltmp269:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt12_Vector_baseIfSaIfEE17_M_create_storageEm
.Ltmp270:
	jmp	.LBB158_1
.LBB158_1:                              # %invoke.cont
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB158_2:                              # %lpad
	.cfi_def_cfa %rbp, 16
.Ltmp271:
	movl	%edx, %ecx
	movq	%rax, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD2Ev
# %bb.3:                                # %eh.resume
	movq	-32(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end158:
	.size	_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_, .Lfunc_end158-_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table158:
.Lexception17:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end17-.Lcst_begin17
.Lcst_begin17:
	.uleb128 .Ltmp269-.Lfunc_begin17 # >> Call Site 1 <<
	.uleb128 .Ltmp270-.Ltmp269      #   Call between .Ltmp269 and .Ltmp270
	.uleb128 .Ltmp271-.Lfunc_begin17 #     jumps to .Ltmp271
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp270-.Lfunc_begin17 # >> Call Site 2 <<
	.uleb128 .Lfunc_end158-.Ltmp270 #   Call between .Ltmp270 and .Lfunc_end158
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end17:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt6vectorIfSaIfEE18_M_fill_initializeEmRKf,"axG",@progbits,_ZNSt6vectorIfSaIfEE18_M_fill_initializeEmRKf,comdat
	.weak	_ZNSt6vectorIfSaIfEE18_M_fill_initializeEmRKf # -- Begin function _ZNSt6vectorIfSaIfEE18_M_fill_initializeEmRKf
	.p2align	4, 0x90
	.type	_ZNSt6vectorIfSaIfEE18_M_fill_initializeEmRKf,@function
_ZNSt6vectorIfSaIfEE18_M_fill_initializeEmRKf: # @_ZNSt6vectorIfSaIfEE18_M_fill_initializeEmRKf
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	%rax, 8(%rcx)
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end159:
	.size	_ZNSt6vectorIfSaIfEE18_M_fill_initializeEmRKf, .Lfunc_end159-_ZNSt6vectorIfSaIfEE18_M_fill_initializeEmRKf
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIfSaIfEE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEE17_M_create_storageEm,comdat
	.weak	_ZNSt12_Vector_baseIfSaIfEE17_M_create_storageEm # -- Begin function _ZNSt12_Vector_baseIfSaIfEE17_M_create_storageEm
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIfSaIfEE17_M_create_storageEm,@function
_ZNSt12_Vector_baseIfSaIfEE17_M_create_storageEm: # @_ZNSt12_Vector_baseIfSaIfEE17_M_create_storageEm
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	callq	_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rax, (%rsi)
	movq	(%rsi), %rax
	movq	%rax, 8(%rsi)
	movq	(%rsi), %rax
	movq	-16(%rbp), %rdi
	shlq	$2, %rdi
	addq	%rdi, %rax
	movq	%rax, 16(%rsi)
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end160:
	.size	_ZNSt12_Vector_baseIfSaIfEE17_M_create_storageEm, .Lfunc_end160-_ZNSt12_Vector_baseIfSaIfEE17_M_create_storageEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm,comdat
	.weak	_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm # -- Begin function _ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm,@function
_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm: # @_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	$0, -16(%rbp)
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	je	.LBB161_2
# %bb.1:                                # %cond.true
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZNSt16allocator_traitsISaIfEE8allocateERS0_m
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB161_3
.LBB161_2:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB161_3
.LBB161_3:                              # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end161:
	.size	_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm, .Lfunc_end161-_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaIfEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIfEE8allocateERS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaIfEE8allocateERS0_m # -- Begin function _ZNSt16allocator_traitsISaIfEE8allocateERS0_m
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaIfEE8allocateERS0_m,@function
_ZNSt16allocator_traitsISaIfEE8allocateERS0_m: # @_ZNSt16allocator_traitsISaIfEE8allocateERS0_m
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	_ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end162:
	.size	_ZNSt16allocator_traitsISaIfEE8allocateERS0_m, .Lfunc_end162-_ZNSt16allocator_traitsISaIfEE8allocateERS0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv # -- Begin function _ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv,@function
_ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv: # @_ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	_ZNK9__gnu_cxx13new_allocatorIfE8max_sizeEv
	movq	-32(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jbe	.LBB163_2
# %bb.1:                                # %if.then
	callq	_ZSt17__throw_bad_allocv
.LBB163_2:                              # %if.end
	movq	-16(%rbp), %rax
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	_Znwm
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end163:
	.size	_ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv, .Lfunc_end163-_ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx13new_allocatorIfE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIfE8max_sizeEv,comdat
	.weak	_ZNK9__gnu_cxx13new_allocatorIfE8max_sizeEv # -- Begin function _ZNK9__gnu_cxx13new_allocatorIfE8max_sizeEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx13new_allocatorIfE8max_sizeEv,@function
_ZNK9__gnu_cxx13new_allocatorIfE8max_sizeEv: # @_ZNK9__gnu_cxx13new_allocatorIfE8max_sizeEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movabsq	$4611686018427387903, %rax # imm = 0x3FFFFFFFFFFFFFFF
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end164:
	.size	_ZNK9__gnu_cxx13new_allocatorIfE8max_sizeEv, .Lfunc_end164-_ZNK9__gnu_cxx13new_allocatorIfE8max_sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E,"axG",@progbits,_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E,comdat
	.weak	_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E # -- Begin function _ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E
	.p2align	4, 0x90
	.type	_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E,@function
_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E: # @_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZSt20uninitialized_fill_nIPfmfET_S1_T0_RKT1_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end165:
	.size	_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E, .Lfunc_end165-_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt20uninitialized_fill_nIPfmfET_S1_T0_RKT1_,"axG",@progbits,_ZSt20uninitialized_fill_nIPfmfET_S1_T0_RKT1_,comdat
	.weak	_ZSt20uninitialized_fill_nIPfmfET_S1_T0_RKT1_ # -- Begin function _ZSt20uninitialized_fill_nIPfmfET_S1_T0_RKT1_
	.p2align	4, 0x90
	.type	_ZSt20uninitialized_fill_nIPfmfET_S1_T0_RKT1_,@function
_ZSt20uninitialized_fill_nIPfmfET_S1_T0_RKT1_: # @_ZSt20uninitialized_fill_nIPfmfET_S1_T0_RKT1_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movb	$1, -25(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPfmfEET_S3_T0_RKT1_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end166:
	.size	_ZSt20uninitialized_fill_nIPfmfET_S1_T0_RKT1_, .Lfunc_end166-_ZSt20uninitialized_fill_nIPfmfET_S1_T0_RKT1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPfmfEET_S3_T0_RKT1_,"axG",@progbits,_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPfmfEET_S3_T0_RKT1_,comdat
	.weak	_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPfmfEET_S3_T0_RKT1_ # -- Begin function _ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPfmfEET_S3_T0_RKT1_
	.p2align	4, 0x90
	.type	_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPfmfEET_S3_T0_RKT1_,@function
_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPfmfEET_S3_T0_RKT1_: # @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPfmfEET_S3_T0_RKT1_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZSt6fill_nIPfmfET_S1_T0_RKT1_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end167:
	.size	_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPfmfEET_S3_T0_RKT1_, .Lfunc_end167-_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPfmfEET_S3_T0_RKT1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt6fill_nIPfmfET_S1_T0_RKT1_,"axG",@progbits,_ZSt6fill_nIPfmfET_S1_T0_RKT1_,comdat
	.weak	_ZSt6fill_nIPfmfET_S1_T0_RKT1_ # -- Begin function _ZSt6fill_nIPfmfET_S1_T0_RKT1_
	.p2align	4, 0x90
	.type	_ZSt6fill_nIPfmfET_S1_T0_RKT1_,@function
_ZSt6fill_nIPfmfET_S1_T0_RKT1_:         # @_ZSt6fill_nIPfmfET_S1_T0_RKT1_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZSt12__niter_baseIPfET_S1_
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	_ZSt10__fill_n_aIPfmfEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end168:
	.size	_ZSt6fill_nIPfmfET_S1_T0_RKT1_, .Lfunc_end168-_ZSt6fill_nIPfmfET_S1_T0_RKT1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt10__fill_n_aIPfmfEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_,"axG",@progbits,_ZSt10__fill_n_aIPfmfEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_,comdat
	.weak	_ZSt10__fill_n_aIPfmfEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_ # -- Begin function _ZSt10__fill_n_aIPfmfEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_
	.p2align	4, 0x90
	.type	_ZSt10__fill_n_aIPfmfEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_,@function
_ZSt10__fill_n_aIPfmfEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_: # @_ZSt10__fill_n_aIPfmfEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movss	(%rdx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -40(%rbp)
.LBB169_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	jbe	.LBB169_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB169_1 Depth=1
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movss	%xmm0, (%rax)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB169_1 Depth=1
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB169_1
.LBB169_4:                              # %for.end
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end169:
	.size	_ZSt10__fill_n_aIPfmfEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_, .Lfunc_end169-_ZSt10__fill_n_aIPfmfEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__niter_baseIPfET_S1_,"axG",@progbits,_ZSt12__niter_baseIPfET_S1_,comdat
	.weak	_ZSt12__niter_baseIPfET_S1_ # -- Begin function _ZSt12__niter_baseIPfET_S1_
	.p2align	4, 0x90
	.type	_ZSt12__niter_baseIPfET_S1_,@function
_ZSt12__niter_baseIPfET_S1_:            # @_ZSt12__niter_baseIPfET_S1_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end170:
	.size	_ZSt12__niter_baseIPfET_S1_, .Lfunc_end170-_ZSt12__niter_baseIPfET_S1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEC2ERKS1_,comdat
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEC2ERKS1_ # -- Begin function _ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEC2ERKS1_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEC2ERKS1_,@function
_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEC2ERKS1_: # @_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEC2ERKS1_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, (%rsi)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end171:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEC2ERKS1_, .Lfunc_end171-_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEC2ERKS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEE4baseEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEE4baseEv # -- Begin function _ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEE4baseEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEE4baseEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEE4baseEv: # @_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEE4baseEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end172:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEE4baseEv, .Lfunc_end172-_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEE4baseEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK6TensorIfEcv5TSpanIXT_EfEILi2EEEv,"axG",@progbits,_ZNK6TensorIfEcv5TSpanIXT_EfEILi2EEEv,comdat
	.weak	_ZNK6TensorIfEcv5TSpanIXT_EfEILi2EEEv # -- Begin function _ZNK6TensorIfEcv5TSpanIXT_EfEILi2EEEv
	.p2align	4, 0x90
	.type	_ZNK6TensorIfEcv5TSpanIXT_EfEILi2EEEv,@function
_ZNK6TensorIfEcv5TSpanIXT_EfEILi2EEEv:  # @_ZNK6TensorIfEcv5TSpanIXT_EfEILi2EEEv
.Lfunc_begin18:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception18
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, %rax
	movq	%rsi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	_ZNK6TensorIfE11initializedEv
	testb	$1, %al
	jne	.LBB173_1
	jmp	.LBB173_2
.LBB173_1:                              # %cond.true
	jmp	.LBB173_3
.LBB173_2:                              # %cond.false
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movl	$575, %edx              # imm = 0x23F
	movabsq	$.L__PRETTY_FUNCTION__._ZNK6TensorIfEcv5TSpanIXT_EfEILi2EEEv, %rcx
	callq	__assert_fail
.LBB173_3:                              # %cond.end
	movl	$2, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx         # 8-byte Reload
	cmpq	72(%rdx), %rcx
	je	.LBB173_7
# %bb.4:                                # %if.then
	movl	$16, %eax
	movl	%eax, %edi
	callq	__cxa_allocate_exception
	movq	%rax, %rdi
.Ltmp272:
	movl	$.L.str.10, %ecx
	movl	%ecx, %esi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	_ZNSt13runtime_errorC1EPKc
.Ltmp273:
	jmp	.LBB173_5
.LBB173_5:                              # %invoke.cont
	movabsq	$_ZTISt13runtime_error, %rax
	movabsq	$_ZNSt13runtime_errorD1Ev, %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	__cxa_throw
.LBB173_6:                              # %lpad
.Ltmp274:
	movl	%edx, %ecx
	movq	%rax, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	__cxa_free_exception
	jmp	.LBB173_8
.LBB173_7:                              # %if.end
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	_ZNKSt6vectorIfSaIfEE4dataEv
	movq	-48(%rbp), %rdi         # 8-byte Reload
	addq	$24, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	_ZNKSt6vectorIiSaIiEE4dataEv
	movq	-48(%rbp), %rdi         # 8-byte Reload
	addq	$48, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	_ZNKSt6vectorIiSaIiEE4dataEv
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	_ZN5TSpanILi2EfEC2EPKfPKiS4_P11RCTSpanData
	movq	-40(%rbp), %rax         # 8-byte Reload
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB173_8:                              # %eh.resume
	.cfi_def_cfa %rbp, 16
	movq	-16(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end173:
	.size	_ZNK6TensorIfEcv5TSpanIXT_EfEILi2EEEv, .Lfunc_end173-_ZNK6TensorIfEcv5TSpanIXT_EfEILi2EEEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table173:
.Lexception18:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end18-.Lcst_begin18
.Lcst_begin18:
	.uleb128 .Lfunc_begin18-.Lfunc_begin18 # >> Call Site 1 <<
	.uleb128 .Ltmp272-.Lfunc_begin18 #   Call between .Lfunc_begin18 and .Ltmp272
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp272-.Lfunc_begin18 # >> Call Site 2 <<
	.uleb128 .Ltmp273-.Ltmp272      #   Call between .Ltmp272 and .Ltmp273
	.uleb128 .Ltmp274-.Lfunc_begin18 #     jumps to .Ltmp274
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp273-.Lfunc_begin18 # >> Call Site 3 <<
	.uleb128 .Lfunc_end173-.Ltmp273 #   Call between .Ltmp273 and .Lfunc_end173
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end18:
	.p2align	2
                                        # -- End function
	.section	.text._ZNK6TensorIfE11initializedEv,"axG",@progbits,_ZNK6TensorIfE11initializedEv,comdat
	.weak	_ZNK6TensorIfE11initializedEv # -- Begin function _ZNK6TensorIfE11initializedEv
	.p2align	4, 0x90
	.type	_ZNK6TensorIfE11initializedEv,@function
_ZNK6TensorIfE11initializedEv:          # @_ZNK6TensorIfE11initializedEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 72(%rdi)
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end174:
	.size	_ZNK6TensorIfE11initializedEv, .Lfunc_end174-_ZNK6TensorIfE11initializedEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6vectorIfSaIfEE4dataEv,"axG",@progbits,_ZNKSt6vectorIfSaIfEE4dataEv,comdat
	.weak	_ZNKSt6vectorIfSaIfEE4dataEv # -- Begin function _ZNKSt6vectorIfSaIfEE4dataEv
	.p2align	4, 0x90
	.type	_ZNKSt6vectorIfSaIfEE4dataEv,@function
_ZNKSt6vectorIfSaIfEE4dataEv:           # @_ZNKSt6vectorIfSaIfEE4dataEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rsi
	callq	_ZNKSt6vectorIfSaIfEE11_M_data_ptrIfEEPT_S4_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end175:
	.size	_ZNKSt6vectorIfSaIfEE4dataEv, .Lfunc_end175-_ZNKSt6vectorIfSaIfEE4dataEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5TSpanILi2EfEC2EPKfPKiS4_P11RCTSpanData,"axG",@progbits,_ZN5TSpanILi2EfEC2EPKfPKiS4_P11RCTSpanData,comdat
	.weak	_ZN5TSpanILi2EfEC2EPKfPKiS4_P11RCTSpanData # -- Begin function _ZN5TSpanILi2EfEC2EPKfPKiS4_P11RCTSpanData
	.p2align	4, 0x90
	.type	_ZN5TSpanILi2EfEC2EPKfPKiS4_P11RCTSpanData,@function
_ZN5TSpanILi2EfEC2EPKfPKiS4_P11RCTSpanData: # @_ZN5TSpanILi2EfEC2EPKfPKiS4_P11RCTSpanData
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rcx)
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rcx)
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rcx)
	cmpq	$0, -40(%rbp)
	je	.LBB176_2
# %bb.1:                                # %if.then
	movq	-40(%rbp), %rdi
	callq	_ZN11RCTSpanData3refEv
.LBB176_2:                              # %if.end
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end176:
	.size	_ZN5TSpanILi2EfEC2EPKfPKiS4_P11RCTSpanData, .Lfunc_end176-_ZN5TSpanILi2EfEC2EPKfPKiS4_P11RCTSpanData
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6vectorIfSaIfEE11_M_data_ptrIfEEPT_S4_,"axG",@progbits,_ZNKSt6vectorIfSaIfEE11_M_data_ptrIfEEPT_S4_,comdat
	.weak	_ZNKSt6vectorIfSaIfEE11_M_data_ptrIfEEPT_S4_ # -- Begin function _ZNKSt6vectorIfSaIfEE11_M_data_ptrIfEEPT_S4_
	.p2align	4, 0x90
	.type	_ZNKSt6vectorIfSaIfEE11_M_data_ptrIfEEPT_S4_,@function
_ZNKSt6vectorIfSaIfEE11_M_data_ptrIfEEPT_S4_: # @_ZNKSt6vectorIfSaIfEE11_M_data_ptrIfEEPT_S4_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end177:
	.size	_ZNKSt6vectorIfSaIfEE11_M_data_ptrIfEEPT_S4_, .Lfunc_end177-_ZNKSt6vectorIfSaIfEE11_M_data_ptrIfEEPT_S4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN11RCTSpanData3refEv,"axG",@progbits,_ZN11RCTSpanData3refEv,comdat
	.weak	_ZN11RCTSpanData3refEv  # -- Begin function _ZN11RCTSpanData3refEv
	.p2align	4, 0x90
	.type	_ZN11RCTSpanData3refEv,@function
_ZN11RCTSpanData3refEv:                 # @_ZN11RCTSpanData3refEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %eax
	addl	$1, %eax
	movl	%eax, (%rdi)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end178:
	.size	_ZN11RCTSpanData3refEv, .Lfunc_end178-_ZN11RCTSpanData3refEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN11RCTSpanData5derefEv,"axG",@progbits,_ZN11RCTSpanData5derefEv,comdat
	.weak	_ZN11RCTSpanData5derefEv # -- Begin function _ZN11RCTSpanData5derefEv
	.p2align	4, 0x90
	.type	_ZN11RCTSpanData5derefEv,@function
_ZN11RCTSpanData5derefEv:               # @_ZN11RCTSpanData5derefEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %eax
	addl	$-1, %eax
	movl	%eax, (%rdi)
	cmpl	$0, (%rdi)
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	jne	.LBB179_4
# %bb.1:                                # %if.then
	movq	-16(%rbp), %rax         # 8-byte Reload
	cmpq	$0, %rax
	je	.LBB179_3
# %bb.2:                                # %delete.notnull
	movq	-16(%rbp), %rdi         # 8-byte Reload
	callq	_ZN11RCTSpanDataD2Ev
	movq	-16(%rbp), %rdi         # 8-byte Reload
	callq	_ZdlPv
.LBB179_3:                              # %delete.end
	jmp	.LBB179_4
.LBB179_4:                              # %if.end
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end179:
	.size	_ZN11RCTSpanData5derefEv, .Lfunc_end179-_ZN11RCTSpanData5derefEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN11RCTSpanDataD2Ev,"axG",@progbits,_ZN11RCTSpanDataD2Ev,comdat
	.weak	_ZN11RCTSpanDataD2Ev    # -- Begin function _ZN11RCTSpanDataD2Ev
	.p2align	4, 0x90
	.type	_ZN11RCTSpanDataD2Ev,@function
_ZN11RCTSpanDataD2Ev:                   # @_ZN11RCTSpanDataD2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rax
	cmpq	$0, %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, -24(%rbp)         # 8-byte Spill
	je	.LBB180_2
# %bb.1:                                # %delete.notnull
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZdaPv
.LBB180_2:                              # %delete.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %rcx
	cmpq	$0, %rcx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	je	.LBB180_4
# %bb.3:                                # %delete.notnull3
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZdaPv
.LBB180_4:                              # %delete.end4
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end180:
	.size	_ZN11RCTSpanDataD2Ev, .Lfunc_end180-_ZN11RCTSpanDataD2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function _ZZ4mainENK3$_0clEv
	.type	_ZZ4mainENK3$_0clEv,@function
_ZZ4mainENK3$_0clEv:                    # @"_ZZ4mainENK3$_0clEv"
.Lfunc_begin19:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception19
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	addq	$32, %rax
	movq	%rdi, %rcx
	addq	$64, %rcx
	leaq	-40(%rbp), %rdx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp275:
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	_Z9tensormulILi2ELi2EfENSt9enable_ifIXgtT_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ES3_IXmiplT_T0_Li2EES4_E
.Ltmp276:
	jmp	.LBB181_1
.LBB181_1:                              # %invoke.cont
	leaq	-40(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB181_2:                              # %lpad
	.cfi_def_cfa %rbp, 16
.Ltmp277:
	movl	%edx, %ecx
	movq	%rax, -48(%rbp)
	movl	%ecx, -52(%rbp)
	leaq	-40(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
# %bb.3:                                # %eh.resume
	movq	-48(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end181:
	.size	_ZZ4mainENK3$_0clEv, .Lfunc_end181-_ZZ4mainENK3$_0clEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table181:
.Lexception19:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end19-.Lcst_begin19
.Lcst_begin19:
	.uleb128 .Lfunc_begin19-.Lfunc_begin19 # >> Call Site 1 <<
	.uleb128 .Ltmp275-.Lfunc_begin19 #   Call between .Lfunc_begin19 and .Ltmp275
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp275-.Lfunc_begin19 # >> Call Site 2 <<
	.uleb128 .Ltmp276-.Ltmp275      #   Call between .Ltmp275 and .Ltmp276
	.uleb128 .Ltmp277-.Lfunc_begin19 #     jumps to .Ltmp277
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp276-.Lfunc_begin19 # >> Call Site 3 <<
	.uleb128 .Lfunc_end181-.Ltmp276 #   Call between .Ltmp276 and .Lfunc_end181
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end19:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE,"axG",@progbits,_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE,comdat
	.weak	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE # -- Begin function _ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	.p2align	4, 0x90
	.type	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE,@function
_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE: # @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end182:
	.size	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE, .Lfunc_end182-_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,"axG",@progbits,_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,comdat
	.weak	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE # -- Begin function _ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.p2align	4, 0x90
	.type	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,@function
_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE: # @_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	movq	%rax, -40(%rbp)
	leaq	-32(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end183:
	.size	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE, .Lfunc_end183-_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv,"axG",@progbits,_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv,comdat
	.weak	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv # -- Begin function _ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv
	.p2align	4, 0x90
	.type	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv,@function
_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv: # @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end184:
	.size	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv, .Lfunc_end184-_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z9tensormulILi2ELi2EfENSt9enable_ifIXgtT_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ES3_IXmiplT_T0_Li2EES4_E,"axG",@progbits,_Z9tensormulILi2ELi2EfENSt9enable_ifIXgtT_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ES3_IXmiplT_T0_Li2EES4_E,comdat
	.weak	_Z9tensormulILi2ELi2EfENSt9enable_ifIXgtT_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ES3_IXmiplT_T0_Li2EES4_E # -- Begin function _Z9tensormulILi2ELi2EfENSt9enable_ifIXgtT_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ES3_IXmiplT_T0_Li2EES4_E
	.p2align	4, 0x90
	.type	_Z9tensormulILi2ELi2EfENSt9enable_ifIXgtT_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ES3_IXmiplT_T0_Li2EES4_E,@function
_Z9tensormulILi2ELi2EfENSt9enable_ifIXgtT_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ES3_IXmiplT_T0_Li2EES4_E: # @_Z9tensormulILi2ELi2EfENSt9enable_ifIXgtT_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ES3_IXmiplT_T0_Li2EES4_E
.Lfunc_begin20:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception20
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	%rdx, -112(%rbp)        # 8-byte Spill
.LBB185_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB185_9
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB185_1 Depth=1
	movq	-8(%rbp), %rsi
	movl	-20(%rbp), %edx
	leaq	-56(%rbp), %rdi
	callq	_ZNK5TSpanILi2EfEixILb0EEEKNSt9enable_ifIXntT_ES_ILi1EfEE4typeEi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
.Ltmp278:
	leaq	-88(%rbp), %rdi
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	callq	_ZN5TSpanILi2EfEixILb0EEENSt9enable_ifIXntT_ES_ILi1EfEE4typeEi
.Ltmp279:
	jmp	.LBB185_3
.LBB185_3:                              # %invoke.cont
                                        #   in Loop: Header=BB185_1 Depth=1
.Ltmp281:
	leaq	-56(%rbp), %rdi
	leaq	-88(%rbp), %rdx
	movq	-120(%rbp), %rsi        # 8-byte Reload
	callq	_Z9tensormulILi1ELi2EfENSt9enable_ifIXaaeqT_Li1EgtT0_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ES3_IXmiplT_T0_Li2EES4_E
.Ltmp282:
	jmp	.LBB185_4
.LBB185_4:                              # %invoke.cont2
                                        #   in Loop: Header=BB185_1 Depth=1
	leaq	-88(%rbp), %rdi
	callq	_ZN5TSpanILi1EfED2Ev
	leaq	-56(%rbp), %rdi
	callq	_ZN5TSpanILi1EfED2Ev
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB185_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB185_1
.LBB185_6:                              # %lpad
.Ltmp280:
	movl	%edx, %ecx
	movq	%rax, -96(%rbp)
	movl	%ecx, -100(%rbp)
	jmp	.LBB185_8
.LBB185_7:                              # %lpad1
.Ltmp283:
	movl	%edx, %ecx
	movq	%rax, -96(%rbp)
	movl	%ecx, -100(%rbp)
	leaq	-88(%rbp), %rdi
	callq	_ZN5TSpanILi1EfED2Ev
.LBB185_8:                              # %ehcleanup
	leaq	-56(%rbp), %rdi
	callq	_ZN5TSpanILi1EfED2Ev
	jmp	.LBB185_10
.LBB185_9:                              # %for.end
	addq	$128, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB185_10:                             # %eh.resume
	.cfi_def_cfa %rbp, 16
	movq	-96(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end185:
	.size	_Z9tensormulILi2ELi2EfENSt9enable_ifIXgtT_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ES3_IXmiplT_T0_Li2EES4_E, .Lfunc_end185-_Z9tensormulILi2ELi2EfENSt9enable_ifIXgtT_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ES3_IXmiplT_T0_Li2EES4_E
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table185:
.Lexception20:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end20-.Lcst_begin20
.Lcst_begin20:
	.uleb128 .Lfunc_begin20-.Lfunc_begin20 # >> Call Site 1 <<
	.uleb128 .Ltmp278-.Lfunc_begin20 #   Call between .Lfunc_begin20 and .Ltmp278
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp278-.Lfunc_begin20 # >> Call Site 2 <<
	.uleb128 .Ltmp279-.Ltmp278      #   Call between .Ltmp278 and .Ltmp279
	.uleb128 .Ltmp280-.Lfunc_begin20 #     jumps to .Ltmp280
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp281-.Lfunc_begin20 # >> Call Site 3 <<
	.uleb128 .Ltmp282-.Ltmp281      #   Call between .Ltmp281 and .Ltmp282
	.uleb128 .Ltmp283-.Lfunc_begin20 #     jumps to .Ltmp283
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp282-.Lfunc_begin20 # >> Call Site 4 <<
	.uleb128 .Lfunc_end185-.Ltmp282 #   Call between .Ltmp282 and .Lfunc_end185
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end20:
	.p2align	2
                                        # -- End function
	.section	.text._Z9tensormulILi1ELi2EfENSt9enable_ifIXaaeqT_Li1EgtT0_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ES3_IXmiplT_T0_Li2EES4_E,"axG",@progbits,_Z9tensormulILi1ELi2EfENSt9enable_ifIXaaeqT_Li1EgtT0_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ES3_IXmiplT_T0_Li2EES4_E,comdat
	.weak	_Z9tensormulILi1ELi2EfENSt9enable_ifIXaaeqT_Li1EgtT0_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ES3_IXmiplT_T0_Li2EES4_E # -- Begin function _Z9tensormulILi1ELi2EfENSt9enable_ifIXaaeqT_Li1EgtT0_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ES3_IXmiplT_T0_Li2EES4_E
	.p2align	4, 0x90
	.type	_Z9tensormulILi1ELi2EfENSt9enable_ifIXaaeqT_Li1EgtT0_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ES3_IXmiplT_T0_Li2EES4_E,@function
_Z9tensormulILi1ELi2EfENSt9enable_ifIXaaeqT_Li1EgtT0_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ES3_IXmiplT_T0_Li2EES4_E: # @_Z9tensormulILi1ELi2EfENSt9enable_ifIXaaeqT_Li1EgtT0_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ES3_IXmiplT_T0_Li2EES4_E
.Lfunc_begin21:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception21
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	%rdx, -80(%rbp)         # 8-byte Spill
.LBB186_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB186_7
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB186_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	leaq	-56(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	_ZNK5TSpanILi2EfE10back_indexILb0EEEKNSt9enable_ifIXntT_ES_ILi1EfEE4typeEi
	movl	-20(%rbp), %esi
.Ltmp284:
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	_ZN5TSpanILi1EfE10back_indexILb1EEENSt9enable_ifIXT_ERfE4typeEi
.Ltmp285:
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB186_3
.LBB186_3:                              # %invoke.cont
                                        #   in Loop: Header=BB186_1 Depth=1
.Ltmp286:
	leaq	-56(%rbp), %rsi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rdx         # 8-byte Reload
	callq	_Z9tensormulILi1ELi1EfENSt9enable_ifIXaaeqT_Li1EeqT0_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ERS4_
.Ltmp287:
	jmp	.LBB186_4
.LBB186_4:                              # %invoke.cont1
                                        #   in Loop: Header=BB186_1 Depth=1
	leaq	-56(%rbp), %rdi
	callq	_ZN5TSpanILi1EfED2Ev
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB186_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB186_1
.LBB186_6:                              # %lpad
.Ltmp288:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	leaq	-56(%rbp), %rdi
	callq	_ZN5TSpanILi1EfED2Ev
	jmp	.LBB186_8
.LBB186_7:                              # %for.end
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB186_8:                              # %eh.resume
	.cfi_def_cfa %rbp, 16
	movq	-64(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end186:
	.size	_Z9tensormulILi1ELi2EfENSt9enable_ifIXaaeqT_Li1EgtT0_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ES3_IXmiplT_T0_Li2EES4_E, .Lfunc_end186-_Z9tensormulILi1ELi2EfENSt9enable_ifIXaaeqT_Li1EgtT0_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ES3_IXmiplT_T0_Li2EES4_E
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table186:
.Lexception21:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end21-.Lcst_begin21
.Lcst_begin21:
	.uleb128 .Lfunc_begin21-.Lfunc_begin21 # >> Call Site 1 <<
	.uleb128 .Ltmp284-.Lfunc_begin21 #   Call between .Lfunc_begin21 and .Ltmp284
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp284-.Lfunc_begin21 # >> Call Site 2 <<
	.uleb128 .Ltmp287-.Ltmp284      #   Call between .Ltmp284 and .Ltmp287
	.uleb128 .Ltmp288-.Lfunc_begin21 #     jumps to .Ltmp288
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp287-.Lfunc_begin21 # >> Call Site 3 <<
	.uleb128 .Lfunc_end186-.Ltmp287 #   Call between .Ltmp287 and .Lfunc_end186
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end21:
	.p2align	2
                                        # -- End function
	.section	.text._ZNK5TSpanILi2EfEixILb0EEEKNSt9enable_ifIXntT_ES_ILi1EfEE4typeEi,"axG",@progbits,_ZNK5TSpanILi2EfEixILb0EEEKNSt9enable_ifIXntT_ES_ILi1EfEE4typeEi,comdat
	.weak	_ZNK5TSpanILi2EfEixILb0EEEKNSt9enable_ifIXntT_ES_ILi1EfEE4typeEi # -- Begin function _ZNK5TSpanILi2EfEixILb0EEEKNSt9enable_ifIXntT_ES_ILi1EfEE4typeEi
	.p2align	4, 0x90
	.type	_ZNK5TSpanILi2EfEixILb0EEEKNSt9enable_ifIXntT_ES_ILi1EfEE4typeEi,@function
_ZNK5TSpanILi2EfEixILb0EEEKNSt9enable_ifIXntT_ES_ILi1EfEE4typeEi: # @_ZNK5TSpanILi2EfEixILb0EEEKNSt9enable_ifIXntT_ES_ILi1EfEE4typeEi
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, %rax
	movq	%rsi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rcx
	movl	-12(%rbp), %edx
	movq	16(%rsi), %r8
	imull	(%r8), %edx
	movslq	%edx, %r8
	shlq	$2, %r8
	addq	%r8, %rcx
	movq	8(%rsi), %r8
	addq	$4, %r8
	movq	16(%rsi), %r9
	addq	$4, %r9
	movq	24(%rsi), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	%r8, %rdx
	movq	%r9, %rcx
	movq	-24(%rbp), %r8          # 8-byte Reload
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	_ZN5TSpanILi1EfEC2EPKfPKiS4_P11RCTSpanData
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end187:
	.size	_ZNK5TSpanILi2EfEixILb0EEEKNSt9enable_ifIXntT_ES_ILi1EfEE4typeEi, .Lfunc_end187-_ZNK5TSpanILi2EfEixILb0EEEKNSt9enable_ifIXntT_ES_ILi1EfEE4typeEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5TSpanILi2EfEixILb0EEENSt9enable_ifIXntT_ES_ILi1EfEE4typeEi,"axG",@progbits,_ZN5TSpanILi2EfEixILb0EEENSt9enable_ifIXntT_ES_ILi1EfEE4typeEi,comdat
	.weak	_ZN5TSpanILi2EfEixILb0EEENSt9enable_ifIXntT_ES_ILi1EfEE4typeEi # -- Begin function _ZN5TSpanILi2EfEixILb0EEENSt9enable_ifIXntT_ES_ILi1EfEE4typeEi
	.p2align	4, 0x90
	.type	_ZN5TSpanILi2EfEixILb0EEENSt9enable_ifIXntT_ES_ILi1EfEE4typeEi,@function
_ZN5TSpanILi2EfEixILb0EEENSt9enable_ifIXntT_ES_ILi1EfEE4typeEi: # @_ZN5TSpanILi2EfEixILb0EEENSt9enable_ifIXntT_ES_ILi1EfEE4typeEi
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, %rax
	movq	%rsi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rcx
	movl	-12(%rbp), %edx
	movq	16(%rsi), %r8
	imull	(%r8), %edx
	movslq	%edx, %r8
	shlq	$2, %r8
	addq	%r8, %rcx
	movq	8(%rsi), %r8
	addq	$4, %r8
	movq	16(%rsi), %r9
	addq	$4, %r9
	movq	24(%rsi), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	%r8, %rdx
	movq	%r9, %rcx
	movq	-24(%rbp), %r8          # 8-byte Reload
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	_ZN5TSpanILi1EfEC2EPKfPKiS4_P11RCTSpanData
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end188:
	.size	_ZN5TSpanILi2EfEixILb0EEENSt9enable_ifIXntT_ES_ILi1EfEE4typeEi, .Lfunc_end188-_ZN5TSpanILi2EfEixILb0EEENSt9enable_ifIXntT_ES_ILi1EfEE4typeEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5TSpanILi1EfED2Ev,"axG",@progbits,_ZN5TSpanILi1EfED2Ev,comdat
	.weak	_ZN5TSpanILi1EfED2Ev    # -- Begin function _ZN5TSpanILi1EfED2Ev
	.p2align	4, 0x90
	.type	_ZN5TSpanILi1EfED2Ev,@function
_ZN5TSpanILi1EfED2Ev:                   # @_ZN5TSpanILi1EfED2Ev
.Lfunc_begin22:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception22
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 24(%rdi)
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	je	.LBB189_3
# %bb.1:                                # %if.then
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	24(%rax), %rdi
.Ltmp289:
	callq	_ZN11RCTSpanData5derefEv
.Ltmp290:
	jmp	.LBB189_2
.LBB189_2:                              # %invoke.cont
	jmp	.LBB189_3
.LBB189_3:                              # %if.end
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB189_4:                              # %terminate.lpad
	.cfi_def_cfa %rbp, 16
.Ltmp291:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -20(%rbp)         # 4-byte Spill
	callq	__clang_call_terminate
.Lfunc_end189:
	.size	_ZN5TSpanILi1EfED2Ev, .Lfunc_end189-_ZN5TSpanILi1EfED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table189:
.Lexception22:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end22-.Lcst_begin22
.Lcst_begin22:
	.uleb128 .Ltmp289-.Lfunc_begin22 # >> Call Site 1 <<
	.uleb128 .Ltmp290-.Ltmp289      #   Call between .Ltmp289 and .Ltmp290
	.uleb128 .Ltmp291-.Lfunc_begin22 #     jumps to .Ltmp291
	.byte	1                       #   On action: 1
.Lcst_end22:
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
.Lttbase8:
	.p2align	2
                                        # -- End function
	.section	.text._Z9tensormulILi1ELi1EfENSt9enable_ifIXaaeqT_Li1EeqT0_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ERS4_,"axG",@progbits,_Z9tensormulILi1ELi1EfENSt9enable_ifIXaaeqT_Li1EeqT0_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ERS4_,comdat
	.weak	_Z9tensormulILi1ELi1EfENSt9enable_ifIXaaeqT_Li1EeqT0_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ERS4_ # -- Begin function _Z9tensormulILi1ELi1EfENSt9enable_ifIXaaeqT_Li1EeqT0_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ERS4_
	.p2align	4, 0x90
	.type	_Z9tensormulILi1ELi1EfENSt9enable_ifIXaaeqT_Li1EeqT0_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ERS4_,@function
_Z9tensormulILi1ELi1EfENSt9enable_ifIXaaeqT_Li1EeqT0_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ERS4_: # @_Z9tensormulILi1ELi1EfENSt9enable_ifIXaaeqT_Li1EeqT0_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ERS4_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB190_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB190_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB190_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	_ZNK5TSpanILi1EfEixILb1EEENSt9enable_ifIXT_ERKfE4typeEi
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	movss	%xmm0, -32(%rbp)        # 4-byte Spill
	callq	_ZNK5TSpanILi1EfEixILb1EEENSt9enable_ifIXT_ERKfE4typeEi
	movss	-32(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	mulss	(%rax), %xmm0
	movq	-24(%rbp), %rax
	addss	(%rax), %xmm0
	movss	%xmm0, (%rax)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB190_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB190_1
.LBB190_4:                              # %for.end
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end190:
	.size	_Z9tensormulILi1ELi1EfENSt9enable_ifIXaaeqT_Li1EeqT0_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ERS4_, .Lfunc_end190-_Z9tensormulILi1ELi1EfENSt9enable_ifIXaaeqT_Li1EeqT0_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ERS4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK5TSpanILi2EfE10back_indexILb0EEEKNSt9enable_ifIXntT_ES_ILi1EfEE4typeEi,"axG",@progbits,_ZNK5TSpanILi2EfE10back_indexILb0EEEKNSt9enable_ifIXntT_ES_ILi1EfEE4typeEi,comdat
	.weak	_ZNK5TSpanILi2EfE10back_indexILb0EEEKNSt9enable_ifIXntT_ES_ILi1EfEE4typeEi # -- Begin function _ZNK5TSpanILi2EfE10back_indexILb0EEEKNSt9enable_ifIXntT_ES_ILi1EfEE4typeEi
	.p2align	4, 0x90
	.type	_ZNK5TSpanILi2EfE10back_indexILb0EEEKNSt9enable_ifIXntT_ES_ILi1EfEE4typeEi,@function
_ZNK5TSpanILi2EfE10back_indexILb0EEEKNSt9enable_ifIXntT_ES_ILi1EfEE4typeEi: # @_ZNK5TSpanILi2EfE10back_indexILb0EEEKNSt9enable_ifIXntT_ES_ILi1EfEE4typeEi
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, %rax
	movq	%rsi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rcx
	movl	-12(%rbp), %edx
	movq	16(%rsi), %r8
	imull	4(%r8), %edx
	movslq	%edx, %r8
	shlq	$2, %r8
	addq	%r8, %rcx
	movq	8(%rsi), %rdx
	movq	16(%rsi), %r8
	movq	24(%rsi), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	%r8, %rcx
	movq	-24(%rbp), %r8          # 8-byte Reload
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	_ZN5TSpanILi1EfEC2EPKfPKiS4_P11RCTSpanData
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end191:
	.size	_ZNK5TSpanILi2EfE10back_indexILb0EEEKNSt9enable_ifIXntT_ES_ILi1EfEE4typeEi, .Lfunc_end191-_ZNK5TSpanILi2EfE10back_indexILb0EEEKNSt9enable_ifIXntT_ES_ILi1EfEE4typeEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5TSpanILi1EfE10back_indexILb1EEENSt9enable_ifIXT_ERfE4typeEi,"axG",@progbits,_ZN5TSpanILi1EfE10back_indexILb1EEENSt9enable_ifIXT_ERfE4typeEi,comdat
	.weak	_ZN5TSpanILi1EfE10back_indexILb1EEENSt9enable_ifIXT_ERfE4typeEi # -- Begin function _ZN5TSpanILi1EfE10back_indexILb1EEENSt9enable_ifIXT_ERfE4typeEi
	.p2align	4, 0x90
	.type	_ZN5TSpanILi1EfE10back_indexILb1EEENSt9enable_ifIXT_ERfE4typeEi,@function
_ZN5TSpanILi1EfE10back_indexILb1EEENSt9enable_ifIXT_ERfE4typeEi: # @_ZN5TSpanILi1EfE10back_indexILb1EEENSt9enable_ifIXT_ERfE4typeEi
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	_ZN5TSpanILi1EfEixILb1EEENSt9enable_ifIXT_ERfE4typeEi
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end192:
	.size	_ZN5TSpanILi1EfE10back_indexILb1EEENSt9enable_ifIXT_ERfE4typeEi, .Lfunc_end192-_ZN5TSpanILi1EfE10back_indexILb1EEENSt9enable_ifIXT_ERfE4typeEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK5TSpanILi1EfEixILb1EEENSt9enable_ifIXT_ERKfE4typeEi,"axG",@progbits,_ZNK5TSpanILi1EfEixILb1EEENSt9enable_ifIXT_ERKfE4typeEi,comdat
	.weak	_ZNK5TSpanILi1EfEixILb1EEENSt9enable_ifIXT_ERKfE4typeEi # -- Begin function _ZNK5TSpanILi1EfEixILb1EEENSt9enable_ifIXT_ERKfE4typeEi
	.p2align	4, 0x90
	.type	_ZNK5TSpanILi1EfEixILb1EEENSt9enable_ifIXT_ERKfE4typeEi,@function
_ZNK5TSpanILi1EfEixILb1EEENSt9enable_ifIXT_ERKfE4typeEi: # @_ZNK5TSpanILi1EfEixILb1EEENSt9enable_ifIXT_ERKfE4typeEi
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	movl	-12(%rbp), %esi
	movq	16(%rdi), %rdi
	imull	(%rdi), %esi
	movslq	%esi, %rdi
	shlq	$2, %rdi
	addq	%rdi, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end193:
	.size	_ZNK5TSpanILi1EfEixILb1EEENSt9enable_ifIXT_ERKfE4typeEi, .Lfunc_end193-_ZNK5TSpanILi1EfEixILb1EEENSt9enable_ifIXT_ERKfE4typeEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5TSpanILi1EfEC2EPKfPKiS4_P11RCTSpanData,"axG",@progbits,_ZN5TSpanILi1EfEC2EPKfPKiS4_P11RCTSpanData,comdat
	.weak	_ZN5TSpanILi1EfEC2EPKfPKiS4_P11RCTSpanData # -- Begin function _ZN5TSpanILi1EfEC2EPKfPKiS4_P11RCTSpanData
	.p2align	4, 0x90
	.type	_ZN5TSpanILi1EfEC2EPKfPKiS4_P11RCTSpanData,@function
_ZN5TSpanILi1EfEC2EPKfPKiS4_P11RCTSpanData: # @_ZN5TSpanILi1EfEC2EPKfPKiS4_P11RCTSpanData
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rcx)
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rcx)
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rcx)
	cmpq	$0, -40(%rbp)
	je	.LBB194_2
# %bb.1:                                # %if.then
	movq	-40(%rbp), %rdi
	callq	_ZN11RCTSpanData3refEv
.LBB194_2:                              # %if.end
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end194:
	.size	_ZN5TSpanILi1EfEC2EPKfPKiS4_P11RCTSpanData, .Lfunc_end194-_ZN5TSpanILi1EfEC2EPKfPKiS4_P11RCTSpanData
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5TSpanILi1EfEixILb1EEENSt9enable_ifIXT_ERfE4typeEi,"axG",@progbits,_ZN5TSpanILi1EfEixILb1EEENSt9enable_ifIXT_ERfE4typeEi,comdat
	.weak	_ZN5TSpanILi1EfEixILb1EEENSt9enable_ifIXT_ERfE4typeEi # -- Begin function _ZN5TSpanILi1EfEixILb1EEENSt9enable_ifIXT_ERfE4typeEi
	.p2align	4, 0x90
	.type	_ZN5TSpanILi1EfEixILb1EEENSt9enable_ifIXT_ERfE4typeEi,@function
_ZN5TSpanILi1EfEixILb1EEENSt9enable_ifIXT_ERfE4typeEi: # @_ZN5TSpanILi1EfEixILb1EEENSt9enable_ifIXT_ERfE4typeEi
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %esi
	movq	16(%rdi), %rdi
	imull	(%rdi), %esi
	movslq	%esi, %rdi
	shlq	$2, %rdi
	addq	%rdi, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end195:
	.size	_ZN5TSpanILi1EfEixILb1EEENSt9enable_ifIXT_ERfE4typeEi, .Lfunc_end195-_ZN5TSpanILi1EfEixILb1EEENSt9enable_ifIXT_ERfE4typeEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE,"axG",@progbits,_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE,comdat
	.weak	_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE # -- Begin function _ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE
	.p2align	4, 0x90
	.type	_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE,@function
_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE: # @_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	movl	$1000000, %ecx          # imm = 0xF4240
	movl	%ecx, %edi
	cqto
	idivq	%rdi
	movq	%rax, -24(%rbp)
	leaq	-8(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC2IlvEERKT_
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end196:
	.size	_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE, .Lfunc_end196-_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv,"axG",@progbits,_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv,comdat
	.weak	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv # -- Begin function _ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.p2align	4, 0x90
	.type	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv,@function
_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv: # @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end197:
	.size	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv, .Lfunc_end197-_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC2IlvEERKT_,"axG",@progbits,_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC2IlvEERKT_,comdat
	.weak	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC2IlvEERKT_ # -- Begin function _ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC2IlvEERKT_
	.p2align	4, 0x90
	.type	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC2IlvEERKT_,@function
_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC2IlvEERKT_: # @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC2IlvEERKT_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, (%rsi)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end198:
	.size	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC2IlvEERKT_, .Lfunc_end198-_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC2IlvEERKT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,"axG",@progbits,_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,comdat
	.weak	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_ # -- Begin function _ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.p2align	4, 0x90
	.type	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,@function
_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_: # @_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	leaq	-40(%rbp), %rdi
	callq	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -48(%rbp)
	leaq	-48(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	movq	-56(%rbp), %rsi         # 8-byte Reload
	subq	%rax, %rsi
	movq	%rsi, -32(%rbp)
	leaq	-8(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end199:
	.size	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_, .Lfunc_end199-_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,"axG",@progbits,_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,comdat
	.weak	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv # -- Begin function _ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.p2align	4, 0x90
	.type	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,@function
_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv: # @_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end200:
	.size	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, .Lfunc_end200-_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_,"axG",@progbits,_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_,comdat
	.weak	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_ # -- Begin function _ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_
	.p2align	4, 0x90
	.type	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_,@function
_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_: # @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, (%rsi)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end201:
	.size	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_, .Lfunc_end201-_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function _ZZ4mainENK3$_1clEv
	.type	_ZZ4mainENK3$_1clEv,@function
_ZZ4mainENK3$_1clEv:                    # @"_ZZ4mainENK3$_1clEv"
.Lfunc_begin23:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception23
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	-40(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-128(%rbp), %rsi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEC2ERKS0_
	movq	-128(%rbp), %rax        # 8-byte Reload
	addq	$32, %rax
.Ltmp292:
	leaq	-72(%rbp), %rdi
	movq	%rax, %rsi
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp293:
	jmp	.LBB202_1
.LBB202_1:                              # %invoke.cont
	movq	-128(%rbp), %rax        # 8-byte Reload
	addq	$64, %rax
.Ltmp295:
	leaq	-120(%rbp), %rdi
	movq	%rax, %rsi
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp296:
	jmp	.LBB202_2
.LBB202_2:                              # %invoke.cont5
.Ltmp298:
	leaq	-40(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	callq	_Z12block_matmulILi512EEv5TSpanILi2EfES1_S1_
.Ltmp299:
	jmp	.LBB202_3
.LBB202_3:                              # %invoke.cont7
	leaq	-120(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-72(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-40(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	addq	$128, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB202_4:                              # %lpad
	.cfi_def_cfa %rbp, 16
.Ltmp294:
	movl	%edx, %ecx
	movq	%rax, -80(%rbp)
	movl	%ecx, -84(%rbp)
	jmp	.LBB202_8
.LBB202_5:                              # %lpad4
.Ltmp297:
	movl	%edx, %ecx
	movq	%rax, -80(%rbp)
	movl	%ecx, -84(%rbp)
	jmp	.LBB202_7
.LBB202_6:                              # %lpad6
.Ltmp300:
	movl	%edx, %ecx
	movq	%rax, -80(%rbp)
	movl	%ecx, -84(%rbp)
	leaq	-120(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB202_7:                              # %ehcleanup
	leaq	-72(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB202_8:                              # %ehcleanup8
	leaq	-40(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
# %bb.9:                                # %eh.resume
	movq	-80(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end202:
	.size	_ZZ4mainENK3$_1clEv, .Lfunc_end202-_ZZ4mainENK3$_1clEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table202:
.Lexception23:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end23-.Lcst_begin23
.Lcst_begin23:
	.uleb128 .Lfunc_begin23-.Lfunc_begin23 # >> Call Site 1 <<
	.uleb128 .Ltmp292-.Lfunc_begin23 #   Call between .Lfunc_begin23 and .Ltmp292
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp292-.Lfunc_begin23 # >> Call Site 2 <<
	.uleb128 .Ltmp293-.Ltmp292      #   Call between .Ltmp292 and .Ltmp293
	.uleb128 .Ltmp294-.Lfunc_begin23 #     jumps to .Ltmp294
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp295-.Lfunc_begin23 # >> Call Site 3 <<
	.uleb128 .Ltmp296-.Ltmp295      #   Call between .Ltmp295 and .Ltmp296
	.uleb128 .Ltmp297-.Lfunc_begin23 #     jumps to .Ltmp297
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp298-.Lfunc_begin23 # >> Call Site 4 <<
	.uleb128 .Ltmp299-.Ltmp298      #   Call between .Ltmp298 and .Ltmp299
	.uleb128 .Ltmp300-.Lfunc_begin23 #     jumps to .Ltmp300
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp299-.Lfunc_begin23 # >> Call Site 5 <<
	.uleb128 .Lfunc_end202-.Ltmp299 #   Call between .Ltmp299 and .Lfunc_end202
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end23:
	.p2align	2
                                        # -- End function
	.section	.text._Z12block_matmulILi512EEv5TSpanILi2EfES1_S1_,"axG",@progbits,_Z12block_matmulILi512EEv5TSpanILi2EfES1_S1_,comdat
	.weak	_Z12block_matmulILi512EEv5TSpanILi2EfES1_S1_ # -- Begin function _Z12block_matmulILi512EEv5TSpanILi2EfES1_S1_
	.p2align	4, 0x90
	.type	_Z12block_matmulILi512EEv5TSpanILi2EfES1_S1_,@function
_Z12block_matmulILi512EEv5TSpanILi2EfES1_S1_: # @_Z12block_matmulILi512EEv5TSpanILi2EfES1_S1_
.Lfunc_begin24:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception24
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$992, %rsp              # imm = 0x3E0
	movq	8(%rdi), %rax
	movl	4(%rax), %ecx
	movq	8(%rsi), %rax
	cmpl	(%rax), %ecx
	movq	%rsi, -864(%rbp)        # 8-byte Spill
	movq	%rdi, -872(%rbp)        # 8-byte Spill
	movq	%rdx, -880(%rbp)        # 8-byte Spill
	jne	.LBB203_2
# %bb.1:                                # %cond.true
	jmp	.LBB203_3
.LBB203_2:                              # %cond.false
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$35, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi512EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB203_3:                              # %cond.end
	movq	-880(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	(%rcx), %edx
	movq	-872(%rbp), %rcx        # 8-byte Reload
	movq	8(%rcx), %rsi
	cmpl	(%rsi), %edx
	jne	.LBB203_5
# %bb.4:                                # %cond.true8
	jmp	.LBB203_6
.LBB203_5:                              # %cond.false9
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$36, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi512EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB203_6:                              # %cond.end10
	movq	-880(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	4(%rcx), %edx
	movq	-864(%rbp), %rcx        # 8-byte Reload
	movq	8(%rcx), %rsi
	cmpl	4(%rsi), %edx
	jne	.LBB203_8
# %bb.7:                                # %cond.true16
	jmp	.LBB203_9
.LBB203_8:                              # %cond.false17
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$37, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi512EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB203_9:                              # %cond.end18
	movq	-872(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	(%rcx), %eax
	cltd
	movl	$512, %esi              # imm = 0x200
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB203_11
# %bb.10:                               # %cond.true22
	jmp	.LBB203_12
.LBB203_11:                             # %cond.false23
	movabsq	$.L.str.17, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$38, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi512EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB203_12:                             # %cond.end24
	movq	-872(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	4(%rcx), %eax
	cltd
	movl	$512, %esi              # imm = 0x200
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB203_14
# %bb.13:                               # %cond.true29
	jmp	.LBB203_15
.LBB203_14:                             # %cond.false30
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$39, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi512EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB203_15:                             # %cond.end31
	movq	-864(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	(%rcx), %eax
	cltd
	movl	$512, %esi              # imm = 0x200
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB203_17
# %bb.16:                               # %cond.true36
	jmp	.LBB203_18
.LBB203_17:                             # %cond.false37
	movabsq	$.L.str.19, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$40, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi512EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB203_18:                             # %cond.end38
	movq	-864(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	4(%rcx), %eax
	cltd
	movl	$512, %esi              # imm = 0x200
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB203_20
# %bb.19:                               # %cond.true43
	jmp	.LBB203_21
.LBB203_20:                             # %cond.false44
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$41, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi512EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB203_21:                             # %cond.end45
	movq	-872(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	(%rcx), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$23, %esi
	addl	%esi, %edx
	sarl	$9, %edx
	movl	%edx, -8(%rbp)
	movq	8(%rax), %rcx
	movl	4(%rcx), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$23, %esi
	addl	%esi, %edx
	sarl	$9, %edx
	movl	%edx, -4(%rbp)
	movq	-864(%rbp), %rcx        # 8-byte Reload
	movq	8(%rcx), %rdi
	movl	(%rdi), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$23, %esi
	addl	%esi, %edx
	sarl	$9, %edx
	movl	%edx, -16(%rbp)
	movq	8(%rcx), %rdi
	movl	4(%rdi), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$23, %esi
	addl	%esi, %edx
	sarl	$9, %edx
	movl	%edx, -12(%rbp)
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	8(%rdi), %r8
	movl	(%r8), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$23, %esi
	addl	%esi, %edx
	sarl	$9, %edx
	movl	%edx, -24(%rbp)
	movq	8(%rdi), %r8
	movl	4(%r8), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$23, %esi
	addl	%esi, %edx
	sarl	$9, %edx
	movl	%edx, -20(%rbp)
	movl	$2, %edx
	movl	%edx, %r8d
	leaq	-104(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	movq	%r8, %rdx
	movq	%r8, -888(%rbp)         # 8-byte Spill
	callq	_ZN6TensorI5TSpanILi2EfEEC2EPKim
.Ltmp301:
	leaq	-184(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	movq	-888(%rbp), %rdx        # 8-byte Reload
	callq	_ZN6TensorI5TSpanILi2EfEEC2EPKim
.Ltmp302:
	jmp	.LBB203_22
.LBB203_22:                             # %invoke.cont
.Ltmp304:
	movl	$2, %eax
	movl	%eax, %edx
	leaq	-280(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZN6TensorI5TSpanILi2EfEEC2EPKim
.Ltmp305:
	jmp	.LBB203_23
.LBB203_23:                             # %invoke.cont70
.Ltmp307:
	leaq	-312(%rbp), %rdi
	leaq	-104(%rbp), %rsi
	callq	_ZN6TensorI5TSpanILi2EfEE8as_tspanILi2EEES0_IXT_ES1_Ev
.Ltmp308:
	jmp	.LBB203_24
.LBB203_24:                             # %invoke.cont72
.Ltmp310:
	leaq	-344(%rbp), %rdi
	leaq	-184(%rbp), %rsi
	callq	_ZN6TensorI5TSpanILi2EfEE8as_tspanILi2EEES0_IXT_ES1_Ev
.Ltmp311:
	jmp	.LBB203_25
.LBB203_25:                             # %invoke.cont74
.Ltmp313:
	leaq	-376(%rbp), %rdi
	leaq	-280(%rbp), %rsi
	callq	_ZN6TensorI5TSpanILi2EfEE8as_tspanILi2EEES0_IXT_ES1_Ev
.Ltmp314:
	jmp	.LBB203_26
.LBB203_26:                             # %invoke.cont76
	movl	$0, -380(%rbp)
	movl	$0, -384(%rbp)
.LBB203_27:                             # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB203_29 Depth 2
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	-380(%rbp), %eax
	leaq	-104(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -892(%rbp)        # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-892(%rbp), %edx        # 4-byte Reload
	cmpl	(%rax), %edx
	jge	.LBB203_50
# %bb.28:                               # %for.body
                                        #   in Loop: Header=BB203_27 Depth=1
	movl	$0, -388(%rbp)
	movl	$0, -392(%rbp)
.LBB203_29:                             # %for.cond79
                                        #   Parent Loop BB203_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movl	-388(%rbp), %eax
	leaq	-104(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -896(%rbp)        # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-896(%rbp), %edx        # 4-byte Reload
	cmpl	(%rax), %edx
	jge	.LBB203_48
# %bb.30:                               # %for.body83
                                        #   in Loop: Header=BB203_29 Depth=2
.Ltmp362:
	leaq	-456(%rbp), %rdi
	movq	-872(%rbp), %rsi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp363:
	jmp	.LBB203_31
.LBB203_31:                             # %invoke.cont85
                                        #   in Loop: Header=BB203_29 Depth=2
	movl	-392(%rbp), %edx
	movl	-384(%rbp), %ecx
.Ltmp365:
	leaq	-424(%rbp), %rdi
	leaq	-456(%rbp), %rsi
	movl	$512, %eax              # imm = 0x200
	movl	%eax, %r8d
	movl	%eax, %r9d
	callq	_Z6submatIfE5TSpanILi2ET_ES2_iiii
.Ltmp366:
	jmp	.LBB203_32
.LBB203_32:                             # %invoke.cont87
                                        #   in Loop: Header=BB203_29 Depth=2
	movl	-380(%rbp), %edx
.Ltmp368:
	leaq	-488(%rbp), %rdi
	leaq	-312(%rbp), %rsi
	callq	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
.Ltmp369:
	jmp	.LBB203_33
.LBB203_33:                             # %invoke.cont90
                                        #   in Loop: Header=BB203_29 Depth=2
	movl	-388(%rbp), %esi
.Ltmp371:
	leaq	-488(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
.Ltmp372:
	movq	%rax, -904(%rbp)        # 8-byte Spill
	jmp	.LBB203_34
.LBB203_34:                             # %invoke.cont92
                                        #   in Loop: Header=BB203_29 Depth=2
.Ltmp373:
	leaq	-424(%rbp), %rsi
	movq	-904(%rbp), %rdi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEaSEOS0_
.Ltmp374:
	movq	%rax, -912(%rbp)        # 8-byte Spill
	jmp	.LBB203_35
.LBB203_35:                             # %invoke.cont94
                                        #   in Loop: Header=BB203_29 Depth=2
	leaq	-488(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
	leaq	-424(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-456(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
# %bb.36:                               # %for.inc
                                        #   in Loop: Header=BB203_29 Depth=2
	movl	-388(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -388(%rbp)
	movl	-392(%rbp), %eax
	addl	$512, %eax              # imm = 0x200
	movl	%eax, -392(%rbp)
	jmp	.LBB203_29
.LBB203_37:                             # %lpad
.Ltmp303:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB203_119
.LBB203_38:                             # %lpad69
.Ltmp306:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB203_118
.LBB203_39:                             # %lpad71
.Ltmp309:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB203_117
.LBB203_40:                             # %lpad73
.Ltmp312:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB203_116
.LBB203_41:                             # %lpad75
.Ltmp315:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB203_115
.LBB203_42:                             # %lpad84
.Ltmp364:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB203_114
.LBB203_43:                             # %lpad86
.Ltmp367:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB203_47
.LBB203_44:                             # %lpad89
.Ltmp370:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB203_46
.LBB203_45:                             # %lpad91
.Ltmp375:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	leaq	-488(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
.LBB203_46:                             # %ehcleanup
	leaq	-424(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB203_47:                             # %ehcleanup96
	leaq	-456(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	jmp	.LBB203_114
.LBB203_48:                             # %for.end
                                        #   in Loop: Header=BB203_27 Depth=1
	jmp	.LBB203_49
.LBB203_49:                             # %for.inc97
                                        #   in Loop: Header=BB203_27 Depth=1
	movl	-380(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -380(%rbp)
	movl	-384(%rbp), %eax
	addl	$512, %eax              # imm = 0x200
	movl	%eax, -384(%rbp)
	jmp	.LBB203_27
.LBB203_50:                             # %for.end100
	movl	$0, -492(%rbp)
	movl	$0, -496(%rbp)
.LBB203_51:                             # %for.cond103
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB203_53 Depth 2
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	-492(%rbp), %eax
	leaq	-184(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -916(%rbp)        # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-916(%rbp), %edx        # 4-byte Reload
	cmpl	(%rax), %edx
	jge	.LBB203_68
# %bb.52:                               # %for.body107
                                        #   in Loop: Header=BB203_51 Depth=1
	movl	$0, -500(%rbp)
	movl	$0, -504(%rbp)
.LBB203_53:                             # %for.cond110
                                        #   Parent Loop BB203_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movl	-500(%rbp), %eax
	leaq	-184(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -920(%rbp)        # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-920(%rbp), %edx        # 4-byte Reload
	cmpl	(%rax), %edx
	jge	.LBB203_66
# %bb.54:                               # %for.body114
                                        #   in Loop: Header=BB203_53 Depth=2
.Ltmp349:
	leaq	-568(%rbp), %rdi
	movq	-864(%rbp), %rsi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp350:
	jmp	.LBB203_55
.LBB203_55:                             # %invoke.cont117
                                        #   in Loop: Header=BB203_53 Depth=2
	movl	-504(%rbp), %edx
	movl	-496(%rbp), %ecx
.Ltmp351:
	leaq	-536(%rbp), %rdi
	leaq	-568(%rbp), %rsi
	movl	$512, %eax              # imm = 0x200
	movl	%eax, %r8d
	movl	%eax, %r9d
	callq	_Z6submatIfE5TSpanILi2ET_ES2_iiii
.Ltmp352:
	jmp	.LBB203_56
.LBB203_56:                             # %invoke.cont119
                                        #   in Loop: Header=BB203_53 Depth=2
	movl	-492(%rbp), %edx
.Ltmp354:
	leaq	-600(%rbp), %rdi
	leaq	-344(%rbp), %rsi
	callq	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
.Ltmp355:
	jmp	.LBB203_57
.LBB203_57:                             # %invoke.cont122
                                        #   in Loop: Header=BB203_53 Depth=2
	movl	-500(%rbp), %esi
.Ltmp357:
	leaq	-600(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
.Ltmp358:
	movq	%rax, -928(%rbp)        # 8-byte Spill
	jmp	.LBB203_58
.LBB203_58:                             # %invoke.cont124
                                        #   in Loop: Header=BB203_53 Depth=2
.Ltmp359:
	leaq	-536(%rbp), %rsi
	movq	-928(%rbp), %rdi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEaSEOS0_
.Ltmp360:
	movq	%rax, -936(%rbp)        # 8-byte Spill
	jmp	.LBB203_59
.LBB203_59:                             # %invoke.cont126
                                        #   in Loop: Header=BB203_53 Depth=2
	leaq	-600(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
	leaq	-536(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-568(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
# %bb.60:                               # %for.inc131
                                        #   in Loop: Header=BB203_53 Depth=2
	movl	-500(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -500(%rbp)
	movl	-504(%rbp), %eax
	addl	$512, %eax              # imm = 0x200
	movl	%eax, -504(%rbp)
	jmp	.LBB203_53
.LBB203_61:                             # %lpad118
.Ltmp353:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB203_65
.LBB203_62:                             # %lpad121
.Ltmp356:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB203_64
.LBB203_63:                             # %lpad123
.Ltmp361:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	leaq	-600(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
.LBB203_64:                             # %ehcleanup129
	leaq	-536(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB203_65:                             # %ehcleanup130
	leaq	-568(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	jmp	.LBB203_114
.LBB203_66:                             # %for.end134
                                        #   in Loop: Header=BB203_51 Depth=1
	jmp	.LBB203_67
.LBB203_67:                             # %for.inc135
                                        #   in Loop: Header=BB203_51 Depth=1
	movl	-492(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -492(%rbp)
	movl	-496(%rbp), %eax
	addl	$512, %eax              # imm = 0x200
	movl	%eax, -496(%rbp)
	jmp	.LBB203_51
.LBB203_68:                             # %for.end138
	movl	$0, -604(%rbp)
	movl	$0, -608(%rbp)
.LBB203_69:                             # %for.cond141
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB203_71 Depth 2
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	-604(%rbp), %eax
	leaq	-280(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -940(%rbp)        # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-940(%rbp), %edx        # 4-byte Reload
	cmpl	(%rax), %edx
	jge	.LBB203_86
# %bb.70:                               # %for.body145
                                        #   in Loop: Header=BB203_69 Depth=1
	movl	$0, -612(%rbp)
	movl	$0, -616(%rbp)
.LBB203_71:                             # %for.cond148
                                        #   Parent Loop BB203_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movl	-612(%rbp), %eax
	leaq	-280(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -944(%rbp)        # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-944(%rbp), %edx        # 4-byte Reload
	cmpl	(%rax), %edx
	jge	.LBB203_84
# %bb.72:                               # %for.body152
                                        #   in Loop: Header=BB203_71 Depth=2
.Ltmp336:
	leaq	-680(%rbp), %rdi
	movq	-880(%rbp), %rsi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp337:
	jmp	.LBB203_73
.LBB203_73:                             # %invoke.cont155
                                        #   in Loop: Header=BB203_71 Depth=2
	movl	-616(%rbp), %edx
	movl	-608(%rbp), %ecx
.Ltmp338:
	leaq	-648(%rbp), %rdi
	leaq	-680(%rbp), %rsi
	movl	$512, %eax              # imm = 0x200
	movl	%eax, %r8d
	movl	%eax, %r9d
	callq	_Z6submatIfE5TSpanILi2ET_ES2_iiii
.Ltmp339:
	jmp	.LBB203_74
.LBB203_74:                             # %invoke.cont157
                                        #   in Loop: Header=BB203_71 Depth=2
	movl	-604(%rbp), %edx
.Ltmp341:
	leaq	-712(%rbp), %rdi
	leaq	-376(%rbp), %rsi
	callq	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
.Ltmp342:
	jmp	.LBB203_75
.LBB203_75:                             # %invoke.cont160
                                        #   in Loop: Header=BB203_71 Depth=2
	movl	-612(%rbp), %esi
.Ltmp344:
	leaq	-712(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
.Ltmp345:
	movq	%rax, -952(%rbp)        # 8-byte Spill
	jmp	.LBB203_76
.LBB203_76:                             # %invoke.cont162
                                        #   in Loop: Header=BB203_71 Depth=2
.Ltmp346:
	leaq	-648(%rbp), %rsi
	movq	-952(%rbp), %rdi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEaSEOS0_
.Ltmp347:
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB203_77
.LBB203_77:                             # %invoke.cont164
                                        #   in Loop: Header=BB203_71 Depth=2
	leaq	-712(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
	leaq	-648(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-680(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
# %bb.78:                               # %for.inc169
                                        #   in Loop: Header=BB203_71 Depth=2
	movl	-612(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -612(%rbp)
	movl	-616(%rbp), %eax
	addl	$512, %eax              # imm = 0x200
	movl	%eax, -616(%rbp)
	jmp	.LBB203_71
.LBB203_79:                             # %lpad156
.Ltmp340:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB203_83
.LBB203_80:                             # %lpad159
.Ltmp343:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB203_82
.LBB203_81:                             # %lpad161
.Ltmp348:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	leaq	-712(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
.LBB203_82:                             # %ehcleanup167
	leaq	-648(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB203_83:                             # %ehcleanup168
	leaq	-680(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	jmp	.LBB203_114
.LBB203_84:                             # %for.end172
                                        #   in Loop: Header=BB203_69 Depth=1
	jmp	.LBB203_85
.LBB203_85:                             # %for.inc173
                                        #   in Loop: Header=BB203_69 Depth=1
	movl	-604(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -604(%rbp)
	movl	-608(%rbp), %eax
	addl	$512, %eax              # imm = 0x200
	movl	%eax, -608(%rbp)
	jmp	.LBB203_69
.LBB203_86:                             # %for.end176
	movl	$0, -716(%rbp)
.LBB203_87:                             # %for.cond178
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB203_89 Depth 2
                                        #       Child Loop BB203_91 Depth 3
	movl	-716(%rbp), %eax
	movq	-368(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB203_113
# %bb.88:                               # %for.body182
                                        #   in Loop: Header=BB203_87 Depth=1
	movl	$0, -720(%rbp)
.LBB203_89:                             # %for.cond184
                                        #   Parent Loop BB203_87 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB203_91 Depth 3
	movl	-720(%rbp), %eax
	movq	-368(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB203_111
# %bb.90:                               # %for.body188
                                        #   in Loop: Header=BB203_89 Depth=2
	movl	$0, -724(%rbp)
.LBB203_91:                             # %for.cond189
                                        #   Parent Loop BB203_87 Depth=1
                                        #     Parent Loop BB203_89 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-724(%rbp), %eax
	movq	-304(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB203_109
# %bb.92:                               # %for.body193
                                        #   in Loop: Header=BB203_91 Depth=3
	movl	-716(%rbp), %edx
.Ltmp316:
	leaq	-760(%rbp), %rdi
	leaq	-312(%rbp), %rsi
	callq	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
.Ltmp317:
	jmp	.LBB203_93
.LBB203_93:                             # %invoke.cont195
                                        #   in Loop: Header=BB203_91 Depth=3
	movl	-724(%rbp), %esi
.Ltmp318:
	leaq	-760(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
.Ltmp319:
	movq	%rax, -968(%rbp)        # 8-byte Spill
	jmp	.LBB203_94
.LBB203_94:                             # %invoke.cont197
                                        #   in Loop: Header=BB203_91 Depth=3
	movl	-724(%rbp), %edx
.Ltmp320:
	leaq	-792(%rbp), %rdi
	leaq	-344(%rbp), %rsi
	callq	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
.Ltmp321:
	jmp	.LBB203_95
.LBB203_95:                             # %invoke.cont200
                                        #   in Loop: Header=BB203_91 Depth=3
	movl	-720(%rbp), %esi
.Ltmp323:
	leaq	-792(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
.Ltmp324:
	movq	%rax, -976(%rbp)        # 8-byte Spill
	jmp	.LBB203_96
.LBB203_96:                             # %invoke.cont202
                                        #   in Loop: Header=BB203_91 Depth=3
	movl	-716(%rbp), %edx
.Ltmp325:
	leaq	-856(%rbp), %rdi
	leaq	-376(%rbp), %rsi
	callq	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
.Ltmp326:
	jmp	.LBB203_97
.LBB203_97:                             # %invoke.cont206
                                        #   in Loop: Header=BB203_91 Depth=3
	movl	-720(%rbp), %esi
.Ltmp328:
	leaq	-856(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
.Ltmp329:
	movq	%rax, -984(%rbp)        # 8-byte Spill
	jmp	.LBB203_98
.LBB203_98:                             # %invoke.cont208
                                        #   in Loop: Header=BB203_91 Depth=3
.Ltmp330:
	leaq	-824(%rbp), %rdi
	movq	-984(%rbp), %rsi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp331:
	jmp	.LBB203_99
.LBB203_99:                             # %invoke.cont210
                                        #   in Loop: Header=BB203_91 Depth=3
.Ltmp333:
	leaq	-824(%rbp), %rdx
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movq	-976(%rbp), %rsi        # 8-byte Reload
	callq	_Z9tensormulILi2ELi2EfENSt9enable_ifIXgtT_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ES3_IXmiplT_T0_Li2EES4_E
.Ltmp334:
	jmp	.LBB203_100
.LBB203_100:                            # %invoke.cont212
                                        #   in Loop: Header=BB203_91 Depth=3
	leaq	-824(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-856(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
	leaq	-792(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
	leaq	-760(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
# %bb.101:                              # %for.inc217
                                        #   in Loop: Header=BB203_91 Depth=3
	movl	-724(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -724(%rbp)
	jmp	.LBB203_91
.LBB203_102:                            # %lpad196
.Ltmp322:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB203_108
.LBB203_103:                            # %lpad201
.Ltmp327:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB203_107
.LBB203_104:                            # %lpad207
.Ltmp332:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB203_106
.LBB203_105:                            # %lpad211
.Ltmp335:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	leaq	-824(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB203_106:                            # %ehcleanup214
	leaq	-856(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
.LBB203_107:                            # %ehcleanup215
	leaq	-792(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
.LBB203_108:                            # %ehcleanup216
	leaq	-760(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
	jmp	.LBB203_114
.LBB203_109:                            # %for.end219
                                        #   in Loop: Header=BB203_89 Depth=2
	jmp	.LBB203_110
.LBB203_110:                            # %for.inc220
                                        #   in Loop: Header=BB203_89 Depth=2
	movl	-720(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -720(%rbp)
	jmp	.LBB203_89
.LBB203_111:                            # %for.end222
                                        #   in Loop: Header=BB203_87 Depth=1
	jmp	.LBB203_112
.LBB203_112:                            # %for.inc223
                                        #   in Loop: Header=BB203_87 Depth=1
	movl	-716(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -716(%rbp)
	jmp	.LBB203_87
.LBB203_113:                            # %for.end225
	leaq	-376(%rbp), %rdi
	callq	_ZN5TSpanILi2ES_ILi2EfEED2Ev
	leaq	-344(%rbp), %rdi
	callq	_ZN5TSpanILi2ES_ILi2EfEED2Ev
	leaq	-312(%rbp), %rdi
	callq	_ZN5TSpanILi2ES_ILi2EfEED2Ev
	leaq	-280(%rbp), %rdi
	callq	_ZN6TensorI5TSpanILi2EfEED2Ev
	leaq	-184(%rbp), %rdi
	callq	_ZN6TensorI5TSpanILi2EfEED2Ev
	leaq	-104(%rbp), %rdi
	callq	_ZN6TensorI5TSpanILi2EfEED2Ev
	addq	$992, %rsp              # imm = 0x3E0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB203_114:                            # %ehcleanup226
	.cfi_def_cfa %rbp, 16
	leaq	-376(%rbp), %rdi
	callq	_ZN5TSpanILi2ES_ILi2EfEED2Ev
.LBB203_115:                            # %ehcleanup227
	leaq	-344(%rbp), %rdi
	callq	_ZN5TSpanILi2ES_ILi2EfEED2Ev
.LBB203_116:                            # %ehcleanup228
	leaq	-312(%rbp), %rdi
	callq	_ZN5TSpanILi2ES_ILi2EfEED2Ev
.LBB203_117:                            # %ehcleanup229
	leaq	-280(%rbp), %rdi
	callq	_ZN6TensorI5TSpanILi2EfEED2Ev
.LBB203_118:                            # %ehcleanup230
	leaq	-184(%rbp), %rdi
	callq	_ZN6TensorI5TSpanILi2EfEED2Ev
.LBB203_119:                            # %ehcleanup231
	leaq	-104(%rbp), %rdi
	callq	_ZN6TensorI5TSpanILi2EfEED2Ev
# %bb.120:                              # %eh.resume
	movq	-192(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end203:
	.size	_Z12block_matmulILi512EEv5TSpanILi2EfES1_S1_, .Lfunc_end203-_Z12block_matmulILi512EEv5TSpanILi2EfES1_S1_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table203:
.Lexception24:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end24-.Lcst_begin24
.Lcst_begin24:
	.uleb128 .Lfunc_begin24-.Lfunc_begin24 # >> Call Site 1 <<
	.uleb128 .Ltmp301-.Lfunc_begin24 #   Call between .Lfunc_begin24 and .Ltmp301
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp301-.Lfunc_begin24 # >> Call Site 2 <<
	.uleb128 .Ltmp302-.Ltmp301      #   Call between .Ltmp301 and .Ltmp302
	.uleb128 .Ltmp303-.Lfunc_begin24 #     jumps to .Ltmp303
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp304-.Lfunc_begin24 # >> Call Site 3 <<
	.uleb128 .Ltmp305-.Ltmp304      #   Call between .Ltmp304 and .Ltmp305
	.uleb128 .Ltmp306-.Lfunc_begin24 #     jumps to .Ltmp306
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp307-.Lfunc_begin24 # >> Call Site 4 <<
	.uleb128 .Ltmp308-.Ltmp307      #   Call between .Ltmp307 and .Ltmp308
	.uleb128 .Ltmp309-.Lfunc_begin24 #     jumps to .Ltmp309
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp310-.Lfunc_begin24 # >> Call Site 5 <<
	.uleb128 .Ltmp311-.Ltmp310      #   Call between .Ltmp310 and .Ltmp311
	.uleb128 .Ltmp312-.Lfunc_begin24 #     jumps to .Ltmp312
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp313-.Lfunc_begin24 # >> Call Site 6 <<
	.uleb128 .Ltmp314-.Ltmp313      #   Call between .Ltmp313 and .Ltmp314
	.uleb128 .Ltmp315-.Lfunc_begin24 #     jumps to .Ltmp315
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp362-.Lfunc_begin24 # >> Call Site 7 <<
	.uleb128 .Ltmp363-.Ltmp362      #   Call between .Ltmp362 and .Ltmp363
	.uleb128 .Ltmp364-.Lfunc_begin24 #     jumps to .Ltmp364
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp365-.Lfunc_begin24 # >> Call Site 8 <<
	.uleb128 .Ltmp366-.Ltmp365      #   Call between .Ltmp365 and .Ltmp366
	.uleb128 .Ltmp367-.Lfunc_begin24 #     jumps to .Ltmp367
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp368-.Lfunc_begin24 # >> Call Site 9 <<
	.uleb128 .Ltmp369-.Ltmp368      #   Call between .Ltmp368 and .Ltmp369
	.uleb128 .Ltmp370-.Lfunc_begin24 #     jumps to .Ltmp370
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp371-.Lfunc_begin24 # >> Call Site 10 <<
	.uleb128 .Ltmp374-.Ltmp371      #   Call between .Ltmp371 and .Ltmp374
	.uleb128 .Ltmp375-.Lfunc_begin24 #     jumps to .Ltmp375
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp349-.Lfunc_begin24 # >> Call Site 11 <<
	.uleb128 .Ltmp350-.Ltmp349      #   Call between .Ltmp349 and .Ltmp350
	.uleb128 .Ltmp364-.Lfunc_begin24 #     jumps to .Ltmp364
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp351-.Lfunc_begin24 # >> Call Site 12 <<
	.uleb128 .Ltmp352-.Ltmp351      #   Call between .Ltmp351 and .Ltmp352
	.uleb128 .Ltmp353-.Lfunc_begin24 #     jumps to .Ltmp353
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp354-.Lfunc_begin24 # >> Call Site 13 <<
	.uleb128 .Ltmp355-.Ltmp354      #   Call between .Ltmp354 and .Ltmp355
	.uleb128 .Ltmp356-.Lfunc_begin24 #     jumps to .Ltmp356
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp357-.Lfunc_begin24 # >> Call Site 14 <<
	.uleb128 .Ltmp360-.Ltmp357      #   Call between .Ltmp357 and .Ltmp360
	.uleb128 .Ltmp361-.Lfunc_begin24 #     jumps to .Ltmp361
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp336-.Lfunc_begin24 # >> Call Site 15 <<
	.uleb128 .Ltmp337-.Ltmp336      #   Call between .Ltmp336 and .Ltmp337
	.uleb128 .Ltmp364-.Lfunc_begin24 #     jumps to .Ltmp364
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp338-.Lfunc_begin24 # >> Call Site 16 <<
	.uleb128 .Ltmp339-.Ltmp338      #   Call between .Ltmp338 and .Ltmp339
	.uleb128 .Ltmp340-.Lfunc_begin24 #     jumps to .Ltmp340
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp341-.Lfunc_begin24 # >> Call Site 17 <<
	.uleb128 .Ltmp342-.Ltmp341      #   Call between .Ltmp341 and .Ltmp342
	.uleb128 .Ltmp343-.Lfunc_begin24 #     jumps to .Ltmp343
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp344-.Lfunc_begin24 # >> Call Site 18 <<
	.uleb128 .Ltmp347-.Ltmp344      #   Call between .Ltmp344 and .Ltmp347
	.uleb128 .Ltmp348-.Lfunc_begin24 #     jumps to .Ltmp348
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp316-.Lfunc_begin24 # >> Call Site 19 <<
	.uleb128 .Ltmp317-.Ltmp316      #   Call between .Ltmp316 and .Ltmp317
	.uleb128 .Ltmp364-.Lfunc_begin24 #     jumps to .Ltmp364
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp318-.Lfunc_begin24 # >> Call Site 20 <<
	.uleb128 .Ltmp321-.Ltmp318      #   Call between .Ltmp318 and .Ltmp321
	.uleb128 .Ltmp322-.Lfunc_begin24 #     jumps to .Ltmp322
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp323-.Lfunc_begin24 # >> Call Site 21 <<
	.uleb128 .Ltmp326-.Ltmp323      #   Call between .Ltmp323 and .Ltmp326
	.uleb128 .Ltmp327-.Lfunc_begin24 #     jumps to .Ltmp327
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp328-.Lfunc_begin24 # >> Call Site 22 <<
	.uleb128 .Ltmp331-.Ltmp328      #   Call between .Ltmp328 and .Ltmp331
	.uleb128 .Ltmp332-.Lfunc_begin24 #     jumps to .Ltmp332
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp333-.Lfunc_begin24 # >> Call Site 23 <<
	.uleb128 .Ltmp334-.Ltmp333      #   Call between .Ltmp333 and .Ltmp334
	.uleb128 .Ltmp335-.Lfunc_begin24 #     jumps to .Ltmp335
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp334-.Lfunc_begin24 # >> Call Site 24 <<
	.uleb128 .Lfunc_end203-.Ltmp334 #   Call between .Ltmp334 and .Lfunc_end203
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end24:
	.p2align	2
                                        # -- End function
	.section	.text._ZN6TensorI5TSpanILi2EfEEC2EPKim,"axG",@progbits,_ZN6TensorI5TSpanILi2EfEEC2EPKim,comdat
	.weak	_ZN6TensorI5TSpanILi2EfEEC2EPKim # -- Begin function _ZN6TensorI5TSpanILi2EfEEC2EPKim
	.p2align	4, 0x90
	.type	_ZN6TensorI5TSpanILi2EfEEC2EPKim,@function
_ZN6TensorI5TSpanILi2EfEEC2EPKim:       # @_ZN6TensorI5TSpanILi2EfEEC2EPKim
.Lfunc_begin25:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception25
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rdx, %rdi
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	_ZNSt6vectorI5TSpanILi2EfESaIS1_EEC2Ev
	movq	-128(%rbp), %rdx        # 8-byte Reload
	addq	$24, %rdx
	movq	-24(%rbp), %rsi
	leaq	-32(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	callq	_ZNSaIiEC2Ev
.Ltmp376:
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movq	-144(%rbp), %rdx        # 8-byte Reload
	callq	_ZNSt6vectorIiSaIiEEC2EmRKS0_
.Ltmp377:
	jmp	.LBB204_1
.LBB204_1:                              # %invoke.cont
	leaq	-32(%rbp), %rdi
	callq	_ZNSaIiED2Ev
	movq	-136(%rbp), %rdi        # 8-byte Reload
	addq	$48, %rdi
	movq	-24(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	callq	_ZNSaIiEC2Ev
.Ltmp379:
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	-176(%rbp), %rdx        # 8-byte Reload
	callq	_ZNSt6vectorIiSaIiEEC2EmRKS0_
.Ltmp380:
	jmp	.LBB204_2
.LBB204_2:                              # %invoke.cont5
	leaq	-48(%rbp), %rdi
	callq	_ZNSaIiED2Ev
	movq	-24(%rbp), %rdi
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rdi, 72(%rax)
	movq	-16(%rbp), %rsi
.Ltmp382:
	movq	%rax, %rdi
	callq	_ZN6TensorI5TSpanILi2EfEE21copy_dims_get_stridesEPKi
.Ltmp383:
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB204_3
.LBB204_3:                              # %invoke.cont7
	movl	-188(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
	movslq	-52(%rbp), %rsi
.Ltmp384:
	leaq	-112(%rbp), %rdi
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	callq	_ZN5TSpanILi2EfEC2Ev
.Ltmp385:
	jmp	.LBB204_4
.LBB204_4:                              # %invoke.cont10
	leaq	-120(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	_ZNSaI5TSpanILi2EfEEC2Ev
.Ltmp387:
	leaq	-80(%rbp), %rdi
	leaq	-112(%rbp), %rdx
	movq	-200(%rbp), %rsi        # 8-byte Reload
	movq	-208(%rbp), %rcx        # 8-byte Reload
	callq	_ZNSt6vectorI5TSpanILi2EfESaIS1_EEC2EmRKS1_RKS2_
.Ltmp388:
	jmp	.LBB204_5
.LBB204_5:                              # %invoke.cont13
	movq	-136(%rbp), %rdi        # 8-byte Reload
	leaq	-80(%rbp), %rsi
	callq	_ZNSt6vectorI5TSpanILi2EfESaIS1_EEaSEOS3_
	leaq	-80(%rbp), %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	_ZNSt6vectorI5TSpanILi2EfESaIS1_EED2Ev
	leaq	-120(%rbp), %rdi
	callq	_ZNSaI5TSpanILi2EfEED2Ev
	leaq	-112(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	addq	$224, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB204_6:                              # %lpad
	.cfi_def_cfa %rbp, 16
.Ltmp378:
	movl	%edx, %ecx
	movq	%rax, -40(%rbp)
	movl	%ecx, -44(%rbp)
	leaq	-32(%rbp), %rdi
	callq	_ZNSaIiED2Ev
	jmp	.LBB204_12
.LBB204_7:                              # %lpad4
.Ltmp381:
	movl	%edx, %ecx
	movq	%rax, -40(%rbp)
	movl	%ecx, -44(%rbp)
	leaq	-48(%rbp), %rdi
	callq	_ZNSaIiED2Ev
	jmp	.LBB204_11
.LBB204_8:                              # %lpad6
.Ltmp386:
	movl	%edx, %ecx
	movq	%rax, -40(%rbp)
	movl	%ecx, -44(%rbp)
	jmp	.LBB204_10
.LBB204_9:                              # %lpad12
.Ltmp389:
	movl	%edx, %ecx
	movq	%rax, -40(%rbp)
	movl	%ecx, -44(%rbp)
	leaq	-120(%rbp), %rdi
	callq	_ZNSaI5TSpanILi2EfEED2Ev
	leaq	-112(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB204_10:                             # %ehcleanup
	movq	-168(%rbp), %rdi        # 8-byte Reload
	callq	_ZNSt6vectorIiSaIiEED2Ev
.LBB204_11:                             # %ehcleanup16
	movq	-152(%rbp), %rdi        # 8-byte Reload
	callq	_ZNSt6vectorIiSaIiEED2Ev
.LBB204_12:                             # %ehcleanup17
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	_ZNSt6vectorI5TSpanILi2EfESaIS1_EED2Ev
# %bb.13:                               # %eh.resume
	movq	-40(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end204:
	.size	_ZN6TensorI5TSpanILi2EfEEC2EPKim, .Lfunc_end204-_ZN6TensorI5TSpanILi2EfEEC2EPKim
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table204:
.Lexception25:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end25-.Lcst_begin25
.Lcst_begin25:
	.uleb128 .Ltmp376-.Lfunc_begin25 # >> Call Site 1 <<
	.uleb128 .Ltmp377-.Ltmp376      #   Call between .Ltmp376 and .Ltmp377
	.uleb128 .Ltmp378-.Lfunc_begin25 #     jumps to .Ltmp378
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp379-.Lfunc_begin25 # >> Call Site 2 <<
	.uleb128 .Ltmp380-.Ltmp379      #   Call between .Ltmp379 and .Ltmp380
	.uleb128 .Ltmp381-.Lfunc_begin25 #     jumps to .Ltmp381
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp382-.Lfunc_begin25 # >> Call Site 3 <<
	.uleb128 .Ltmp385-.Ltmp382      #   Call between .Ltmp382 and .Ltmp385
	.uleb128 .Ltmp386-.Lfunc_begin25 #     jumps to .Ltmp386
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp387-.Lfunc_begin25 # >> Call Site 4 <<
	.uleb128 .Ltmp388-.Ltmp387      #   Call between .Ltmp387 and .Ltmp388
	.uleb128 .Ltmp389-.Lfunc_begin25 #     jumps to .Ltmp389
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp388-.Lfunc_begin25 # >> Call Site 5 <<
	.uleb128 .Lfunc_end204-.Ltmp388 #   Call between .Ltmp388 and .Lfunc_end204
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end25:
	.p2align	2
                                        # -- End function
	.section	.text._ZN6TensorI5TSpanILi2EfEE8as_tspanILi2EEES0_IXT_ES1_Ev,"axG",@progbits,_ZN6TensorI5TSpanILi2EfEE8as_tspanILi2EEES0_IXT_ES1_Ev,comdat
	.weak	_ZN6TensorI5TSpanILi2EfEE8as_tspanILi2EEES0_IXT_ES1_Ev # -- Begin function _ZN6TensorI5TSpanILi2EfEE8as_tspanILi2EEES0_IXT_ES1_Ev
	.p2align	4, 0x90
	.type	_ZN6TensorI5TSpanILi2EfEE8as_tspanILi2EEES0_IXT_ES1_Ev,@function
_ZN6TensorI5TSpanILi2EfEE8as_tspanILi2EEES0_IXT_ES1_Ev: # @_ZN6TensorI5TSpanILi2EfEE8as_tspanILi2EEES0_IXT_ES1_Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, %rax
	movq	%rsi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	_ZNK6TensorI5TSpanILi2EfEEcvS0_IXT_ES1_EILi2EEEv
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end205:
	.size	_ZN6TensorI5TSpanILi2EfEE8as_tspanILi2EEES0_IXT_ES1_Ev, .Lfunc_end205-_ZN6TensorI5TSpanILi2EfEE8as_tspanILi2EEES0_IXT_ES1_Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._Z6submatIfE5TSpanILi2ET_ES2_iiii,"axG",@progbits,_Z6submatIfE5TSpanILi2ET_ES2_iiii,comdat
	.weak	_Z6submatIfE5TSpanILi2ET_ES2_iiii # -- Begin function _Z6submatIfE5TSpanILi2ET_ES2_iiii
	.p2align	4, 0x90
	.type	_Z6submatIfE5TSpanILi2ET_ES2_iiii,@function
_Z6submatIfE5TSpanILi2ET_ES2_iiii:      # @_Z6submatIfE5TSpanILi2ET_ES2_iiii
.Lfunc_begin26:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception26
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, %rax
	movl	%edx, -4(%rbp)
	movl	%ecx, -8(%rbp)
	movl	%r8d, -12(%rbp)
	movl	%r9d, -16(%rbp)
	movl	$8, %ecx
	movl	%ecx, %r10d
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%r10, -88(%rbp)         # 8-byte Spill
	callq	_Znam
	movq	%rax, -24(%rbp)
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	_Znam
	movq	%rax, -32(%rbp)
	movl	-16(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %rsi
	movl	(%rsi), %ecx
	movq	-32(%rbp), %rsi
	movl	%ecx, (%rsi)
	movq	16(%rax), %rsi
	movl	4(%rsi), %ecx
	movq	-32(%rbp), %rsi
	movl	%ecx, 4(%rsi)
	movl	-8(%rbp), %ecx
	movq	(%rax), %rsi
	movq	16(%rax), %rdi
	movl	(%rdi), %edx
	movl	4(%rdi), %r8d
	imull	%edx, %ecx
	movslq	%ecx, %rdi
	leaq	(%rsi,%rdi,4), %rsi
	movl	-4(%rbp), %ecx
	imull	%r8d, %ecx
	movslq	%ecx, %rdi
	leaq	(%rsi,%rdi,4), %rsi
	movq	%rsi, -40(%rbp)
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	$24, %r8d
	movl	%r8d, %edi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	_Znwm
	movq	%rax, %rcx
	movq	%rax, %rdx
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdi
.Ltmp390:
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	_ZN11RCTSpanDataC2EPKiS1_
.Ltmp391:
	jmp	.LBB206_1
.LBB206_1:                              # %invoke.cont
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	-128(%rbp), %r8         # 8-byte Reload
	callq	_ZN5TSpanILi2EfEC2EPKfPKiS4_P11RCTSpanData
	movq	-72(%rbp), %rax         # 8-byte Reload
	addq	$144, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB206_2:                              # %lpad
	.cfi_def_cfa %rbp, 16
.Ltmp392:
	movl	%edx, %ecx
	movq	%rax, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movq	-136(%rbp), %rdi        # 8-byte Reload
	callq	_ZdlPv
# %bb.3:                                # %eh.resume
	movq	-48(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end206:
	.size	_Z6submatIfE5TSpanILi2ET_ES2_iiii, .Lfunc_end206-_Z6submatIfE5TSpanILi2ET_ES2_iiii
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table206:
.Lexception26:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end26-.Lcst_begin26
.Lcst_begin26:
	.uleb128 .Lfunc_begin26-.Lfunc_begin26 # >> Call Site 1 <<
	.uleb128 .Ltmp390-.Lfunc_begin26 #   Call between .Lfunc_begin26 and .Ltmp390
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp390-.Lfunc_begin26 # >> Call Site 2 <<
	.uleb128 .Ltmp391-.Ltmp390      #   Call between .Ltmp390 and .Ltmp391
	.uleb128 .Ltmp392-.Lfunc_begin26 #     jumps to .Ltmp392
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp391-.Lfunc_begin26 # >> Call Site 3 <<
	.uleb128 .Lfunc_end206-.Ltmp391 #   Call between .Ltmp391 and .Lfunc_end206
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end26:
	.p2align	2
                                        # -- End function
	.section	.text._ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi,"axG",@progbits,_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi,comdat
	.weak	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi # -- Begin function _ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
	.p2align	4, 0x90
	.type	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi,@function
_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi: # @_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, %rax
	movq	%rsi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rcx
	movl	-12(%rbp), %edx
	movq	16(%rsi), %r8
	imull	(%r8), %edx
	movslq	%edx, %r8
	shlq	$5, %r8
	addq	%r8, %rcx
	movq	8(%rsi), %r8
	addq	$4, %r8
	movq	16(%rsi), %r9
	addq	$4, %r9
	movq	24(%rsi), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	%r8, %rdx
	movq	%r9, %rcx
	movq	-24(%rbp), %r8          # 8-byte Reload
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	_ZN5TSpanILi1ES_ILi2EfEEC2EPKS0_PKiS5_P11RCTSpanData
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end207:
	.size	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi, .Lfunc_end207-_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi,"axG",@progbits,_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi,comdat
	.weak	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi # -- Begin function _ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
	.p2align	4, 0x90
	.type	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi,@function
_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi: # @_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %esi
	movq	16(%rdi), %rdi
	imull	(%rdi), %esi
	movslq	%esi, %rdi
	shlq	$5, %rdi
	addq	%rdi, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end208:
	.size	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi, .Lfunc_end208-_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5TSpanILi1ES_ILi2EfEED2Ev,"axG",@progbits,_ZN5TSpanILi1ES_ILi2EfEED2Ev,comdat
	.weak	_ZN5TSpanILi1ES_ILi2EfEED2Ev # -- Begin function _ZN5TSpanILi1ES_ILi2EfEED2Ev
	.p2align	4, 0x90
	.type	_ZN5TSpanILi1ES_ILi2EfEED2Ev,@function
_ZN5TSpanILi1ES_ILi2EfEED2Ev:           # @_ZN5TSpanILi1ES_ILi2EfEED2Ev
.Lfunc_begin27:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception27
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 24(%rdi)
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	je	.LBB209_3
# %bb.1:                                # %if.then
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	24(%rax), %rdi
.Ltmp393:
	callq	_ZN11RCTSpanData5derefEv
.Ltmp394:
	jmp	.LBB209_2
.LBB209_2:                              # %invoke.cont
	jmp	.LBB209_3
.LBB209_3:                              # %if.end
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB209_4:                              # %terminate.lpad
	.cfi_def_cfa %rbp, 16
.Ltmp395:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -20(%rbp)         # 4-byte Spill
	callq	__clang_call_terminate
.Lfunc_end209:
	.size	_ZN5TSpanILi1ES_ILi2EfEED2Ev, .Lfunc_end209-_ZN5TSpanILi1ES_ILi2EfEED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table209:
.Lexception27:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end27-.Lcst_begin27
.Lcst_begin27:
	.uleb128 .Ltmp393-.Lfunc_begin27 # >> Call Site 1 <<
	.uleb128 .Ltmp394-.Ltmp393      #   Call between .Ltmp393 and .Ltmp394
	.uleb128 .Ltmp395-.Lfunc_begin27 #     jumps to .Ltmp395
	.byte	1                       #   On action: 1
.Lcst_end27:
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
.Lttbase9:
	.p2align	2
                                        # -- End function
	.section	.text._ZN5TSpanILi2ES_ILi2EfEED2Ev,"axG",@progbits,_ZN5TSpanILi2ES_ILi2EfEED2Ev,comdat
	.weak	_ZN5TSpanILi2ES_ILi2EfEED2Ev # -- Begin function _ZN5TSpanILi2ES_ILi2EfEED2Ev
	.p2align	4, 0x90
	.type	_ZN5TSpanILi2ES_ILi2EfEED2Ev,@function
_ZN5TSpanILi2ES_ILi2EfEED2Ev:           # @_ZN5TSpanILi2ES_ILi2EfEED2Ev
.Lfunc_begin28:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception28
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 24(%rdi)
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	je	.LBB210_3
# %bb.1:                                # %if.then
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	24(%rax), %rdi
.Ltmp396:
	callq	_ZN11RCTSpanData5derefEv
.Ltmp397:
	jmp	.LBB210_2
.LBB210_2:                              # %invoke.cont
	jmp	.LBB210_3
.LBB210_3:                              # %if.end
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB210_4:                              # %terminate.lpad
	.cfi_def_cfa %rbp, 16
.Ltmp398:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -20(%rbp)         # 4-byte Spill
	callq	__clang_call_terminate
.Lfunc_end210:
	.size	_ZN5TSpanILi2ES_ILi2EfEED2Ev, .Lfunc_end210-_ZN5TSpanILi2ES_ILi2EfEED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table210:
.Lexception28:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.uleb128 .Lttbase10-.Lttbaseref10
.Lttbaseref10:
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end28-.Lcst_begin28
.Lcst_begin28:
	.uleb128 .Ltmp396-.Lfunc_begin28 # >> Call Site 1 <<
	.uleb128 .Ltmp397-.Ltmp396      #   Call between .Ltmp396 and .Ltmp397
	.uleb128 .Ltmp398-.Lfunc_begin28 #     jumps to .Ltmp398
	.byte	1                       #   On action: 1
.Lcst_end28:
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
.Lttbase10:
	.p2align	2
                                        # -- End function
	.section	.text._ZN6TensorI5TSpanILi2EfEED2Ev,"axG",@progbits,_ZN6TensorI5TSpanILi2EfEED2Ev,comdat
	.weak	_ZN6TensorI5TSpanILi2EfEED2Ev # -- Begin function _ZN6TensorI5TSpanILi2EfEED2Ev
	.p2align	4, 0x90
	.type	_ZN6TensorI5TSpanILi2EfEED2Ev,@function
_ZN6TensorI5TSpanILi2EfEED2Ev:          # @_ZN6TensorI5TSpanILi2EfEED2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	addq	$48, %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	_ZNSt6vectorIiSaIiEED2Ev
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$24, %rax
	movq	%rax, %rdi
	callq	_ZNSt6vectorIiSaIiEED2Ev
	movq	-16(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt6vectorI5TSpanILi2EfESaIS1_EED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end211:
	.size	_ZN6TensorI5TSpanILi2EfEED2Ev, .Lfunc_end211-_ZN6TensorI5TSpanILi2EfEED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorI5TSpanILi2EfESaIS1_EEC2Ev,"axG",@progbits,_ZNSt6vectorI5TSpanILi2EfESaIS1_EEC2Ev,comdat
	.weak	_ZNSt6vectorI5TSpanILi2EfESaIS1_EEC2Ev # -- Begin function _ZNSt6vectorI5TSpanILi2EfESaIS1_EEC2Ev
	.p2align	4, 0x90
	.type	_ZNSt6vectorI5TSpanILi2EfESaIS1_EEC2Ev,@function
_ZNSt6vectorI5TSpanILi2EfESaIS1_EEC2Ev: # @_ZNSt6vectorI5TSpanILi2EfESaIS1_EEC2Ev
.Lfunc_begin29:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception29
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
.Ltmp399:
	callq	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EEC2Ev
.Ltmp400:
	jmp	.LBB212_1
.LBB212_1:                              # %invoke.cont
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB212_2:                              # %terminate.lpad
	.cfi_def_cfa %rbp, 16
.Ltmp401:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -12(%rbp)         # 4-byte Spill
	callq	__clang_call_terminate
.Lfunc_end212:
	.size	_ZNSt6vectorI5TSpanILi2EfESaIS1_EEC2Ev, .Lfunc_end212-_ZNSt6vectorI5TSpanILi2EfESaIS1_EEC2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table212:
.Lexception29:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.uleb128 .Lttbase11-.Lttbaseref11
.Lttbaseref11:
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end29-.Lcst_begin29
.Lcst_begin29:
	.uleb128 .Ltmp399-.Lfunc_begin29 # >> Call Site 1 <<
	.uleb128 .Ltmp400-.Ltmp399      #   Call between .Ltmp399 and .Ltmp400
	.uleb128 .Ltmp401-.Lfunc_begin29 #     jumps to .Ltmp401
	.byte	1                       #   On action: 1
.Lcst_end29:
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
.Lttbase11:
	.p2align	2
                                        # -- End function
	.section	.text._ZN6TensorI5TSpanILi2EfEE21copy_dims_get_stridesEPKi,"axG",@progbits,_ZN6TensorI5TSpanILi2EfEE21copy_dims_get_stridesEPKi,comdat
	.weak	_ZN6TensorI5TSpanILi2EfEE21copy_dims_get_stridesEPKi # -- Begin function _ZN6TensorI5TSpanILi2EfEE21copy_dims_get_stridesEPKi
	.p2align	4, 0x90
	.type	_ZN6TensorI5TSpanILi2EfEE21copy_dims_get_stridesEPKi,@function
_ZN6TensorI5TSpanILi2EfEE21copy_dims_get_stridesEPKi: # @_ZN6TensorI5TSpanILi2EfEE21copy_dims_get_stridesEPKi
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	$1, -20(%rbp)
	movq	72(%rsi), %rdi
	subq	$1, %rdi
	movl	%edi, %eax
	movl	%eax, -24(%rbp)
	movq	%rsi, -32(%rbp)         # 8-byte Spill
.LBB213_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -24(%rbp)
	jl	.LBB213_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB213_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	$24, %rax
	movslq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -36(%rbp)         # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-36(%rbp), %edx         # 4-byte Reload
	movl	%edx, (%rax)
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	$48, %rax
	movslq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -40(%rbp)         # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-40(%rbp), %edx         # 4-byte Reload
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	imull	-20(%rbp), %edx
	movl	%edx, -20(%rbp)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB213_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB213_1
.LBB213_4:                              # %for.end
	movl	-20(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end213:
	.size	_ZN6TensorI5TSpanILi2EfEE21copy_dims_get_stridesEPKi, .Lfunc_end213-_ZN6TensorI5TSpanILi2EfEE21copy_dims_get_stridesEPKi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5TSpanILi2EfEC2Ev,"axG",@progbits,_ZN5TSpanILi2EfEC2Ev,comdat
	.weak	_ZN5TSpanILi2EfEC2Ev    # -- Begin function _ZN5TSpanILi2EfEC2Ev
	.p2align	4, 0x90
	.type	_ZN5TSpanILi2EfEC2Ev,@function
_ZN5TSpanILi2EfEC2Ev:                   # @_ZN5TSpanILi2EfEC2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	$0, (%rdi)
	movq	$0, 8(%rdi)
	movq	$0, 16(%rdi)
	movq	$0, 24(%rdi)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end214:
	.size	_ZN5TSpanILi2EfEC2Ev, .Lfunc_end214-_ZN5TSpanILi2EfEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSaI5TSpanILi2EfEEC2Ev,"axG",@progbits,_ZNSaI5TSpanILi2EfEEC2Ev,comdat
	.weak	_ZNSaI5TSpanILi2EfEEC2Ev # -- Begin function _ZNSaI5TSpanILi2EfEEC2Ev
	.p2align	4, 0x90
	.type	_ZNSaI5TSpanILi2EfEEC2Ev,@function
_ZNSaI5TSpanILi2EfEEC2Ev:               # @_ZNSaI5TSpanILi2EfEEC2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEEC2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end215:
	.size	_ZNSaI5TSpanILi2EfEEC2Ev, .Lfunc_end215-_ZNSaI5TSpanILi2EfEEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorI5TSpanILi2EfESaIS1_EEC2EmRKS1_RKS2_,"axG",@progbits,_ZNSt6vectorI5TSpanILi2EfESaIS1_EEC2EmRKS1_RKS2_,comdat
	.weak	_ZNSt6vectorI5TSpanILi2EfESaIS1_EEC2EmRKS1_RKS2_ # -- Begin function _ZNSt6vectorI5TSpanILi2EfESaIS1_EEC2EmRKS1_RKS2_
	.p2align	4, 0x90
	.type	_ZNSt6vectorI5TSpanILi2EfESaIS1_EEC2EmRKS1_RKS2_,@function
_ZNSt6vectorI5TSpanILi2EfESaIS1_EEC2EmRKS1_RKS2_: # @_ZNSt6vectorI5TSpanILi2EfESaIS1_EEC2EmRKS1_RKS2_
.Lfunc_begin30:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception30
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EEC2EmRKS2_
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
.Ltmp402:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt6vectorI5TSpanILi2EfESaIS1_EE18_M_fill_initializeEmRKS1_
.Ltmp403:
	jmp	.LBB216_1
.LBB216_1:                              # %invoke.cont
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB216_2:                              # %lpad
	.cfi_def_cfa %rbp, 16
.Ltmp404:
	movl	%edx, %ecx
	movq	%rax, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EED2Ev
# %bb.3:                                # %eh.resume
	movq	-40(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end216:
	.size	_ZNSt6vectorI5TSpanILi2EfESaIS1_EEC2EmRKS1_RKS2_, .Lfunc_end216-_ZNSt6vectorI5TSpanILi2EfESaIS1_EEC2EmRKS1_RKS2_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table216:
.Lexception30:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end30-.Lcst_begin30
.Lcst_begin30:
	.uleb128 .Lfunc_begin30-.Lfunc_begin30 # >> Call Site 1 <<
	.uleb128 .Ltmp402-.Lfunc_begin30 #   Call between .Lfunc_begin30 and .Ltmp402
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp402-.Lfunc_begin30 # >> Call Site 2 <<
	.uleb128 .Ltmp403-.Ltmp402      #   Call between .Ltmp402 and .Ltmp403
	.uleb128 .Ltmp404-.Lfunc_begin30 #     jumps to .Ltmp404
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp403-.Lfunc_begin30 # >> Call Site 3 <<
	.uleb128 .Lfunc_end216-.Ltmp403 #   Call between .Ltmp403 and .Lfunc_end216
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end30:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt6vectorI5TSpanILi2EfESaIS1_EEaSEOS3_,"axG",@progbits,_ZNSt6vectorI5TSpanILi2EfESaIS1_EEaSEOS3_,comdat
	.weak	_ZNSt6vectorI5TSpanILi2EfESaIS1_EEaSEOS3_ # -- Begin function _ZNSt6vectorI5TSpanILi2EfESaIS1_EEaSEOS3_
	.p2align	4, 0x90
	.type	_ZNSt6vectorI5TSpanILi2EfESaIS1_EEaSEOS3_,@function
_ZNSt6vectorI5TSpanILi2EfESaIS1_EEaSEOS3_: # @_ZNSt6vectorI5TSpanILi2EfESaIS1_EEaSEOS3_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movb	$1, -17(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	_ZSt4moveIRSt6vectorI5TSpanILi2EfESaIS2_EEEONSt16remove_referenceIT_E4typeEOS7_
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	_ZNSt6vectorI5TSpanILi2EfESaIS1_EE14_M_move_assignEOS3_St17integral_constantIbLb1EE
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end217:
	.size	_ZNSt6vectorI5TSpanILi2EfESaIS1_EEaSEOS3_, .Lfunc_end217-_ZNSt6vectorI5TSpanILi2EfESaIS1_EEaSEOS3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorI5TSpanILi2EfESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorI5TSpanILi2EfESaIS1_EED2Ev,comdat
	.weak	_ZNSt6vectorI5TSpanILi2EfESaIS1_EED2Ev # -- Begin function _ZNSt6vectorI5TSpanILi2EfESaIS1_EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt6vectorI5TSpanILi2EfESaIS1_EED2Ev,@function
_ZNSt6vectorI5TSpanILi2EfESaIS1_EED2Ev: # @_ZNSt6vectorI5TSpanILi2EfESaIS1_EED2Ev
.Lfunc_begin31:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception31
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	movq	8(%rdi), %rsi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE19_M_get_Tp_allocatorEv
.Ltmp405:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZSt8_DestroyIP5TSpanILi2EfES1_EvT_S3_RSaIT0_E
.Ltmp406:
	jmp	.LBB218_1
.LBB218_1:                              # %invoke.cont
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EED2Ev
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB218_2:                              # %lpad
	.cfi_def_cfa %rbp, 16
.Ltmp407:
	movl	%edx, %ecx
	movq	%rax, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EED2Ev
# %bb.3:                                # %terminate.handler
	movq	-16(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end218:
	.size	_ZNSt6vectorI5TSpanILi2EfESaIS1_EED2Ev, .Lfunc_end218-_ZNSt6vectorI5TSpanILi2EfESaIS1_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table218:
.Lexception31:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.uleb128 .Lttbase12-.Lttbaseref12
.Lttbaseref12:
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end31-.Lcst_begin31
.Lcst_begin31:
	.uleb128 .Ltmp405-.Lfunc_begin31 # >> Call Site 1 <<
	.uleb128 .Ltmp406-.Ltmp405      #   Call between .Ltmp405 and .Ltmp406
	.uleb128 .Ltmp407-.Lfunc_begin31 #     jumps to .Ltmp407
	.byte	1                       #   On action: 1
.Lcst_end31:
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
.Lttbase12:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSaI5TSpanILi2EfEED2Ev,"axG",@progbits,_ZNSaI5TSpanILi2EfEED2Ev,comdat
	.weak	_ZNSaI5TSpanILi2EfEED2Ev # -- Begin function _ZNSaI5TSpanILi2EfEED2Ev
	.p2align	4, 0x90
	.type	_ZNSaI5TSpanILi2EfEED2Ev,@function
_ZNSaI5TSpanILi2EfEED2Ev:               # @_ZNSaI5TSpanILi2EfEED2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end219:
	.size	_ZNSaI5TSpanILi2EfEED2Ev, .Lfunc_end219-_ZNSaI5TSpanILi2EfEED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EEC2Ev,comdat
	.weak	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EEC2Ev # -- Begin function _ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EEC2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EEC2Ev,@function
_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EEC2Ev: # @_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EEC2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_implC2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end220:
	.size	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EEC2Ev, .Lfunc_end220-_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_implC2Ev,comdat
	.weak	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_implC2Ev # -- Begin function _ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_implC2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_implC2Ev,@function
_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_implC2Ev: # @_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_implC2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	_ZNSaI5TSpanILi2EfEEC2Ev
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end221:
	.size	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_implC2Ev, .Lfunc_end221-_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_implC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEEC2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEEC2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEEC2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEEC2Ev,@function
_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEEC2Ev: # @_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEEC2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end222:
	.size	_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEEC2Ev, .Lfunc_end222-_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EEC2EmRKS2_,"axG",@progbits,_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EEC2EmRKS2_,comdat
	.weak	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EEC2EmRKS2_ # -- Begin function _ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EEC2EmRKS2_
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EEC2EmRKS2_,@function
_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EEC2EmRKS2_: # @_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EEC2EmRKS2_
.Lfunc_begin32:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception32
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_implC2ERKS2_
	movq	-16(%rbp), %rsi
.Ltmp408:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE17_M_create_storageEm
.Ltmp409:
	jmp	.LBB223_1
.LBB223_1:                              # %invoke.cont
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB223_2:                              # %lpad
	.cfi_def_cfa %rbp, 16
.Ltmp410:
	movl	%edx, %ecx
	movq	%rax, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_implD2Ev
# %bb.3:                                # %eh.resume
	movq	-32(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end223:
	.size	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EEC2EmRKS2_, .Lfunc_end223-_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EEC2EmRKS2_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table223:
.Lexception32:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end32-.Lcst_begin32
.Lcst_begin32:
	.uleb128 .Ltmp408-.Lfunc_begin32 # >> Call Site 1 <<
	.uleb128 .Ltmp409-.Ltmp408      #   Call between .Ltmp408 and .Ltmp409
	.uleb128 .Ltmp410-.Lfunc_begin32 #     jumps to .Ltmp410
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp409-.Lfunc_begin32 # >> Call Site 2 <<
	.uleb128 .Lfunc_end223-.Ltmp409 #   Call between .Ltmp409 and .Lfunc_end223
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end32:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt6vectorI5TSpanILi2EfESaIS1_EE18_M_fill_initializeEmRKS1_,"axG",@progbits,_ZNSt6vectorI5TSpanILi2EfESaIS1_EE18_M_fill_initializeEmRKS1_,comdat
	.weak	_ZNSt6vectorI5TSpanILi2EfESaIS1_EE18_M_fill_initializeEmRKS1_ # -- Begin function _ZNSt6vectorI5TSpanILi2EfESaIS1_EE18_M_fill_initializeEmRKS1_
	.p2align	4, 0x90
	.type	_ZNSt6vectorI5TSpanILi2EfESaIS1_EE18_M_fill_initializeEmRKS1_,@function
_ZNSt6vectorI5TSpanILi2EfESaIS1_EE18_M_fill_initializeEmRKS1_: # @_ZNSt6vectorI5TSpanILi2EfESaIS1_EE18_M_fill_initializeEmRKS1_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE19_M_get_Tp_allocatorEv
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	_ZSt24__uninitialized_fill_n_aIP5TSpanILi2EfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	%rax, 8(%rcx)
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end224:
	.size	_ZNSt6vectorI5TSpanILi2EfESaIS1_EE18_M_fill_initializeEmRKS1_, .Lfunc_end224-_ZNSt6vectorI5TSpanILi2EfESaIS1_EE18_M_fill_initializeEmRKS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EED2Ev,comdat
	.weak	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EED2Ev # -- Begin function _ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EED2Ev,@function
_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EED2Ev: # @_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EED2Ev
.Lfunc_begin33:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception33
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	movq	16(%rdi), %rcx
	subq	%rax, %rcx
	sarq	$5, %rcx
.Ltmp411:
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE13_M_deallocateEPS1_m
.Ltmp412:
	jmp	.LBB225_1
.LBB225_1:                              # %invoke.cont
	movq	-32(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_implD2Ev
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB225_2:                              # %lpad
	.cfi_def_cfa %rbp, 16
.Ltmp413:
	movl	%edx, %ecx
	movq	%rax, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-32(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_implD2Ev
# %bb.3:                                # %terminate.handler
	movq	-16(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end225:
	.size	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EED2Ev, .Lfunc_end225-_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table225:
.Lexception33:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.uleb128 .Lttbase13-.Lttbaseref13
.Lttbaseref13:
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end33-.Lcst_begin33
.Lcst_begin33:
	.uleb128 .Ltmp411-.Lfunc_begin33 # >> Call Site 1 <<
	.uleb128 .Ltmp412-.Ltmp411      #   Call between .Ltmp411 and .Ltmp412
	.uleb128 .Ltmp413-.Lfunc_begin33 #     jumps to .Ltmp413
	.byte	1                       #   On action: 1
.Lcst_end33:
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
.Lttbase13:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_implC2ERKS2_,"axG",@progbits,_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_implC2ERKS2_,comdat
	.weak	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_implC2ERKS2_ # -- Begin function _ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_implC2ERKS2_
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_implC2ERKS2_,@function
_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_implC2ERKS2_: # @_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_implC2ERKS2_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	-16(%rbp), %rax
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	callq	_ZNSaI5TSpanILi2EfEEC2ERKS1_
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end226:
	.size	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_implC2ERKS2_, .Lfunc_end226-_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_implC2ERKS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE17_M_create_storageEm,comdat
	.weak	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE17_M_create_storageEm # -- Begin function _ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE17_M_create_storageEm
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE17_M_create_storageEm,@function
_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE17_M_create_storageEm: # @_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE17_M_create_storageEm
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	callq	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE11_M_allocateEm
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rax, (%rsi)
	movq	(%rsi), %rax
	movq	%rax, 8(%rsi)
	movq	(%rsi), %rax
	movq	-16(%rbp), %rdi
	shlq	$5, %rdi
	addq	%rdi, %rax
	movq	%rax, 16(%rsi)
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end227:
	.size	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE17_M_create_storageEm, .Lfunc_end227-_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE17_M_create_storageEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_implD2Ev,comdat
	.weak	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_implD2Ev # -- Begin function _ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_implD2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_implD2Ev,@function
_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_implD2Ev: # @_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_implD2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSaI5TSpanILi2EfEED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end228:
	.size	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_implD2Ev, .Lfunc_end228-_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_implD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEEC2ERKS3_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEEC2ERKS3_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEEC2ERKS3_ # -- Begin function _ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEEC2ERKS3_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEEC2ERKS3_,@function
_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEEC2ERKS3_: # @_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEEC2ERKS3_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end229:
	.size	_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEEC2ERKS3_, .Lfunc_end229-_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEEC2ERKS3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE11_M_allocateEm,comdat
	.weak	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE11_M_allocateEm # -- Begin function _ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE11_M_allocateEm
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE11_M_allocateEm,@function
_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE11_M_allocateEm: # @_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE11_M_allocateEm
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	$0, -16(%rbp)
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	je	.LBB230_2
# %bb.1:                                # %cond.true
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZNSt16allocator_traitsISaI5TSpanILi2EfEEE8allocateERS2_m
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB230_3
.LBB230_2:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB230_3
.LBB230_3:                              # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end230:
	.size	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE11_M_allocateEm, .Lfunc_end230-_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE11_M_allocateEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaI5TSpanILi2EfEEE8allocateERS2_m,"axG",@progbits,_ZNSt16allocator_traitsISaI5TSpanILi2EfEEE8allocateERS2_m,comdat
	.weak	_ZNSt16allocator_traitsISaI5TSpanILi2EfEEE8allocateERS2_m # -- Begin function _ZNSt16allocator_traitsISaI5TSpanILi2EfEEE8allocateERS2_m
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaI5TSpanILi2EfEEE8allocateERS2_m,@function
_ZNSt16allocator_traitsISaI5TSpanILi2EfEEE8allocateERS2_m: # @_ZNSt16allocator_traitsISaI5TSpanILi2EfEEE8allocateERS2_m
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEE8allocateEmPKv
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end231:
	.size	_ZNSt16allocator_traitsISaI5TSpanILi2EfEEE8allocateERS2_m, .Lfunc_end231-_ZNSt16allocator_traitsISaI5TSpanILi2EfEEE8allocateERS2_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEE8allocateEmPKv,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEE8allocateEmPKv # -- Begin function _ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEE8allocateEmPKv
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEE8allocateEmPKv,@function
_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEE8allocateEmPKv: # @_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEE8allocateEmPKv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	_ZNK9__gnu_cxx13new_allocatorI5TSpanILi2EfEE8max_sizeEv
	movq	-32(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jbe	.LBB232_2
# %bb.1:                                # %if.then
	callq	_ZSt17__throw_bad_allocv
.LBB232_2:                              # %if.end
	movq	-16(%rbp), %rax
	shlq	$5, %rax
	movq	%rax, %rdi
	callq	_Znwm
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end232:
	.size	_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEE8allocateEmPKv, .Lfunc_end232-_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEE8allocateEmPKv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx13new_allocatorI5TSpanILi2EfEE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorI5TSpanILi2EfEE8max_sizeEv,comdat
	.weak	_ZNK9__gnu_cxx13new_allocatorI5TSpanILi2EfEE8max_sizeEv # -- Begin function _ZNK9__gnu_cxx13new_allocatorI5TSpanILi2EfEE8max_sizeEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx13new_allocatorI5TSpanILi2EfEE8max_sizeEv,@function
_ZNK9__gnu_cxx13new_allocatorI5TSpanILi2EfEE8max_sizeEv: # @_ZNK9__gnu_cxx13new_allocatorI5TSpanILi2EfEE8max_sizeEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movabsq	$576460752303423487, %rax # imm = 0x7FFFFFFFFFFFFFF
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end233:
	.size	_ZNK9__gnu_cxx13new_allocatorI5TSpanILi2EfEE8max_sizeEv, .Lfunc_end233-_ZNK9__gnu_cxx13new_allocatorI5TSpanILi2EfEE8max_sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEED2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEED2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEED2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEED2Ev,@function
_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEED2Ev: # @_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEED2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end234:
	.size	_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEED2Ev, .Lfunc_end234-_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt24__uninitialized_fill_n_aIP5TSpanILi2EfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E,"axG",@progbits,_ZSt24__uninitialized_fill_n_aIP5TSpanILi2EfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E,comdat
	.weak	_ZSt24__uninitialized_fill_n_aIP5TSpanILi2EfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E # -- Begin function _ZSt24__uninitialized_fill_n_aIP5TSpanILi2EfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E
	.p2align	4, 0x90
	.type	_ZSt24__uninitialized_fill_n_aIP5TSpanILi2EfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E,@function
_ZSt24__uninitialized_fill_n_aIP5TSpanILi2EfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E: # @_ZSt24__uninitialized_fill_n_aIP5TSpanILi2EfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZSt20uninitialized_fill_nIP5TSpanILi2EfEmS1_ET_S3_T0_RKT1_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end235:
	.size	_ZSt24__uninitialized_fill_n_aIP5TSpanILi2EfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E, .Lfunc_end235-_ZSt24__uninitialized_fill_n_aIP5TSpanILi2EfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE19_M_get_Tp_allocatorEv # -- Begin function _ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE19_M_get_Tp_allocatorEv
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE19_M_get_Tp_allocatorEv,@function
_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE19_M_get_Tp_allocatorEv: # @_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE19_M_get_Tp_allocatorEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end236:
	.size	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE19_M_get_Tp_allocatorEv, .Lfunc_end236-_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE19_M_get_Tp_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt20uninitialized_fill_nIP5TSpanILi2EfEmS1_ET_S3_T0_RKT1_,"axG",@progbits,_ZSt20uninitialized_fill_nIP5TSpanILi2EfEmS1_ET_S3_T0_RKT1_,comdat
	.weak	_ZSt20uninitialized_fill_nIP5TSpanILi2EfEmS1_ET_S3_T0_RKT1_ # -- Begin function _ZSt20uninitialized_fill_nIP5TSpanILi2EfEmS1_ET_S3_T0_RKT1_
	.p2align	4, 0x90
	.type	_ZSt20uninitialized_fill_nIP5TSpanILi2EfEmS1_ET_S3_T0_RKT1_,@function
_ZSt20uninitialized_fill_nIP5TSpanILi2EfEmS1_ET_S3_T0_RKT1_: # @_ZSt20uninitialized_fill_nIP5TSpanILi2EfEmS1_ET_S3_T0_RKT1_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movb	$0, -25(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP5TSpanILi2EfEmS3_EET_S5_T0_RKT1_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end237:
	.size	_ZSt20uninitialized_fill_nIP5TSpanILi2EfEmS1_ET_S3_T0_RKT1_, .Lfunc_end237-_ZSt20uninitialized_fill_nIP5TSpanILi2EfEmS1_ET_S3_T0_RKT1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP5TSpanILi2EfEmS3_EET_S5_T0_RKT1_,"axG",@progbits,_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP5TSpanILi2EfEmS3_EET_S5_T0_RKT1_,comdat
	.weak	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP5TSpanILi2EfEmS3_EET_S5_T0_RKT1_ # -- Begin function _ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP5TSpanILi2EfEmS3_EET_S5_T0_RKT1_
	.p2align	4, 0x90
	.type	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP5TSpanILi2EfEmS3_EET_S5_T0_RKT1_,@function
_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP5TSpanILi2EfEmS3_EET_S5_T0_RKT1_: # @_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP5TSpanILi2EfEmS3_EET_S5_T0_RKT1_
.Lfunc_begin34:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception34
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -32(%rbp)
.LBB238_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	jbe	.LBB238_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB238_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	_ZSt11__addressofI5TSpanILi2EfEEPT_RS2_
	movq	-24(%rbp), %rsi
.Ltmp414:
	movq	%rax, %rdi
	callq	_ZSt10_ConstructI5TSpanILi2EfEJRKS1_EEvPT_DpOT0_
.Ltmp415:
	jmp	.LBB238_3
.LBB238_3:                              # %invoke.cont
                                        #   in Loop: Header=BB238_1 Depth=1
	jmp	.LBB238_4
.LBB238_4:                              # %for.inc
                                        #   in Loop: Header=BB238_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB238_1
.LBB238_5:                              # %lpad
.Ltmp416:
	movl	%edx, %ecx
	movq	%rax, -40(%rbp)
	movl	%ecx, -44(%rbp)
# %bb.6:                                # %catch
	movq	-40(%rbp), %rdi
	callq	__cxa_begin_catch
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
.Ltmp417:
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	_ZSt8_DestroyIP5TSpanILi2EfEEvT_S3_
.Ltmp418:
	jmp	.LBB238_7
.LBB238_7:                              # %invoke.cont2
.Ltmp419:
	callq	__cxa_rethrow
.Ltmp420:
	jmp	.LBB238_13
.LBB238_8:                              # %for.end
	movq	-32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB238_9:                              # %lpad1
	.cfi_def_cfa %rbp, 16
.Ltmp421:
	movl	%edx, %ecx
	movq	%rax, -40(%rbp)
	movl	%ecx, -44(%rbp)
.Ltmp422:
	callq	__cxa_end_catch
.Ltmp423:
	jmp	.LBB238_10
.LBB238_10:                             # %invoke.cont3
	jmp	.LBB238_11
.LBB238_11:                             # %eh.resume
	movq	-40(%rbp), %rdi
	callq	_Unwind_Resume
.LBB238_12:                             # %terminate.lpad
.Ltmp424:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	callq	__clang_call_terminate
.LBB238_13:                             # %unreachable
.Lfunc_end238:
	.size	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP5TSpanILi2EfEmS3_EET_S5_T0_RKT1_, .Lfunc_end238-_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP5TSpanILi2EfEmS3_EET_S5_T0_RKT1_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table238:
.Lexception34:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.uleb128 .Lttbase14-.Lttbaseref14
.Lttbaseref14:
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end34-.Lcst_begin34
.Lcst_begin34:
	.uleb128 .Ltmp414-.Lfunc_begin34 # >> Call Site 1 <<
	.uleb128 .Ltmp415-.Ltmp414      #   Call between .Ltmp414 and .Ltmp415
	.uleb128 .Ltmp416-.Lfunc_begin34 #     jumps to .Ltmp416
	.byte	1                       #   On action: 1
	.uleb128 .Ltmp415-.Lfunc_begin34 # >> Call Site 2 <<
	.uleb128 .Ltmp417-.Ltmp415      #   Call between .Ltmp415 and .Ltmp417
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp417-.Lfunc_begin34 # >> Call Site 3 <<
	.uleb128 .Ltmp420-.Ltmp417      #   Call between .Ltmp417 and .Ltmp420
	.uleb128 .Ltmp421-.Lfunc_begin34 #     jumps to .Ltmp421
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp422-.Lfunc_begin34 # >> Call Site 4 <<
	.uleb128 .Ltmp423-.Ltmp422      #   Call between .Ltmp422 and .Ltmp423
	.uleb128 .Ltmp424-.Lfunc_begin34 #     jumps to .Ltmp424
	.byte	1                       #   On action: 1
	.uleb128 .Ltmp423-.Lfunc_begin34 # >> Call Site 5 <<
	.uleb128 .Lfunc_end238-.Ltmp423 #   Call between .Ltmp423 and .Lfunc_end238
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end34:
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
.Lttbase14:
	.p2align	2
                                        # -- End function
	.section	.text._ZSt10_ConstructI5TSpanILi2EfEJRKS1_EEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructI5TSpanILi2EfEJRKS1_EEvPT_DpOT0_,comdat
	.weak	_ZSt10_ConstructI5TSpanILi2EfEJRKS1_EEvPT_DpOT0_ # -- Begin function _ZSt10_ConstructI5TSpanILi2EfEJRKS1_EEvPT_DpOT0_
	.p2align	4, 0x90
	.type	_ZSt10_ConstructI5TSpanILi2EfEJRKS1_EEvPT_DpOT0_,@function
_ZSt10_ConstructI5TSpanILi2EfEJRKS1_EEvPT_DpOT0_: # @_ZSt10_ConstructI5TSpanILi2EfEJRKS1_EEvPT_DpOT0_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	_ZSt7forwardIRK5TSpanILi2EfEEOT_RNSt16remove_referenceIS4_E4typeE
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	_ZN5TSpanILi2EfEC2ERKS0_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end239:
	.size	_ZSt10_ConstructI5TSpanILi2EfEJRKS1_EEvPT_DpOT0_, .Lfunc_end239-_ZSt10_ConstructI5TSpanILi2EfEJRKS1_EEvPT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11__addressofI5TSpanILi2EfEEPT_RS2_,"axG",@progbits,_ZSt11__addressofI5TSpanILi2EfEEPT_RS2_,comdat
	.weak	_ZSt11__addressofI5TSpanILi2EfEEPT_RS2_ # -- Begin function _ZSt11__addressofI5TSpanILi2EfEEPT_RS2_
	.p2align	4, 0x90
	.type	_ZSt11__addressofI5TSpanILi2EfEEPT_RS2_,@function
_ZSt11__addressofI5TSpanILi2EfEEPT_RS2_: # @_ZSt11__addressofI5TSpanILi2EfEEPT_RS2_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end240:
	.size	_ZSt11__addressofI5TSpanILi2EfEEPT_RS2_, .Lfunc_end240-_ZSt11__addressofI5TSpanILi2EfEEPT_RS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt8_DestroyIP5TSpanILi2EfEEvT_S3_,"axG",@progbits,_ZSt8_DestroyIP5TSpanILi2EfEEvT_S3_,comdat
	.weak	_ZSt8_DestroyIP5TSpanILi2EfEEvT_S3_ # -- Begin function _ZSt8_DestroyIP5TSpanILi2EfEEvT_S3_
	.p2align	4, 0x90
	.type	_ZSt8_DestroyIP5TSpanILi2EfEEvT_S3_,@function
_ZSt8_DestroyIP5TSpanILi2EfEEvT_S3_:    # @_ZSt8_DestroyIP5TSpanILi2EfEEvT_S3_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZNSt12_Destroy_auxILb0EE9__destroyIP5TSpanILi2EfEEEvT_S5_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end241:
	.size	_ZSt8_DestroyIP5TSpanILi2EfEEvT_S3_, .Lfunc_end241-_ZSt8_DestroyIP5TSpanILi2EfEEvT_S3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt7forwardIRK5TSpanILi2EfEEOT_RNSt16remove_referenceIS4_E4typeE,"axG",@progbits,_ZSt7forwardIRK5TSpanILi2EfEEOT_RNSt16remove_referenceIS4_E4typeE,comdat
	.weak	_ZSt7forwardIRK5TSpanILi2EfEEOT_RNSt16remove_referenceIS4_E4typeE # -- Begin function _ZSt7forwardIRK5TSpanILi2EfEEOT_RNSt16remove_referenceIS4_E4typeE
	.p2align	4, 0x90
	.type	_ZSt7forwardIRK5TSpanILi2EfEEOT_RNSt16remove_referenceIS4_E4typeE,@function
_ZSt7forwardIRK5TSpanILi2EfEEOT_RNSt16remove_referenceIS4_E4typeE: # @_ZSt7forwardIRK5TSpanILi2EfEEOT_RNSt16remove_referenceIS4_E4typeE
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end242:
	.size	_ZSt7forwardIRK5TSpanILi2EfEEOT_RNSt16remove_referenceIS4_E4typeE, .Lfunc_end242-_ZSt7forwardIRK5TSpanILi2EfEEOT_RNSt16remove_referenceIS4_E4typeE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Destroy_auxILb0EE9__destroyIP5TSpanILi2EfEEEvT_S5_,"axG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIP5TSpanILi2EfEEEvT_S5_,comdat
	.weak	_ZNSt12_Destroy_auxILb0EE9__destroyIP5TSpanILi2EfEEEvT_S5_ # -- Begin function _ZNSt12_Destroy_auxILb0EE9__destroyIP5TSpanILi2EfEEEvT_S5_
	.p2align	4, 0x90
	.type	_ZNSt12_Destroy_auxILb0EE9__destroyIP5TSpanILi2EfEEEvT_S5_,@function
_ZNSt12_Destroy_auxILb0EE9__destroyIP5TSpanILi2EfEEEvT_S5_: # @_ZNSt12_Destroy_auxILb0EE9__destroyIP5TSpanILi2EfEEEvT_S5_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.LBB243_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB243_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB243_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	_ZSt11__addressofI5TSpanILi2EfEEPT_RS2_
	movq	%rax, %rdi
	callq	_ZSt8_DestroyI5TSpanILi2EfEEvPT_
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB243_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB243_1
.LBB243_4:                              # %for.end
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end243:
	.size	_ZNSt12_Destroy_auxILb0EE9__destroyIP5TSpanILi2EfEEEvT_S5_, .Lfunc_end243-_ZNSt12_Destroy_auxILb0EE9__destroyIP5TSpanILi2EfEEEvT_S5_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt8_DestroyI5TSpanILi2EfEEvPT_,"axG",@progbits,_ZSt8_DestroyI5TSpanILi2EfEEvPT_,comdat
	.weak	_ZSt8_DestroyI5TSpanILi2EfEEvPT_ # -- Begin function _ZSt8_DestroyI5TSpanILi2EfEEvPT_
	.p2align	4, 0x90
	.type	_ZSt8_DestroyI5TSpanILi2EfEEvPT_,@function
_ZSt8_DestroyI5TSpanILi2EfEEvPT_:       # @_ZSt8_DestroyI5TSpanILi2EfEEvPT_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end244:
	.size	_ZSt8_DestroyI5TSpanILi2EfEEvPT_, .Lfunc_end244-_ZSt8_DestroyI5TSpanILi2EfEEvPT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE13_M_deallocateEPS1_m,"axG",@progbits,_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE13_M_deallocateEPS1_m,comdat
	.weak	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE13_M_deallocateEPS1_m # -- Begin function _ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE13_M_deallocateEPS1_m
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE13_M_deallocateEPS1_m,@function
_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE13_M_deallocateEPS1_m: # @_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE13_M_deallocateEPS1_m
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	cmpq	$0, -16(%rbp)
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	je	.LBB245_2
# %bb.1:                                # %if.then
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	_ZNSt16allocator_traitsISaI5TSpanILi2EfEEE10deallocateERS2_PS1_m
.LBB245_2:                              # %if.end
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end245:
	.size	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE13_M_deallocateEPS1_m, .Lfunc_end245-_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE13_M_deallocateEPS1_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaI5TSpanILi2EfEEE10deallocateERS2_PS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaI5TSpanILi2EfEEE10deallocateERS2_PS1_m,comdat
	.weak	_ZNSt16allocator_traitsISaI5TSpanILi2EfEEE10deallocateERS2_PS1_m # -- Begin function _ZNSt16allocator_traitsISaI5TSpanILi2EfEEE10deallocateERS2_PS1_m
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaI5TSpanILi2EfEEE10deallocateERS2_PS1_m,@function
_ZNSt16allocator_traitsISaI5TSpanILi2EfEEE10deallocateERS2_PS1_m: # @_ZNSt16allocator_traitsISaI5TSpanILi2EfEEE10deallocateERS2_PS1_m
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-32(%rbp), %rdx         # 8-byte Reload
	callq	_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEE10deallocateEPS2_m
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end246:
	.size	_ZNSt16allocator_traitsISaI5TSpanILi2EfEEE10deallocateERS2_PS1_m, .Lfunc_end246-_ZNSt16allocator_traitsISaI5TSpanILi2EfEEE10deallocateERS2_PS1_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEE10deallocateEPS2_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEE10deallocateEPS2_m,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEE10deallocateEPS2_m # -- Begin function _ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEE10deallocateEPS2_m
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEE10deallocateEPS2_m,@function
_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEE10deallocateEPS2_m: # @_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEE10deallocateEPS2_m
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	callq	_ZdlPv
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end247:
	.size	_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEE10deallocateEPS2_m, .Lfunc_end247-_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEE10deallocateEPS2_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorI5TSpanILi2EfESaIS1_EE14_M_move_assignEOS3_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorI5TSpanILi2EfESaIS1_EE14_M_move_assignEOS3_St17integral_constantIbLb1EE,comdat
	.weak	_ZNSt6vectorI5TSpanILi2EfESaIS1_EE14_M_move_assignEOS3_St17integral_constantIbLb1EE # -- Begin function _ZNSt6vectorI5TSpanILi2EfESaIS1_EE14_M_move_assignEOS3_St17integral_constantIbLb1EE
	.p2align	4, 0x90
	.type	_ZNSt6vectorI5TSpanILi2EfESaIS1_EE14_M_move_assignEOS3_St17integral_constantIbLb1EE,@function
_ZNSt6vectorI5TSpanILi2EfESaIS1_EE14_M_move_assignEOS3_St17integral_constantIbLb1EE: # @_ZNSt6vectorI5TSpanILi2EfESaIS1_EE14_M_move_assignEOS3_St17integral_constantIbLb1EE
.Lfunc_begin35:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception35
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	leaq	-56(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	_ZNKSt12_Vector_baseI5TSpanILi2EfESaIS1_EE13get_allocatorEv
	leaq	-48(%rbp), %rsi
	movq	%rsi, %rdi
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	callq	_ZNSt6vectorI5TSpanILi2EfESaIS1_EEC2ERKS2_
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSaI5TSpanILi2EfEED2Ev
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	callq	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_impl12_M_swap_dataERS4_
	movq	-24(%rbp), %rsi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_impl12_M_swap_dataERS4_
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE19_M_get_Tp_allocatorEv
	movq	-24(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE19_M_get_Tp_allocatorEv
.Ltmp425:
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	_ZSt15__alloc_on_moveISaI5TSpanILi2EfEEEvRT_S4_
.Ltmp426:
	jmp	.LBB248_1
.LBB248_1:                              # %invoke.cont
	leaq	-48(%rbp), %rdi
	callq	_ZNSt6vectorI5TSpanILi2EfESaIS1_EED2Ev
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB248_2:                              # %lpad
	.cfi_def_cfa %rbp, 16
.Ltmp427:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	leaq	-48(%rbp), %rdi
	callq	_ZNSt6vectorI5TSpanILi2EfESaIS1_EED2Ev
# %bb.3:                                # %terminate.handler
	movq	-64(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end248:
	.size	_ZNSt6vectorI5TSpanILi2EfESaIS1_EE14_M_move_assignEOS3_St17integral_constantIbLb1EE, .Lfunc_end248-_ZNSt6vectorI5TSpanILi2EfESaIS1_EE14_M_move_assignEOS3_St17integral_constantIbLb1EE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table248:
.Lexception35:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.uleb128 .Lttbase15-.Lttbaseref15
.Lttbaseref15:
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end35-.Lcst_begin35
.Lcst_begin35:
	.uleb128 .Ltmp425-.Lfunc_begin35 # >> Call Site 1 <<
	.uleb128 .Ltmp426-.Ltmp425      #   Call between .Ltmp425 and .Ltmp426
	.uleb128 .Ltmp427-.Lfunc_begin35 #     jumps to .Ltmp427
	.byte	1                       #   On action: 1
.Lcst_end35:
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
.Lttbase15:
	.p2align	2
                                        # -- End function
	.section	.text._ZSt4moveIRSt6vectorI5TSpanILi2EfESaIS2_EEEONSt16remove_referenceIT_E4typeEOS7_,"axG",@progbits,_ZSt4moveIRSt6vectorI5TSpanILi2EfESaIS2_EEEONSt16remove_referenceIT_E4typeEOS7_,comdat
	.weak	_ZSt4moveIRSt6vectorI5TSpanILi2EfESaIS2_EEEONSt16remove_referenceIT_E4typeEOS7_ # -- Begin function _ZSt4moveIRSt6vectorI5TSpanILi2EfESaIS2_EEEONSt16remove_referenceIT_E4typeEOS7_
	.p2align	4, 0x90
	.type	_ZSt4moveIRSt6vectorI5TSpanILi2EfESaIS2_EEEONSt16remove_referenceIT_E4typeEOS7_,@function
_ZSt4moveIRSt6vectorI5TSpanILi2EfESaIS2_EEEONSt16remove_referenceIT_E4typeEOS7_: # @_ZSt4moveIRSt6vectorI5TSpanILi2EfESaIS2_EEEONSt16remove_referenceIT_E4typeEOS7_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end249:
	.size	_ZSt4moveIRSt6vectorI5TSpanILi2EfESaIS2_EEEONSt16remove_referenceIT_E4typeEOS7_, .Lfunc_end249-_ZSt4moveIRSt6vectorI5TSpanILi2EfESaIS2_EEEONSt16remove_referenceIT_E4typeEOS7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt12_Vector_baseI5TSpanILi2EfESaIS1_EE13get_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseI5TSpanILi2EfESaIS1_EE13get_allocatorEv,comdat
	.weak	_ZNKSt12_Vector_baseI5TSpanILi2EfESaIS1_EE13get_allocatorEv # -- Begin function _ZNKSt12_Vector_baseI5TSpanILi2EfESaIS1_EE13get_allocatorEv
	.p2align	4, 0x90
	.type	_ZNKSt12_Vector_baseI5TSpanILi2EfESaIS1_EE13get_allocatorEv,@function
_ZNKSt12_Vector_baseI5TSpanILi2EfESaIS1_EE13get_allocatorEv: # @_ZNKSt12_Vector_baseI5TSpanILi2EfESaIS1_EE13get_allocatorEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, %rax
	movq	%rsi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	_ZNKSt12_Vector_baseI5TSpanILi2EfESaIS1_EE19_M_get_Tp_allocatorEv
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	_ZNSaI5TSpanILi2EfEEC2ERKS1_
	movq	-24(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end250:
	.size	_ZNKSt12_Vector_baseI5TSpanILi2EfESaIS1_EE13get_allocatorEv, .Lfunc_end250-_ZNKSt12_Vector_baseI5TSpanILi2EfESaIS1_EE13get_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorI5TSpanILi2EfESaIS1_EEC2ERKS2_,"axG",@progbits,_ZNSt6vectorI5TSpanILi2EfESaIS1_EEC2ERKS2_,comdat
	.weak	_ZNSt6vectorI5TSpanILi2EfESaIS1_EEC2ERKS2_ # -- Begin function _ZNSt6vectorI5TSpanILi2EfESaIS1_EEC2ERKS2_
	.p2align	4, 0x90
	.type	_ZNSt6vectorI5TSpanILi2EfESaIS1_EEC2ERKS2_,@function
_ZNSt6vectorI5TSpanILi2EfESaIS1_EEC2ERKS2_: # @_ZNSt6vectorI5TSpanILi2EfESaIS1_EEC2ERKS2_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EEC2ERKS2_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end251:
	.size	_ZNSt6vectorI5TSpanILi2EfESaIS1_EEC2ERKS2_, .Lfunc_end251-_ZNSt6vectorI5TSpanILi2EfESaIS1_EEC2ERKS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_impl12_M_swap_dataERS4_,"axG",@progbits,_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_impl12_M_swap_dataERS4_,comdat
	.weak	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_impl12_M_swap_dataERS4_ # -- Begin function _ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_impl12_M_swap_dataERS4_
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_impl12_M_swap_dataERS4_,@function
_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_impl12_M_swap_dataERS4_: # @_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_impl12_M_swap_dataERS4_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	callq	_ZSt4swapIP5TSpanILi2EfEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	$8, %rax
	movq	-16(%rbp), %rsi
	addq	$8, %rsi
	movq	%rax, %rdi
	callq	_ZSt4swapIP5TSpanILi2EfEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	$16, %rax
	movq	-16(%rbp), %rsi
	addq	$16, %rsi
	movq	%rax, %rdi
	callq	_ZSt4swapIP5TSpanILi2EfEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end252:
	.size	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_impl12_M_swap_dataERS4_, .Lfunc_end252-_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_impl12_M_swap_dataERS4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt15__alloc_on_moveISaI5TSpanILi2EfEEEvRT_S4_,"axG",@progbits,_ZSt15__alloc_on_moveISaI5TSpanILi2EfEEEvRT_S4_,comdat
	.weak	_ZSt15__alloc_on_moveISaI5TSpanILi2EfEEEvRT_S4_ # -- Begin function _ZSt15__alloc_on_moveISaI5TSpanILi2EfEEEvRT_S4_
	.p2align	4, 0x90
	.type	_ZSt15__alloc_on_moveISaI5TSpanILi2EfEEEvRT_S4_,@function
_ZSt15__alloc_on_moveISaI5TSpanILi2EfEEEvRT_S4_: # @_ZSt15__alloc_on_moveISaI5TSpanILi2EfEEEvRT_S4_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZSt18__do_alloc_on_moveISaI5TSpanILi2EfEEEvRT_S4_St17integral_constantIbLb1EE
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end253:
	.size	_ZSt15__alloc_on_moveISaI5TSpanILi2EfEEEvRT_S4_, .Lfunc_end253-_ZSt15__alloc_on_moveISaI5TSpanILi2EfEEEvRT_S4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt12_Vector_baseI5TSpanILi2EfESaIS1_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseI5TSpanILi2EfESaIS1_EE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNKSt12_Vector_baseI5TSpanILi2EfESaIS1_EE19_M_get_Tp_allocatorEv # -- Begin function _ZNKSt12_Vector_baseI5TSpanILi2EfESaIS1_EE19_M_get_Tp_allocatorEv
	.p2align	4, 0x90
	.type	_ZNKSt12_Vector_baseI5TSpanILi2EfESaIS1_EE19_M_get_Tp_allocatorEv,@function
_ZNKSt12_Vector_baseI5TSpanILi2EfESaIS1_EE19_M_get_Tp_allocatorEv: # @_ZNKSt12_Vector_baseI5TSpanILi2EfESaIS1_EE19_M_get_Tp_allocatorEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end254:
	.size	_ZNKSt12_Vector_baseI5TSpanILi2EfESaIS1_EE19_M_get_Tp_allocatorEv, .Lfunc_end254-_ZNKSt12_Vector_baseI5TSpanILi2EfESaIS1_EE19_M_get_Tp_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSaI5TSpanILi2EfEEC2ERKS1_,"axG",@progbits,_ZNSaI5TSpanILi2EfEEC2ERKS1_,comdat
	.weak	_ZNSaI5TSpanILi2EfEEC2ERKS1_ # -- Begin function _ZNSaI5TSpanILi2EfEEC2ERKS1_
	.p2align	4, 0x90
	.type	_ZNSaI5TSpanILi2EfEEC2ERKS1_,@function
_ZNSaI5TSpanILi2EfEEC2ERKS1_:           # @_ZNSaI5TSpanILi2EfEEC2ERKS1_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	_ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEEC2ERKS3_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end255:
	.size	_ZNSaI5TSpanILi2EfEEC2ERKS1_, .Lfunc_end255-_ZNSaI5TSpanILi2EfEEC2ERKS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EEC2ERKS2_,"axG",@progbits,_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EEC2ERKS2_,comdat
	.weak	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EEC2ERKS2_ # -- Begin function _ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EEC2ERKS2_
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EEC2ERKS2_,@function
_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EEC2ERKS2_: # @_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EEC2ERKS2_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_implC2ERKS2_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end256:
	.size	_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EEC2ERKS2_, .Lfunc_end256-_ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EEC2ERKS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt4swapIP5TSpanILi2EfEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_,"axG",@progbits,_ZSt4swapIP5TSpanILi2EfEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_,comdat
	.weak	_ZSt4swapIP5TSpanILi2EfEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_ # -- Begin function _ZSt4swapIP5TSpanILi2EfEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_
	.p2align	4, 0x90
	.type	_ZSt4swapIP5TSpanILi2EfEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_,@function
_ZSt4swapIP5TSpanILi2EfEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_: # @_ZSt4swapIP5TSpanILi2EfEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZSt4moveIRP5TSpanILi2EfEEONSt16remove_referenceIT_E4typeEOS5_
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZSt4moveIRP5TSpanILi2EfEEONSt16remove_referenceIT_E4typeEOS5_
	movq	(%rax), %rax
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi)
	leaq	-24(%rbp), %rdi
	callq	_ZSt4moveIRP5TSpanILi2EfEEONSt16remove_referenceIT_E4typeEOS5_
	movq	(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsi)
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end257:
	.size	_ZSt4swapIP5TSpanILi2EfEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_, .Lfunc_end257-_ZSt4swapIP5TSpanILi2EfEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt4moveIRP5TSpanILi2EfEEONSt16remove_referenceIT_E4typeEOS5_,"axG",@progbits,_ZSt4moveIRP5TSpanILi2EfEEONSt16remove_referenceIT_E4typeEOS5_,comdat
	.weak	_ZSt4moveIRP5TSpanILi2EfEEONSt16remove_referenceIT_E4typeEOS5_ # -- Begin function _ZSt4moveIRP5TSpanILi2EfEEONSt16remove_referenceIT_E4typeEOS5_
	.p2align	4, 0x90
	.type	_ZSt4moveIRP5TSpanILi2EfEEONSt16remove_referenceIT_E4typeEOS5_,@function
_ZSt4moveIRP5TSpanILi2EfEEONSt16remove_referenceIT_E4typeEOS5_: # @_ZSt4moveIRP5TSpanILi2EfEEONSt16remove_referenceIT_E4typeEOS5_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end258:
	.size	_ZSt4moveIRP5TSpanILi2EfEEONSt16remove_referenceIT_E4typeEOS5_, .Lfunc_end258-_ZSt4moveIRP5TSpanILi2EfEEONSt16remove_referenceIT_E4typeEOS5_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt18__do_alloc_on_moveISaI5TSpanILi2EfEEEvRT_S4_St17integral_constantIbLb1EE,"axG",@progbits,_ZSt18__do_alloc_on_moveISaI5TSpanILi2EfEEEvRT_S4_St17integral_constantIbLb1EE,comdat
	.weak	_ZSt18__do_alloc_on_moveISaI5TSpanILi2EfEEEvRT_S4_St17integral_constantIbLb1EE # -- Begin function _ZSt18__do_alloc_on_moveISaI5TSpanILi2EfEEEvRT_S4_St17integral_constantIbLb1EE
	.p2align	4, 0x90
	.type	_ZSt18__do_alloc_on_moveISaI5TSpanILi2EfEEEvRT_S4_St17integral_constantIbLb1EE,@function
_ZSt18__do_alloc_on_moveISaI5TSpanILi2EfEEEvRT_S4_St17integral_constantIbLb1EE: # @_ZSt18__do_alloc_on_moveISaI5TSpanILi2EfEEEvRT_S4_St17integral_constantIbLb1EE
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	_ZSt4moveIRSaI5TSpanILi2EfEEEONSt16remove_referenceIT_E4typeEOS5_
	movq	%rax, -32(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end259:
	.size	_ZSt18__do_alloc_on_moveISaI5TSpanILi2EfEEEvRT_S4_St17integral_constantIbLb1EE, .Lfunc_end259-_ZSt18__do_alloc_on_moveISaI5TSpanILi2EfEEEvRT_S4_St17integral_constantIbLb1EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt4moveIRSaI5TSpanILi2EfEEEONSt16remove_referenceIT_E4typeEOS5_,"axG",@progbits,_ZSt4moveIRSaI5TSpanILi2EfEEEONSt16remove_referenceIT_E4typeEOS5_,comdat
	.weak	_ZSt4moveIRSaI5TSpanILi2EfEEEONSt16remove_referenceIT_E4typeEOS5_ # -- Begin function _ZSt4moveIRSaI5TSpanILi2EfEEEONSt16remove_referenceIT_E4typeEOS5_
	.p2align	4, 0x90
	.type	_ZSt4moveIRSaI5TSpanILi2EfEEEONSt16remove_referenceIT_E4typeEOS5_,@function
_ZSt4moveIRSaI5TSpanILi2EfEEEONSt16remove_referenceIT_E4typeEOS5_: # @_ZSt4moveIRSaI5TSpanILi2EfEEEONSt16remove_referenceIT_E4typeEOS5_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end260:
	.size	_ZSt4moveIRSaI5TSpanILi2EfEEEONSt16remove_referenceIT_E4typeEOS5_, .Lfunc_end260-_ZSt4moveIRSaI5TSpanILi2EfEEEONSt16remove_referenceIT_E4typeEOS5_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt8_DestroyIP5TSpanILi2EfES1_EvT_S3_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIP5TSpanILi2EfES1_EvT_S3_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIP5TSpanILi2EfES1_EvT_S3_RSaIT0_E # -- Begin function _ZSt8_DestroyIP5TSpanILi2EfES1_EvT_S3_RSaIT0_E
	.p2align	4, 0x90
	.type	_ZSt8_DestroyIP5TSpanILi2EfES1_EvT_S3_RSaIT0_E,@function
_ZSt8_DestroyIP5TSpanILi2EfES1_EvT_S3_RSaIT0_E: # @_ZSt8_DestroyIP5TSpanILi2EfES1_EvT_S3_RSaIT0_E
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZSt8_DestroyIP5TSpanILi2EfEEvT_S3_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end261:
	.size	_ZSt8_DestroyIP5TSpanILi2EfES1_EvT_S3_RSaIT0_E, .Lfunc_end261-_ZSt8_DestroyIP5TSpanILi2EfES1_EvT_S3_RSaIT0_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK6TensorI5TSpanILi2EfEEcvS0_IXT_ES1_EILi2EEEv,"axG",@progbits,_ZNK6TensorI5TSpanILi2EfEEcvS0_IXT_ES1_EILi2EEEv,comdat
	.weak	_ZNK6TensorI5TSpanILi2EfEEcvS0_IXT_ES1_EILi2EEEv # -- Begin function _ZNK6TensorI5TSpanILi2EfEEcvS0_IXT_ES1_EILi2EEEv
	.p2align	4, 0x90
	.type	_ZNK6TensorI5TSpanILi2EfEEcvS0_IXT_ES1_EILi2EEEv,@function
_ZNK6TensorI5TSpanILi2EfEEcvS0_IXT_ES1_EILi2EEEv: # @_ZNK6TensorI5TSpanILi2EfEEcvS0_IXT_ES1_EILi2EEEv
.Lfunc_begin36:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception36
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, %rax
	movq	%rsi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	_ZNK6TensorI5TSpanILi2EfEE11initializedEv
	testb	$1, %al
	jne	.LBB262_1
	jmp	.LBB262_2
.LBB262_1:                              # %cond.true
	jmp	.LBB262_3
.LBB262_2:                              # %cond.false
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movl	$575, %edx              # imm = 0x23F
	movabsq	$.L__PRETTY_FUNCTION__._ZNK6TensorI5TSpanILi2EfEEcvS0_IXT_ES1_EILi2EEEv, %rcx
	callq	__assert_fail
.LBB262_3:                              # %cond.end
	movl	$2, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx         # 8-byte Reload
	cmpq	72(%rdx), %rcx
	je	.LBB262_7
# %bb.4:                                # %if.then
	movl	$16, %eax
	movl	%eax, %edi
	callq	__cxa_allocate_exception
	movq	%rax, %rdi
.Ltmp428:
	movl	$.L.str.10, %ecx
	movl	%ecx, %esi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	_ZNSt13runtime_errorC1EPKc
.Ltmp429:
	jmp	.LBB262_5
.LBB262_5:                              # %invoke.cont
	movabsq	$_ZTISt13runtime_error, %rax
	movabsq	$_ZNSt13runtime_errorD1Ev, %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	__cxa_throw
.LBB262_6:                              # %lpad
.Ltmp430:
	movl	%edx, %ecx
	movq	%rax, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	__cxa_free_exception
	jmp	.LBB262_8
.LBB262_7:                              # %if.end
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	_ZNKSt6vectorI5TSpanILi2EfESaIS1_EE4dataEv
	movq	-48(%rbp), %rdi         # 8-byte Reload
	addq	$24, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	_ZNKSt6vectorIiSaIiEE4dataEv
	movq	-48(%rbp), %rdi         # 8-byte Reload
	addq	$48, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	_ZNKSt6vectorIiSaIiEE4dataEv
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	_ZN5TSpanILi2ES_ILi2EfEEC2EPKS0_PKiS5_P11RCTSpanData
	movq	-40(%rbp), %rax         # 8-byte Reload
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB262_8:                              # %eh.resume
	.cfi_def_cfa %rbp, 16
	movq	-16(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end262:
	.size	_ZNK6TensorI5TSpanILi2EfEEcvS0_IXT_ES1_EILi2EEEv, .Lfunc_end262-_ZNK6TensorI5TSpanILi2EfEEcvS0_IXT_ES1_EILi2EEEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table262:
.Lexception36:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end36-.Lcst_begin36
.Lcst_begin36:
	.uleb128 .Lfunc_begin36-.Lfunc_begin36 # >> Call Site 1 <<
	.uleb128 .Ltmp428-.Lfunc_begin36 #   Call between .Lfunc_begin36 and .Ltmp428
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp428-.Lfunc_begin36 # >> Call Site 2 <<
	.uleb128 .Ltmp429-.Ltmp428      #   Call between .Ltmp428 and .Ltmp429
	.uleb128 .Ltmp430-.Lfunc_begin36 #     jumps to .Ltmp430
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp429-.Lfunc_begin36 # >> Call Site 3 <<
	.uleb128 .Lfunc_end262-.Ltmp429 #   Call between .Ltmp429 and .Lfunc_end262
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end36:
	.p2align	2
                                        # -- End function
	.section	.text._ZNK6TensorI5TSpanILi2EfEE11initializedEv,"axG",@progbits,_ZNK6TensorI5TSpanILi2EfEE11initializedEv,comdat
	.weak	_ZNK6TensorI5TSpanILi2EfEE11initializedEv # -- Begin function _ZNK6TensorI5TSpanILi2EfEE11initializedEv
	.p2align	4, 0x90
	.type	_ZNK6TensorI5TSpanILi2EfEE11initializedEv,@function
_ZNK6TensorI5TSpanILi2EfEE11initializedEv: # @_ZNK6TensorI5TSpanILi2EfEE11initializedEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 72(%rdi)
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end263:
	.size	_ZNK6TensorI5TSpanILi2EfEE11initializedEv, .Lfunc_end263-_ZNK6TensorI5TSpanILi2EfEE11initializedEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6vectorI5TSpanILi2EfESaIS1_EE4dataEv,"axG",@progbits,_ZNKSt6vectorI5TSpanILi2EfESaIS1_EE4dataEv,comdat
	.weak	_ZNKSt6vectorI5TSpanILi2EfESaIS1_EE4dataEv # -- Begin function _ZNKSt6vectorI5TSpanILi2EfESaIS1_EE4dataEv
	.p2align	4, 0x90
	.type	_ZNKSt6vectorI5TSpanILi2EfESaIS1_EE4dataEv,@function
_ZNKSt6vectorI5TSpanILi2EfESaIS1_EE4dataEv: # @_ZNKSt6vectorI5TSpanILi2EfESaIS1_EE4dataEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rsi
	callq	_ZNKSt6vectorI5TSpanILi2EfESaIS1_EE11_M_data_ptrIS1_EEPT_S6_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end264:
	.size	_ZNKSt6vectorI5TSpanILi2EfESaIS1_EE4dataEv, .Lfunc_end264-_ZNKSt6vectorI5TSpanILi2EfESaIS1_EE4dataEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5TSpanILi2ES_ILi2EfEEC2EPKS0_PKiS5_P11RCTSpanData,"axG",@progbits,_ZN5TSpanILi2ES_ILi2EfEEC2EPKS0_PKiS5_P11RCTSpanData,comdat
	.weak	_ZN5TSpanILi2ES_ILi2EfEEC2EPKS0_PKiS5_P11RCTSpanData # -- Begin function _ZN5TSpanILi2ES_ILi2EfEEC2EPKS0_PKiS5_P11RCTSpanData
	.p2align	4, 0x90
	.type	_ZN5TSpanILi2ES_ILi2EfEEC2EPKS0_PKiS5_P11RCTSpanData,@function
_ZN5TSpanILi2ES_ILi2EfEEC2EPKS0_PKiS5_P11RCTSpanData: # @_ZN5TSpanILi2ES_ILi2EfEEC2EPKS0_PKiS5_P11RCTSpanData
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rcx)
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rcx)
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rcx)
	cmpq	$0, -40(%rbp)
	je	.LBB265_2
# %bb.1:                                # %if.then
	movq	-40(%rbp), %rdi
	callq	_ZN11RCTSpanData3refEv
.LBB265_2:                              # %if.end
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end265:
	.size	_ZN5TSpanILi2ES_ILi2EfEEC2EPKS0_PKiS5_P11RCTSpanData, .Lfunc_end265-_ZN5TSpanILi2ES_ILi2EfEEC2EPKS0_PKiS5_P11RCTSpanData
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6vectorI5TSpanILi2EfESaIS1_EE11_M_data_ptrIS1_EEPT_S6_,"axG",@progbits,_ZNKSt6vectorI5TSpanILi2EfESaIS1_EE11_M_data_ptrIS1_EEPT_S6_,comdat
	.weak	_ZNKSt6vectorI5TSpanILi2EfESaIS1_EE11_M_data_ptrIS1_EEPT_S6_ # -- Begin function _ZNKSt6vectorI5TSpanILi2EfESaIS1_EE11_M_data_ptrIS1_EEPT_S6_
	.p2align	4, 0x90
	.type	_ZNKSt6vectorI5TSpanILi2EfESaIS1_EE11_M_data_ptrIS1_EEPT_S6_,@function
_ZNKSt6vectorI5TSpanILi2EfESaIS1_EE11_M_data_ptrIS1_EEPT_S6_: # @_ZNKSt6vectorI5TSpanILi2EfESaIS1_EE11_M_data_ptrIS1_EEPT_S6_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end266:
	.size	_ZNKSt6vectorI5TSpanILi2EfESaIS1_EE11_M_data_ptrIS1_EEPT_S6_, .Lfunc_end266-_ZNKSt6vectorI5TSpanILi2EfESaIS1_EE11_M_data_ptrIS1_EEPT_S6_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN11RCTSpanDataC2EPKiS1_,"axG",@progbits,_ZN11RCTSpanDataC2EPKiS1_,comdat
	.weak	_ZN11RCTSpanDataC2EPKiS1_ # -- Begin function _ZN11RCTSpanDataC2EPKiS1_
	.p2align	4, 0x90
	.type	_ZN11RCTSpanDataC2EPKiS1_,@function
_ZN11RCTSpanDataC2EPKiS1_:              # @_ZN11RCTSpanDataC2EPKiS1_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movl	$0, (%rdx)
	movq	-16(%rbp), %rsi
	movq	%rsi, 8(%rdx)
	movq	-24(%rbp), %rsi
	movq	%rsi, 16(%rdx)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end267:
	.size	_ZN11RCTSpanDataC2EPKiS1_, .Lfunc_end267-_ZN11RCTSpanDataC2EPKiS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5TSpanILi1ES_ILi2EfEEC2EPKS0_PKiS5_P11RCTSpanData,"axG",@progbits,_ZN5TSpanILi1ES_ILi2EfEEC2EPKS0_PKiS5_P11RCTSpanData,comdat
	.weak	_ZN5TSpanILi1ES_ILi2EfEEC2EPKS0_PKiS5_P11RCTSpanData # -- Begin function _ZN5TSpanILi1ES_ILi2EfEEC2EPKS0_PKiS5_P11RCTSpanData
	.p2align	4, 0x90
	.type	_ZN5TSpanILi1ES_ILi2EfEEC2EPKS0_PKiS5_P11RCTSpanData,@function
_ZN5TSpanILi1ES_ILi2EfEEC2EPKS0_PKiS5_P11RCTSpanData: # @_ZN5TSpanILi1ES_ILi2EfEEC2EPKS0_PKiS5_P11RCTSpanData
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rcx)
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rcx)
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rcx)
	cmpq	$0, -40(%rbp)
	je	.LBB268_2
# %bb.1:                                # %if.then
	movq	-40(%rbp), %rdi
	callq	_ZN11RCTSpanData3refEv
.LBB268_2:                              # %if.end
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end268:
	.size	_ZN5TSpanILi1ES_ILi2EfEEC2EPKS0_PKiS5_P11RCTSpanData, .Lfunc_end268-_ZN5TSpanILi1ES_ILi2EfEEC2EPKS0_PKiS5_P11RCTSpanData
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function _ZL7compareI5TSpanILi1EfEEbRKT_S4_
	.type	_ZL7compareI5TSpanILi1EfEEbRKT_S4_,@function
_ZL7compareI5TSpanILi1EfEEbRKT_S4_:     # @_ZL7compareI5TSpanILi1EfEEbRKT_S4_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZNK5TSpanILi1EfEeqERKS0_
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end269:
	.size	_ZL7compareI5TSpanILi1EfEEbRKT_S4_, .Lfunc_end269-_ZL7compareI5TSpanILi1EfEEbRKT_S4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK5TSpanILi1EfEeqERKS0_,"axG",@progbits,_ZNK5TSpanILi1EfEeqERKS0_,comdat
	.weak	_ZNK5TSpanILi1EfEeqERKS0_ # -- Begin function _ZNK5TSpanILi1EfEeqERKS0_
	.p2align	4, 0x90
	.type	_ZNK5TSpanILi1EfEeqERKS0_,@function
_ZNK5TSpanILi1EfEeqERKS0_:              # @_ZNK5TSpanILi1EfEeqERKS0_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rdi
	movl	(%rdi), %eax
	movq	-24(%rbp), %rdi
	movq	8(%rdi), %rdi
	cmpl	(%rdi), %eax
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	je	.LBB270_2
# %bb.1:                                # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB270_9
.LBB270_2:                              # %if.end
	movl	$0, -28(%rbp)
.LBB270_3:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	8(%rcx), %rdx
	cmpl	(%rdx), %eax
	jge	.LBB270_8
# %bb.4:                                # %for.body
                                        #   in Loop: Header=BB270_3 Depth=1
	movl	-28(%rbp), %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	callq	_ZNK5TSpanILi1EfEixILb1EEENSt9enable_ifIXT_ERKfE4typeEi
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	_ZNK5TSpanILi1EfEixILb1EEENSt9enable_ifIXT_ERKfE4typeEi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	_ZL7compareRKfS0_
	testb	$1, %al
	jne	.LBB270_6
# %bb.5:                                # %if.then9
	movb	$0, -1(%rbp)
	jmp	.LBB270_9
.LBB270_6:                              # %if.end10
                                        #   in Loop: Header=BB270_3 Depth=1
	jmp	.LBB270_7
.LBB270_7:                              # %for.inc
                                        #   in Loop: Header=BB270_3 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB270_3
.LBB270_8:                              # %for.end
	movb	$1, -1(%rbp)
.LBB270_9:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end270:
	.size	_ZNK5TSpanILi1EfEeqERKS0_, .Lfunc_end270-_ZNK5TSpanILi1EfEeqERKS0_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function _ZL7compareRKfS0_
.LCPI271_0:
	.quad	4517329193108106637     # double 9.9999999999999995E-7
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI271_1:
	.quad	9223372036854775807     # double NaN
	.quad	9223372036854775807     # double NaN
	.text
	.p2align	4, 0x90
	.type	_ZL7compareRKfS0_,@function
_ZL7compareRKfS0_:                      # @_ZL7compareRKfS0_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movsd	.LCPI271_0(%rip), %xmm0 # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movss	(%rsi), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rsi
	subss	(%rsi), %xmm1
	cvtss2sd	%xmm1, %xmm1
	movaps	.LCPI271_1(%rip), %xmm2 # xmm2 = [nan,nan]
	pand	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end271:
	.size	_ZL7compareRKfS0_, .Lfunc_end271-_ZL7compareRKfS0_
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _ZZ4mainENK3$_2clEv
	.type	_ZZ4mainENK3$_2clEv,@function
_ZZ4mainENK3$_2clEv:                    # @"_ZZ4mainENK3$_2clEv"
.Lfunc_begin37:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception37
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	-40(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-128(%rbp), %rsi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEC2ERKS0_
	movq	-128(%rbp), %rax        # 8-byte Reload
	addq	$32, %rax
.Ltmp431:
	leaq	-72(%rbp), %rdi
	movq	%rax, %rsi
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp432:
	jmp	.LBB272_1
.LBB272_1:                              # %invoke.cont
	movq	-128(%rbp), %rax        # 8-byte Reload
	addq	$64, %rax
.Ltmp434:
	leaq	-120(%rbp), %rdi
	movq	%rax, %rsi
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp435:
	jmp	.LBB272_2
.LBB272_2:                              # %invoke.cont5
.Ltmp437:
	leaq	-40(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	callq	_Z12block_matmulILi256EEv5TSpanILi2EfES1_S1_
.Ltmp438:
	jmp	.LBB272_3
.LBB272_3:                              # %invoke.cont7
	leaq	-120(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-72(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-40(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	addq	$128, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB272_4:                              # %lpad
	.cfi_def_cfa %rbp, 16
.Ltmp433:
	movl	%edx, %ecx
	movq	%rax, -80(%rbp)
	movl	%ecx, -84(%rbp)
	jmp	.LBB272_8
.LBB272_5:                              # %lpad4
.Ltmp436:
	movl	%edx, %ecx
	movq	%rax, -80(%rbp)
	movl	%ecx, -84(%rbp)
	jmp	.LBB272_7
.LBB272_6:                              # %lpad6
.Ltmp439:
	movl	%edx, %ecx
	movq	%rax, -80(%rbp)
	movl	%ecx, -84(%rbp)
	leaq	-120(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB272_7:                              # %ehcleanup
	leaq	-72(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB272_8:                              # %ehcleanup8
	leaq	-40(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
# %bb.9:                                # %eh.resume
	movq	-80(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end272:
	.size	_ZZ4mainENK3$_2clEv, .Lfunc_end272-_ZZ4mainENK3$_2clEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table272:
.Lexception37:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end37-.Lcst_begin37
.Lcst_begin37:
	.uleb128 .Lfunc_begin37-.Lfunc_begin37 # >> Call Site 1 <<
	.uleb128 .Ltmp431-.Lfunc_begin37 #   Call between .Lfunc_begin37 and .Ltmp431
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp431-.Lfunc_begin37 # >> Call Site 2 <<
	.uleb128 .Ltmp432-.Ltmp431      #   Call between .Ltmp431 and .Ltmp432
	.uleb128 .Ltmp433-.Lfunc_begin37 #     jumps to .Ltmp433
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp434-.Lfunc_begin37 # >> Call Site 3 <<
	.uleb128 .Ltmp435-.Ltmp434      #   Call between .Ltmp434 and .Ltmp435
	.uleb128 .Ltmp436-.Lfunc_begin37 #     jumps to .Ltmp436
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp437-.Lfunc_begin37 # >> Call Site 4 <<
	.uleb128 .Ltmp438-.Ltmp437      #   Call between .Ltmp437 and .Ltmp438
	.uleb128 .Ltmp439-.Lfunc_begin37 #     jumps to .Ltmp439
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp438-.Lfunc_begin37 # >> Call Site 5 <<
	.uleb128 .Lfunc_end272-.Ltmp438 #   Call between .Ltmp438 and .Lfunc_end272
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end37:
	.p2align	2
                                        # -- End function
	.section	.text._Z12block_matmulILi256EEv5TSpanILi2EfES1_S1_,"axG",@progbits,_Z12block_matmulILi256EEv5TSpanILi2EfES1_S1_,comdat
	.weak	_Z12block_matmulILi256EEv5TSpanILi2EfES1_S1_ # -- Begin function _Z12block_matmulILi256EEv5TSpanILi2EfES1_S1_
	.p2align	4, 0x90
	.type	_Z12block_matmulILi256EEv5TSpanILi2EfES1_S1_,@function
_Z12block_matmulILi256EEv5TSpanILi2EfES1_S1_: # @_Z12block_matmulILi256EEv5TSpanILi2EfES1_S1_
.Lfunc_begin38:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception38
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$992, %rsp              # imm = 0x3E0
	movq	8(%rdi), %rax
	movl	4(%rax), %ecx
	movq	8(%rsi), %rax
	cmpl	(%rax), %ecx
	movq	%rsi, -864(%rbp)        # 8-byte Spill
	movq	%rdi, -872(%rbp)        # 8-byte Spill
	movq	%rdx, -880(%rbp)        # 8-byte Spill
	jne	.LBB273_2
# %bb.1:                                # %cond.true
	jmp	.LBB273_3
.LBB273_2:                              # %cond.false
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$35, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi256EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB273_3:                              # %cond.end
	movq	-880(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	(%rcx), %edx
	movq	-872(%rbp), %rcx        # 8-byte Reload
	movq	8(%rcx), %rsi
	cmpl	(%rsi), %edx
	jne	.LBB273_5
# %bb.4:                                # %cond.true8
	jmp	.LBB273_6
.LBB273_5:                              # %cond.false9
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$36, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi256EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB273_6:                              # %cond.end10
	movq	-880(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	4(%rcx), %edx
	movq	-864(%rbp), %rcx        # 8-byte Reload
	movq	8(%rcx), %rsi
	cmpl	4(%rsi), %edx
	jne	.LBB273_8
# %bb.7:                                # %cond.true16
	jmp	.LBB273_9
.LBB273_8:                              # %cond.false17
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$37, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi256EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB273_9:                              # %cond.end18
	movq	-872(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	(%rcx), %eax
	cltd
	movl	$256, %esi              # imm = 0x100
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB273_11
# %bb.10:                               # %cond.true22
	jmp	.LBB273_12
.LBB273_11:                             # %cond.false23
	movabsq	$.L.str.17, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$38, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi256EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB273_12:                             # %cond.end24
	movq	-872(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	4(%rcx), %eax
	cltd
	movl	$256, %esi              # imm = 0x100
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB273_14
# %bb.13:                               # %cond.true29
	jmp	.LBB273_15
.LBB273_14:                             # %cond.false30
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$39, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi256EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB273_15:                             # %cond.end31
	movq	-864(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	(%rcx), %eax
	cltd
	movl	$256, %esi              # imm = 0x100
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB273_17
# %bb.16:                               # %cond.true36
	jmp	.LBB273_18
.LBB273_17:                             # %cond.false37
	movabsq	$.L.str.19, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$40, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi256EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB273_18:                             # %cond.end38
	movq	-864(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	4(%rcx), %eax
	cltd
	movl	$256, %esi              # imm = 0x100
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB273_20
# %bb.19:                               # %cond.true43
	jmp	.LBB273_21
.LBB273_20:                             # %cond.false44
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$41, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi256EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB273_21:                             # %cond.end45
	movq	-872(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	(%rcx), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$24, %esi
	addl	%esi, %edx
	sarl	$8, %edx
	movl	%edx, -8(%rbp)
	movq	8(%rax), %rcx
	movl	4(%rcx), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$24, %esi
	addl	%esi, %edx
	sarl	$8, %edx
	movl	%edx, -4(%rbp)
	movq	-864(%rbp), %rcx        # 8-byte Reload
	movq	8(%rcx), %rdi
	movl	(%rdi), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$24, %esi
	addl	%esi, %edx
	sarl	$8, %edx
	movl	%edx, -16(%rbp)
	movq	8(%rcx), %rdi
	movl	4(%rdi), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$24, %esi
	addl	%esi, %edx
	sarl	$8, %edx
	movl	%edx, -12(%rbp)
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	8(%rdi), %r8
	movl	(%r8), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$24, %esi
	addl	%esi, %edx
	sarl	$8, %edx
	movl	%edx, -24(%rbp)
	movq	8(%rdi), %r8
	movl	4(%r8), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$24, %esi
	addl	%esi, %edx
	sarl	$8, %edx
	movl	%edx, -20(%rbp)
	movl	$2, %edx
	movl	%edx, %r8d
	leaq	-104(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	movq	%r8, %rdx
	movq	%r8, -888(%rbp)         # 8-byte Spill
	callq	_ZN6TensorI5TSpanILi2EfEEC2EPKim
.Ltmp440:
	leaq	-184(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	movq	-888(%rbp), %rdx        # 8-byte Reload
	callq	_ZN6TensorI5TSpanILi2EfEEC2EPKim
.Ltmp441:
	jmp	.LBB273_22
.LBB273_22:                             # %invoke.cont
.Ltmp443:
	movl	$2, %eax
	movl	%eax, %edx
	leaq	-280(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZN6TensorI5TSpanILi2EfEEC2EPKim
.Ltmp444:
	jmp	.LBB273_23
.LBB273_23:                             # %invoke.cont70
.Ltmp446:
	leaq	-312(%rbp), %rdi
	leaq	-104(%rbp), %rsi
	callq	_ZN6TensorI5TSpanILi2EfEE8as_tspanILi2EEES0_IXT_ES1_Ev
.Ltmp447:
	jmp	.LBB273_24
.LBB273_24:                             # %invoke.cont72
.Ltmp449:
	leaq	-344(%rbp), %rdi
	leaq	-184(%rbp), %rsi
	callq	_ZN6TensorI5TSpanILi2EfEE8as_tspanILi2EEES0_IXT_ES1_Ev
.Ltmp450:
	jmp	.LBB273_25
.LBB273_25:                             # %invoke.cont74
.Ltmp452:
	leaq	-376(%rbp), %rdi
	leaq	-280(%rbp), %rsi
	callq	_ZN6TensorI5TSpanILi2EfEE8as_tspanILi2EEES0_IXT_ES1_Ev
.Ltmp453:
	jmp	.LBB273_26
.LBB273_26:                             # %invoke.cont76
	movl	$0, -380(%rbp)
	movl	$0, -384(%rbp)
.LBB273_27:                             # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB273_29 Depth 2
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	-380(%rbp), %eax
	leaq	-104(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -892(%rbp)        # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-892(%rbp), %edx        # 4-byte Reload
	cmpl	(%rax), %edx
	jge	.LBB273_50
# %bb.28:                               # %for.body
                                        #   in Loop: Header=BB273_27 Depth=1
	movl	$0, -388(%rbp)
	movl	$0, -392(%rbp)
.LBB273_29:                             # %for.cond79
                                        #   Parent Loop BB273_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movl	-388(%rbp), %eax
	leaq	-104(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -896(%rbp)        # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-896(%rbp), %edx        # 4-byte Reload
	cmpl	(%rax), %edx
	jge	.LBB273_48
# %bb.30:                               # %for.body83
                                        #   in Loop: Header=BB273_29 Depth=2
.Ltmp501:
	leaq	-456(%rbp), %rdi
	movq	-872(%rbp), %rsi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp502:
	jmp	.LBB273_31
.LBB273_31:                             # %invoke.cont85
                                        #   in Loop: Header=BB273_29 Depth=2
	movl	-392(%rbp), %edx
	movl	-384(%rbp), %ecx
.Ltmp504:
	leaq	-424(%rbp), %rdi
	leaq	-456(%rbp), %rsi
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %r8d
	movl	%eax, %r9d
	callq	_Z6submatIfE5TSpanILi2ET_ES2_iiii
.Ltmp505:
	jmp	.LBB273_32
.LBB273_32:                             # %invoke.cont87
                                        #   in Loop: Header=BB273_29 Depth=2
	movl	-380(%rbp), %edx
.Ltmp507:
	leaq	-488(%rbp), %rdi
	leaq	-312(%rbp), %rsi
	callq	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
.Ltmp508:
	jmp	.LBB273_33
.LBB273_33:                             # %invoke.cont90
                                        #   in Loop: Header=BB273_29 Depth=2
	movl	-388(%rbp), %esi
.Ltmp510:
	leaq	-488(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
.Ltmp511:
	movq	%rax, -904(%rbp)        # 8-byte Spill
	jmp	.LBB273_34
.LBB273_34:                             # %invoke.cont92
                                        #   in Loop: Header=BB273_29 Depth=2
.Ltmp512:
	leaq	-424(%rbp), %rsi
	movq	-904(%rbp), %rdi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEaSEOS0_
.Ltmp513:
	movq	%rax, -912(%rbp)        # 8-byte Spill
	jmp	.LBB273_35
.LBB273_35:                             # %invoke.cont94
                                        #   in Loop: Header=BB273_29 Depth=2
	leaq	-488(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
	leaq	-424(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-456(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
# %bb.36:                               # %for.inc
                                        #   in Loop: Header=BB273_29 Depth=2
	movl	-388(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -388(%rbp)
	movl	-392(%rbp), %eax
	addl	$256, %eax              # imm = 0x100
	movl	%eax, -392(%rbp)
	jmp	.LBB273_29
.LBB273_37:                             # %lpad
.Ltmp442:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB273_119
.LBB273_38:                             # %lpad69
.Ltmp445:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB273_118
.LBB273_39:                             # %lpad71
.Ltmp448:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB273_117
.LBB273_40:                             # %lpad73
.Ltmp451:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB273_116
.LBB273_41:                             # %lpad75
.Ltmp454:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB273_115
.LBB273_42:                             # %lpad84
.Ltmp503:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB273_114
.LBB273_43:                             # %lpad86
.Ltmp506:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB273_47
.LBB273_44:                             # %lpad89
.Ltmp509:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB273_46
.LBB273_45:                             # %lpad91
.Ltmp514:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	leaq	-488(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
.LBB273_46:                             # %ehcleanup
	leaq	-424(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB273_47:                             # %ehcleanup96
	leaq	-456(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	jmp	.LBB273_114
.LBB273_48:                             # %for.end
                                        #   in Loop: Header=BB273_27 Depth=1
	jmp	.LBB273_49
.LBB273_49:                             # %for.inc97
                                        #   in Loop: Header=BB273_27 Depth=1
	movl	-380(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -380(%rbp)
	movl	-384(%rbp), %eax
	addl	$256, %eax              # imm = 0x100
	movl	%eax, -384(%rbp)
	jmp	.LBB273_27
.LBB273_50:                             # %for.end100
	movl	$0, -492(%rbp)
	movl	$0, -496(%rbp)
.LBB273_51:                             # %for.cond103
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB273_53 Depth 2
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	-492(%rbp), %eax
	leaq	-184(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -916(%rbp)        # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-916(%rbp), %edx        # 4-byte Reload
	cmpl	(%rax), %edx
	jge	.LBB273_68
# %bb.52:                               # %for.body107
                                        #   in Loop: Header=BB273_51 Depth=1
	movl	$0, -500(%rbp)
	movl	$0, -504(%rbp)
.LBB273_53:                             # %for.cond110
                                        #   Parent Loop BB273_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movl	-500(%rbp), %eax
	leaq	-184(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -920(%rbp)        # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-920(%rbp), %edx        # 4-byte Reload
	cmpl	(%rax), %edx
	jge	.LBB273_66
# %bb.54:                               # %for.body114
                                        #   in Loop: Header=BB273_53 Depth=2
.Ltmp488:
	leaq	-568(%rbp), %rdi
	movq	-864(%rbp), %rsi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp489:
	jmp	.LBB273_55
.LBB273_55:                             # %invoke.cont117
                                        #   in Loop: Header=BB273_53 Depth=2
	movl	-504(%rbp), %edx
	movl	-496(%rbp), %ecx
.Ltmp490:
	leaq	-536(%rbp), %rdi
	leaq	-568(%rbp), %rsi
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %r8d
	movl	%eax, %r9d
	callq	_Z6submatIfE5TSpanILi2ET_ES2_iiii
.Ltmp491:
	jmp	.LBB273_56
.LBB273_56:                             # %invoke.cont119
                                        #   in Loop: Header=BB273_53 Depth=2
	movl	-492(%rbp), %edx
.Ltmp493:
	leaq	-600(%rbp), %rdi
	leaq	-344(%rbp), %rsi
	callq	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
.Ltmp494:
	jmp	.LBB273_57
.LBB273_57:                             # %invoke.cont122
                                        #   in Loop: Header=BB273_53 Depth=2
	movl	-500(%rbp), %esi
.Ltmp496:
	leaq	-600(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
.Ltmp497:
	movq	%rax, -928(%rbp)        # 8-byte Spill
	jmp	.LBB273_58
.LBB273_58:                             # %invoke.cont124
                                        #   in Loop: Header=BB273_53 Depth=2
.Ltmp498:
	leaq	-536(%rbp), %rsi
	movq	-928(%rbp), %rdi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEaSEOS0_
.Ltmp499:
	movq	%rax, -936(%rbp)        # 8-byte Spill
	jmp	.LBB273_59
.LBB273_59:                             # %invoke.cont126
                                        #   in Loop: Header=BB273_53 Depth=2
	leaq	-600(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
	leaq	-536(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-568(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
# %bb.60:                               # %for.inc131
                                        #   in Loop: Header=BB273_53 Depth=2
	movl	-500(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -500(%rbp)
	movl	-504(%rbp), %eax
	addl	$256, %eax              # imm = 0x100
	movl	%eax, -504(%rbp)
	jmp	.LBB273_53
.LBB273_61:                             # %lpad118
.Ltmp492:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB273_65
.LBB273_62:                             # %lpad121
.Ltmp495:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB273_64
.LBB273_63:                             # %lpad123
.Ltmp500:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	leaq	-600(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
.LBB273_64:                             # %ehcleanup129
	leaq	-536(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB273_65:                             # %ehcleanup130
	leaq	-568(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	jmp	.LBB273_114
.LBB273_66:                             # %for.end134
                                        #   in Loop: Header=BB273_51 Depth=1
	jmp	.LBB273_67
.LBB273_67:                             # %for.inc135
                                        #   in Loop: Header=BB273_51 Depth=1
	movl	-492(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -492(%rbp)
	movl	-496(%rbp), %eax
	addl	$256, %eax              # imm = 0x100
	movl	%eax, -496(%rbp)
	jmp	.LBB273_51
.LBB273_68:                             # %for.end138
	movl	$0, -604(%rbp)
	movl	$0, -608(%rbp)
.LBB273_69:                             # %for.cond141
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB273_71 Depth 2
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	-604(%rbp), %eax
	leaq	-280(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -940(%rbp)        # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-940(%rbp), %edx        # 4-byte Reload
	cmpl	(%rax), %edx
	jge	.LBB273_86
# %bb.70:                               # %for.body145
                                        #   in Loop: Header=BB273_69 Depth=1
	movl	$0, -612(%rbp)
	movl	$0, -616(%rbp)
.LBB273_71:                             # %for.cond148
                                        #   Parent Loop BB273_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movl	-612(%rbp), %eax
	leaq	-280(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -944(%rbp)        # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-944(%rbp), %edx        # 4-byte Reload
	cmpl	(%rax), %edx
	jge	.LBB273_84
# %bb.72:                               # %for.body152
                                        #   in Loop: Header=BB273_71 Depth=2
.Ltmp475:
	leaq	-680(%rbp), %rdi
	movq	-880(%rbp), %rsi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp476:
	jmp	.LBB273_73
.LBB273_73:                             # %invoke.cont155
                                        #   in Loop: Header=BB273_71 Depth=2
	movl	-616(%rbp), %edx
	movl	-608(%rbp), %ecx
.Ltmp477:
	leaq	-648(%rbp), %rdi
	leaq	-680(%rbp), %rsi
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %r8d
	movl	%eax, %r9d
	callq	_Z6submatIfE5TSpanILi2ET_ES2_iiii
.Ltmp478:
	jmp	.LBB273_74
.LBB273_74:                             # %invoke.cont157
                                        #   in Loop: Header=BB273_71 Depth=2
	movl	-604(%rbp), %edx
.Ltmp480:
	leaq	-712(%rbp), %rdi
	leaq	-376(%rbp), %rsi
	callq	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
.Ltmp481:
	jmp	.LBB273_75
.LBB273_75:                             # %invoke.cont160
                                        #   in Loop: Header=BB273_71 Depth=2
	movl	-612(%rbp), %esi
.Ltmp483:
	leaq	-712(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
.Ltmp484:
	movq	%rax, -952(%rbp)        # 8-byte Spill
	jmp	.LBB273_76
.LBB273_76:                             # %invoke.cont162
                                        #   in Loop: Header=BB273_71 Depth=2
.Ltmp485:
	leaq	-648(%rbp), %rsi
	movq	-952(%rbp), %rdi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEaSEOS0_
.Ltmp486:
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB273_77
.LBB273_77:                             # %invoke.cont164
                                        #   in Loop: Header=BB273_71 Depth=2
	leaq	-712(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
	leaq	-648(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-680(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
# %bb.78:                               # %for.inc169
                                        #   in Loop: Header=BB273_71 Depth=2
	movl	-612(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -612(%rbp)
	movl	-616(%rbp), %eax
	addl	$256, %eax              # imm = 0x100
	movl	%eax, -616(%rbp)
	jmp	.LBB273_71
.LBB273_79:                             # %lpad156
.Ltmp479:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB273_83
.LBB273_80:                             # %lpad159
.Ltmp482:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB273_82
.LBB273_81:                             # %lpad161
.Ltmp487:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	leaq	-712(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
.LBB273_82:                             # %ehcleanup167
	leaq	-648(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB273_83:                             # %ehcleanup168
	leaq	-680(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	jmp	.LBB273_114
.LBB273_84:                             # %for.end172
                                        #   in Loop: Header=BB273_69 Depth=1
	jmp	.LBB273_85
.LBB273_85:                             # %for.inc173
                                        #   in Loop: Header=BB273_69 Depth=1
	movl	-604(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -604(%rbp)
	movl	-608(%rbp), %eax
	addl	$256, %eax              # imm = 0x100
	movl	%eax, -608(%rbp)
	jmp	.LBB273_69
.LBB273_86:                             # %for.end176
	movl	$0, -716(%rbp)
.LBB273_87:                             # %for.cond178
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB273_89 Depth 2
                                        #       Child Loop BB273_91 Depth 3
	movl	-716(%rbp), %eax
	movq	-368(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB273_113
# %bb.88:                               # %for.body182
                                        #   in Loop: Header=BB273_87 Depth=1
	movl	$0, -720(%rbp)
.LBB273_89:                             # %for.cond184
                                        #   Parent Loop BB273_87 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB273_91 Depth 3
	movl	-720(%rbp), %eax
	movq	-368(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB273_111
# %bb.90:                               # %for.body188
                                        #   in Loop: Header=BB273_89 Depth=2
	movl	$0, -724(%rbp)
.LBB273_91:                             # %for.cond189
                                        #   Parent Loop BB273_87 Depth=1
                                        #     Parent Loop BB273_89 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-724(%rbp), %eax
	movq	-304(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB273_109
# %bb.92:                               # %for.body193
                                        #   in Loop: Header=BB273_91 Depth=3
	movl	-716(%rbp), %edx
.Ltmp455:
	leaq	-760(%rbp), %rdi
	leaq	-312(%rbp), %rsi
	callq	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
.Ltmp456:
	jmp	.LBB273_93
.LBB273_93:                             # %invoke.cont195
                                        #   in Loop: Header=BB273_91 Depth=3
	movl	-724(%rbp), %esi
.Ltmp457:
	leaq	-760(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
.Ltmp458:
	movq	%rax, -968(%rbp)        # 8-byte Spill
	jmp	.LBB273_94
.LBB273_94:                             # %invoke.cont197
                                        #   in Loop: Header=BB273_91 Depth=3
	movl	-724(%rbp), %edx
.Ltmp459:
	leaq	-792(%rbp), %rdi
	leaq	-344(%rbp), %rsi
	callq	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
.Ltmp460:
	jmp	.LBB273_95
.LBB273_95:                             # %invoke.cont200
                                        #   in Loop: Header=BB273_91 Depth=3
	movl	-720(%rbp), %esi
.Ltmp462:
	leaq	-792(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
.Ltmp463:
	movq	%rax, -976(%rbp)        # 8-byte Spill
	jmp	.LBB273_96
.LBB273_96:                             # %invoke.cont202
                                        #   in Loop: Header=BB273_91 Depth=3
	movl	-716(%rbp), %edx
.Ltmp464:
	leaq	-856(%rbp), %rdi
	leaq	-376(%rbp), %rsi
	callq	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
.Ltmp465:
	jmp	.LBB273_97
.LBB273_97:                             # %invoke.cont206
                                        #   in Loop: Header=BB273_91 Depth=3
	movl	-720(%rbp), %esi
.Ltmp467:
	leaq	-856(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
.Ltmp468:
	movq	%rax, -984(%rbp)        # 8-byte Spill
	jmp	.LBB273_98
.LBB273_98:                             # %invoke.cont208
                                        #   in Loop: Header=BB273_91 Depth=3
.Ltmp469:
	leaq	-824(%rbp), %rdi
	movq	-984(%rbp), %rsi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp470:
	jmp	.LBB273_99
.LBB273_99:                             # %invoke.cont210
                                        #   in Loop: Header=BB273_91 Depth=3
.Ltmp472:
	leaq	-824(%rbp), %rdx
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movq	-976(%rbp), %rsi        # 8-byte Reload
	callq	_Z9tensormulILi2ELi2EfENSt9enable_ifIXgtT_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ES3_IXmiplT_T0_Li2EES4_E
.Ltmp473:
	jmp	.LBB273_100
.LBB273_100:                            # %invoke.cont212
                                        #   in Loop: Header=BB273_91 Depth=3
	leaq	-824(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-856(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
	leaq	-792(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
	leaq	-760(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
# %bb.101:                              # %for.inc217
                                        #   in Loop: Header=BB273_91 Depth=3
	movl	-724(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -724(%rbp)
	jmp	.LBB273_91
.LBB273_102:                            # %lpad196
.Ltmp461:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB273_108
.LBB273_103:                            # %lpad201
.Ltmp466:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB273_107
.LBB273_104:                            # %lpad207
.Ltmp471:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB273_106
.LBB273_105:                            # %lpad211
.Ltmp474:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	leaq	-824(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB273_106:                            # %ehcleanup214
	leaq	-856(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
.LBB273_107:                            # %ehcleanup215
	leaq	-792(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
.LBB273_108:                            # %ehcleanup216
	leaq	-760(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
	jmp	.LBB273_114
.LBB273_109:                            # %for.end219
                                        #   in Loop: Header=BB273_89 Depth=2
	jmp	.LBB273_110
.LBB273_110:                            # %for.inc220
                                        #   in Loop: Header=BB273_89 Depth=2
	movl	-720(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -720(%rbp)
	jmp	.LBB273_89
.LBB273_111:                            # %for.end222
                                        #   in Loop: Header=BB273_87 Depth=1
	jmp	.LBB273_112
.LBB273_112:                            # %for.inc223
                                        #   in Loop: Header=BB273_87 Depth=1
	movl	-716(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -716(%rbp)
	jmp	.LBB273_87
.LBB273_113:                            # %for.end225
	leaq	-376(%rbp), %rdi
	callq	_ZN5TSpanILi2ES_ILi2EfEED2Ev
	leaq	-344(%rbp), %rdi
	callq	_ZN5TSpanILi2ES_ILi2EfEED2Ev
	leaq	-312(%rbp), %rdi
	callq	_ZN5TSpanILi2ES_ILi2EfEED2Ev
	leaq	-280(%rbp), %rdi
	callq	_ZN6TensorI5TSpanILi2EfEED2Ev
	leaq	-184(%rbp), %rdi
	callq	_ZN6TensorI5TSpanILi2EfEED2Ev
	leaq	-104(%rbp), %rdi
	callq	_ZN6TensorI5TSpanILi2EfEED2Ev
	addq	$992, %rsp              # imm = 0x3E0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB273_114:                            # %ehcleanup226
	.cfi_def_cfa %rbp, 16
	leaq	-376(%rbp), %rdi
	callq	_ZN5TSpanILi2ES_ILi2EfEED2Ev
.LBB273_115:                            # %ehcleanup227
	leaq	-344(%rbp), %rdi
	callq	_ZN5TSpanILi2ES_ILi2EfEED2Ev
.LBB273_116:                            # %ehcleanup228
	leaq	-312(%rbp), %rdi
	callq	_ZN5TSpanILi2ES_ILi2EfEED2Ev
.LBB273_117:                            # %ehcleanup229
	leaq	-280(%rbp), %rdi
	callq	_ZN6TensorI5TSpanILi2EfEED2Ev
.LBB273_118:                            # %ehcleanup230
	leaq	-184(%rbp), %rdi
	callq	_ZN6TensorI5TSpanILi2EfEED2Ev
.LBB273_119:                            # %ehcleanup231
	leaq	-104(%rbp), %rdi
	callq	_ZN6TensorI5TSpanILi2EfEED2Ev
# %bb.120:                              # %eh.resume
	movq	-192(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end273:
	.size	_Z12block_matmulILi256EEv5TSpanILi2EfES1_S1_, .Lfunc_end273-_Z12block_matmulILi256EEv5TSpanILi2EfES1_S1_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table273:
.Lexception38:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end38-.Lcst_begin38
.Lcst_begin38:
	.uleb128 .Lfunc_begin38-.Lfunc_begin38 # >> Call Site 1 <<
	.uleb128 .Ltmp440-.Lfunc_begin38 #   Call between .Lfunc_begin38 and .Ltmp440
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp440-.Lfunc_begin38 # >> Call Site 2 <<
	.uleb128 .Ltmp441-.Ltmp440      #   Call between .Ltmp440 and .Ltmp441
	.uleb128 .Ltmp442-.Lfunc_begin38 #     jumps to .Ltmp442
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp443-.Lfunc_begin38 # >> Call Site 3 <<
	.uleb128 .Ltmp444-.Ltmp443      #   Call between .Ltmp443 and .Ltmp444
	.uleb128 .Ltmp445-.Lfunc_begin38 #     jumps to .Ltmp445
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp446-.Lfunc_begin38 # >> Call Site 4 <<
	.uleb128 .Ltmp447-.Ltmp446      #   Call between .Ltmp446 and .Ltmp447
	.uleb128 .Ltmp448-.Lfunc_begin38 #     jumps to .Ltmp448
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp449-.Lfunc_begin38 # >> Call Site 5 <<
	.uleb128 .Ltmp450-.Ltmp449      #   Call between .Ltmp449 and .Ltmp450
	.uleb128 .Ltmp451-.Lfunc_begin38 #     jumps to .Ltmp451
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp452-.Lfunc_begin38 # >> Call Site 6 <<
	.uleb128 .Ltmp453-.Ltmp452      #   Call between .Ltmp452 and .Ltmp453
	.uleb128 .Ltmp454-.Lfunc_begin38 #     jumps to .Ltmp454
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp501-.Lfunc_begin38 # >> Call Site 7 <<
	.uleb128 .Ltmp502-.Ltmp501      #   Call between .Ltmp501 and .Ltmp502
	.uleb128 .Ltmp503-.Lfunc_begin38 #     jumps to .Ltmp503
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp504-.Lfunc_begin38 # >> Call Site 8 <<
	.uleb128 .Ltmp505-.Ltmp504      #   Call between .Ltmp504 and .Ltmp505
	.uleb128 .Ltmp506-.Lfunc_begin38 #     jumps to .Ltmp506
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp507-.Lfunc_begin38 # >> Call Site 9 <<
	.uleb128 .Ltmp508-.Ltmp507      #   Call between .Ltmp507 and .Ltmp508
	.uleb128 .Ltmp509-.Lfunc_begin38 #     jumps to .Ltmp509
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp510-.Lfunc_begin38 # >> Call Site 10 <<
	.uleb128 .Ltmp513-.Ltmp510      #   Call between .Ltmp510 and .Ltmp513
	.uleb128 .Ltmp514-.Lfunc_begin38 #     jumps to .Ltmp514
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp488-.Lfunc_begin38 # >> Call Site 11 <<
	.uleb128 .Ltmp489-.Ltmp488      #   Call between .Ltmp488 and .Ltmp489
	.uleb128 .Ltmp503-.Lfunc_begin38 #     jumps to .Ltmp503
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp490-.Lfunc_begin38 # >> Call Site 12 <<
	.uleb128 .Ltmp491-.Ltmp490      #   Call between .Ltmp490 and .Ltmp491
	.uleb128 .Ltmp492-.Lfunc_begin38 #     jumps to .Ltmp492
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp493-.Lfunc_begin38 # >> Call Site 13 <<
	.uleb128 .Ltmp494-.Ltmp493      #   Call between .Ltmp493 and .Ltmp494
	.uleb128 .Ltmp495-.Lfunc_begin38 #     jumps to .Ltmp495
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp496-.Lfunc_begin38 # >> Call Site 14 <<
	.uleb128 .Ltmp499-.Ltmp496      #   Call between .Ltmp496 and .Ltmp499
	.uleb128 .Ltmp500-.Lfunc_begin38 #     jumps to .Ltmp500
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp475-.Lfunc_begin38 # >> Call Site 15 <<
	.uleb128 .Ltmp476-.Ltmp475      #   Call between .Ltmp475 and .Ltmp476
	.uleb128 .Ltmp503-.Lfunc_begin38 #     jumps to .Ltmp503
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp477-.Lfunc_begin38 # >> Call Site 16 <<
	.uleb128 .Ltmp478-.Ltmp477      #   Call between .Ltmp477 and .Ltmp478
	.uleb128 .Ltmp479-.Lfunc_begin38 #     jumps to .Ltmp479
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp480-.Lfunc_begin38 # >> Call Site 17 <<
	.uleb128 .Ltmp481-.Ltmp480      #   Call between .Ltmp480 and .Ltmp481
	.uleb128 .Ltmp482-.Lfunc_begin38 #     jumps to .Ltmp482
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp483-.Lfunc_begin38 # >> Call Site 18 <<
	.uleb128 .Ltmp486-.Ltmp483      #   Call between .Ltmp483 and .Ltmp486
	.uleb128 .Ltmp487-.Lfunc_begin38 #     jumps to .Ltmp487
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp455-.Lfunc_begin38 # >> Call Site 19 <<
	.uleb128 .Ltmp456-.Ltmp455      #   Call between .Ltmp455 and .Ltmp456
	.uleb128 .Ltmp503-.Lfunc_begin38 #     jumps to .Ltmp503
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp457-.Lfunc_begin38 # >> Call Site 20 <<
	.uleb128 .Ltmp460-.Ltmp457      #   Call between .Ltmp457 and .Ltmp460
	.uleb128 .Ltmp461-.Lfunc_begin38 #     jumps to .Ltmp461
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp462-.Lfunc_begin38 # >> Call Site 21 <<
	.uleb128 .Ltmp465-.Ltmp462      #   Call between .Ltmp462 and .Ltmp465
	.uleb128 .Ltmp466-.Lfunc_begin38 #     jumps to .Ltmp466
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp467-.Lfunc_begin38 # >> Call Site 22 <<
	.uleb128 .Ltmp470-.Ltmp467      #   Call between .Ltmp467 and .Ltmp470
	.uleb128 .Ltmp471-.Lfunc_begin38 #     jumps to .Ltmp471
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp472-.Lfunc_begin38 # >> Call Site 23 <<
	.uleb128 .Ltmp473-.Ltmp472      #   Call between .Ltmp472 and .Ltmp473
	.uleb128 .Ltmp474-.Lfunc_begin38 #     jumps to .Ltmp474
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp473-.Lfunc_begin38 # >> Call Site 24 <<
	.uleb128 .Lfunc_end273-.Ltmp473 #   Call between .Ltmp473 and .Lfunc_end273
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end38:
	.p2align	2
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function _ZZ4mainENK3$_3clEv
	.type	_ZZ4mainENK3$_3clEv,@function
_ZZ4mainENK3$_3clEv:                    # @"_ZZ4mainENK3$_3clEv"
.Lfunc_begin39:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception39
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	-40(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-128(%rbp), %rsi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEC2ERKS0_
	movq	-128(%rbp), %rax        # 8-byte Reload
	addq	$32, %rax
.Ltmp515:
	leaq	-72(%rbp), %rdi
	movq	%rax, %rsi
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp516:
	jmp	.LBB274_1
.LBB274_1:                              # %invoke.cont
	movq	-128(%rbp), %rax        # 8-byte Reload
	addq	$64, %rax
.Ltmp518:
	leaq	-120(%rbp), %rdi
	movq	%rax, %rsi
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp519:
	jmp	.LBB274_2
.LBB274_2:                              # %invoke.cont5
.Ltmp521:
	leaq	-40(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	callq	_Z12block_matmulILi128EEv5TSpanILi2EfES1_S1_
.Ltmp522:
	jmp	.LBB274_3
.LBB274_3:                              # %invoke.cont7
	leaq	-120(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-72(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-40(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	addq	$128, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB274_4:                              # %lpad
	.cfi_def_cfa %rbp, 16
.Ltmp517:
	movl	%edx, %ecx
	movq	%rax, -80(%rbp)
	movl	%ecx, -84(%rbp)
	jmp	.LBB274_8
.LBB274_5:                              # %lpad4
.Ltmp520:
	movl	%edx, %ecx
	movq	%rax, -80(%rbp)
	movl	%ecx, -84(%rbp)
	jmp	.LBB274_7
.LBB274_6:                              # %lpad6
.Ltmp523:
	movl	%edx, %ecx
	movq	%rax, -80(%rbp)
	movl	%ecx, -84(%rbp)
	leaq	-120(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB274_7:                              # %ehcleanup
	leaq	-72(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB274_8:                              # %ehcleanup8
	leaq	-40(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
# %bb.9:                                # %eh.resume
	movq	-80(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end274:
	.size	_ZZ4mainENK3$_3clEv, .Lfunc_end274-_ZZ4mainENK3$_3clEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table274:
.Lexception39:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end39-.Lcst_begin39
.Lcst_begin39:
	.uleb128 .Lfunc_begin39-.Lfunc_begin39 # >> Call Site 1 <<
	.uleb128 .Ltmp515-.Lfunc_begin39 #   Call between .Lfunc_begin39 and .Ltmp515
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp515-.Lfunc_begin39 # >> Call Site 2 <<
	.uleb128 .Ltmp516-.Ltmp515      #   Call between .Ltmp515 and .Ltmp516
	.uleb128 .Ltmp517-.Lfunc_begin39 #     jumps to .Ltmp517
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp518-.Lfunc_begin39 # >> Call Site 3 <<
	.uleb128 .Ltmp519-.Ltmp518      #   Call between .Ltmp518 and .Ltmp519
	.uleb128 .Ltmp520-.Lfunc_begin39 #     jumps to .Ltmp520
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp521-.Lfunc_begin39 # >> Call Site 4 <<
	.uleb128 .Ltmp522-.Ltmp521      #   Call between .Ltmp521 and .Ltmp522
	.uleb128 .Ltmp523-.Lfunc_begin39 #     jumps to .Ltmp523
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp522-.Lfunc_begin39 # >> Call Site 5 <<
	.uleb128 .Lfunc_end274-.Ltmp522 #   Call between .Ltmp522 and .Lfunc_end274
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end39:
	.p2align	2
                                        # -- End function
	.section	.text._Z12block_matmulILi128EEv5TSpanILi2EfES1_S1_,"axG",@progbits,_Z12block_matmulILi128EEv5TSpanILi2EfES1_S1_,comdat
	.weak	_Z12block_matmulILi128EEv5TSpanILi2EfES1_S1_ # -- Begin function _Z12block_matmulILi128EEv5TSpanILi2EfES1_S1_
	.p2align	4, 0x90
	.type	_Z12block_matmulILi128EEv5TSpanILi2EfES1_S1_,@function
_Z12block_matmulILi128EEv5TSpanILi2EfES1_S1_: # @_Z12block_matmulILi128EEv5TSpanILi2EfES1_S1_
.Lfunc_begin40:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception40
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$992, %rsp              # imm = 0x3E0
	movq	8(%rdi), %rax
	movl	4(%rax), %ecx
	movq	8(%rsi), %rax
	cmpl	(%rax), %ecx
	movq	%rsi, -864(%rbp)        # 8-byte Spill
	movq	%rdi, -872(%rbp)        # 8-byte Spill
	movq	%rdx, -880(%rbp)        # 8-byte Spill
	jne	.LBB275_2
# %bb.1:                                # %cond.true
	jmp	.LBB275_3
.LBB275_2:                              # %cond.false
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$35, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi128EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB275_3:                              # %cond.end
	movq	-880(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	(%rcx), %edx
	movq	-872(%rbp), %rcx        # 8-byte Reload
	movq	8(%rcx), %rsi
	cmpl	(%rsi), %edx
	jne	.LBB275_5
# %bb.4:                                # %cond.true8
	jmp	.LBB275_6
.LBB275_5:                              # %cond.false9
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$36, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi128EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB275_6:                              # %cond.end10
	movq	-880(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	4(%rcx), %edx
	movq	-864(%rbp), %rcx        # 8-byte Reload
	movq	8(%rcx), %rsi
	cmpl	4(%rsi), %edx
	jne	.LBB275_8
# %bb.7:                                # %cond.true16
	jmp	.LBB275_9
.LBB275_8:                              # %cond.false17
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$37, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi128EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB275_9:                              # %cond.end18
	movq	-872(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	(%rcx), %eax
	cltd
	movl	$128, %esi
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB275_11
# %bb.10:                               # %cond.true22
	jmp	.LBB275_12
.LBB275_11:                             # %cond.false23
	movabsq	$.L.str.17, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$38, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi128EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB275_12:                             # %cond.end24
	movq	-872(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	4(%rcx), %eax
	cltd
	movl	$128, %esi
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB275_14
# %bb.13:                               # %cond.true29
	jmp	.LBB275_15
.LBB275_14:                             # %cond.false30
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$39, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi128EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB275_15:                             # %cond.end31
	movq	-864(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	(%rcx), %eax
	cltd
	movl	$128, %esi
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB275_17
# %bb.16:                               # %cond.true36
	jmp	.LBB275_18
.LBB275_17:                             # %cond.false37
	movabsq	$.L.str.19, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$40, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi128EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB275_18:                             # %cond.end38
	movq	-864(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	4(%rcx), %eax
	cltd
	movl	$128, %esi
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB275_20
# %bb.19:                               # %cond.true43
	jmp	.LBB275_21
.LBB275_20:                             # %cond.false44
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$41, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi128EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB275_21:                             # %cond.end45
	movq	-872(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	(%rcx), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$25, %esi
	addl	%esi, %edx
	sarl	$7, %edx
	movl	%edx, -8(%rbp)
	movq	8(%rax), %rcx
	movl	4(%rcx), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$25, %esi
	addl	%esi, %edx
	sarl	$7, %edx
	movl	%edx, -4(%rbp)
	movq	-864(%rbp), %rcx        # 8-byte Reload
	movq	8(%rcx), %rdi
	movl	(%rdi), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$25, %esi
	addl	%esi, %edx
	sarl	$7, %edx
	movl	%edx, -16(%rbp)
	movq	8(%rcx), %rdi
	movl	4(%rdi), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$25, %esi
	addl	%esi, %edx
	sarl	$7, %edx
	movl	%edx, -12(%rbp)
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	8(%rdi), %r8
	movl	(%r8), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$25, %esi
	addl	%esi, %edx
	sarl	$7, %edx
	movl	%edx, -24(%rbp)
	movq	8(%rdi), %r8
	movl	4(%r8), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$25, %esi
	addl	%esi, %edx
	sarl	$7, %edx
	movl	%edx, -20(%rbp)
	movl	$2, %edx
	movl	%edx, %r8d
	leaq	-104(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	movq	%r8, %rdx
	movq	%r8, -888(%rbp)         # 8-byte Spill
	callq	_ZN6TensorI5TSpanILi2EfEEC2EPKim
.Ltmp524:
	leaq	-184(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	movq	-888(%rbp), %rdx        # 8-byte Reload
	callq	_ZN6TensorI5TSpanILi2EfEEC2EPKim
.Ltmp525:
	jmp	.LBB275_22
.LBB275_22:                             # %invoke.cont
.Ltmp527:
	movl	$2, %eax
	movl	%eax, %edx
	leaq	-280(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZN6TensorI5TSpanILi2EfEEC2EPKim
.Ltmp528:
	jmp	.LBB275_23
.LBB275_23:                             # %invoke.cont70
.Ltmp530:
	leaq	-312(%rbp), %rdi
	leaq	-104(%rbp), %rsi
	callq	_ZN6TensorI5TSpanILi2EfEE8as_tspanILi2EEES0_IXT_ES1_Ev
.Ltmp531:
	jmp	.LBB275_24
.LBB275_24:                             # %invoke.cont72
.Ltmp533:
	leaq	-344(%rbp), %rdi
	leaq	-184(%rbp), %rsi
	callq	_ZN6TensorI5TSpanILi2EfEE8as_tspanILi2EEES0_IXT_ES1_Ev
.Ltmp534:
	jmp	.LBB275_25
.LBB275_25:                             # %invoke.cont74
.Ltmp536:
	leaq	-376(%rbp), %rdi
	leaq	-280(%rbp), %rsi
	callq	_ZN6TensorI5TSpanILi2EfEE8as_tspanILi2EEES0_IXT_ES1_Ev
.Ltmp537:
	jmp	.LBB275_26
.LBB275_26:                             # %invoke.cont76
	movl	$0, -380(%rbp)
	movl	$0, -384(%rbp)
.LBB275_27:                             # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB275_29 Depth 2
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	-380(%rbp), %eax
	leaq	-104(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -892(%rbp)        # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-892(%rbp), %edx        # 4-byte Reload
	cmpl	(%rax), %edx
	jge	.LBB275_50
# %bb.28:                               # %for.body
                                        #   in Loop: Header=BB275_27 Depth=1
	movl	$0, -388(%rbp)
	movl	$0, -392(%rbp)
.LBB275_29:                             # %for.cond79
                                        #   Parent Loop BB275_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movl	-388(%rbp), %eax
	leaq	-104(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -896(%rbp)        # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-896(%rbp), %edx        # 4-byte Reload
	cmpl	(%rax), %edx
	jge	.LBB275_48
# %bb.30:                               # %for.body83
                                        #   in Loop: Header=BB275_29 Depth=2
.Ltmp585:
	leaq	-456(%rbp), %rdi
	movq	-872(%rbp), %rsi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp586:
	jmp	.LBB275_31
.LBB275_31:                             # %invoke.cont85
                                        #   in Loop: Header=BB275_29 Depth=2
	movl	-392(%rbp), %edx
	movl	-384(%rbp), %ecx
.Ltmp588:
	leaq	-424(%rbp), %rdi
	leaq	-456(%rbp), %rsi
	movl	$128, %eax
	movl	%eax, %r8d
	movl	%eax, %r9d
	callq	_Z6submatIfE5TSpanILi2ET_ES2_iiii
.Ltmp589:
	jmp	.LBB275_32
.LBB275_32:                             # %invoke.cont87
                                        #   in Loop: Header=BB275_29 Depth=2
	movl	-380(%rbp), %edx
.Ltmp591:
	leaq	-488(%rbp), %rdi
	leaq	-312(%rbp), %rsi
	callq	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
.Ltmp592:
	jmp	.LBB275_33
.LBB275_33:                             # %invoke.cont90
                                        #   in Loop: Header=BB275_29 Depth=2
	movl	-388(%rbp), %esi
.Ltmp594:
	leaq	-488(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
.Ltmp595:
	movq	%rax, -904(%rbp)        # 8-byte Spill
	jmp	.LBB275_34
.LBB275_34:                             # %invoke.cont92
                                        #   in Loop: Header=BB275_29 Depth=2
.Ltmp596:
	leaq	-424(%rbp), %rsi
	movq	-904(%rbp), %rdi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEaSEOS0_
.Ltmp597:
	movq	%rax, -912(%rbp)        # 8-byte Spill
	jmp	.LBB275_35
.LBB275_35:                             # %invoke.cont94
                                        #   in Loop: Header=BB275_29 Depth=2
	leaq	-488(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
	leaq	-424(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-456(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
# %bb.36:                               # %for.inc
                                        #   in Loop: Header=BB275_29 Depth=2
	movl	-388(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -388(%rbp)
	movl	-392(%rbp), %eax
	addl	$128, %eax
	movl	%eax, -392(%rbp)
	jmp	.LBB275_29
.LBB275_37:                             # %lpad
.Ltmp526:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB275_119
.LBB275_38:                             # %lpad69
.Ltmp529:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB275_118
.LBB275_39:                             # %lpad71
.Ltmp532:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB275_117
.LBB275_40:                             # %lpad73
.Ltmp535:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB275_116
.LBB275_41:                             # %lpad75
.Ltmp538:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB275_115
.LBB275_42:                             # %lpad84
.Ltmp587:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB275_114
.LBB275_43:                             # %lpad86
.Ltmp590:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB275_47
.LBB275_44:                             # %lpad89
.Ltmp593:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB275_46
.LBB275_45:                             # %lpad91
.Ltmp598:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	leaq	-488(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
.LBB275_46:                             # %ehcleanup
	leaq	-424(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB275_47:                             # %ehcleanup96
	leaq	-456(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	jmp	.LBB275_114
.LBB275_48:                             # %for.end
                                        #   in Loop: Header=BB275_27 Depth=1
	jmp	.LBB275_49
.LBB275_49:                             # %for.inc97
                                        #   in Loop: Header=BB275_27 Depth=1
	movl	-380(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -380(%rbp)
	movl	-384(%rbp), %eax
	addl	$128, %eax
	movl	%eax, -384(%rbp)
	jmp	.LBB275_27
.LBB275_50:                             # %for.end100
	movl	$0, -492(%rbp)
	movl	$0, -496(%rbp)
.LBB275_51:                             # %for.cond103
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB275_53 Depth 2
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	-492(%rbp), %eax
	leaq	-184(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -916(%rbp)        # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-916(%rbp), %edx        # 4-byte Reload
	cmpl	(%rax), %edx
	jge	.LBB275_68
# %bb.52:                               # %for.body107
                                        #   in Loop: Header=BB275_51 Depth=1
	movl	$0, -500(%rbp)
	movl	$0, -504(%rbp)
.LBB275_53:                             # %for.cond110
                                        #   Parent Loop BB275_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movl	-500(%rbp), %eax
	leaq	-184(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -920(%rbp)        # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-920(%rbp), %edx        # 4-byte Reload
	cmpl	(%rax), %edx
	jge	.LBB275_66
# %bb.54:                               # %for.body114
                                        #   in Loop: Header=BB275_53 Depth=2
.Ltmp572:
	leaq	-568(%rbp), %rdi
	movq	-864(%rbp), %rsi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp573:
	jmp	.LBB275_55
.LBB275_55:                             # %invoke.cont117
                                        #   in Loop: Header=BB275_53 Depth=2
	movl	-504(%rbp), %edx
	movl	-496(%rbp), %ecx
.Ltmp574:
	leaq	-536(%rbp), %rdi
	leaq	-568(%rbp), %rsi
	movl	$128, %eax
	movl	%eax, %r8d
	movl	%eax, %r9d
	callq	_Z6submatIfE5TSpanILi2ET_ES2_iiii
.Ltmp575:
	jmp	.LBB275_56
.LBB275_56:                             # %invoke.cont119
                                        #   in Loop: Header=BB275_53 Depth=2
	movl	-492(%rbp), %edx
.Ltmp577:
	leaq	-600(%rbp), %rdi
	leaq	-344(%rbp), %rsi
	callq	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
.Ltmp578:
	jmp	.LBB275_57
.LBB275_57:                             # %invoke.cont122
                                        #   in Loop: Header=BB275_53 Depth=2
	movl	-500(%rbp), %esi
.Ltmp580:
	leaq	-600(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
.Ltmp581:
	movq	%rax, -928(%rbp)        # 8-byte Spill
	jmp	.LBB275_58
.LBB275_58:                             # %invoke.cont124
                                        #   in Loop: Header=BB275_53 Depth=2
.Ltmp582:
	leaq	-536(%rbp), %rsi
	movq	-928(%rbp), %rdi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEaSEOS0_
.Ltmp583:
	movq	%rax, -936(%rbp)        # 8-byte Spill
	jmp	.LBB275_59
.LBB275_59:                             # %invoke.cont126
                                        #   in Loop: Header=BB275_53 Depth=2
	leaq	-600(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
	leaq	-536(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-568(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
# %bb.60:                               # %for.inc131
                                        #   in Loop: Header=BB275_53 Depth=2
	movl	-500(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -500(%rbp)
	movl	-504(%rbp), %eax
	addl	$128, %eax
	movl	%eax, -504(%rbp)
	jmp	.LBB275_53
.LBB275_61:                             # %lpad118
.Ltmp576:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB275_65
.LBB275_62:                             # %lpad121
.Ltmp579:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB275_64
.LBB275_63:                             # %lpad123
.Ltmp584:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	leaq	-600(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
.LBB275_64:                             # %ehcleanup129
	leaq	-536(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB275_65:                             # %ehcleanup130
	leaq	-568(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	jmp	.LBB275_114
.LBB275_66:                             # %for.end134
                                        #   in Loop: Header=BB275_51 Depth=1
	jmp	.LBB275_67
.LBB275_67:                             # %for.inc135
                                        #   in Loop: Header=BB275_51 Depth=1
	movl	-492(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -492(%rbp)
	movl	-496(%rbp), %eax
	addl	$128, %eax
	movl	%eax, -496(%rbp)
	jmp	.LBB275_51
.LBB275_68:                             # %for.end138
	movl	$0, -604(%rbp)
	movl	$0, -608(%rbp)
.LBB275_69:                             # %for.cond141
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB275_71 Depth 2
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	-604(%rbp), %eax
	leaq	-280(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -940(%rbp)        # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-940(%rbp), %edx        # 4-byte Reload
	cmpl	(%rax), %edx
	jge	.LBB275_86
# %bb.70:                               # %for.body145
                                        #   in Loop: Header=BB275_69 Depth=1
	movl	$0, -612(%rbp)
	movl	$0, -616(%rbp)
.LBB275_71:                             # %for.cond148
                                        #   Parent Loop BB275_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movl	-612(%rbp), %eax
	leaq	-280(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -944(%rbp)        # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-944(%rbp), %edx        # 4-byte Reload
	cmpl	(%rax), %edx
	jge	.LBB275_84
# %bb.72:                               # %for.body152
                                        #   in Loop: Header=BB275_71 Depth=2
.Ltmp559:
	leaq	-680(%rbp), %rdi
	movq	-880(%rbp), %rsi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp560:
	jmp	.LBB275_73
.LBB275_73:                             # %invoke.cont155
                                        #   in Loop: Header=BB275_71 Depth=2
	movl	-616(%rbp), %edx
	movl	-608(%rbp), %ecx
.Ltmp561:
	leaq	-648(%rbp), %rdi
	leaq	-680(%rbp), %rsi
	movl	$128, %eax
	movl	%eax, %r8d
	movl	%eax, %r9d
	callq	_Z6submatIfE5TSpanILi2ET_ES2_iiii
.Ltmp562:
	jmp	.LBB275_74
.LBB275_74:                             # %invoke.cont157
                                        #   in Loop: Header=BB275_71 Depth=2
	movl	-604(%rbp), %edx
.Ltmp564:
	leaq	-712(%rbp), %rdi
	leaq	-376(%rbp), %rsi
	callq	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
.Ltmp565:
	jmp	.LBB275_75
.LBB275_75:                             # %invoke.cont160
                                        #   in Loop: Header=BB275_71 Depth=2
	movl	-612(%rbp), %esi
.Ltmp567:
	leaq	-712(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
.Ltmp568:
	movq	%rax, -952(%rbp)        # 8-byte Spill
	jmp	.LBB275_76
.LBB275_76:                             # %invoke.cont162
                                        #   in Loop: Header=BB275_71 Depth=2
.Ltmp569:
	leaq	-648(%rbp), %rsi
	movq	-952(%rbp), %rdi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEaSEOS0_
.Ltmp570:
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB275_77
.LBB275_77:                             # %invoke.cont164
                                        #   in Loop: Header=BB275_71 Depth=2
	leaq	-712(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
	leaq	-648(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-680(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
# %bb.78:                               # %for.inc169
                                        #   in Loop: Header=BB275_71 Depth=2
	movl	-612(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -612(%rbp)
	movl	-616(%rbp), %eax
	addl	$128, %eax
	movl	%eax, -616(%rbp)
	jmp	.LBB275_71
.LBB275_79:                             # %lpad156
.Ltmp563:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB275_83
.LBB275_80:                             # %lpad159
.Ltmp566:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB275_82
.LBB275_81:                             # %lpad161
.Ltmp571:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	leaq	-712(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
.LBB275_82:                             # %ehcleanup167
	leaq	-648(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB275_83:                             # %ehcleanup168
	leaq	-680(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	jmp	.LBB275_114
.LBB275_84:                             # %for.end172
                                        #   in Loop: Header=BB275_69 Depth=1
	jmp	.LBB275_85
.LBB275_85:                             # %for.inc173
                                        #   in Loop: Header=BB275_69 Depth=1
	movl	-604(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -604(%rbp)
	movl	-608(%rbp), %eax
	addl	$128, %eax
	movl	%eax, -608(%rbp)
	jmp	.LBB275_69
.LBB275_86:                             # %for.end176
	movl	$0, -716(%rbp)
.LBB275_87:                             # %for.cond178
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB275_89 Depth 2
                                        #       Child Loop BB275_91 Depth 3
	movl	-716(%rbp), %eax
	movq	-368(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB275_113
# %bb.88:                               # %for.body182
                                        #   in Loop: Header=BB275_87 Depth=1
	movl	$0, -720(%rbp)
.LBB275_89:                             # %for.cond184
                                        #   Parent Loop BB275_87 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB275_91 Depth 3
	movl	-720(%rbp), %eax
	movq	-368(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB275_111
# %bb.90:                               # %for.body188
                                        #   in Loop: Header=BB275_89 Depth=2
	movl	$0, -724(%rbp)
.LBB275_91:                             # %for.cond189
                                        #   Parent Loop BB275_87 Depth=1
                                        #     Parent Loop BB275_89 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-724(%rbp), %eax
	movq	-304(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB275_109
# %bb.92:                               # %for.body193
                                        #   in Loop: Header=BB275_91 Depth=3
	movl	-716(%rbp), %edx
.Ltmp539:
	leaq	-760(%rbp), %rdi
	leaq	-312(%rbp), %rsi
	callq	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
.Ltmp540:
	jmp	.LBB275_93
.LBB275_93:                             # %invoke.cont195
                                        #   in Loop: Header=BB275_91 Depth=3
	movl	-724(%rbp), %esi
.Ltmp541:
	leaq	-760(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
.Ltmp542:
	movq	%rax, -968(%rbp)        # 8-byte Spill
	jmp	.LBB275_94
.LBB275_94:                             # %invoke.cont197
                                        #   in Loop: Header=BB275_91 Depth=3
	movl	-724(%rbp), %edx
.Ltmp543:
	leaq	-792(%rbp), %rdi
	leaq	-344(%rbp), %rsi
	callq	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
.Ltmp544:
	jmp	.LBB275_95
.LBB275_95:                             # %invoke.cont200
                                        #   in Loop: Header=BB275_91 Depth=3
	movl	-720(%rbp), %esi
.Ltmp546:
	leaq	-792(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
.Ltmp547:
	movq	%rax, -976(%rbp)        # 8-byte Spill
	jmp	.LBB275_96
.LBB275_96:                             # %invoke.cont202
                                        #   in Loop: Header=BB275_91 Depth=3
	movl	-716(%rbp), %edx
.Ltmp548:
	leaq	-856(%rbp), %rdi
	leaq	-376(%rbp), %rsi
	callq	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
.Ltmp549:
	jmp	.LBB275_97
.LBB275_97:                             # %invoke.cont206
                                        #   in Loop: Header=BB275_91 Depth=3
	movl	-720(%rbp), %esi
.Ltmp551:
	leaq	-856(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
.Ltmp552:
	movq	%rax, -984(%rbp)        # 8-byte Spill
	jmp	.LBB275_98
.LBB275_98:                             # %invoke.cont208
                                        #   in Loop: Header=BB275_91 Depth=3
.Ltmp553:
	leaq	-824(%rbp), %rdi
	movq	-984(%rbp), %rsi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp554:
	jmp	.LBB275_99
.LBB275_99:                             # %invoke.cont210
                                        #   in Loop: Header=BB275_91 Depth=3
.Ltmp556:
	leaq	-824(%rbp), %rdx
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movq	-976(%rbp), %rsi        # 8-byte Reload
	callq	_Z9tensormulILi2ELi2EfENSt9enable_ifIXgtT_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ES3_IXmiplT_T0_Li2EES4_E
.Ltmp557:
	jmp	.LBB275_100
.LBB275_100:                            # %invoke.cont212
                                        #   in Loop: Header=BB275_91 Depth=3
	leaq	-824(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-856(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
	leaq	-792(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
	leaq	-760(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
# %bb.101:                              # %for.inc217
                                        #   in Loop: Header=BB275_91 Depth=3
	movl	-724(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -724(%rbp)
	jmp	.LBB275_91
.LBB275_102:                            # %lpad196
.Ltmp545:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB275_108
.LBB275_103:                            # %lpad201
.Ltmp550:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB275_107
.LBB275_104:                            # %lpad207
.Ltmp555:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB275_106
.LBB275_105:                            # %lpad211
.Ltmp558:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	leaq	-824(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB275_106:                            # %ehcleanup214
	leaq	-856(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
.LBB275_107:                            # %ehcleanup215
	leaq	-792(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
.LBB275_108:                            # %ehcleanup216
	leaq	-760(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
	jmp	.LBB275_114
.LBB275_109:                            # %for.end219
                                        #   in Loop: Header=BB275_89 Depth=2
	jmp	.LBB275_110
.LBB275_110:                            # %for.inc220
                                        #   in Loop: Header=BB275_89 Depth=2
	movl	-720(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -720(%rbp)
	jmp	.LBB275_89
.LBB275_111:                            # %for.end222
                                        #   in Loop: Header=BB275_87 Depth=1
	jmp	.LBB275_112
.LBB275_112:                            # %for.inc223
                                        #   in Loop: Header=BB275_87 Depth=1
	movl	-716(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -716(%rbp)
	jmp	.LBB275_87
.LBB275_113:                            # %for.end225
	leaq	-376(%rbp), %rdi
	callq	_ZN5TSpanILi2ES_ILi2EfEED2Ev
	leaq	-344(%rbp), %rdi
	callq	_ZN5TSpanILi2ES_ILi2EfEED2Ev
	leaq	-312(%rbp), %rdi
	callq	_ZN5TSpanILi2ES_ILi2EfEED2Ev
	leaq	-280(%rbp), %rdi
	callq	_ZN6TensorI5TSpanILi2EfEED2Ev
	leaq	-184(%rbp), %rdi
	callq	_ZN6TensorI5TSpanILi2EfEED2Ev
	leaq	-104(%rbp), %rdi
	callq	_ZN6TensorI5TSpanILi2EfEED2Ev
	addq	$992, %rsp              # imm = 0x3E0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB275_114:                            # %ehcleanup226
	.cfi_def_cfa %rbp, 16
	leaq	-376(%rbp), %rdi
	callq	_ZN5TSpanILi2ES_ILi2EfEED2Ev
.LBB275_115:                            # %ehcleanup227
	leaq	-344(%rbp), %rdi
	callq	_ZN5TSpanILi2ES_ILi2EfEED2Ev
.LBB275_116:                            # %ehcleanup228
	leaq	-312(%rbp), %rdi
	callq	_ZN5TSpanILi2ES_ILi2EfEED2Ev
.LBB275_117:                            # %ehcleanup229
	leaq	-280(%rbp), %rdi
	callq	_ZN6TensorI5TSpanILi2EfEED2Ev
.LBB275_118:                            # %ehcleanup230
	leaq	-184(%rbp), %rdi
	callq	_ZN6TensorI5TSpanILi2EfEED2Ev
.LBB275_119:                            # %ehcleanup231
	leaq	-104(%rbp), %rdi
	callq	_ZN6TensorI5TSpanILi2EfEED2Ev
# %bb.120:                              # %eh.resume
	movq	-192(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end275:
	.size	_Z12block_matmulILi128EEv5TSpanILi2EfES1_S1_, .Lfunc_end275-_Z12block_matmulILi128EEv5TSpanILi2EfES1_S1_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table275:
.Lexception40:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end40-.Lcst_begin40
.Lcst_begin40:
	.uleb128 .Lfunc_begin40-.Lfunc_begin40 # >> Call Site 1 <<
	.uleb128 .Ltmp524-.Lfunc_begin40 #   Call between .Lfunc_begin40 and .Ltmp524
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp524-.Lfunc_begin40 # >> Call Site 2 <<
	.uleb128 .Ltmp525-.Ltmp524      #   Call between .Ltmp524 and .Ltmp525
	.uleb128 .Ltmp526-.Lfunc_begin40 #     jumps to .Ltmp526
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp527-.Lfunc_begin40 # >> Call Site 3 <<
	.uleb128 .Ltmp528-.Ltmp527      #   Call between .Ltmp527 and .Ltmp528
	.uleb128 .Ltmp529-.Lfunc_begin40 #     jumps to .Ltmp529
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp530-.Lfunc_begin40 # >> Call Site 4 <<
	.uleb128 .Ltmp531-.Ltmp530      #   Call between .Ltmp530 and .Ltmp531
	.uleb128 .Ltmp532-.Lfunc_begin40 #     jumps to .Ltmp532
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp533-.Lfunc_begin40 # >> Call Site 5 <<
	.uleb128 .Ltmp534-.Ltmp533      #   Call between .Ltmp533 and .Ltmp534
	.uleb128 .Ltmp535-.Lfunc_begin40 #     jumps to .Ltmp535
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp536-.Lfunc_begin40 # >> Call Site 6 <<
	.uleb128 .Ltmp537-.Ltmp536      #   Call between .Ltmp536 and .Ltmp537
	.uleb128 .Ltmp538-.Lfunc_begin40 #     jumps to .Ltmp538
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp585-.Lfunc_begin40 # >> Call Site 7 <<
	.uleb128 .Ltmp586-.Ltmp585      #   Call between .Ltmp585 and .Ltmp586
	.uleb128 .Ltmp587-.Lfunc_begin40 #     jumps to .Ltmp587
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp588-.Lfunc_begin40 # >> Call Site 8 <<
	.uleb128 .Ltmp589-.Ltmp588      #   Call between .Ltmp588 and .Ltmp589
	.uleb128 .Ltmp590-.Lfunc_begin40 #     jumps to .Ltmp590
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp591-.Lfunc_begin40 # >> Call Site 9 <<
	.uleb128 .Ltmp592-.Ltmp591      #   Call between .Ltmp591 and .Ltmp592
	.uleb128 .Ltmp593-.Lfunc_begin40 #     jumps to .Ltmp593
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp594-.Lfunc_begin40 # >> Call Site 10 <<
	.uleb128 .Ltmp597-.Ltmp594      #   Call between .Ltmp594 and .Ltmp597
	.uleb128 .Ltmp598-.Lfunc_begin40 #     jumps to .Ltmp598
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp572-.Lfunc_begin40 # >> Call Site 11 <<
	.uleb128 .Ltmp573-.Ltmp572      #   Call between .Ltmp572 and .Ltmp573
	.uleb128 .Ltmp587-.Lfunc_begin40 #     jumps to .Ltmp587
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp574-.Lfunc_begin40 # >> Call Site 12 <<
	.uleb128 .Ltmp575-.Ltmp574      #   Call between .Ltmp574 and .Ltmp575
	.uleb128 .Ltmp576-.Lfunc_begin40 #     jumps to .Ltmp576
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp577-.Lfunc_begin40 # >> Call Site 13 <<
	.uleb128 .Ltmp578-.Ltmp577      #   Call between .Ltmp577 and .Ltmp578
	.uleb128 .Ltmp579-.Lfunc_begin40 #     jumps to .Ltmp579
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp580-.Lfunc_begin40 # >> Call Site 14 <<
	.uleb128 .Ltmp583-.Ltmp580      #   Call between .Ltmp580 and .Ltmp583
	.uleb128 .Ltmp584-.Lfunc_begin40 #     jumps to .Ltmp584
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp559-.Lfunc_begin40 # >> Call Site 15 <<
	.uleb128 .Ltmp560-.Ltmp559      #   Call between .Ltmp559 and .Ltmp560
	.uleb128 .Ltmp587-.Lfunc_begin40 #     jumps to .Ltmp587
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp561-.Lfunc_begin40 # >> Call Site 16 <<
	.uleb128 .Ltmp562-.Ltmp561      #   Call between .Ltmp561 and .Ltmp562
	.uleb128 .Ltmp563-.Lfunc_begin40 #     jumps to .Ltmp563
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp564-.Lfunc_begin40 # >> Call Site 17 <<
	.uleb128 .Ltmp565-.Ltmp564      #   Call between .Ltmp564 and .Ltmp565
	.uleb128 .Ltmp566-.Lfunc_begin40 #     jumps to .Ltmp566
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp567-.Lfunc_begin40 # >> Call Site 18 <<
	.uleb128 .Ltmp570-.Ltmp567      #   Call between .Ltmp567 and .Ltmp570
	.uleb128 .Ltmp571-.Lfunc_begin40 #     jumps to .Ltmp571
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp539-.Lfunc_begin40 # >> Call Site 19 <<
	.uleb128 .Ltmp540-.Ltmp539      #   Call between .Ltmp539 and .Ltmp540
	.uleb128 .Ltmp587-.Lfunc_begin40 #     jumps to .Ltmp587
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp541-.Lfunc_begin40 # >> Call Site 20 <<
	.uleb128 .Ltmp544-.Ltmp541      #   Call between .Ltmp541 and .Ltmp544
	.uleb128 .Ltmp545-.Lfunc_begin40 #     jumps to .Ltmp545
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp546-.Lfunc_begin40 # >> Call Site 21 <<
	.uleb128 .Ltmp549-.Ltmp546      #   Call between .Ltmp546 and .Ltmp549
	.uleb128 .Ltmp550-.Lfunc_begin40 #     jumps to .Ltmp550
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp551-.Lfunc_begin40 # >> Call Site 22 <<
	.uleb128 .Ltmp554-.Ltmp551      #   Call between .Ltmp551 and .Ltmp554
	.uleb128 .Ltmp555-.Lfunc_begin40 #     jumps to .Ltmp555
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp556-.Lfunc_begin40 # >> Call Site 23 <<
	.uleb128 .Ltmp557-.Ltmp556      #   Call between .Ltmp556 and .Ltmp557
	.uleb128 .Ltmp558-.Lfunc_begin40 #     jumps to .Ltmp558
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp557-.Lfunc_begin40 # >> Call Site 24 <<
	.uleb128 .Lfunc_end275-.Ltmp557 #   Call between .Ltmp557 and .Lfunc_end275
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end40:
	.p2align	2
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function _ZZ4mainENK3$_4clEv
	.type	_ZZ4mainENK3$_4clEv,@function
_ZZ4mainENK3$_4clEv:                    # @"_ZZ4mainENK3$_4clEv"
.Lfunc_begin41:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception41
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	-40(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-128(%rbp), %rsi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEC2ERKS0_
	movq	-128(%rbp), %rax        # 8-byte Reload
	addq	$32, %rax
.Ltmp599:
	leaq	-72(%rbp), %rdi
	movq	%rax, %rsi
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp600:
	jmp	.LBB276_1
.LBB276_1:                              # %invoke.cont
	movq	-128(%rbp), %rax        # 8-byte Reload
	addq	$64, %rax
.Ltmp602:
	leaq	-120(%rbp), %rdi
	movq	%rax, %rsi
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp603:
	jmp	.LBB276_2
.LBB276_2:                              # %invoke.cont5
.Ltmp605:
	leaq	-40(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	callq	_Z12block_matmulILi64EEv5TSpanILi2EfES1_S1_
.Ltmp606:
	jmp	.LBB276_3
.LBB276_3:                              # %invoke.cont7
	leaq	-120(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-72(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-40(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	addq	$128, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB276_4:                              # %lpad
	.cfi_def_cfa %rbp, 16
.Ltmp601:
	movl	%edx, %ecx
	movq	%rax, -80(%rbp)
	movl	%ecx, -84(%rbp)
	jmp	.LBB276_8
.LBB276_5:                              # %lpad4
.Ltmp604:
	movl	%edx, %ecx
	movq	%rax, -80(%rbp)
	movl	%ecx, -84(%rbp)
	jmp	.LBB276_7
.LBB276_6:                              # %lpad6
.Ltmp607:
	movl	%edx, %ecx
	movq	%rax, -80(%rbp)
	movl	%ecx, -84(%rbp)
	leaq	-120(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB276_7:                              # %ehcleanup
	leaq	-72(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB276_8:                              # %ehcleanup8
	leaq	-40(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
# %bb.9:                                # %eh.resume
	movq	-80(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end276:
	.size	_ZZ4mainENK3$_4clEv, .Lfunc_end276-_ZZ4mainENK3$_4clEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table276:
.Lexception41:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end41-.Lcst_begin41
.Lcst_begin41:
	.uleb128 .Lfunc_begin41-.Lfunc_begin41 # >> Call Site 1 <<
	.uleb128 .Ltmp599-.Lfunc_begin41 #   Call between .Lfunc_begin41 and .Ltmp599
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp599-.Lfunc_begin41 # >> Call Site 2 <<
	.uleb128 .Ltmp600-.Ltmp599      #   Call between .Ltmp599 and .Ltmp600
	.uleb128 .Ltmp601-.Lfunc_begin41 #     jumps to .Ltmp601
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp602-.Lfunc_begin41 # >> Call Site 3 <<
	.uleb128 .Ltmp603-.Ltmp602      #   Call between .Ltmp602 and .Ltmp603
	.uleb128 .Ltmp604-.Lfunc_begin41 #     jumps to .Ltmp604
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp605-.Lfunc_begin41 # >> Call Site 4 <<
	.uleb128 .Ltmp606-.Ltmp605      #   Call between .Ltmp605 and .Ltmp606
	.uleb128 .Ltmp607-.Lfunc_begin41 #     jumps to .Ltmp607
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp606-.Lfunc_begin41 # >> Call Site 5 <<
	.uleb128 .Lfunc_end276-.Ltmp606 #   Call between .Ltmp606 and .Lfunc_end276
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end41:
	.p2align	2
                                        # -- End function
	.section	.text._Z12block_matmulILi64EEv5TSpanILi2EfES1_S1_,"axG",@progbits,_Z12block_matmulILi64EEv5TSpanILi2EfES1_S1_,comdat
	.weak	_Z12block_matmulILi64EEv5TSpanILi2EfES1_S1_ # -- Begin function _Z12block_matmulILi64EEv5TSpanILi2EfES1_S1_
	.p2align	4, 0x90
	.type	_Z12block_matmulILi64EEv5TSpanILi2EfES1_S1_,@function
_Z12block_matmulILi64EEv5TSpanILi2EfES1_S1_: # @_Z12block_matmulILi64EEv5TSpanILi2EfES1_S1_
.Lfunc_begin42:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception42
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$992, %rsp              # imm = 0x3E0
	movq	8(%rdi), %rax
	movl	4(%rax), %ecx
	movq	8(%rsi), %rax
	cmpl	(%rax), %ecx
	movq	%rsi, -864(%rbp)        # 8-byte Spill
	movq	%rdi, -872(%rbp)        # 8-byte Spill
	movq	%rdx, -880(%rbp)        # 8-byte Spill
	jne	.LBB277_2
# %bb.1:                                # %cond.true
	jmp	.LBB277_3
.LBB277_2:                              # %cond.false
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$35, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi64EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB277_3:                              # %cond.end
	movq	-880(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	(%rcx), %edx
	movq	-872(%rbp), %rcx        # 8-byte Reload
	movq	8(%rcx), %rsi
	cmpl	(%rsi), %edx
	jne	.LBB277_5
# %bb.4:                                # %cond.true8
	jmp	.LBB277_6
.LBB277_5:                              # %cond.false9
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$36, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi64EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB277_6:                              # %cond.end10
	movq	-880(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	4(%rcx), %edx
	movq	-864(%rbp), %rcx        # 8-byte Reload
	movq	8(%rcx), %rsi
	cmpl	4(%rsi), %edx
	jne	.LBB277_8
# %bb.7:                                # %cond.true16
	jmp	.LBB277_9
.LBB277_8:                              # %cond.false17
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$37, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi64EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB277_9:                              # %cond.end18
	movq	-872(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	(%rcx), %eax
	cltd
	movl	$64, %esi
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB277_11
# %bb.10:                               # %cond.true22
	jmp	.LBB277_12
.LBB277_11:                             # %cond.false23
	movabsq	$.L.str.17, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$38, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi64EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB277_12:                             # %cond.end24
	movq	-872(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	4(%rcx), %eax
	cltd
	movl	$64, %esi
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB277_14
# %bb.13:                               # %cond.true29
	jmp	.LBB277_15
.LBB277_14:                             # %cond.false30
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$39, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi64EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB277_15:                             # %cond.end31
	movq	-864(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	(%rcx), %eax
	cltd
	movl	$64, %esi
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB277_17
# %bb.16:                               # %cond.true36
	jmp	.LBB277_18
.LBB277_17:                             # %cond.false37
	movabsq	$.L.str.19, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$40, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi64EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB277_18:                             # %cond.end38
	movq	-864(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	4(%rcx), %eax
	cltd
	movl	$64, %esi
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB277_20
# %bb.19:                               # %cond.true43
	jmp	.LBB277_21
.LBB277_20:                             # %cond.false44
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$41, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi64EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB277_21:                             # %cond.end45
	movq	-872(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	(%rcx), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$26, %esi
	addl	%esi, %edx
	sarl	$6, %edx
	movl	%edx, -8(%rbp)
	movq	8(%rax), %rcx
	movl	4(%rcx), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$26, %esi
	addl	%esi, %edx
	sarl	$6, %edx
	movl	%edx, -4(%rbp)
	movq	-864(%rbp), %rcx        # 8-byte Reload
	movq	8(%rcx), %rdi
	movl	(%rdi), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$26, %esi
	addl	%esi, %edx
	sarl	$6, %edx
	movl	%edx, -16(%rbp)
	movq	8(%rcx), %rdi
	movl	4(%rdi), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$26, %esi
	addl	%esi, %edx
	sarl	$6, %edx
	movl	%edx, -12(%rbp)
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	8(%rdi), %r8
	movl	(%r8), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$26, %esi
	addl	%esi, %edx
	sarl	$6, %edx
	movl	%edx, -24(%rbp)
	movq	8(%rdi), %r8
	movl	4(%r8), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$26, %esi
	addl	%esi, %edx
	sarl	$6, %edx
	movl	%edx, -20(%rbp)
	movl	$2, %edx
	movl	%edx, %r8d
	leaq	-104(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	movq	%r8, %rdx
	movq	%r8, -888(%rbp)         # 8-byte Spill
	callq	_ZN6TensorI5TSpanILi2EfEEC2EPKim
.Ltmp608:
	leaq	-184(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	movq	-888(%rbp), %rdx        # 8-byte Reload
	callq	_ZN6TensorI5TSpanILi2EfEEC2EPKim
.Ltmp609:
	jmp	.LBB277_22
.LBB277_22:                             # %invoke.cont
.Ltmp611:
	movl	$2, %eax
	movl	%eax, %edx
	leaq	-280(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZN6TensorI5TSpanILi2EfEEC2EPKim
.Ltmp612:
	jmp	.LBB277_23
.LBB277_23:                             # %invoke.cont70
.Ltmp614:
	leaq	-312(%rbp), %rdi
	leaq	-104(%rbp), %rsi
	callq	_ZN6TensorI5TSpanILi2EfEE8as_tspanILi2EEES0_IXT_ES1_Ev
.Ltmp615:
	jmp	.LBB277_24
.LBB277_24:                             # %invoke.cont72
.Ltmp617:
	leaq	-344(%rbp), %rdi
	leaq	-184(%rbp), %rsi
	callq	_ZN6TensorI5TSpanILi2EfEE8as_tspanILi2EEES0_IXT_ES1_Ev
.Ltmp618:
	jmp	.LBB277_25
.LBB277_25:                             # %invoke.cont74
.Ltmp620:
	leaq	-376(%rbp), %rdi
	leaq	-280(%rbp), %rsi
	callq	_ZN6TensorI5TSpanILi2EfEE8as_tspanILi2EEES0_IXT_ES1_Ev
.Ltmp621:
	jmp	.LBB277_26
.LBB277_26:                             # %invoke.cont76
	movl	$0, -380(%rbp)
	movl	$0, -384(%rbp)
.LBB277_27:                             # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB277_29 Depth 2
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	-380(%rbp), %eax
	leaq	-104(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -892(%rbp)        # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-892(%rbp), %edx        # 4-byte Reload
	cmpl	(%rax), %edx
	jge	.LBB277_50
# %bb.28:                               # %for.body
                                        #   in Loop: Header=BB277_27 Depth=1
	movl	$0, -388(%rbp)
	movl	$0, -392(%rbp)
.LBB277_29:                             # %for.cond79
                                        #   Parent Loop BB277_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movl	-388(%rbp), %eax
	leaq	-104(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -896(%rbp)        # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-896(%rbp), %edx        # 4-byte Reload
	cmpl	(%rax), %edx
	jge	.LBB277_48
# %bb.30:                               # %for.body83
                                        #   in Loop: Header=BB277_29 Depth=2
.Ltmp669:
	leaq	-456(%rbp), %rdi
	movq	-872(%rbp), %rsi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp670:
	jmp	.LBB277_31
.LBB277_31:                             # %invoke.cont85
                                        #   in Loop: Header=BB277_29 Depth=2
	movl	-392(%rbp), %edx
	movl	-384(%rbp), %ecx
.Ltmp672:
	leaq	-424(%rbp), %rdi
	leaq	-456(%rbp), %rsi
	movl	$64, %eax
	movl	%eax, %r8d
	movl	%eax, %r9d
	callq	_Z6submatIfE5TSpanILi2ET_ES2_iiii
.Ltmp673:
	jmp	.LBB277_32
.LBB277_32:                             # %invoke.cont87
                                        #   in Loop: Header=BB277_29 Depth=2
	movl	-380(%rbp), %edx
.Ltmp675:
	leaq	-488(%rbp), %rdi
	leaq	-312(%rbp), %rsi
	callq	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
.Ltmp676:
	jmp	.LBB277_33
.LBB277_33:                             # %invoke.cont90
                                        #   in Loop: Header=BB277_29 Depth=2
	movl	-388(%rbp), %esi
.Ltmp678:
	leaq	-488(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
.Ltmp679:
	movq	%rax, -904(%rbp)        # 8-byte Spill
	jmp	.LBB277_34
.LBB277_34:                             # %invoke.cont92
                                        #   in Loop: Header=BB277_29 Depth=2
.Ltmp680:
	leaq	-424(%rbp), %rsi
	movq	-904(%rbp), %rdi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEaSEOS0_
.Ltmp681:
	movq	%rax, -912(%rbp)        # 8-byte Spill
	jmp	.LBB277_35
.LBB277_35:                             # %invoke.cont94
                                        #   in Loop: Header=BB277_29 Depth=2
	leaq	-488(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
	leaq	-424(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-456(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
# %bb.36:                               # %for.inc
                                        #   in Loop: Header=BB277_29 Depth=2
	movl	-388(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -388(%rbp)
	movl	-392(%rbp), %eax
	addl	$64, %eax
	movl	%eax, -392(%rbp)
	jmp	.LBB277_29
.LBB277_37:                             # %lpad
.Ltmp610:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB277_119
.LBB277_38:                             # %lpad69
.Ltmp613:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB277_118
.LBB277_39:                             # %lpad71
.Ltmp616:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB277_117
.LBB277_40:                             # %lpad73
.Ltmp619:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB277_116
.LBB277_41:                             # %lpad75
.Ltmp622:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB277_115
.LBB277_42:                             # %lpad84
.Ltmp671:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB277_114
.LBB277_43:                             # %lpad86
.Ltmp674:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB277_47
.LBB277_44:                             # %lpad89
.Ltmp677:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB277_46
.LBB277_45:                             # %lpad91
.Ltmp682:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	leaq	-488(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
.LBB277_46:                             # %ehcleanup
	leaq	-424(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB277_47:                             # %ehcleanup96
	leaq	-456(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	jmp	.LBB277_114
.LBB277_48:                             # %for.end
                                        #   in Loop: Header=BB277_27 Depth=1
	jmp	.LBB277_49
.LBB277_49:                             # %for.inc97
                                        #   in Loop: Header=BB277_27 Depth=1
	movl	-380(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -380(%rbp)
	movl	-384(%rbp), %eax
	addl	$64, %eax
	movl	%eax, -384(%rbp)
	jmp	.LBB277_27
.LBB277_50:                             # %for.end100
	movl	$0, -492(%rbp)
	movl	$0, -496(%rbp)
.LBB277_51:                             # %for.cond103
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB277_53 Depth 2
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	-492(%rbp), %eax
	leaq	-184(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -916(%rbp)        # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-916(%rbp), %edx        # 4-byte Reload
	cmpl	(%rax), %edx
	jge	.LBB277_68
# %bb.52:                               # %for.body107
                                        #   in Loop: Header=BB277_51 Depth=1
	movl	$0, -500(%rbp)
	movl	$0, -504(%rbp)
.LBB277_53:                             # %for.cond110
                                        #   Parent Loop BB277_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movl	-500(%rbp), %eax
	leaq	-184(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -920(%rbp)        # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-920(%rbp), %edx        # 4-byte Reload
	cmpl	(%rax), %edx
	jge	.LBB277_66
# %bb.54:                               # %for.body114
                                        #   in Loop: Header=BB277_53 Depth=2
.Ltmp656:
	leaq	-568(%rbp), %rdi
	movq	-864(%rbp), %rsi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp657:
	jmp	.LBB277_55
.LBB277_55:                             # %invoke.cont117
                                        #   in Loop: Header=BB277_53 Depth=2
	movl	-504(%rbp), %edx
	movl	-496(%rbp), %ecx
.Ltmp658:
	leaq	-536(%rbp), %rdi
	leaq	-568(%rbp), %rsi
	movl	$64, %eax
	movl	%eax, %r8d
	movl	%eax, %r9d
	callq	_Z6submatIfE5TSpanILi2ET_ES2_iiii
.Ltmp659:
	jmp	.LBB277_56
.LBB277_56:                             # %invoke.cont119
                                        #   in Loop: Header=BB277_53 Depth=2
	movl	-492(%rbp), %edx
.Ltmp661:
	leaq	-600(%rbp), %rdi
	leaq	-344(%rbp), %rsi
	callq	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
.Ltmp662:
	jmp	.LBB277_57
.LBB277_57:                             # %invoke.cont122
                                        #   in Loop: Header=BB277_53 Depth=2
	movl	-500(%rbp), %esi
.Ltmp664:
	leaq	-600(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
.Ltmp665:
	movq	%rax, -928(%rbp)        # 8-byte Spill
	jmp	.LBB277_58
.LBB277_58:                             # %invoke.cont124
                                        #   in Loop: Header=BB277_53 Depth=2
.Ltmp666:
	leaq	-536(%rbp), %rsi
	movq	-928(%rbp), %rdi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEaSEOS0_
.Ltmp667:
	movq	%rax, -936(%rbp)        # 8-byte Spill
	jmp	.LBB277_59
.LBB277_59:                             # %invoke.cont126
                                        #   in Loop: Header=BB277_53 Depth=2
	leaq	-600(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
	leaq	-536(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-568(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
# %bb.60:                               # %for.inc131
                                        #   in Loop: Header=BB277_53 Depth=2
	movl	-500(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -500(%rbp)
	movl	-504(%rbp), %eax
	addl	$64, %eax
	movl	%eax, -504(%rbp)
	jmp	.LBB277_53
.LBB277_61:                             # %lpad118
.Ltmp660:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB277_65
.LBB277_62:                             # %lpad121
.Ltmp663:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB277_64
.LBB277_63:                             # %lpad123
.Ltmp668:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	leaq	-600(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
.LBB277_64:                             # %ehcleanup129
	leaq	-536(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB277_65:                             # %ehcleanup130
	leaq	-568(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	jmp	.LBB277_114
.LBB277_66:                             # %for.end134
                                        #   in Loop: Header=BB277_51 Depth=1
	jmp	.LBB277_67
.LBB277_67:                             # %for.inc135
                                        #   in Loop: Header=BB277_51 Depth=1
	movl	-492(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -492(%rbp)
	movl	-496(%rbp), %eax
	addl	$64, %eax
	movl	%eax, -496(%rbp)
	jmp	.LBB277_51
.LBB277_68:                             # %for.end138
	movl	$0, -604(%rbp)
	movl	$0, -608(%rbp)
.LBB277_69:                             # %for.cond141
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB277_71 Depth 2
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	-604(%rbp), %eax
	leaq	-280(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -940(%rbp)        # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-940(%rbp), %edx        # 4-byte Reload
	cmpl	(%rax), %edx
	jge	.LBB277_86
# %bb.70:                               # %for.body145
                                        #   in Loop: Header=BB277_69 Depth=1
	movl	$0, -612(%rbp)
	movl	$0, -616(%rbp)
.LBB277_71:                             # %for.cond148
                                        #   Parent Loop BB277_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movl	-612(%rbp), %eax
	leaq	-280(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -944(%rbp)        # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-944(%rbp), %edx        # 4-byte Reload
	cmpl	(%rax), %edx
	jge	.LBB277_84
# %bb.72:                               # %for.body152
                                        #   in Loop: Header=BB277_71 Depth=2
.Ltmp643:
	leaq	-680(%rbp), %rdi
	movq	-880(%rbp), %rsi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp644:
	jmp	.LBB277_73
.LBB277_73:                             # %invoke.cont155
                                        #   in Loop: Header=BB277_71 Depth=2
	movl	-616(%rbp), %edx
	movl	-608(%rbp), %ecx
.Ltmp645:
	leaq	-648(%rbp), %rdi
	leaq	-680(%rbp), %rsi
	movl	$64, %eax
	movl	%eax, %r8d
	movl	%eax, %r9d
	callq	_Z6submatIfE5TSpanILi2ET_ES2_iiii
.Ltmp646:
	jmp	.LBB277_74
.LBB277_74:                             # %invoke.cont157
                                        #   in Loop: Header=BB277_71 Depth=2
	movl	-604(%rbp), %edx
.Ltmp648:
	leaq	-712(%rbp), %rdi
	leaq	-376(%rbp), %rsi
	callq	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
.Ltmp649:
	jmp	.LBB277_75
.LBB277_75:                             # %invoke.cont160
                                        #   in Loop: Header=BB277_71 Depth=2
	movl	-612(%rbp), %esi
.Ltmp651:
	leaq	-712(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
.Ltmp652:
	movq	%rax, -952(%rbp)        # 8-byte Spill
	jmp	.LBB277_76
.LBB277_76:                             # %invoke.cont162
                                        #   in Loop: Header=BB277_71 Depth=2
.Ltmp653:
	leaq	-648(%rbp), %rsi
	movq	-952(%rbp), %rdi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEaSEOS0_
.Ltmp654:
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB277_77
.LBB277_77:                             # %invoke.cont164
                                        #   in Loop: Header=BB277_71 Depth=2
	leaq	-712(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
	leaq	-648(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-680(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
# %bb.78:                               # %for.inc169
                                        #   in Loop: Header=BB277_71 Depth=2
	movl	-612(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -612(%rbp)
	movl	-616(%rbp), %eax
	addl	$64, %eax
	movl	%eax, -616(%rbp)
	jmp	.LBB277_71
.LBB277_79:                             # %lpad156
.Ltmp647:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB277_83
.LBB277_80:                             # %lpad159
.Ltmp650:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB277_82
.LBB277_81:                             # %lpad161
.Ltmp655:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	leaq	-712(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
.LBB277_82:                             # %ehcleanup167
	leaq	-648(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB277_83:                             # %ehcleanup168
	leaq	-680(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	jmp	.LBB277_114
.LBB277_84:                             # %for.end172
                                        #   in Loop: Header=BB277_69 Depth=1
	jmp	.LBB277_85
.LBB277_85:                             # %for.inc173
                                        #   in Loop: Header=BB277_69 Depth=1
	movl	-604(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -604(%rbp)
	movl	-608(%rbp), %eax
	addl	$64, %eax
	movl	%eax, -608(%rbp)
	jmp	.LBB277_69
.LBB277_86:                             # %for.end176
	movl	$0, -716(%rbp)
.LBB277_87:                             # %for.cond178
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB277_89 Depth 2
                                        #       Child Loop BB277_91 Depth 3
	movl	-716(%rbp), %eax
	movq	-368(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB277_113
# %bb.88:                               # %for.body182
                                        #   in Loop: Header=BB277_87 Depth=1
	movl	$0, -720(%rbp)
.LBB277_89:                             # %for.cond184
                                        #   Parent Loop BB277_87 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB277_91 Depth 3
	movl	-720(%rbp), %eax
	movq	-368(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB277_111
# %bb.90:                               # %for.body188
                                        #   in Loop: Header=BB277_89 Depth=2
	movl	$0, -724(%rbp)
.LBB277_91:                             # %for.cond189
                                        #   Parent Loop BB277_87 Depth=1
                                        #     Parent Loop BB277_89 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-724(%rbp), %eax
	movq	-304(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB277_109
# %bb.92:                               # %for.body193
                                        #   in Loop: Header=BB277_91 Depth=3
	movl	-716(%rbp), %edx
.Ltmp623:
	leaq	-760(%rbp), %rdi
	leaq	-312(%rbp), %rsi
	callq	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
.Ltmp624:
	jmp	.LBB277_93
.LBB277_93:                             # %invoke.cont195
                                        #   in Loop: Header=BB277_91 Depth=3
	movl	-724(%rbp), %esi
.Ltmp625:
	leaq	-760(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
.Ltmp626:
	movq	%rax, -968(%rbp)        # 8-byte Spill
	jmp	.LBB277_94
.LBB277_94:                             # %invoke.cont197
                                        #   in Loop: Header=BB277_91 Depth=3
	movl	-724(%rbp), %edx
.Ltmp627:
	leaq	-792(%rbp), %rdi
	leaq	-344(%rbp), %rsi
	callq	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
.Ltmp628:
	jmp	.LBB277_95
.LBB277_95:                             # %invoke.cont200
                                        #   in Loop: Header=BB277_91 Depth=3
	movl	-720(%rbp), %esi
.Ltmp630:
	leaq	-792(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
.Ltmp631:
	movq	%rax, -976(%rbp)        # 8-byte Spill
	jmp	.LBB277_96
.LBB277_96:                             # %invoke.cont202
                                        #   in Loop: Header=BB277_91 Depth=3
	movl	-716(%rbp), %edx
.Ltmp632:
	leaq	-856(%rbp), %rdi
	leaq	-376(%rbp), %rsi
	callq	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
.Ltmp633:
	jmp	.LBB277_97
.LBB277_97:                             # %invoke.cont206
                                        #   in Loop: Header=BB277_91 Depth=3
	movl	-720(%rbp), %esi
.Ltmp635:
	leaq	-856(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
.Ltmp636:
	movq	%rax, -984(%rbp)        # 8-byte Spill
	jmp	.LBB277_98
.LBB277_98:                             # %invoke.cont208
                                        #   in Loop: Header=BB277_91 Depth=3
.Ltmp637:
	leaq	-824(%rbp), %rdi
	movq	-984(%rbp), %rsi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp638:
	jmp	.LBB277_99
.LBB277_99:                             # %invoke.cont210
                                        #   in Loop: Header=BB277_91 Depth=3
.Ltmp640:
	leaq	-824(%rbp), %rdx
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movq	-976(%rbp), %rsi        # 8-byte Reload
	callq	_Z9tensormulILi2ELi2EfENSt9enable_ifIXgtT_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ES3_IXmiplT_T0_Li2EES4_E
.Ltmp641:
	jmp	.LBB277_100
.LBB277_100:                            # %invoke.cont212
                                        #   in Loop: Header=BB277_91 Depth=3
	leaq	-824(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-856(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
	leaq	-792(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
	leaq	-760(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
# %bb.101:                              # %for.inc217
                                        #   in Loop: Header=BB277_91 Depth=3
	movl	-724(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -724(%rbp)
	jmp	.LBB277_91
.LBB277_102:                            # %lpad196
.Ltmp629:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB277_108
.LBB277_103:                            # %lpad201
.Ltmp634:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB277_107
.LBB277_104:                            # %lpad207
.Ltmp639:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB277_106
.LBB277_105:                            # %lpad211
.Ltmp642:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	leaq	-824(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB277_106:                            # %ehcleanup214
	leaq	-856(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
.LBB277_107:                            # %ehcleanup215
	leaq	-792(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
.LBB277_108:                            # %ehcleanup216
	leaq	-760(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
	jmp	.LBB277_114
.LBB277_109:                            # %for.end219
                                        #   in Loop: Header=BB277_89 Depth=2
	jmp	.LBB277_110
.LBB277_110:                            # %for.inc220
                                        #   in Loop: Header=BB277_89 Depth=2
	movl	-720(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -720(%rbp)
	jmp	.LBB277_89
.LBB277_111:                            # %for.end222
                                        #   in Loop: Header=BB277_87 Depth=1
	jmp	.LBB277_112
.LBB277_112:                            # %for.inc223
                                        #   in Loop: Header=BB277_87 Depth=1
	movl	-716(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -716(%rbp)
	jmp	.LBB277_87
.LBB277_113:                            # %for.end225
	leaq	-376(%rbp), %rdi
	callq	_ZN5TSpanILi2ES_ILi2EfEED2Ev
	leaq	-344(%rbp), %rdi
	callq	_ZN5TSpanILi2ES_ILi2EfEED2Ev
	leaq	-312(%rbp), %rdi
	callq	_ZN5TSpanILi2ES_ILi2EfEED2Ev
	leaq	-280(%rbp), %rdi
	callq	_ZN6TensorI5TSpanILi2EfEED2Ev
	leaq	-184(%rbp), %rdi
	callq	_ZN6TensorI5TSpanILi2EfEED2Ev
	leaq	-104(%rbp), %rdi
	callq	_ZN6TensorI5TSpanILi2EfEED2Ev
	addq	$992, %rsp              # imm = 0x3E0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB277_114:                            # %ehcleanup226
	.cfi_def_cfa %rbp, 16
	leaq	-376(%rbp), %rdi
	callq	_ZN5TSpanILi2ES_ILi2EfEED2Ev
.LBB277_115:                            # %ehcleanup227
	leaq	-344(%rbp), %rdi
	callq	_ZN5TSpanILi2ES_ILi2EfEED2Ev
.LBB277_116:                            # %ehcleanup228
	leaq	-312(%rbp), %rdi
	callq	_ZN5TSpanILi2ES_ILi2EfEED2Ev
.LBB277_117:                            # %ehcleanup229
	leaq	-280(%rbp), %rdi
	callq	_ZN6TensorI5TSpanILi2EfEED2Ev
.LBB277_118:                            # %ehcleanup230
	leaq	-184(%rbp), %rdi
	callq	_ZN6TensorI5TSpanILi2EfEED2Ev
.LBB277_119:                            # %ehcleanup231
	leaq	-104(%rbp), %rdi
	callq	_ZN6TensorI5TSpanILi2EfEED2Ev
# %bb.120:                              # %eh.resume
	movq	-192(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end277:
	.size	_Z12block_matmulILi64EEv5TSpanILi2EfES1_S1_, .Lfunc_end277-_Z12block_matmulILi64EEv5TSpanILi2EfES1_S1_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table277:
.Lexception42:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end42-.Lcst_begin42
.Lcst_begin42:
	.uleb128 .Lfunc_begin42-.Lfunc_begin42 # >> Call Site 1 <<
	.uleb128 .Ltmp608-.Lfunc_begin42 #   Call between .Lfunc_begin42 and .Ltmp608
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp608-.Lfunc_begin42 # >> Call Site 2 <<
	.uleb128 .Ltmp609-.Ltmp608      #   Call between .Ltmp608 and .Ltmp609
	.uleb128 .Ltmp610-.Lfunc_begin42 #     jumps to .Ltmp610
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp611-.Lfunc_begin42 # >> Call Site 3 <<
	.uleb128 .Ltmp612-.Ltmp611      #   Call between .Ltmp611 and .Ltmp612
	.uleb128 .Ltmp613-.Lfunc_begin42 #     jumps to .Ltmp613
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp614-.Lfunc_begin42 # >> Call Site 4 <<
	.uleb128 .Ltmp615-.Ltmp614      #   Call between .Ltmp614 and .Ltmp615
	.uleb128 .Ltmp616-.Lfunc_begin42 #     jumps to .Ltmp616
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp617-.Lfunc_begin42 # >> Call Site 5 <<
	.uleb128 .Ltmp618-.Ltmp617      #   Call between .Ltmp617 and .Ltmp618
	.uleb128 .Ltmp619-.Lfunc_begin42 #     jumps to .Ltmp619
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp620-.Lfunc_begin42 # >> Call Site 6 <<
	.uleb128 .Ltmp621-.Ltmp620      #   Call between .Ltmp620 and .Ltmp621
	.uleb128 .Ltmp622-.Lfunc_begin42 #     jumps to .Ltmp622
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp669-.Lfunc_begin42 # >> Call Site 7 <<
	.uleb128 .Ltmp670-.Ltmp669      #   Call between .Ltmp669 and .Ltmp670
	.uleb128 .Ltmp671-.Lfunc_begin42 #     jumps to .Ltmp671
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp672-.Lfunc_begin42 # >> Call Site 8 <<
	.uleb128 .Ltmp673-.Ltmp672      #   Call between .Ltmp672 and .Ltmp673
	.uleb128 .Ltmp674-.Lfunc_begin42 #     jumps to .Ltmp674
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp675-.Lfunc_begin42 # >> Call Site 9 <<
	.uleb128 .Ltmp676-.Ltmp675      #   Call between .Ltmp675 and .Ltmp676
	.uleb128 .Ltmp677-.Lfunc_begin42 #     jumps to .Ltmp677
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp678-.Lfunc_begin42 # >> Call Site 10 <<
	.uleb128 .Ltmp681-.Ltmp678      #   Call between .Ltmp678 and .Ltmp681
	.uleb128 .Ltmp682-.Lfunc_begin42 #     jumps to .Ltmp682
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp656-.Lfunc_begin42 # >> Call Site 11 <<
	.uleb128 .Ltmp657-.Ltmp656      #   Call between .Ltmp656 and .Ltmp657
	.uleb128 .Ltmp671-.Lfunc_begin42 #     jumps to .Ltmp671
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp658-.Lfunc_begin42 # >> Call Site 12 <<
	.uleb128 .Ltmp659-.Ltmp658      #   Call between .Ltmp658 and .Ltmp659
	.uleb128 .Ltmp660-.Lfunc_begin42 #     jumps to .Ltmp660
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp661-.Lfunc_begin42 # >> Call Site 13 <<
	.uleb128 .Ltmp662-.Ltmp661      #   Call between .Ltmp661 and .Ltmp662
	.uleb128 .Ltmp663-.Lfunc_begin42 #     jumps to .Ltmp663
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp664-.Lfunc_begin42 # >> Call Site 14 <<
	.uleb128 .Ltmp667-.Ltmp664      #   Call between .Ltmp664 and .Ltmp667
	.uleb128 .Ltmp668-.Lfunc_begin42 #     jumps to .Ltmp668
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp643-.Lfunc_begin42 # >> Call Site 15 <<
	.uleb128 .Ltmp644-.Ltmp643      #   Call between .Ltmp643 and .Ltmp644
	.uleb128 .Ltmp671-.Lfunc_begin42 #     jumps to .Ltmp671
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp645-.Lfunc_begin42 # >> Call Site 16 <<
	.uleb128 .Ltmp646-.Ltmp645      #   Call between .Ltmp645 and .Ltmp646
	.uleb128 .Ltmp647-.Lfunc_begin42 #     jumps to .Ltmp647
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp648-.Lfunc_begin42 # >> Call Site 17 <<
	.uleb128 .Ltmp649-.Ltmp648      #   Call between .Ltmp648 and .Ltmp649
	.uleb128 .Ltmp650-.Lfunc_begin42 #     jumps to .Ltmp650
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp651-.Lfunc_begin42 # >> Call Site 18 <<
	.uleb128 .Ltmp654-.Ltmp651      #   Call between .Ltmp651 and .Ltmp654
	.uleb128 .Ltmp655-.Lfunc_begin42 #     jumps to .Ltmp655
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp623-.Lfunc_begin42 # >> Call Site 19 <<
	.uleb128 .Ltmp624-.Ltmp623      #   Call between .Ltmp623 and .Ltmp624
	.uleb128 .Ltmp671-.Lfunc_begin42 #     jumps to .Ltmp671
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp625-.Lfunc_begin42 # >> Call Site 20 <<
	.uleb128 .Ltmp628-.Ltmp625      #   Call between .Ltmp625 and .Ltmp628
	.uleb128 .Ltmp629-.Lfunc_begin42 #     jumps to .Ltmp629
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp630-.Lfunc_begin42 # >> Call Site 21 <<
	.uleb128 .Ltmp633-.Ltmp630      #   Call between .Ltmp630 and .Ltmp633
	.uleb128 .Ltmp634-.Lfunc_begin42 #     jumps to .Ltmp634
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp635-.Lfunc_begin42 # >> Call Site 22 <<
	.uleb128 .Ltmp638-.Ltmp635      #   Call between .Ltmp635 and .Ltmp638
	.uleb128 .Ltmp639-.Lfunc_begin42 #     jumps to .Ltmp639
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp640-.Lfunc_begin42 # >> Call Site 23 <<
	.uleb128 .Ltmp641-.Ltmp640      #   Call between .Ltmp640 and .Ltmp641
	.uleb128 .Ltmp642-.Lfunc_begin42 #     jumps to .Ltmp642
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp641-.Lfunc_begin42 # >> Call Site 24 <<
	.uleb128 .Lfunc_end277-.Ltmp641 #   Call between .Ltmp641 and .Lfunc_end277
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end42:
	.p2align	2
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function _ZZ4mainENK3$_5clEv
	.type	_ZZ4mainENK3$_5clEv,@function
_ZZ4mainENK3$_5clEv:                    # @"_ZZ4mainENK3$_5clEv"
.Lfunc_begin43:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception43
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	-40(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-128(%rbp), %rsi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEC2ERKS0_
	movq	-128(%rbp), %rax        # 8-byte Reload
	addq	$32, %rax
.Ltmp683:
	leaq	-72(%rbp), %rdi
	movq	%rax, %rsi
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp684:
	jmp	.LBB278_1
.LBB278_1:                              # %invoke.cont
	movq	-128(%rbp), %rax        # 8-byte Reload
	addq	$64, %rax
.Ltmp686:
	leaq	-120(%rbp), %rdi
	movq	%rax, %rsi
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp687:
	jmp	.LBB278_2
.LBB278_2:                              # %invoke.cont5
.Ltmp689:
	leaq	-40(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	callq	_Z12block_matmulILi32EEv5TSpanILi2EfES1_S1_
.Ltmp690:
	jmp	.LBB278_3
.LBB278_3:                              # %invoke.cont7
	leaq	-120(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-72(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-40(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	addq	$128, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB278_4:                              # %lpad
	.cfi_def_cfa %rbp, 16
.Ltmp685:
	movl	%edx, %ecx
	movq	%rax, -80(%rbp)
	movl	%ecx, -84(%rbp)
	jmp	.LBB278_8
.LBB278_5:                              # %lpad4
.Ltmp688:
	movl	%edx, %ecx
	movq	%rax, -80(%rbp)
	movl	%ecx, -84(%rbp)
	jmp	.LBB278_7
.LBB278_6:                              # %lpad6
.Ltmp691:
	movl	%edx, %ecx
	movq	%rax, -80(%rbp)
	movl	%ecx, -84(%rbp)
	leaq	-120(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB278_7:                              # %ehcleanup
	leaq	-72(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB278_8:                              # %ehcleanup8
	leaq	-40(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
# %bb.9:                                # %eh.resume
	movq	-80(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end278:
	.size	_ZZ4mainENK3$_5clEv, .Lfunc_end278-_ZZ4mainENK3$_5clEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table278:
.Lexception43:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end43-.Lcst_begin43
.Lcst_begin43:
	.uleb128 .Lfunc_begin43-.Lfunc_begin43 # >> Call Site 1 <<
	.uleb128 .Ltmp683-.Lfunc_begin43 #   Call between .Lfunc_begin43 and .Ltmp683
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp683-.Lfunc_begin43 # >> Call Site 2 <<
	.uleb128 .Ltmp684-.Ltmp683      #   Call between .Ltmp683 and .Ltmp684
	.uleb128 .Ltmp685-.Lfunc_begin43 #     jumps to .Ltmp685
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp686-.Lfunc_begin43 # >> Call Site 3 <<
	.uleb128 .Ltmp687-.Ltmp686      #   Call between .Ltmp686 and .Ltmp687
	.uleb128 .Ltmp688-.Lfunc_begin43 #     jumps to .Ltmp688
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp689-.Lfunc_begin43 # >> Call Site 4 <<
	.uleb128 .Ltmp690-.Ltmp689      #   Call between .Ltmp689 and .Ltmp690
	.uleb128 .Ltmp691-.Lfunc_begin43 #     jumps to .Ltmp691
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp690-.Lfunc_begin43 # >> Call Site 5 <<
	.uleb128 .Lfunc_end278-.Ltmp690 #   Call between .Ltmp690 and .Lfunc_end278
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end43:
	.p2align	2
                                        # -- End function
	.section	.text._Z12block_matmulILi32EEv5TSpanILi2EfES1_S1_,"axG",@progbits,_Z12block_matmulILi32EEv5TSpanILi2EfES1_S1_,comdat
	.weak	_Z12block_matmulILi32EEv5TSpanILi2EfES1_S1_ # -- Begin function _Z12block_matmulILi32EEv5TSpanILi2EfES1_S1_
	.p2align	4, 0x90
	.type	_Z12block_matmulILi32EEv5TSpanILi2EfES1_S1_,@function
_Z12block_matmulILi32EEv5TSpanILi2EfES1_S1_: # @_Z12block_matmulILi32EEv5TSpanILi2EfES1_S1_
.Lfunc_begin44:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception44
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$992, %rsp              # imm = 0x3E0
	movq	8(%rdi), %rax
	movl	4(%rax), %ecx
	movq	8(%rsi), %rax
	cmpl	(%rax), %ecx
	movq	%rsi, -864(%rbp)        # 8-byte Spill
	movq	%rdi, -872(%rbp)        # 8-byte Spill
	movq	%rdx, -880(%rbp)        # 8-byte Spill
	jne	.LBB279_2
# %bb.1:                                # %cond.true
	jmp	.LBB279_3
.LBB279_2:                              # %cond.false
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$35, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi32EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB279_3:                              # %cond.end
	movq	-880(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	(%rcx), %edx
	movq	-872(%rbp), %rcx        # 8-byte Reload
	movq	8(%rcx), %rsi
	cmpl	(%rsi), %edx
	jne	.LBB279_5
# %bb.4:                                # %cond.true8
	jmp	.LBB279_6
.LBB279_5:                              # %cond.false9
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$36, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi32EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB279_6:                              # %cond.end10
	movq	-880(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	4(%rcx), %edx
	movq	-864(%rbp), %rcx        # 8-byte Reload
	movq	8(%rcx), %rsi
	cmpl	4(%rsi), %edx
	jne	.LBB279_8
# %bb.7:                                # %cond.true16
	jmp	.LBB279_9
.LBB279_8:                              # %cond.false17
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$37, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi32EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB279_9:                              # %cond.end18
	movq	-872(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	(%rcx), %eax
	cltd
	movl	$32, %esi
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB279_11
# %bb.10:                               # %cond.true22
	jmp	.LBB279_12
.LBB279_11:                             # %cond.false23
	movabsq	$.L.str.17, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$38, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi32EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB279_12:                             # %cond.end24
	movq	-872(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	4(%rcx), %eax
	cltd
	movl	$32, %esi
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB279_14
# %bb.13:                               # %cond.true29
	jmp	.LBB279_15
.LBB279_14:                             # %cond.false30
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$39, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi32EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB279_15:                             # %cond.end31
	movq	-864(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	(%rcx), %eax
	cltd
	movl	$32, %esi
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB279_17
# %bb.16:                               # %cond.true36
	jmp	.LBB279_18
.LBB279_17:                             # %cond.false37
	movabsq	$.L.str.19, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$40, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi32EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB279_18:                             # %cond.end38
	movq	-864(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	4(%rcx), %eax
	cltd
	movl	$32, %esi
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB279_20
# %bb.19:                               # %cond.true43
	jmp	.LBB279_21
.LBB279_20:                             # %cond.false44
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$41, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi32EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB279_21:                             # %cond.end45
	movq	-872(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	(%rcx), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$27, %esi
	addl	%esi, %edx
	sarl	$5, %edx
	movl	%edx, -8(%rbp)
	movq	8(%rax), %rcx
	movl	4(%rcx), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$27, %esi
	addl	%esi, %edx
	sarl	$5, %edx
	movl	%edx, -4(%rbp)
	movq	-864(%rbp), %rcx        # 8-byte Reload
	movq	8(%rcx), %rdi
	movl	(%rdi), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$27, %esi
	addl	%esi, %edx
	sarl	$5, %edx
	movl	%edx, -16(%rbp)
	movq	8(%rcx), %rdi
	movl	4(%rdi), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$27, %esi
	addl	%esi, %edx
	sarl	$5, %edx
	movl	%edx, -12(%rbp)
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	8(%rdi), %r8
	movl	(%r8), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$27, %esi
	addl	%esi, %edx
	sarl	$5, %edx
	movl	%edx, -24(%rbp)
	movq	8(%rdi), %r8
	movl	4(%r8), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$27, %esi
	addl	%esi, %edx
	sarl	$5, %edx
	movl	%edx, -20(%rbp)
	movl	$2, %edx
	movl	%edx, %r8d
	leaq	-104(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	movq	%r8, %rdx
	movq	%r8, -888(%rbp)         # 8-byte Spill
	callq	_ZN6TensorI5TSpanILi2EfEEC2EPKim
.Ltmp692:
	leaq	-184(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	movq	-888(%rbp), %rdx        # 8-byte Reload
	callq	_ZN6TensorI5TSpanILi2EfEEC2EPKim
.Ltmp693:
	jmp	.LBB279_22
.LBB279_22:                             # %invoke.cont
.Ltmp695:
	movl	$2, %eax
	movl	%eax, %edx
	leaq	-280(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZN6TensorI5TSpanILi2EfEEC2EPKim
.Ltmp696:
	jmp	.LBB279_23
.LBB279_23:                             # %invoke.cont70
.Ltmp698:
	leaq	-312(%rbp), %rdi
	leaq	-104(%rbp), %rsi
	callq	_ZN6TensorI5TSpanILi2EfEE8as_tspanILi2EEES0_IXT_ES1_Ev
.Ltmp699:
	jmp	.LBB279_24
.LBB279_24:                             # %invoke.cont72
.Ltmp701:
	leaq	-344(%rbp), %rdi
	leaq	-184(%rbp), %rsi
	callq	_ZN6TensorI5TSpanILi2EfEE8as_tspanILi2EEES0_IXT_ES1_Ev
.Ltmp702:
	jmp	.LBB279_25
.LBB279_25:                             # %invoke.cont74
.Ltmp704:
	leaq	-376(%rbp), %rdi
	leaq	-280(%rbp), %rsi
	callq	_ZN6TensorI5TSpanILi2EfEE8as_tspanILi2EEES0_IXT_ES1_Ev
.Ltmp705:
	jmp	.LBB279_26
.LBB279_26:                             # %invoke.cont76
	movl	$0, -380(%rbp)
	movl	$0, -384(%rbp)
.LBB279_27:                             # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB279_29 Depth 2
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	-380(%rbp), %eax
	leaq	-104(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -892(%rbp)        # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-892(%rbp), %edx        # 4-byte Reload
	cmpl	(%rax), %edx
	jge	.LBB279_50
# %bb.28:                               # %for.body
                                        #   in Loop: Header=BB279_27 Depth=1
	movl	$0, -388(%rbp)
	movl	$0, -392(%rbp)
.LBB279_29:                             # %for.cond79
                                        #   Parent Loop BB279_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movl	-388(%rbp), %eax
	leaq	-104(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -896(%rbp)        # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-896(%rbp), %edx        # 4-byte Reload
	cmpl	(%rax), %edx
	jge	.LBB279_48
# %bb.30:                               # %for.body83
                                        #   in Loop: Header=BB279_29 Depth=2
.Ltmp753:
	leaq	-456(%rbp), %rdi
	movq	-872(%rbp), %rsi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp754:
	jmp	.LBB279_31
.LBB279_31:                             # %invoke.cont85
                                        #   in Loop: Header=BB279_29 Depth=2
	movl	-392(%rbp), %edx
	movl	-384(%rbp), %ecx
.Ltmp756:
	leaq	-424(%rbp), %rdi
	leaq	-456(%rbp), %rsi
	movl	$32, %eax
	movl	%eax, %r8d
	movl	%eax, %r9d
	callq	_Z6submatIfE5TSpanILi2ET_ES2_iiii
.Ltmp757:
	jmp	.LBB279_32
.LBB279_32:                             # %invoke.cont87
                                        #   in Loop: Header=BB279_29 Depth=2
	movl	-380(%rbp), %edx
.Ltmp759:
	leaq	-488(%rbp), %rdi
	leaq	-312(%rbp), %rsi
	callq	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
.Ltmp760:
	jmp	.LBB279_33
.LBB279_33:                             # %invoke.cont90
                                        #   in Loop: Header=BB279_29 Depth=2
	movl	-388(%rbp), %esi
.Ltmp762:
	leaq	-488(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
.Ltmp763:
	movq	%rax, -904(%rbp)        # 8-byte Spill
	jmp	.LBB279_34
.LBB279_34:                             # %invoke.cont92
                                        #   in Loop: Header=BB279_29 Depth=2
.Ltmp764:
	leaq	-424(%rbp), %rsi
	movq	-904(%rbp), %rdi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEaSEOS0_
.Ltmp765:
	movq	%rax, -912(%rbp)        # 8-byte Spill
	jmp	.LBB279_35
.LBB279_35:                             # %invoke.cont94
                                        #   in Loop: Header=BB279_29 Depth=2
	leaq	-488(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
	leaq	-424(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-456(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
# %bb.36:                               # %for.inc
                                        #   in Loop: Header=BB279_29 Depth=2
	movl	-388(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -388(%rbp)
	movl	-392(%rbp), %eax
	addl	$32, %eax
	movl	%eax, -392(%rbp)
	jmp	.LBB279_29
.LBB279_37:                             # %lpad
.Ltmp694:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB279_119
.LBB279_38:                             # %lpad69
.Ltmp697:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB279_118
.LBB279_39:                             # %lpad71
.Ltmp700:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB279_117
.LBB279_40:                             # %lpad73
.Ltmp703:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB279_116
.LBB279_41:                             # %lpad75
.Ltmp706:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB279_115
.LBB279_42:                             # %lpad84
.Ltmp755:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB279_114
.LBB279_43:                             # %lpad86
.Ltmp758:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB279_47
.LBB279_44:                             # %lpad89
.Ltmp761:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB279_46
.LBB279_45:                             # %lpad91
.Ltmp766:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	leaq	-488(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
.LBB279_46:                             # %ehcleanup
	leaq	-424(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB279_47:                             # %ehcleanup96
	leaq	-456(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	jmp	.LBB279_114
.LBB279_48:                             # %for.end
                                        #   in Loop: Header=BB279_27 Depth=1
	jmp	.LBB279_49
.LBB279_49:                             # %for.inc97
                                        #   in Loop: Header=BB279_27 Depth=1
	movl	-380(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -380(%rbp)
	movl	-384(%rbp), %eax
	addl	$32, %eax
	movl	%eax, -384(%rbp)
	jmp	.LBB279_27
.LBB279_50:                             # %for.end100
	movl	$0, -492(%rbp)
	movl	$0, -496(%rbp)
.LBB279_51:                             # %for.cond103
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB279_53 Depth 2
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	-492(%rbp), %eax
	leaq	-184(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -916(%rbp)        # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-916(%rbp), %edx        # 4-byte Reload
	cmpl	(%rax), %edx
	jge	.LBB279_68
# %bb.52:                               # %for.body107
                                        #   in Loop: Header=BB279_51 Depth=1
	movl	$0, -500(%rbp)
	movl	$0, -504(%rbp)
.LBB279_53:                             # %for.cond110
                                        #   Parent Loop BB279_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movl	-500(%rbp), %eax
	leaq	-184(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -920(%rbp)        # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-920(%rbp), %edx        # 4-byte Reload
	cmpl	(%rax), %edx
	jge	.LBB279_66
# %bb.54:                               # %for.body114
                                        #   in Loop: Header=BB279_53 Depth=2
.Ltmp740:
	leaq	-568(%rbp), %rdi
	movq	-864(%rbp), %rsi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp741:
	jmp	.LBB279_55
.LBB279_55:                             # %invoke.cont117
                                        #   in Loop: Header=BB279_53 Depth=2
	movl	-504(%rbp), %edx
	movl	-496(%rbp), %ecx
.Ltmp742:
	leaq	-536(%rbp), %rdi
	leaq	-568(%rbp), %rsi
	movl	$32, %eax
	movl	%eax, %r8d
	movl	%eax, %r9d
	callq	_Z6submatIfE5TSpanILi2ET_ES2_iiii
.Ltmp743:
	jmp	.LBB279_56
.LBB279_56:                             # %invoke.cont119
                                        #   in Loop: Header=BB279_53 Depth=2
	movl	-492(%rbp), %edx
.Ltmp745:
	leaq	-600(%rbp), %rdi
	leaq	-344(%rbp), %rsi
	callq	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
.Ltmp746:
	jmp	.LBB279_57
.LBB279_57:                             # %invoke.cont122
                                        #   in Loop: Header=BB279_53 Depth=2
	movl	-500(%rbp), %esi
.Ltmp748:
	leaq	-600(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
.Ltmp749:
	movq	%rax, -928(%rbp)        # 8-byte Spill
	jmp	.LBB279_58
.LBB279_58:                             # %invoke.cont124
                                        #   in Loop: Header=BB279_53 Depth=2
.Ltmp750:
	leaq	-536(%rbp), %rsi
	movq	-928(%rbp), %rdi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEaSEOS0_
.Ltmp751:
	movq	%rax, -936(%rbp)        # 8-byte Spill
	jmp	.LBB279_59
.LBB279_59:                             # %invoke.cont126
                                        #   in Loop: Header=BB279_53 Depth=2
	leaq	-600(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
	leaq	-536(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-568(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
# %bb.60:                               # %for.inc131
                                        #   in Loop: Header=BB279_53 Depth=2
	movl	-500(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -500(%rbp)
	movl	-504(%rbp), %eax
	addl	$32, %eax
	movl	%eax, -504(%rbp)
	jmp	.LBB279_53
.LBB279_61:                             # %lpad118
.Ltmp744:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB279_65
.LBB279_62:                             # %lpad121
.Ltmp747:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB279_64
.LBB279_63:                             # %lpad123
.Ltmp752:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	leaq	-600(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
.LBB279_64:                             # %ehcleanup129
	leaq	-536(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB279_65:                             # %ehcleanup130
	leaq	-568(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	jmp	.LBB279_114
.LBB279_66:                             # %for.end134
                                        #   in Loop: Header=BB279_51 Depth=1
	jmp	.LBB279_67
.LBB279_67:                             # %for.inc135
                                        #   in Loop: Header=BB279_51 Depth=1
	movl	-492(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -492(%rbp)
	movl	-496(%rbp), %eax
	addl	$32, %eax
	movl	%eax, -496(%rbp)
	jmp	.LBB279_51
.LBB279_68:                             # %for.end138
	movl	$0, -604(%rbp)
	movl	$0, -608(%rbp)
.LBB279_69:                             # %for.cond141
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB279_71 Depth 2
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	-604(%rbp), %eax
	leaq	-280(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -940(%rbp)        # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-940(%rbp), %edx        # 4-byte Reload
	cmpl	(%rax), %edx
	jge	.LBB279_86
# %bb.70:                               # %for.body145
                                        #   in Loop: Header=BB279_69 Depth=1
	movl	$0, -612(%rbp)
	movl	$0, -616(%rbp)
.LBB279_71:                             # %for.cond148
                                        #   Parent Loop BB279_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movl	-612(%rbp), %eax
	leaq	-280(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -944(%rbp)        # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-944(%rbp), %edx        # 4-byte Reload
	cmpl	(%rax), %edx
	jge	.LBB279_84
# %bb.72:                               # %for.body152
                                        #   in Loop: Header=BB279_71 Depth=2
.Ltmp727:
	leaq	-680(%rbp), %rdi
	movq	-880(%rbp), %rsi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp728:
	jmp	.LBB279_73
.LBB279_73:                             # %invoke.cont155
                                        #   in Loop: Header=BB279_71 Depth=2
	movl	-616(%rbp), %edx
	movl	-608(%rbp), %ecx
.Ltmp729:
	leaq	-648(%rbp), %rdi
	leaq	-680(%rbp), %rsi
	movl	$32, %eax
	movl	%eax, %r8d
	movl	%eax, %r9d
	callq	_Z6submatIfE5TSpanILi2ET_ES2_iiii
.Ltmp730:
	jmp	.LBB279_74
.LBB279_74:                             # %invoke.cont157
                                        #   in Loop: Header=BB279_71 Depth=2
	movl	-604(%rbp), %edx
.Ltmp732:
	leaq	-712(%rbp), %rdi
	leaq	-376(%rbp), %rsi
	callq	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
.Ltmp733:
	jmp	.LBB279_75
.LBB279_75:                             # %invoke.cont160
                                        #   in Loop: Header=BB279_71 Depth=2
	movl	-612(%rbp), %esi
.Ltmp735:
	leaq	-712(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
.Ltmp736:
	movq	%rax, -952(%rbp)        # 8-byte Spill
	jmp	.LBB279_76
.LBB279_76:                             # %invoke.cont162
                                        #   in Loop: Header=BB279_71 Depth=2
.Ltmp737:
	leaq	-648(%rbp), %rsi
	movq	-952(%rbp), %rdi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEaSEOS0_
.Ltmp738:
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB279_77
.LBB279_77:                             # %invoke.cont164
                                        #   in Loop: Header=BB279_71 Depth=2
	leaq	-712(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
	leaq	-648(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-680(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
# %bb.78:                               # %for.inc169
                                        #   in Loop: Header=BB279_71 Depth=2
	movl	-612(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -612(%rbp)
	movl	-616(%rbp), %eax
	addl	$32, %eax
	movl	%eax, -616(%rbp)
	jmp	.LBB279_71
.LBB279_79:                             # %lpad156
.Ltmp731:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB279_83
.LBB279_80:                             # %lpad159
.Ltmp734:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB279_82
.LBB279_81:                             # %lpad161
.Ltmp739:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	leaq	-712(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
.LBB279_82:                             # %ehcleanup167
	leaq	-648(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB279_83:                             # %ehcleanup168
	leaq	-680(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	jmp	.LBB279_114
.LBB279_84:                             # %for.end172
                                        #   in Loop: Header=BB279_69 Depth=1
	jmp	.LBB279_85
.LBB279_85:                             # %for.inc173
                                        #   in Loop: Header=BB279_69 Depth=1
	movl	-604(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -604(%rbp)
	movl	-608(%rbp), %eax
	addl	$32, %eax
	movl	%eax, -608(%rbp)
	jmp	.LBB279_69
.LBB279_86:                             # %for.end176
	movl	$0, -716(%rbp)
.LBB279_87:                             # %for.cond178
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB279_89 Depth 2
                                        #       Child Loop BB279_91 Depth 3
	movl	-716(%rbp), %eax
	movq	-368(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB279_113
# %bb.88:                               # %for.body182
                                        #   in Loop: Header=BB279_87 Depth=1
	movl	$0, -720(%rbp)
.LBB279_89:                             # %for.cond184
                                        #   Parent Loop BB279_87 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB279_91 Depth 3
	movl	-720(%rbp), %eax
	movq	-368(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB279_111
# %bb.90:                               # %for.body188
                                        #   in Loop: Header=BB279_89 Depth=2
	movl	$0, -724(%rbp)
.LBB279_91:                             # %for.cond189
                                        #   Parent Loop BB279_87 Depth=1
                                        #     Parent Loop BB279_89 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-724(%rbp), %eax
	movq	-304(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB279_109
# %bb.92:                               # %for.body193
                                        #   in Loop: Header=BB279_91 Depth=3
	movl	-716(%rbp), %edx
.Ltmp707:
	leaq	-760(%rbp), %rdi
	leaq	-312(%rbp), %rsi
	callq	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
.Ltmp708:
	jmp	.LBB279_93
.LBB279_93:                             # %invoke.cont195
                                        #   in Loop: Header=BB279_91 Depth=3
	movl	-724(%rbp), %esi
.Ltmp709:
	leaq	-760(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
.Ltmp710:
	movq	%rax, -968(%rbp)        # 8-byte Spill
	jmp	.LBB279_94
.LBB279_94:                             # %invoke.cont197
                                        #   in Loop: Header=BB279_91 Depth=3
	movl	-724(%rbp), %edx
.Ltmp711:
	leaq	-792(%rbp), %rdi
	leaq	-344(%rbp), %rsi
	callq	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
.Ltmp712:
	jmp	.LBB279_95
.LBB279_95:                             # %invoke.cont200
                                        #   in Loop: Header=BB279_91 Depth=3
	movl	-720(%rbp), %esi
.Ltmp714:
	leaq	-792(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
.Ltmp715:
	movq	%rax, -976(%rbp)        # 8-byte Spill
	jmp	.LBB279_96
.LBB279_96:                             # %invoke.cont202
                                        #   in Loop: Header=BB279_91 Depth=3
	movl	-716(%rbp), %edx
.Ltmp716:
	leaq	-856(%rbp), %rdi
	leaq	-376(%rbp), %rsi
	callq	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
.Ltmp717:
	jmp	.LBB279_97
.LBB279_97:                             # %invoke.cont206
                                        #   in Loop: Header=BB279_91 Depth=3
	movl	-720(%rbp), %esi
.Ltmp719:
	leaq	-856(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
.Ltmp720:
	movq	%rax, -984(%rbp)        # 8-byte Spill
	jmp	.LBB279_98
.LBB279_98:                             # %invoke.cont208
                                        #   in Loop: Header=BB279_91 Depth=3
.Ltmp721:
	leaq	-824(%rbp), %rdi
	movq	-984(%rbp), %rsi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp722:
	jmp	.LBB279_99
.LBB279_99:                             # %invoke.cont210
                                        #   in Loop: Header=BB279_91 Depth=3
.Ltmp724:
	leaq	-824(%rbp), %rdx
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movq	-976(%rbp), %rsi        # 8-byte Reload
	callq	_Z9tensormulILi2ELi2EfENSt9enable_ifIXgtT_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ES3_IXmiplT_T0_Li2EES4_E
.Ltmp725:
	jmp	.LBB279_100
.LBB279_100:                            # %invoke.cont212
                                        #   in Loop: Header=BB279_91 Depth=3
	leaq	-824(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-856(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
	leaq	-792(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
	leaq	-760(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
# %bb.101:                              # %for.inc217
                                        #   in Loop: Header=BB279_91 Depth=3
	movl	-724(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -724(%rbp)
	jmp	.LBB279_91
.LBB279_102:                            # %lpad196
.Ltmp713:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB279_108
.LBB279_103:                            # %lpad201
.Ltmp718:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB279_107
.LBB279_104:                            # %lpad207
.Ltmp723:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB279_106
.LBB279_105:                            # %lpad211
.Ltmp726:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	leaq	-824(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB279_106:                            # %ehcleanup214
	leaq	-856(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
.LBB279_107:                            # %ehcleanup215
	leaq	-792(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
.LBB279_108:                            # %ehcleanup216
	leaq	-760(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
	jmp	.LBB279_114
.LBB279_109:                            # %for.end219
                                        #   in Loop: Header=BB279_89 Depth=2
	jmp	.LBB279_110
.LBB279_110:                            # %for.inc220
                                        #   in Loop: Header=BB279_89 Depth=2
	movl	-720(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -720(%rbp)
	jmp	.LBB279_89
.LBB279_111:                            # %for.end222
                                        #   in Loop: Header=BB279_87 Depth=1
	jmp	.LBB279_112
.LBB279_112:                            # %for.inc223
                                        #   in Loop: Header=BB279_87 Depth=1
	movl	-716(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -716(%rbp)
	jmp	.LBB279_87
.LBB279_113:                            # %for.end225
	leaq	-376(%rbp), %rdi
	callq	_ZN5TSpanILi2ES_ILi2EfEED2Ev
	leaq	-344(%rbp), %rdi
	callq	_ZN5TSpanILi2ES_ILi2EfEED2Ev
	leaq	-312(%rbp), %rdi
	callq	_ZN5TSpanILi2ES_ILi2EfEED2Ev
	leaq	-280(%rbp), %rdi
	callq	_ZN6TensorI5TSpanILi2EfEED2Ev
	leaq	-184(%rbp), %rdi
	callq	_ZN6TensorI5TSpanILi2EfEED2Ev
	leaq	-104(%rbp), %rdi
	callq	_ZN6TensorI5TSpanILi2EfEED2Ev
	addq	$992, %rsp              # imm = 0x3E0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB279_114:                            # %ehcleanup226
	.cfi_def_cfa %rbp, 16
	leaq	-376(%rbp), %rdi
	callq	_ZN5TSpanILi2ES_ILi2EfEED2Ev
.LBB279_115:                            # %ehcleanup227
	leaq	-344(%rbp), %rdi
	callq	_ZN5TSpanILi2ES_ILi2EfEED2Ev
.LBB279_116:                            # %ehcleanup228
	leaq	-312(%rbp), %rdi
	callq	_ZN5TSpanILi2ES_ILi2EfEED2Ev
.LBB279_117:                            # %ehcleanup229
	leaq	-280(%rbp), %rdi
	callq	_ZN6TensorI5TSpanILi2EfEED2Ev
.LBB279_118:                            # %ehcleanup230
	leaq	-184(%rbp), %rdi
	callq	_ZN6TensorI5TSpanILi2EfEED2Ev
.LBB279_119:                            # %ehcleanup231
	leaq	-104(%rbp), %rdi
	callq	_ZN6TensorI5TSpanILi2EfEED2Ev
# %bb.120:                              # %eh.resume
	movq	-192(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end279:
	.size	_Z12block_matmulILi32EEv5TSpanILi2EfES1_S1_, .Lfunc_end279-_Z12block_matmulILi32EEv5TSpanILi2EfES1_S1_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table279:
.Lexception44:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end44-.Lcst_begin44
.Lcst_begin44:
	.uleb128 .Lfunc_begin44-.Lfunc_begin44 # >> Call Site 1 <<
	.uleb128 .Ltmp692-.Lfunc_begin44 #   Call between .Lfunc_begin44 and .Ltmp692
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp692-.Lfunc_begin44 # >> Call Site 2 <<
	.uleb128 .Ltmp693-.Ltmp692      #   Call between .Ltmp692 and .Ltmp693
	.uleb128 .Ltmp694-.Lfunc_begin44 #     jumps to .Ltmp694
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp695-.Lfunc_begin44 # >> Call Site 3 <<
	.uleb128 .Ltmp696-.Ltmp695      #   Call between .Ltmp695 and .Ltmp696
	.uleb128 .Ltmp697-.Lfunc_begin44 #     jumps to .Ltmp697
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp698-.Lfunc_begin44 # >> Call Site 4 <<
	.uleb128 .Ltmp699-.Ltmp698      #   Call between .Ltmp698 and .Ltmp699
	.uleb128 .Ltmp700-.Lfunc_begin44 #     jumps to .Ltmp700
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp701-.Lfunc_begin44 # >> Call Site 5 <<
	.uleb128 .Ltmp702-.Ltmp701      #   Call between .Ltmp701 and .Ltmp702
	.uleb128 .Ltmp703-.Lfunc_begin44 #     jumps to .Ltmp703
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp704-.Lfunc_begin44 # >> Call Site 6 <<
	.uleb128 .Ltmp705-.Ltmp704      #   Call between .Ltmp704 and .Ltmp705
	.uleb128 .Ltmp706-.Lfunc_begin44 #     jumps to .Ltmp706
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp753-.Lfunc_begin44 # >> Call Site 7 <<
	.uleb128 .Ltmp754-.Ltmp753      #   Call between .Ltmp753 and .Ltmp754
	.uleb128 .Ltmp755-.Lfunc_begin44 #     jumps to .Ltmp755
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp756-.Lfunc_begin44 # >> Call Site 8 <<
	.uleb128 .Ltmp757-.Ltmp756      #   Call between .Ltmp756 and .Ltmp757
	.uleb128 .Ltmp758-.Lfunc_begin44 #     jumps to .Ltmp758
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp759-.Lfunc_begin44 # >> Call Site 9 <<
	.uleb128 .Ltmp760-.Ltmp759      #   Call between .Ltmp759 and .Ltmp760
	.uleb128 .Ltmp761-.Lfunc_begin44 #     jumps to .Ltmp761
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp762-.Lfunc_begin44 # >> Call Site 10 <<
	.uleb128 .Ltmp765-.Ltmp762      #   Call between .Ltmp762 and .Ltmp765
	.uleb128 .Ltmp766-.Lfunc_begin44 #     jumps to .Ltmp766
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp740-.Lfunc_begin44 # >> Call Site 11 <<
	.uleb128 .Ltmp741-.Ltmp740      #   Call between .Ltmp740 and .Ltmp741
	.uleb128 .Ltmp755-.Lfunc_begin44 #     jumps to .Ltmp755
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp742-.Lfunc_begin44 # >> Call Site 12 <<
	.uleb128 .Ltmp743-.Ltmp742      #   Call between .Ltmp742 and .Ltmp743
	.uleb128 .Ltmp744-.Lfunc_begin44 #     jumps to .Ltmp744
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp745-.Lfunc_begin44 # >> Call Site 13 <<
	.uleb128 .Ltmp746-.Ltmp745      #   Call between .Ltmp745 and .Ltmp746
	.uleb128 .Ltmp747-.Lfunc_begin44 #     jumps to .Ltmp747
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp748-.Lfunc_begin44 # >> Call Site 14 <<
	.uleb128 .Ltmp751-.Ltmp748      #   Call between .Ltmp748 and .Ltmp751
	.uleb128 .Ltmp752-.Lfunc_begin44 #     jumps to .Ltmp752
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp727-.Lfunc_begin44 # >> Call Site 15 <<
	.uleb128 .Ltmp728-.Ltmp727      #   Call between .Ltmp727 and .Ltmp728
	.uleb128 .Ltmp755-.Lfunc_begin44 #     jumps to .Ltmp755
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp729-.Lfunc_begin44 # >> Call Site 16 <<
	.uleb128 .Ltmp730-.Ltmp729      #   Call between .Ltmp729 and .Ltmp730
	.uleb128 .Ltmp731-.Lfunc_begin44 #     jumps to .Ltmp731
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp732-.Lfunc_begin44 # >> Call Site 17 <<
	.uleb128 .Ltmp733-.Ltmp732      #   Call between .Ltmp732 and .Ltmp733
	.uleb128 .Ltmp734-.Lfunc_begin44 #     jumps to .Ltmp734
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp735-.Lfunc_begin44 # >> Call Site 18 <<
	.uleb128 .Ltmp738-.Ltmp735      #   Call between .Ltmp735 and .Ltmp738
	.uleb128 .Ltmp739-.Lfunc_begin44 #     jumps to .Ltmp739
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp707-.Lfunc_begin44 # >> Call Site 19 <<
	.uleb128 .Ltmp708-.Ltmp707      #   Call between .Ltmp707 and .Ltmp708
	.uleb128 .Ltmp755-.Lfunc_begin44 #     jumps to .Ltmp755
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp709-.Lfunc_begin44 # >> Call Site 20 <<
	.uleb128 .Ltmp712-.Ltmp709      #   Call between .Ltmp709 and .Ltmp712
	.uleb128 .Ltmp713-.Lfunc_begin44 #     jumps to .Ltmp713
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp714-.Lfunc_begin44 # >> Call Site 21 <<
	.uleb128 .Ltmp717-.Ltmp714      #   Call between .Ltmp714 and .Ltmp717
	.uleb128 .Ltmp718-.Lfunc_begin44 #     jumps to .Ltmp718
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp719-.Lfunc_begin44 # >> Call Site 22 <<
	.uleb128 .Ltmp722-.Ltmp719      #   Call between .Ltmp719 and .Ltmp722
	.uleb128 .Ltmp723-.Lfunc_begin44 #     jumps to .Ltmp723
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp724-.Lfunc_begin44 # >> Call Site 23 <<
	.uleb128 .Ltmp725-.Ltmp724      #   Call between .Ltmp724 and .Ltmp725
	.uleb128 .Ltmp726-.Lfunc_begin44 #     jumps to .Ltmp726
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp725-.Lfunc_begin44 # >> Call Site 24 <<
	.uleb128 .Lfunc_end279-.Ltmp725 #   Call between .Ltmp725 and .Lfunc_end279
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end44:
	.p2align	2
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function _ZZ4mainENK3$_6clEv
	.type	_ZZ4mainENK3$_6clEv,@function
_ZZ4mainENK3$_6clEv:                    # @"_ZZ4mainENK3$_6clEv"
.Lfunc_begin45:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception45
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	-40(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-128(%rbp), %rsi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEC2ERKS0_
	movq	-128(%rbp), %rax        # 8-byte Reload
	addq	$32, %rax
.Ltmp767:
	leaq	-72(%rbp), %rdi
	movq	%rax, %rsi
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp768:
	jmp	.LBB280_1
.LBB280_1:                              # %invoke.cont
	movq	-128(%rbp), %rax        # 8-byte Reload
	addq	$64, %rax
.Ltmp770:
	leaq	-120(%rbp), %rdi
	movq	%rax, %rsi
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp771:
	jmp	.LBB280_2
.LBB280_2:                              # %invoke.cont5
.Ltmp773:
	leaq	-40(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	callq	_Z12block_matmulILi16EEv5TSpanILi2EfES1_S1_
.Ltmp774:
	jmp	.LBB280_3
.LBB280_3:                              # %invoke.cont7
	leaq	-120(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-72(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-40(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	addq	$128, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB280_4:                              # %lpad
	.cfi_def_cfa %rbp, 16
.Ltmp769:
	movl	%edx, %ecx
	movq	%rax, -80(%rbp)
	movl	%ecx, -84(%rbp)
	jmp	.LBB280_8
.LBB280_5:                              # %lpad4
.Ltmp772:
	movl	%edx, %ecx
	movq	%rax, -80(%rbp)
	movl	%ecx, -84(%rbp)
	jmp	.LBB280_7
.LBB280_6:                              # %lpad6
.Ltmp775:
	movl	%edx, %ecx
	movq	%rax, -80(%rbp)
	movl	%ecx, -84(%rbp)
	leaq	-120(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB280_7:                              # %ehcleanup
	leaq	-72(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB280_8:                              # %ehcleanup8
	leaq	-40(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
# %bb.9:                                # %eh.resume
	movq	-80(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end280:
	.size	_ZZ4mainENK3$_6clEv, .Lfunc_end280-_ZZ4mainENK3$_6clEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table280:
.Lexception45:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end45-.Lcst_begin45
.Lcst_begin45:
	.uleb128 .Lfunc_begin45-.Lfunc_begin45 # >> Call Site 1 <<
	.uleb128 .Ltmp767-.Lfunc_begin45 #   Call between .Lfunc_begin45 and .Ltmp767
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp767-.Lfunc_begin45 # >> Call Site 2 <<
	.uleb128 .Ltmp768-.Ltmp767      #   Call between .Ltmp767 and .Ltmp768
	.uleb128 .Ltmp769-.Lfunc_begin45 #     jumps to .Ltmp769
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp770-.Lfunc_begin45 # >> Call Site 3 <<
	.uleb128 .Ltmp771-.Ltmp770      #   Call between .Ltmp770 and .Ltmp771
	.uleb128 .Ltmp772-.Lfunc_begin45 #     jumps to .Ltmp772
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp773-.Lfunc_begin45 # >> Call Site 4 <<
	.uleb128 .Ltmp774-.Ltmp773      #   Call between .Ltmp773 and .Ltmp774
	.uleb128 .Ltmp775-.Lfunc_begin45 #     jumps to .Ltmp775
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp774-.Lfunc_begin45 # >> Call Site 5 <<
	.uleb128 .Lfunc_end280-.Ltmp774 #   Call between .Ltmp774 and .Lfunc_end280
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end45:
	.p2align	2
                                        # -- End function
	.section	.text._Z12block_matmulILi16EEv5TSpanILi2EfES1_S1_,"axG",@progbits,_Z12block_matmulILi16EEv5TSpanILi2EfES1_S1_,comdat
	.weak	_Z12block_matmulILi16EEv5TSpanILi2EfES1_S1_ # -- Begin function _Z12block_matmulILi16EEv5TSpanILi2EfES1_S1_
	.p2align	4, 0x90
	.type	_Z12block_matmulILi16EEv5TSpanILi2EfES1_S1_,@function
_Z12block_matmulILi16EEv5TSpanILi2EfES1_S1_: # @_Z12block_matmulILi16EEv5TSpanILi2EfES1_S1_
.Lfunc_begin46:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception46
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$992, %rsp              # imm = 0x3E0
	movq	8(%rdi), %rax
	movl	4(%rax), %ecx
	movq	8(%rsi), %rax
	cmpl	(%rax), %ecx
	movq	%rsi, -864(%rbp)        # 8-byte Spill
	movq	%rdi, -872(%rbp)        # 8-byte Spill
	movq	%rdx, -880(%rbp)        # 8-byte Spill
	jne	.LBB281_2
# %bb.1:                                # %cond.true
	jmp	.LBB281_3
.LBB281_2:                              # %cond.false
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$35, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi16EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB281_3:                              # %cond.end
	movq	-880(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	(%rcx), %edx
	movq	-872(%rbp), %rcx        # 8-byte Reload
	movq	8(%rcx), %rsi
	cmpl	(%rsi), %edx
	jne	.LBB281_5
# %bb.4:                                # %cond.true8
	jmp	.LBB281_6
.LBB281_5:                              # %cond.false9
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$36, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi16EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB281_6:                              # %cond.end10
	movq	-880(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	4(%rcx), %edx
	movq	-864(%rbp), %rcx        # 8-byte Reload
	movq	8(%rcx), %rsi
	cmpl	4(%rsi), %edx
	jne	.LBB281_8
# %bb.7:                                # %cond.true16
	jmp	.LBB281_9
.LBB281_8:                              # %cond.false17
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$37, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi16EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB281_9:                              # %cond.end18
	movq	-872(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	(%rcx), %eax
	cltd
	movl	$16, %esi
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB281_11
# %bb.10:                               # %cond.true22
	jmp	.LBB281_12
.LBB281_11:                             # %cond.false23
	movabsq	$.L.str.17, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$38, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi16EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB281_12:                             # %cond.end24
	movq	-872(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	4(%rcx), %eax
	cltd
	movl	$16, %esi
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB281_14
# %bb.13:                               # %cond.true29
	jmp	.LBB281_15
.LBB281_14:                             # %cond.false30
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$39, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi16EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB281_15:                             # %cond.end31
	movq	-864(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	(%rcx), %eax
	cltd
	movl	$16, %esi
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB281_17
# %bb.16:                               # %cond.true36
	jmp	.LBB281_18
.LBB281_17:                             # %cond.false37
	movabsq	$.L.str.19, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$40, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi16EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB281_18:                             # %cond.end38
	movq	-864(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	4(%rcx), %eax
	cltd
	movl	$16, %esi
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB281_20
# %bb.19:                               # %cond.true43
	jmp	.LBB281_21
.LBB281_20:                             # %cond.false44
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$41, %edx
	movabsq	$.L__PRETTY_FUNCTION__._Z12block_matmulILi16EEv5TSpanILi2EfES1_S1_, %rcx
	callq	__assert_fail
.LBB281_21:                             # %cond.end45
	movq	-872(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movl	(%rcx), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$28, %esi
	addl	%esi, %edx
	sarl	$4, %edx
	movl	%edx, -8(%rbp)
	movq	8(%rax), %rcx
	movl	4(%rcx), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$28, %esi
	addl	%esi, %edx
	sarl	$4, %edx
	movl	%edx, -4(%rbp)
	movq	-864(%rbp), %rcx        # 8-byte Reload
	movq	8(%rcx), %rdi
	movl	(%rdi), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$28, %esi
	addl	%esi, %edx
	sarl	$4, %edx
	movl	%edx, -16(%rbp)
	movq	8(%rcx), %rdi
	movl	4(%rdi), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$28, %esi
	addl	%esi, %edx
	sarl	$4, %edx
	movl	%edx, -12(%rbp)
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	8(%rdi), %r8
	movl	(%r8), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$28, %esi
	addl	%esi, %edx
	sarl	$4, %edx
	movl	%edx, -24(%rbp)
	movq	8(%rdi), %r8
	movl	4(%r8), %edx
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$28, %esi
	addl	%esi, %edx
	sarl	$4, %edx
	movl	%edx, -20(%rbp)
	movl	$2, %edx
	movl	%edx, %r8d
	leaq	-104(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	movq	%r8, %rdx
	movq	%r8, -888(%rbp)         # 8-byte Spill
	callq	_ZN6TensorI5TSpanILi2EfEEC2EPKim
.Ltmp776:
	leaq	-184(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	movq	-888(%rbp), %rdx        # 8-byte Reload
	callq	_ZN6TensorI5TSpanILi2EfEEC2EPKim
.Ltmp777:
	jmp	.LBB281_22
.LBB281_22:                             # %invoke.cont
.Ltmp779:
	movl	$2, %eax
	movl	%eax, %edx
	leaq	-280(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	_ZN6TensorI5TSpanILi2EfEEC2EPKim
.Ltmp780:
	jmp	.LBB281_23
.LBB281_23:                             # %invoke.cont70
.Ltmp782:
	leaq	-312(%rbp), %rdi
	leaq	-104(%rbp), %rsi
	callq	_ZN6TensorI5TSpanILi2EfEE8as_tspanILi2EEES0_IXT_ES1_Ev
.Ltmp783:
	jmp	.LBB281_24
.LBB281_24:                             # %invoke.cont72
.Ltmp785:
	leaq	-344(%rbp), %rdi
	leaq	-184(%rbp), %rsi
	callq	_ZN6TensorI5TSpanILi2EfEE8as_tspanILi2EEES0_IXT_ES1_Ev
.Ltmp786:
	jmp	.LBB281_25
.LBB281_25:                             # %invoke.cont74
.Ltmp788:
	leaq	-376(%rbp), %rdi
	leaq	-280(%rbp), %rsi
	callq	_ZN6TensorI5TSpanILi2EfEE8as_tspanILi2EEES0_IXT_ES1_Ev
.Ltmp789:
	jmp	.LBB281_26
.LBB281_26:                             # %invoke.cont76
	movl	$0, -380(%rbp)
	movl	$0, -384(%rbp)
.LBB281_27:                             # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB281_29 Depth 2
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	-380(%rbp), %eax
	leaq	-104(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -892(%rbp)        # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-892(%rbp), %edx        # 4-byte Reload
	cmpl	(%rax), %edx
	jge	.LBB281_50
# %bb.28:                               # %for.body
                                        #   in Loop: Header=BB281_27 Depth=1
	movl	$0, -388(%rbp)
	movl	$0, -392(%rbp)
.LBB281_29:                             # %for.cond79
                                        #   Parent Loop BB281_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movl	-388(%rbp), %eax
	leaq	-104(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -896(%rbp)        # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-896(%rbp), %edx        # 4-byte Reload
	cmpl	(%rax), %edx
	jge	.LBB281_48
# %bb.30:                               # %for.body83
                                        #   in Loop: Header=BB281_29 Depth=2
.Ltmp837:
	leaq	-456(%rbp), %rdi
	movq	-872(%rbp), %rsi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp838:
	jmp	.LBB281_31
.LBB281_31:                             # %invoke.cont85
                                        #   in Loop: Header=BB281_29 Depth=2
	movl	-392(%rbp), %edx
	movl	-384(%rbp), %ecx
.Ltmp840:
	leaq	-424(%rbp), %rdi
	leaq	-456(%rbp), %rsi
	movl	$16, %eax
	movl	%eax, %r8d
	movl	%eax, %r9d
	callq	_Z6submatIfE5TSpanILi2ET_ES2_iiii
.Ltmp841:
	jmp	.LBB281_32
.LBB281_32:                             # %invoke.cont87
                                        #   in Loop: Header=BB281_29 Depth=2
	movl	-380(%rbp), %edx
.Ltmp843:
	leaq	-488(%rbp), %rdi
	leaq	-312(%rbp), %rsi
	callq	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
.Ltmp844:
	jmp	.LBB281_33
.LBB281_33:                             # %invoke.cont90
                                        #   in Loop: Header=BB281_29 Depth=2
	movl	-388(%rbp), %esi
.Ltmp846:
	leaq	-488(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
.Ltmp847:
	movq	%rax, -904(%rbp)        # 8-byte Spill
	jmp	.LBB281_34
.LBB281_34:                             # %invoke.cont92
                                        #   in Loop: Header=BB281_29 Depth=2
.Ltmp848:
	leaq	-424(%rbp), %rsi
	movq	-904(%rbp), %rdi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEaSEOS0_
.Ltmp849:
	movq	%rax, -912(%rbp)        # 8-byte Spill
	jmp	.LBB281_35
.LBB281_35:                             # %invoke.cont94
                                        #   in Loop: Header=BB281_29 Depth=2
	leaq	-488(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
	leaq	-424(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-456(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
# %bb.36:                               # %for.inc
                                        #   in Loop: Header=BB281_29 Depth=2
	movl	-388(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -388(%rbp)
	movl	-392(%rbp), %eax
	addl	$16, %eax
	movl	%eax, -392(%rbp)
	jmp	.LBB281_29
.LBB281_37:                             # %lpad
.Ltmp778:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB281_119
.LBB281_38:                             # %lpad69
.Ltmp781:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB281_118
.LBB281_39:                             # %lpad71
.Ltmp784:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB281_117
.LBB281_40:                             # %lpad73
.Ltmp787:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB281_116
.LBB281_41:                             # %lpad75
.Ltmp790:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB281_115
.LBB281_42:                             # %lpad84
.Ltmp839:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB281_114
.LBB281_43:                             # %lpad86
.Ltmp842:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB281_47
.LBB281_44:                             # %lpad89
.Ltmp845:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB281_46
.LBB281_45:                             # %lpad91
.Ltmp850:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	leaq	-488(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
.LBB281_46:                             # %ehcleanup
	leaq	-424(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB281_47:                             # %ehcleanup96
	leaq	-456(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	jmp	.LBB281_114
.LBB281_48:                             # %for.end
                                        #   in Loop: Header=BB281_27 Depth=1
	jmp	.LBB281_49
.LBB281_49:                             # %for.inc97
                                        #   in Loop: Header=BB281_27 Depth=1
	movl	-380(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -380(%rbp)
	movl	-384(%rbp), %eax
	addl	$16, %eax
	movl	%eax, -384(%rbp)
	jmp	.LBB281_27
.LBB281_50:                             # %for.end100
	movl	$0, -492(%rbp)
	movl	$0, -496(%rbp)
.LBB281_51:                             # %for.cond103
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB281_53 Depth 2
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	-492(%rbp), %eax
	leaq	-184(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -916(%rbp)        # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-916(%rbp), %edx        # 4-byte Reload
	cmpl	(%rax), %edx
	jge	.LBB281_68
# %bb.52:                               # %for.body107
                                        #   in Loop: Header=BB281_51 Depth=1
	movl	$0, -500(%rbp)
	movl	$0, -504(%rbp)
.LBB281_53:                             # %for.cond110
                                        #   Parent Loop BB281_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movl	-500(%rbp), %eax
	leaq	-184(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -920(%rbp)        # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-920(%rbp), %edx        # 4-byte Reload
	cmpl	(%rax), %edx
	jge	.LBB281_66
# %bb.54:                               # %for.body114
                                        #   in Loop: Header=BB281_53 Depth=2
.Ltmp824:
	leaq	-568(%rbp), %rdi
	movq	-864(%rbp), %rsi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp825:
	jmp	.LBB281_55
.LBB281_55:                             # %invoke.cont117
                                        #   in Loop: Header=BB281_53 Depth=2
	movl	-504(%rbp), %edx
	movl	-496(%rbp), %ecx
.Ltmp826:
	leaq	-536(%rbp), %rdi
	leaq	-568(%rbp), %rsi
	movl	$16, %eax
	movl	%eax, %r8d
	movl	%eax, %r9d
	callq	_Z6submatIfE5TSpanILi2ET_ES2_iiii
.Ltmp827:
	jmp	.LBB281_56
.LBB281_56:                             # %invoke.cont119
                                        #   in Loop: Header=BB281_53 Depth=2
	movl	-492(%rbp), %edx
.Ltmp829:
	leaq	-600(%rbp), %rdi
	leaq	-344(%rbp), %rsi
	callq	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
.Ltmp830:
	jmp	.LBB281_57
.LBB281_57:                             # %invoke.cont122
                                        #   in Loop: Header=BB281_53 Depth=2
	movl	-500(%rbp), %esi
.Ltmp832:
	leaq	-600(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
.Ltmp833:
	movq	%rax, -928(%rbp)        # 8-byte Spill
	jmp	.LBB281_58
.LBB281_58:                             # %invoke.cont124
                                        #   in Loop: Header=BB281_53 Depth=2
.Ltmp834:
	leaq	-536(%rbp), %rsi
	movq	-928(%rbp), %rdi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEaSEOS0_
.Ltmp835:
	movq	%rax, -936(%rbp)        # 8-byte Spill
	jmp	.LBB281_59
.LBB281_59:                             # %invoke.cont126
                                        #   in Loop: Header=BB281_53 Depth=2
	leaq	-600(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
	leaq	-536(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-568(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
# %bb.60:                               # %for.inc131
                                        #   in Loop: Header=BB281_53 Depth=2
	movl	-500(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -500(%rbp)
	movl	-504(%rbp), %eax
	addl	$16, %eax
	movl	%eax, -504(%rbp)
	jmp	.LBB281_53
.LBB281_61:                             # %lpad118
.Ltmp828:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB281_65
.LBB281_62:                             # %lpad121
.Ltmp831:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB281_64
.LBB281_63:                             # %lpad123
.Ltmp836:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	leaq	-600(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
.LBB281_64:                             # %ehcleanup129
	leaq	-536(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB281_65:                             # %ehcleanup130
	leaq	-568(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	jmp	.LBB281_114
.LBB281_66:                             # %for.end134
                                        #   in Loop: Header=BB281_51 Depth=1
	jmp	.LBB281_67
.LBB281_67:                             # %for.inc135
                                        #   in Loop: Header=BB281_51 Depth=1
	movl	-492(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -492(%rbp)
	movl	-496(%rbp), %eax
	addl	$16, %eax
	movl	%eax, -496(%rbp)
	jmp	.LBB281_51
.LBB281_68:                             # %for.end138
	movl	$0, -604(%rbp)
	movl	$0, -608(%rbp)
.LBB281_69:                             # %for.cond141
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB281_71 Depth 2
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	-604(%rbp), %eax
	leaq	-280(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -940(%rbp)        # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-940(%rbp), %edx        # 4-byte Reload
	cmpl	(%rax), %edx
	jge	.LBB281_86
# %bb.70:                               # %for.body145
                                        #   in Loop: Header=BB281_69 Depth=1
	movl	$0, -612(%rbp)
	movl	$0, -616(%rbp)
.LBB281_71:                             # %for.cond148
                                        #   Parent Loop BB281_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movl	-612(%rbp), %eax
	leaq	-280(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -944(%rbp)        # 4-byte Spill
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-944(%rbp), %edx        # 4-byte Reload
	cmpl	(%rax), %edx
	jge	.LBB281_84
# %bb.72:                               # %for.body152
                                        #   in Loop: Header=BB281_71 Depth=2
.Ltmp811:
	leaq	-680(%rbp), %rdi
	movq	-880(%rbp), %rsi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp812:
	jmp	.LBB281_73
.LBB281_73:                             # %invoke.cont155
                                        #   in Loop: Header=BB281_71 Depth=2
	movl	-616(%rbp), %edx
	movl	-608(%rbp), %ecx
.Ltmp813:
	leaq	-648(%rbp), %rdi
	leaq	-680(%rbp), %rsi
	movl	$16, %eax
	movl	%eax, %r8d
	movl	%eax, %r9d
	callq	_Z6submatIfE5TSpanILi2ET_ES2_iiii
.Ltmp814:
	jmp	.LBB281_74
.LBB281_74:                             # %invoke.cont157
                                        #   in Loop: Header=BB281_71 Depth=2
	movl	-604(%rbp), %edx
.Ltmp816:
	leaq	-712(%rbp), %rdi
	leaq	-376(%rbp), %rsi
	callq	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
.Ltmp817:
	jmp	.LBB281_75
.LBB281_75:                             # %invoke.cont160
                                        #   in Loop: Header=BB281_71 Depth=2
	movl	-612(%rbp), %esi
.Ltmp819:
	leaq	-712(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
.Ltmp820:
	movq	%rax, -952(%rbp)        # 8-byte Spill
	jmp	.LBB281_76
.LBB281_76:                             # %invoke.cont162
                                        #   in Loop: Header=BB281_71 Depth=2
.Ltmp821:
	leaq	-648(%rbp), %rsi
	movq	-952(%rbp), %rdi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEaSEOS0_
.Ltmp822:
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB281_77
.LBB281_77:                             # %invoke.cont164
                                        #   in Loop: Header=BB281_71 Depth=2
	leaq	-712(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
	leaq	-648(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-680(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
# %bb.78:                               # %for.inc169
                                        #   in Loop: Header=BB281_71 Depth=2
	movl	-612(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -612(%rbp)
	movl	-616(%rbp), %eax
	addl	$16, %eax
	movl	%eax, -616(%rbp)
	jmp	.LBB281_71
.LBB281_79:                             # %lpad156
.Ltmp815:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB281_83
.LBB281_80:                             # %lpad159
.Ltmp818:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB281_82
.LBB281_81:                             # %lpad161
.Ltmp823:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	leaq	-712(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
.LBB281_82:                             # %ehcleanup167
	leaq	-648(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB281_83:                             # %ehcleanup168
	leaq	-680(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	jmp	.LBB281_114
.LBB281_84:                             # %for.end172
                                        #   in Loop: Header=BB281_69 Depth=1
	jmp	.LBB281_85
.LBB281_85:                             # %for.inc173
                                        #   in Loop: Header=BB281_69 Depth=1
	movl	-604(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -604(%rbp)
	movl	-608(%rbp), %eax
	addl	$16, %eax
	movl	%eax, -608(%rbp)
	jmp	.LBB281_69
.LBB281_86:                             # %for.end176
	movl	$0, -716(%rbp)
.LBB281_87:                             # %for.cond178
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB281_89 Depth 2
                                        #       Child Loop BB281_91 Depth 3
	movl	-716(%rbp), %eax
	movq	-368(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB281_113
# %bb.88:                               # %for.body182
                                        #   in Loop: Header=BB281_87 Depth=1
	movl	$0, -720(%rbp)
.LBB281_89:                             # %for.cond184
                                        #   Parent Loop BB281_87 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB281_91 Depth 3
	movl	-720(%rbp), %eax
	movq	-368(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB281_111
# %bb.90:                               # %for.body188
                                        #   in Loop: Header=BB281_89 Depth=2
	movl	$0, -724(%rbp)
.LBB281_91:                             # %for.cond189
                                        #   Parent Loop BB281_87 Depth=1
                                        #     Parent Loop BB281_89 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-724(%rbp), %eax
	movq	-304(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB281_109
# %bb.92:                               # %for.body193
                                        #   in Loop: Header=BB281_91 Depth=3
	movl	-716(%rbp), %edx
.Ltmp791:
	leaq	-760(%rbp), %rdi
	leaq	-312(%rbp), %rsi
	callq	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
.Ltmp792:
	jmp	.LBB281_93
.LBB281_93:                             # %invoke.cont195
                                        #   in Loop: Header=BB281_91 Depth=3
	movl	-724(%rbp), %esi
.Ltmp793:
	leaq	-760(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
.Ltmp794:
	movq	%rax, -968(%rbp)        # 8-byte Spill
	jmp	.LBB281_94
.LBB281_94:                             # %invoke.cont197
                                        #   in Loop: Header=BB281_91 Depth=3
	movl	-724(%rbp), %edx
.Ltmp795:
	leaq	-792(%rbp), %rdi
	leaq	-344(%rbp), %rsi
	callq	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
.Ltmp796:
	jmp	.LBB281_95
.LBB281_95:                             # %invoke.cont200
                                        #   in Loop: Header=BB281_91 Depth=3
	movl	-720(%rbp), %esi
.Ltmp798:
	leaq	-792(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
.Ltmp799:
	movq	%rax, -976(%rbp)        # 8-byte Spill
	jmp	.LBB281_96
.LBB281_96:                             # %invoke.cont202
                                        #   in Loop: Header=BB281_91 Depth=3
	movl	-716(%rbp), %edx
.Ltmp800:
	leaq	-856(%rbp), %rdi
	leaq	-376(%rbp), %rsi
	callq	_ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
.Ltmp801:
	jmp	.LBB281_97
.LBB281_97:                             # %invoke.cont206
                                        #   in Loop: Header=BB281_91 Depth=3
	movl	-720(%rbp), %esi
.Ltmp803:
	leaq	-856(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
.Ltmp804:
	movq	%rax, -984(%rbp)        # 8-byte Spill
	jmp	.LBB281_98
.LBB281_98:                             # %invoke.cont208
                                        #   in Loop: Header=BB281_91 Depth=3
.Ltmp805:
	leaq	-824(%rbp), %rdi
	movq	-984(%rbp), %rsi        # 8-byte Reload
	callq	_ZN5TSpanILi2EfEC2ERKS0_
.Ltmp806:
	jmp	.LBB281_99
.LBB281_99:                             # %invoke.cont210
                                        #   in Loop: Header=BB281_91 Depth=3
.Ltmp808:
	leaq	-824(%rbp), %rdx
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movq	-976(%rbp), %rsi        # 8-byte Reload
	callq	_Z9tensormulILi2ELi2EfENSt9enable_ifIXgtT_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ES3_IXmiplT_T0_Li2EES4_E
.Ltmp809:
	jmp	.LBB281_100
.LBB281_100:                            # %invoke.cont212
                                        #   in Loop: Header=BB281_91 Depth=3
	leaq	-824(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
	leaq	-856(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
	leaq	-792(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
	leaq	-760(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
# %bb.101:                              # %for.inc217
                                        #   in Loop: Header=BB281_91 Depth=3
	movl	-724(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -724(%rbp)
	jmp	.LBB281_91
.LBB281_102:                            # %lpad196
.Ltmp797:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB281_108
.LBB281_103:                            # %lpad201
.Ltmp802:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB281_107
.LBB281_104:                            # %lpad207
.Ltmp807:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	.LBB281_106
.LBB281_105:                            # %lpad211
.Ltmp810:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	leaq	-824(%rbp), %rdi
	callq	_ZN5TSpanILi2EfED2Ev
.LBB281_106:                            # %ehcleanup214
	leaq	-856(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
.LBB281_107:                            # %ehcleanup215
	leaq	-792(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
.LBB281_108:                            # %ehcleanup216
	leaq	-760(%rbp), %rdi
	callq	_ZN5TSpanILi1ES_ILi2EfEED2Ev
	jmp	.LBB281_114
.LBB281_109:                            # %for.end219
                                        #   in Loop: Header=BB281_89 Depth=2
	jmp	.LBB281_110
.LBB281_110:                            # %for.inc220
                                        #   in Loop: Header=BB281_89 Depth=2
	movl	-720(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -720(%rbp)
	jmp	.LBB281_89
.LBB281_111:                            # %for.end222
                                        #   in Loop: Header=BB281_87 Depth=1
	jmp	.LBB281_112
.LBB281_112:                            # %for.inc223
                                        #   in Loop: Header=BB281_87 Depth=1
	movl	-716(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -716(%rbp)
	jmp	.LBB281_87
.LBB281_113:                            # %for.end225
	leaq	-376(%rbp), %rdi
	callq	_ZN5TSpanILi2ES_ILi2EfEED2Ev
	leaq	-344(%rbp), %rdi
	callq	_ZN5TSpanILi2ES_ILi2EfEED2Ev
	leaq	-312(%rbp), %rdi
	callq	_ZN5TSpanILi2ES_ILi2EfEED2Ev
	leaq	-280(%rbp), %rdi
	callq	_ZN6TensorI5TSpanILi2EfEED2Ev
	leaq	-184(%rbp), %rdi
	callq	_ZN6TensorI5TSpanILi2EfEED2Ev
	leaq	-104(%rbp), %rdi
	callq	_ZN6TensorI5TSpanILi2EfEED2Ev
	addq	$992, %rsp              # imm = 0x3E0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB281_114:                            # %ehcleanup226
	.cfi_def_cfa %rbp, 16
	leaq	-376(%rbp), %rdi
	callq	_ZN5TSpanILi2ES_ILi2EfEED2Ev
.LBB281_115:                            # %ehcleanup227
	leaq	-344(%rbp), %rdi
	callq	_ZN5TSpanILi2ES_ILi2EfEED2Ev
.LBB281_116:                            # %ehcleanup228
	leaq	-312(%rbp), %rdi
	callq	_ZN5TSpanILi2ES_ILi2EfEED2Ev
.LBB281_117:                            # %ehcleanup229
	leaq	-280(%rbp), %rdi
	callq	_ZN6TensorI5TSpanILi2EfEED2Ev
.LBB281_118:                            # %ehcleanup230
	leaq	-184(%rbp), %rdi
	callq	_ZN6TensorI5TSpanILi2EfEED2Ev
.LBB281_119:                            # %ehcleanup231
	leaq	-104(%rbp), %rdi
	callq	_ZN6TensorI5TSpanILi2EfEED2Ev
# %bb.120:                              # %eh.resume
	movq	-192(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end281:
	.size	_Z12block_matmulILi16EEv5TSpanILi2EfES1_S1_, .Lfunc_end281-_Z12block_matmulILi16EEv5TSpanILi2EfES1_S1_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table281:
.Lexception46:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end46-.Lcst_begin46
.Lcst_begin46:
	.uleb128 .Lfunc_begin46-.Lfunc_begin46 # >> Call Site 1 <<
	.uleb128 .Ltmp776-.Lfunc_begin46 #   Call between .Lfunc_begin46 and .Ltmp776
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp776-.Lfunc_begin46 # >> Call Site 2 <<
	.uleb128 .Ltmp777-.Ltmp776      #   Call between .Ltmp776 and .Ltmp777
	.uleb128 .Ltmp778-.Lfunc_begin46 #     jumps to .Ltmp778
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp779-.Lfunc_begin46 # >> Call Site 3 <<
	.uleb128 .Ltmp780-.Ltmp779      #   Call between .Ltmp779 and .Ltmp780
	.uleb128 .Ltmp781-.Lfunc_begin46 #     jumps to .Ltmp781
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp782-.Lfunc_begin46 # >> Call Site 4 <<
	.uleb128 .Ltmp783-.Ltmp782      #   Call between .Ltmp782 and .Ltmp783
	.uleb128 .Ltmp784-.Lfunc_begin46 #     jumps to .Ltmp784
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp785-.Lfunc_begin46 # >> Call Site 5 <<
	.uleb128 .Ltmp786-.Ltmp785      #   Call between .Ltmp785 and .Ltmp786
	.uleb128 .Ltmp787-.Lfunc_begin46 #     jumps to .Ltmp787
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp788-.Lfunc_begin46 # >> Call Site 6 <<
	.uleb128 .Ltmp789-.Ltmp788      #   Call between .Ltmp788 and .Ltmp789
	.uleb128 .Ltmp790-.Lfunc_begin46 #     jumps to .Ltmp790
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp837-.Lfunc_begin46 # >> Call Site 7 <<
	.uleb128 .Ltmp838-.Ltmp837      #   Call between .Ltmp837 and .Ltmp838
	.uleb128 .Ltmp839-.Lfunc_begin46 #     jumps to .Ltmp839
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp840-.Lfunc_begin46 # >> Call Site 8 <<
	.uleb128 .Ltmp841-.Ltmp840      #   Call between .Ltmp840 and .Ltmp841
	.uleb128 .Ltmp842-.Lfunc_begin46 #     jumps to .Ltmp842
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp843-.Lfunc_begin46 # >> Call Site 9 <<
	.uleb128 .Ltmp844-.Ltmp843      #   Call between .Ltmp843 and .Ltmp844
	.uleb128 .Ltmp845-.Lfunc_begin46 #     jumps to .Ltmp845
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp846-.Lfunc_begin46 # >> Call Site 10 <<
	.uleb128 .Ltmp849-.Ltmp846      #   Call between .Ltmp846 and .Ltmp849
	.uleb128 .Ltmp850-.Lfunc_begin46 #     jumps to .Ltmp850
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp824-.Lfunc_begin46 # >> Call Site 11 <<
	.uleb128 .Ltmp825-.Ltmp824      #   Call between .Ltmp824 and .Ltmp825
	.uleb128 .Ltmp839-.Lfunc_begin46 #     jumps to .Ltmp839
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp826-.Lfunc_begin46 # >> Call Site 12 <<
	.uleb128 .Ltmp827-.Ltmp826      #   Call between .Ltmp826 and .Ltmp827
	.uleb128 .Ltmp828-.Lfunc_begin46 #     jumps to .Ltmp828
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp829-.Lfunc_begin46 # >> Call Site 13 <<
	.uleb128 .Ltmp830-.Ltmp829      #   Call between .Ltmp829 and .Ltmp830
	.uleb128 .Ltmp831-.Lfunc_begin46 #     jumps to .Ltmp831
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp832-.Lfunc_begin46 # >> Call Site 14 <<
	.uleb128 .Ltmp835-.Ltmp832      #   Call between .Ltmp832 and .Ltmp835
	.uleb128 .Ltmp836-.Lfunc_begin46 #     jumps to .Ltmp836
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp811-.Lfunc_begin46 # >> Call Site 15 <<
	.uleb128 .Ltmp812-.Ltmp811      #   Call between .Ltmp811 and .Ltmp812
	.uleb128 .Ltmp839-.Lfunc_begin46 #     jumps to .Ltmp839
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp813-.Lfunc_begin46 # >> Call Site 16 <<
	.uleb128 .Ltmp814-.Ltmp813      #   Call between .Ltmp813 and .Ltmp814
	.uleb128 .Ltmp815-.Lfunc_begin46 #     jumps to .Ltmp815
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp816-.Lfunc_begin46 # >> Call Site 17 <<
	.uleb128 .Ltmp817-.Ltmp816      #   Call between .Ltmp816 and .Ltmp817
	.uleb128 .Ltmp818-.Lfunc_begin46 #     jumps to .Ltmp818
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp819-.Lfunc_begin46 # >> Call Site 18 <<
	.uleb128 .Ltmp822-.Ltmp819      #   Call between .Ltmp819 and .Ltmp822
	.uleb128 .Ltmp823-.Lfunc_begin46 #     jumps to .Ltmp823
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp791-.Lfunc_begin46 # >> Call Site 19 <<
	.uleb128 .Ltmp792-.Ltmp791      #   Call between .Ltmp791 and .Ltmp792
	.uleb128 .Ltmp839-.Lfunc_begin46 #     jumps to .Ltmp839
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp793-.Lfunc_begin46 # >> Call Site 20 <<
	.uleb128 .Ltmp796-.Ltmp793      #   Call between .Ltmp793 and .Ltmp796
	.uleb128 .Ltmp797-.Lfunc_begin46 #     jumps to .Ltmp797
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp798-.Lfunc_begin46 # >> Call Site 21 <<
	.uleb128 .Ltmp801-.Ltmp798      #   Call between .Ltmp798 and .Ltmp801
	.uleb128 .Ltmp802-.Lfunc_begin46 #     jumps to .Ltmp802
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp803-.Lfunc_begin46 # >> Call Site 22 <<
	.uleb128 .Ltmp806-.Ltmp803      #   Call between .Ltmp803 and .Ltmp806
	.uleb128 .Ltmp807-.Lfunc_begin46 #     jumps to .Ltmp807
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp808-.Lfunc_begin46 # >> Call Site 23 <<
	.uleb128 .Ltmp809-.Ltmp808      #   Call between .Ltmp808 and .Ltmp809
	.uleb128 .Ltmp810-.Lfunc_begin46 #     jumps to .Ltmp810
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp809-.Lfunc_begin46 # >> Call Site 24 <<
	.uleb128 .Lfunc_end281-.Ltmp809 #   Call between .Ltmp809 and .Lfunc_end281
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end46:
	.p2align	2
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90         # -- Begin function _GLOBAL__sub_I_speedtest.cpp
	.type	_GLOBAL__sub_I_speedtest.cpp,@function
_GLOBAL__sub_I_speedtest.cpp:           # @_GLOBAL__sub_I_speedtest.cpp
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__cxx_global_var_init
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end282:
	.size	_GLOBAL__sub_I_speedtest.cpp, .Lfunc_end282-_GLOBAL__sub_I_speedtest.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"512x512 raw tensormuls: "
	.size	.L.str, 25

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"512x512 block matrix mults (bsz = 512): "
	.size	.L.str.1, 41

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"\tEqual? "
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"512x512 block matrix mults (bsz = 256): "
	.size	.L.str.3, 41

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"512x512 block matrix mults (bsz = 128): "
	.size	.L.str.4, 41

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"512x512 block matrix mults (bsz = 64): "
	.size	.L.str.5, 40

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"512x512 block matrix mults (bsz = 32): "
	.size	.L.str.6, 40

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"512x512 block matrix mults (bsz = 16): "
	.size	.L.str.7, 40

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"initialized()"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"./../tensor.h"
	.size	.L.str.9, 14

	.type	.L__PRETTY_FUNCTION__._ZNK6TensorIfEcv5TSpanIXT_EfEILi2EEEv,@object # @__PRETTY_FUNCTION__._ZNK6TensorIfEcv5TSpanIXT_EfEILi2EEEv
.L__PRETTY_FUNCTION__._ZNK6TensorIfEcv5TSpanIXT_EfEILi2EEEv:
	.asciz	"TSpan<span_rank, T> Tensor<float>::operator TSpan() const [T = float, span_rank = 2]"
	.size	.L__PRETTY_FUNCTION__._ZNK6TensorIfEcv5TSpanIXT_EfEILi2EEEv, 85

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"TSpan rank doesn't match Tensor Rank."
	.size	.L.str.10, 38

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	" iterations in "
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	" ms"
	.size	.L.str.12, 4

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"lhs.dims[1] == rhs.dims[0]"
	.size	.L.str.13, 27

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"speedtest.cpp"
	.size	.L.str.14, 14

	.type	.L__PRETTY_FUNCTION__._Z12block_matmulILi512EEv5TSpanILi2EfES1_S1_,@object # @__PRETTY_FUNCTION__._Z12block_matmulILi512EEv5TSpanILi2EfES1_S1_
.L__PRETTY_FUNCTION__._Z12block_matmulILi512EEv5TSpanILi2EfES1_S1_:
	.asciz	"void block_matmul(TSpan<2, float>, TSpan<2, float>, TSpan<2, float>) [bsz = 512]"
	.size	.L__PRETTY_FUNCTION__._Z12block_matmulILi512EEv5TSpanILi2EfES1_S1_, 81

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"res.dims[0] == lhs.dims[0]"
	.size	.L.str.15, 27

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"res.dims[1] == rhs.dims[1]"
	.size	.L.str.16, 27

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"lhs.dims[0] % bsz == 0"
	.size	.L.str.17, 23

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"lhs.dims[1] % bsz == 0"
	.size	.L.str.18, 23

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"rhs.dims[0] % bsz == 0"
	.size	.L.str.19, 23

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"rhs.dims[1] % bsz == 0"
	.size	.L.str.20, 23

	.type	.L__PRETTY_FUNCTION__._ZNK6TensorI5TSpanILi2EfEEcvS0_IXT_ES1_EILi2EEEv,@object # @__PRETTY_FUNCTION__._ZNK6TensorI5TSpanILi2EfEEcvS0_IXT_ES1_EILi2EEEv
.L__PRETTY_FUNCTION__._ZNK6TensorI5TSpanILi2EfEEcvS0_IXT_ES1_EILi2EEEv:
	.asciz	"TSpan<span_rank, T> Tensor<TSpan<2, float> >::operator TSpan() const [T = TSpan<2, float>, span_rank = 2]"
	.size	.L__PRETTY_FUNCTION__._ZNK6TensorI5TSpanILi2EfEEcvS0_IXT_ES1_EILi2EEEv, 106

	.type	.L__PRETTY_FUNCTION__._Z12block_matmulILi256EEv5TSpanILi2EfES1_S1_,@object # @__PRETTY_FUNCTION__._Z12block_matmulILi256EEv5TSpanILi2EfES1_S1_
.L__PRETTY_FUNCTION__._Z12block_matmulILi256EEv5TSpanILi2EfES1_S1_:
	.asciz	"void block_matmul(TSpan<2, float>, TSpan<2, float>, TSpan<2, float>) [bsz = 256]"
	.size	.L__PRETTY_FUNCTION__._Z12block_matmulILi256EEv5TSpanILi2EfES1_S1_, 81

	.type	.L__PRETTY_FUNCTION__._Z12block_matmulILi128EEv5TSpanILi2EfES1_S1_,@object # @__PRETTY_FUNCTION__._Z12block_matmulILi128EEv5TSpanILi2EfES1_S1_
.L__PRETTY_FUNCTION__._Z12block_matmulILi128EEv5TSpanILi2EfES1_S1_:
	.asciz	"void block_matmul(TSpan<2, float>, TSpan<2, float>, TSpan<2, float>) [bsz = 128]"
	.size	.L__PRETTY_FUNCTION__._Z12block_matmulILi128EEv5TSpanILi2EfES1_S1_, 81

	.type	.L__PRETTY_FUNCTION__._Z12block_matmulILi64EEv5TSpanILi2EfES1_S1_,@object # @__PRETTY_FUNCTION__._Z12block_matmulILi64EEv5TSpanILi2EfES1_S1_
.L__PRETTY_FUNCTION__._Z12block_matmulILi64EEv5TSpanILi2EfES1_S1_:
	.asciz	"void block_matmul(TSpan<2, float>, TSpan<2, float>, TSpan<2, float>) [bsz = 64]"
	.size	.L__PRETTY_FUNCTION__._Z12block_matmulILi64EEv5TSpanILi2EfES1_S1_, 80

	.type	.L__PRETTY_FUNCTION__._Z12block_matmulILi32EEv5TSpanILi2EfES1_S1_,@object # @__PRETTY_FUNCTION__._Z12block_matmulILi32EEv5TSpanILi2EfES1_S1_
.L__PRETTY_FUNCTION__._Z12block_matmulILi32EEv5TSpanILi2EfES1_S1_:
	.asciz	"void block_matmul(TSpan<2, float>, TSpan<2, float>, TSpan<2, float>) [bsz = 32]"
	.size	.L__PRETTY_FUNCTION__._Z12block_matmulILi32EEv5TSpanILi2EfES1_S1_, 80

	.type	.L__PRETTY_FUNCTION__._Z12block_matmulILi16EEv5TSpanILi2EfES1_S1_,@object # @__PRETTY_FUNCTION__._Z12block_matmulILi16EEv5TSpanILi2EfES1_S1_
.L__PRETTY_FUNCTION__._Z12block_matmulILi16EEv5TSpanILi2EfES1_S1_:
	.asciz	"void block_matmul(TSpan<2, float>, TSpan<2, float>, TSpan<2, float>) [bsz = 16]"
	.size	.L__PRETTY_FUNCTION__._Z12block_matmulILi16EEv5TSpanILi2EfES1_S1_, 80

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_speedtest.cpp

	.ident	"clang version 7.0.0 (git@github.com:apple/swift-clang.git 5c9d04dc0697297a47b5edb0c1a581b306a42bdb) (git@github.com:apple/swift-llvm.git 34250a6eef79ee8a83c5cfb4deb1583176dcbb63)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __cxx_global_var_init
	.addrsig_sym __cxa_atexit
	.addrsig_sym main
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _Z18make_random_tensorIfE6TensorIT_ESt16initializer_listIiEj
	.addrsig_sym _ZN6TensorIfE8as_tspanILi2EEE5TSpanIXT_EfEv
	.addrsig_sym _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	.addrsig_sym _Z7time_fnIZ4mainE3$_0JEEviT_DpT0_
	.addrsig_sym _Z7time_fnIZ4mainE3$_1JEEviT_DpT0_
	.addrsig_sym _ZNSolsEb
	.addrsig_sym _ZNK5TSpanILi2EfEeqERKS0_
	.addrsig_sym _ZNSolsEPFRSoS_E
	.addrsig_sym _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.addrsig_sym _ZN6TensorIfEaSEOS0_
	.addrsig_sym _ZN5TSpanILi2EfEaSEOS0_
	.addrsig_sym _Z7time_fnIZ4mainE3$_2JEEviT_DpT0_
	.addrsig_sym _Z7time_fnIZ4mainE3$_3JEEviT_DpT0_
	.addrsig_sym _Z7time_fnIZ4mainE3$_4JEEviT_DpT0_
	.addrsig_sym _Z7time_fnIZ4mainE3$_5JEEviT_DpT0_
	.addrsig_sym _Z7time_fnIZ4mainE3$_6JEEviT_DpT0_
	.addrsig_sym _ZNSt6vectorIfSaIfEEaSEOS1_
	.addrsig_sym _ZNSt6vectorIiSaIiEEaSEOS1_
	.addrsig_sym _ZNSt6vectorIfSaIfEE14_M_move_assignEOS1_St17integral_constantIbLb1EE
	.addrsig_sym _ZSt4moveIRSt6vectorIfSaIfEEEONSt16remove_referenceIT_E4typeEOS5_
	.addrsig_sym _ZNKSt12_Vector_baseIfSaIfEE13get_allocatorEv
	.addrsig_sym _ZNSt12_Vector_baseIfSaIfEE12_Vector_impl12_M_swap_dataERS2_
	.addrsig_sym _ZSt15__alloc_on_moveISaIfEEvRT_S2_
	.addrsig_sym _ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv
	.addrsig_sym __clang_call_terminate
	.addrsig_sym __cxa_begin_catch
	.addrsig_sym _ZSt9terminatev
	.addrsig_sym _ZNKSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv
	.addrsig_sym _ZSt4swapIPfENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_
	.addrsig_sym _ZSt4moveIRPfEONSt16remove_referenceIT_E4typeEOS3_
	.addrsig_sym _ZSt18__do_alloc_on_moveISaIfEEvRT_S2_St17integral_constantIbLb1EE
	.addrsig_sym _ZSt4moveIRSaIfEEONSt16remove_referenceIT_E4typeEOS3_
	.addrsig_sym _ZSt8_DestroyIPffEvT_S1_RSaIT0_E
	.addrsig_sym _ZSt8_DestroyIPfEvT_S1_
	.addrsig_sym _ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_
	.addrsig_sym _ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm
	.addrsig_sym _ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm
	.addrsig_sym _ZdlPv
	.addrsig_sym _ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE
	.addrsig_sym _ZSt4moveIRSt6vectorIiSaIiEEEONSt16remove_referenceIT_E4typeEOS5_
	.addrsig_sym _ZNKSt12_Vector_baseIiSaIiEE13get_allocatorEv
	.addrsig_sym _ZNSt12_Vector_baseIiSaIiEE12_Vector_impl12_M_swap_dataERS2_
	.addrsig_sym _ZSt15__alloc_on_moveISaIiEEvRT_S2_
	.addrsig_sym _ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.addrsig_sym _ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.addrsig_sym _ZSt4swapIPiENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_
	.addrsig_sym _ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_
	.addrsig_sym _ZSt18__do_alloc_on_moveISaIiEEvRT_S2_St17integral_constantIbLb1EE
	.addrsig_sym _ZSt4moveIRSaIiEEONSt16remove_referenceIT_E4typeEOS3_
	.addrsig_sym _ZNSt6vectorIiSaIiEE19_M_range_initializeIPKiEEvT_S5_St20forward_iterator_tag
	.addrsig_sym _ZNKSt16initializer_listIiE5beginEv
	.addrsig_sym _ZNKSt16initializer_listIiE3endEv
	.addrsig_sym _ZSt8distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.addrsig_sym _ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	.addrsig_sym _ZSt22__uninitialized_copy_aIPKiPiiET0_T_S4_S3_RSaIT1_E
	.addrsig_sym _ZSt10__distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.addrsig_sym _ZSt19__iterator_categoryIPKiENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.addrsig_sym _ZNSt16allocator_traitsISaIiEE8allocateERS0_m
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv
	.addrsig_sym _ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv
	.addrsig_sym _ZSt17__throw_bad_allocv
	.addrsig_sym _Znwm
	.addrsig_sym _ZSt18uninitialized_copyIPKiPiET0_T_S4_S3_
	.addrsig_sym _ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKiPiEET0_T_S6_S5_
	.addrsig_sym _ZSt4copyIPKiPiET0_T_S4_S3_
	.addrsig_sym _ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_
	.addrsig_sym _ZSt12__miter_baseIPKiET_S2_
	.addrsig_sym _ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_
	.addrsig_sym _ZSt12__niter_baseIPKiET_S2_
	.addrsig_sym _ZSt12__niter_baseIPiET_S1_
	.addrsig_sym _ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_
	.addrsig_sym _ZNKSt16initializer_listIiE4sizeEv
	.addrsig_sym _ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	.addrsig_sym _ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim
	.addrsig_sym _ZSt8_DestroyIPiiEvT_S1_RSaIT0_E
	.addrsig_sym _ZSt8_DestroyIPiEvT_S1_
	.addrsig_sym _ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	.addrsig_sym _ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE4seedEm
	.addrsig_sym _ZNSt25uniform_real_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_
	.addrsig_sym _ZNSt8__detail5__modImLm2147483647ELm1ELm0EEET_S1_
	.addrsig_sym _ZNSt8__detail4_ModImLm2147483647ELm1ELm0ELb1ELb1EE6__calcEm
	.addrsig_sym _ZNSt25uniform_real_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_RKNS0_10param_typeE
	.addrsig_sym _ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEclEv
	.addrsig_sym _ZNKSt25uniform_real_distributionIfE10param_type1bEv
	.addrsig_sym _ZNKSt25uniform_real_distributionIfE10param_type1aEv
	.addrsig_sym _ZSt18generate_canonicalIfLm24ESt26linear_congruential_engineImLm16807ELm0ELm2147483647EEET_RT1_
	.addrsig_sym _ZSt3minImERKT_S2_S2_
	.addrsig_sym _ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3maxEv
	.addrsig_sym _ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3minEv
	.addrsig_sym _ZSt3loge
	.addrsig_sym _ZSt3maxImERKT_S2_S2_
	.addrsig_sym _ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEclEv
	.addrsig_sym _ZSt9nextafterff
	.addrsig_sym logl
	.addrsig_sym _ZNSt8__detail5__modImLm2147483647ELm16807ELm0EEET_S1_
	.addrsig_sym _ZNSt8__detail4_ModImLm2147483647ELm16807ELm0ELb1ELb1EE6__calcEm
	.addrsig_sym nextafterf
	.addrsig_sym _ZNSt6vectorIfSaIfEE5beginEv
	.addrsig_sym _ZNSt6vectorIfSaIfEE3endEv
	.addrsig_sym _ZN9__gnu_cxxneIPfSt6vectorIfSaIfEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.addrsig_sym _ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEdeEv
	.addrsig_sym _ZN15uniform_randgenIfEdeEv
	.addrsig_sym _ZN15uniform_randgenIfEppEv
	.addrsig_sym _ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEppEv
	.addrsig_sym _ZNKSt6vectorIiSaIiEE4dataEv
	.addrsig_sym _ZNKSt6vectorIiSaIiEE4sizeEv
	.addrsig_sym _ZNKSt6vectorIiSaIiEE11_M_data_ptrIiEEPT_S4_
	.addrsig_sym _ZN6TensorIfE21copy_dims_get_stridesEPKi
	.addrsig_sym _ZNSt6vectorIiSaIiEE21_M_default_initializeEm
	.addrsig_sym _ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm
	.addrsig_sym _ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E
	.addrsig_sym _ZSt25__uninitialized_default_nIPimET_S1_T0_
	.addrsig_sym _ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_
	.addrsig_sym _ZSt6fill_nIPimiET_S1_T0_RKT1_
	.addrsig_sym _ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_
	.addrsig_sym _ZNSt6vectorIiSaIiEEixEm
	.addrsig_sym _ZNSt6vectorIfSaIfEE18_M_fill_initializeEmRKf
	.addrsig_sym _ZNSt12_Vector_baseIfSaIfEE17_M_create_storageEm
	.addrsig_sym _ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm
	.addrsig_sym _ZNSt16allocator_traitsISaIfEE8allocateERS0_m
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv
	.addrsig_sym _ZNK9__gnu_cxx13new_allocatorIfE8max_sizeEv
	.addrsig_sym _ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E
	.addrsig_sym _ZSt20uninitialized_fill_nIPfmfET_S1_T0_RKT1_
	.addrsig_sym _ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPfmfEET_S3_T0_RKT1_
	.addrsig_sym _ZSt6fill_nIPfmfET_S1_T0_RKT1_
	.addrsig_sym _ZSt10__fill_n_aIPfmfEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_
	.addrsig_sym _ZSt12__niter_baseIPfET_S1_
	.addrsig_sym _ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEE4baseEv
	.addrsig_sym _ZNK6TensorIfEcv5TSpanIXT_EfEILi2EEEv
	.addrsig_sym _ZNK6TensorIfE11initializedEv
	.addrsig_sym __assert_fail
	.addrsig_sym __cxa_allocate_exception
	.addrsig_sym __cxa_free_exception
	.addrsig_sym __cxa_throw
	.addrsig_sym _ZNKSt6vectorIfSaIfEE4dataEv
	.addrsig_sym _ZNKSt6vectorIfSaIfEE11_M_data_ptrIfEEPT_S4_
	.addrsig_sym _ZN11RCTSpanData3refEv
	.addrsig_sym _ZN11RCTSpanData5derefEv
	.addrsig_sym _ZdaPv
	.addrsig_sym _ZNSt6chrono3_V212system_clock3nowEv
	.addrsig_sym _ZZ4mainENK3$_0clEv
	.addrsig_sym _ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	.addrsig_sym _ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.addrsig_sym _ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv
	.addrsig_sym _ZNSolsEi
	.addrsig_sym _ZNSolsEl
	.addrsig_sym _Z9tensormulILi2ELi2EfENSt9enable_ifIXgtT_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ES3_IXmiplT_T0_Li2EES4_E
	.addrsig_sym _Z9tensormulILi1ELi2EfENSt9enable_ifIXaaeqT_Li1EgtT0_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ES3_IXmiplT_T0_Li2EES4_E
	.addrsig_sym _ZNK5TSpanILi2EfEixILb0EEEKNSt9enable_ifIXntT_ES_ILi1EfEE4typeEi
	.addrsig_sym _ZN5TSpanILi2EfEixILb0EEENSt9enable_ifIXntT_ES_ILi1EfEE4typeEi
	.addrsig_sym _Z9tensormulILi1ELi1EfENSt9enable_ifIXaaeqT_Li1EeqT0_Li1EEvE4typeERK5TSpanIXT_ET1_ERKS3_IXT0_ES4_ERS4_
	.addrsig_sym _ZNK5TSpanILi2EfE10back_indexILb0EEEKNSt9enable_ifIXntT_ES_ILi1EfEE4typeEi
	.addrsig_sym _ZN5TSpanILi1EfE10back_indexILb1EEENSt9enable_ifIXT_ERfE4typeEi
	.addrsig_sym _ZNK5TSpanILi1EfEixILb1EEENSt9enable_ifIXT_ERKfE4typeEi
	.addrsig_sym _ZN5TSpanILi1EfEixILb1EEENSt9enable_ifIXT_ERfE4typeEi
	.addrsig_sym _ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE
	.addrsig_sym _ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.addrsig_sym _ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.addrsig_sym _ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.addrsig_sym _ZZ4mainENK3$_1clEv
	.addrsig_sym _Z12block_matmulILi512EEv5TSpanILi2EfES1_S1_
	.addrsig_sym _ZN6TensorI5TSpanILi2EfEE8as_tspanILi2EEES0_IXT_ES1_Ev
	.addrsig_sym _Z6submatIfE5TSpanILi2ET_ES2_iiii
	.addrsig_sym _ZN5TSpanILi2ES_ILi2EfEEixILb0EEENSt9enable_ifIXntT_ES_ILi1ES0_EE4typeEi
	.addrsig_sym _ZN5TSpanILi1ES_ILi2EfEEixILb1EEENSt9enable_ifIXT_ERS0_E4typeEi
	.addrsig_sym _ZN6TensorI5TSpanILi2EfEE21copy_dims_get_stridesEPKi
	.addrsig_sym _ZNSt6vectorI5TSpanILi2EfESaIS1_EEaSEOS3_
	.addrsig_sym _ZNSt6vectorI5TSpanILi2EfESaIS1_EE18_M_fill_initializeEmRKS1_
	.addrsig_sym _ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE17_M_create_storageEm
	.addrsig_sym _ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE11_M_allocateEm
	.addrsig_sym _ZNSt16allocator_traitsISaI5TSpanILi2EfEEE8allocateERS2_m
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEE8allocateEmPKv
	.addrsig_sym _ZNK9__gnu_cxx13new_allocatorI5TSpanILi2EfEE8max_sizeEv
	.addrsig_sym _ZSt24__uninitialized_fill_n_aIP5TSpanILi2EfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E
	.addrsig_sym _ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE19_M_get_Tp_allocatorEv
	.addrsig_sym _ZSt20uninitialized_fill_nIP5TSpanILi2EfEmS1_ET_S3_T0_RKT1_
	.addrsig_sym _ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIP5TSpanILi2EfEmS3_EET_S5_T0_RKT1_
	.addrsig_sym _ZSt10_ConstructI5TSpanILi2EfEJRKS1_EEvPT_DpOT0_
	.addrsig_sym _ZSt11__addressofI5TSpanILi2EfEEPT_RS2_
	.addrsig_sym _ZSt8_DestroyIP5TSpanILi2EfEEvT_S3_
	.addrsig_sym __cxa_rethrow
	.addrsig_sym __cxa_end_catch
	.addrsig_sym _ZSt7forwardIRK5TSpanILi2EfEEOT_RNSt16remove_referenceIS4_E4typeE
	.addrsig_sym _ZNSt12_Destroy_auxILb0EE9__destroyIP5TSpanILi2EfEEEvT_S5_
	.addrsig_sym _ZSt8_DestroyI5TSpanILi2EfEEvPT_
	.addrsig_sym _ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE13_M_deallocateEPS1_m
	.addrsig_sym _ZNSt16allocator_traitsISaI5TSpanILi2EfEEE10deallocateERS2_PS1_m
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorI5TSpanILi2EfEE10deallocateEPS2_m
	.addrsig_sym _ZNSt6vectorI5TSpanILi2EfESaIS1_EE14_M_move_assignEOS3_St17integral_constantIbLb1EE
	.addrsig_sym _ZSt4moveIRSt6vectorI5TSpanILi2EfESaIS2_EEEONSt16remove_referenceIT_E4typeEOS7_
	.addrsig_sym _ZNKSt12_Vector_baseI5TSpanILi2EfESaIS1_EE13get_allocatorEv
	.addrsig_sym _ZNSt12_Vector_baseI5TSpanILi2EfESaIS1_EE12_Vector_impl12_M_swap_dataERS4_
	.addrsig_sym _ZSt15__alloc_on_moveISaI5TSpanILi2EfEEEvRT_S4_
	.addrsig_sym _ZNKSt12_Vector_baseI5TSpanILi2EfESaIS1_EE19_M_get_Tp_allocatorEv
	.addrsig_sym _ZSt4swapIP5TSpanILi2EfEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_
	.addrsig_sym _ZSt4moveIRP5TSpanILi2EfEEONSt16remove_referenceIT_E4typeEOS5_
	.addrsig_sym _ZSt18__do_alloc_on_moveISaI5TSpanILi2EfEEEvRT_S4_St17integral_constantIbLb1EE
	.addrsig_sym _ZSt4moveIRSaI5TSpanILi2EfEEEONSt16remove_referenceIT_E4typeEOS5_
	.addrsig_sym _ZSt8_DestroyIP5TSpanILi2EfES1_EvT_S3_RSaIT0_E
	.addrsig_sym _ZNK6TensorI5TSpanILi2EfEEcvS0_IXT_ES1_EILi2EEEv
	.addrsig_sym _ZNK6TensorI5TSpanILi2EfEE11initializedEv
	.addrsig_sym _ZNKSt6vectorI5TSpanILi2EfESaIS1_EE4dataEv
	.addrsig_sym _ZNKSt6vectorI5TSpanILi2EfESaIS1_EE11_M_data_ptrIS1_EEPT_S6_
	.addrsig_sym _Znam
	.addrsig_sym _ZL7compareI5TSpanILi1EfEEbRKT_S4_
	.addrsig_sym _ZNK5TSpanILi1EfEeqERKS0_
	.addrsig_sym _ZL7compareRKfS0_
	.addrsig_sym _ZZ4mainENK3$_2clEv
	.addrsig_sym _Z12block_matmulILi256EEv5TSpanILi2EfES1_S1_
	.addrsig_sym _ZZ4mainENK3$_3clEv
	.addrsig_sym _Z12block_matmulILi128EEv5TSpanILi2EfES1_S1_
	.addrsig_sym _ZZ4mainENK3$_4clEv
	.addrsig_sym _Z12block_matmulILi64EEv5TSpanILi2EfES1_S1_
	.addrsig_sym _ZZ4mainENK3$_5clEv
	.addrsig_sym _Z12block_matmulILi32EEv5TSpanILi2EfES1_S1_
	.addrsig_sym _ZZ4mainENK3$_6clEv
	.addrsig_sym _Z12block_matmulILi16EEv5TSpanILi2EfES1_S1_
	.addrsig_sym _GLOBAL__sub_I_speedtest.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZSt4cout
	.addrsig_sym _ZTISt13runtime_error
