	.text
	.attribute	4, 16
	.attribute	5, "rv32i2p0_m2p0_a2p0_c2p0"
	.file	"bzip2.c"
	.globl	main
	.p2align	1
	.type	main,@function
main:
	addi	sp, sp, -96
	sw	ra, 92(sp)
	sw	s0, 88(sp)
	addi	s0, sp, 96
	mv	a2, a0
	mv	a0, zero
	sw	a0, -64(s0)
	sw	a0, -12(s0)
	sw	a2, -16(s0)
	sw	a1, -20(s0)
	lui	a1, %hi(outputHandleJustInCase)
	sw	a0, %lo(outputHandleJustInCase)(a1)
	lui	a1, %hi(smallMode)
	sb	a0, %lo(smallMode)(a1)
	lui	a1, %hi(keepInputFiles)
	sb	a0, %lo(keepInputFiles)(a1)
	lui	a1, %hi(forceOverwrite)
	sb	a0, %lo(forceOverwrite)(a1)
	lui	a2, %hi(noisy)
	addi	a1, zero, 1
	sb	a1, %lo(noisy)(a2)
	lui	a1, %hi(verbosity)
	sw	a0, %lo(verbosity)(a1)
	lui	a2, %hi(blockSize100k)
	addi	a1, zero, 9
	sw	a1, %lo(blockSize100k)(a2)
	lui	a1, %hi(testFailsExist)
	sb	a0, %lo(testFailsExist)(a1)
	lui	a1, %hi(unzFailsExist)
	sb	a0, %lo(unzFailsExist)(a1)
	lui	a1, %hi(numFileNames)
	sw	a0, %lo(numFileNames)(a1)
	lui	a1, %hi(numFilesProcessed)
	sw	a0, %lo(numFilesProcessed)(a1)
	lui	a2, %hi(workFactor)
	addi	a1, zero, 30
	sw	a1, %lo(workFactor)(a2)
	lui	a1, %hi(deleteOutputOnInterrupt)
	sb	a0, %lo(deleteOutputOnInterrupt)(a1)
	lui	a1, %hi(exitValue)
	sw	a0, %lo(exitValue)(a1)
	sw	a0, -28(s0)
	sw	a0, -24(s0)
	lui	a0, %hi(mySIGSEGVorSIGBUScatcher)
	addi	a1, a0, %lo(mySIGSEGVorSIGBUScatcher)
	sw	a1, -60(s0)
	addi	a0, zero, 11
	call	signal
	lw	a1, -60(s0)
	addi	a0, zero, 10
	call	signal
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	lui	a1, %hi(.L.str.6)
	addi	a1, a1, %lo(.L.str.6)
	sw	a1, -56(s0)
	call	copyFileName
	lw	a1, -56(s0)
	lui	a0, %hi(outName)
	addi	a0, a0, %lo(outName)
	call	copyFileName
	lw	a0, -20(s0)
	lw	a1, 0(a0)
	lui	a0, %hi(progNameReally)
	addi	a0, a0, %lo(progNameReally)
	sw	a0, -52(s0)
	call	copyFileName
	lw	a0, -52(s0)
	lui	a1, %hi(progName)
	sw	a0, %lo(progName)(a1)
	sw	a0, -32(s0)
	j	.LBB0_1
.LBB0_1:
	lw	a0, -32(s0)
	lbu	a0, 0(a0)
	mv	a1, zero
	beq	a0, a1, .LBB0_6
	j	.LBB0_2
.LBB0_2:
	lw	a0, -32(s0)
	lbu	a0, 0(a0)
	addi	a1, zero, 47
	bne	a0, a1, .LBB0_4
	j	.LBB0_3
.LBB0_3:
	lw	a0, -32(s0)
	addi	a0, a0, 1
	lui	a1, %hi(progName)
	sw	a0, %lo(progName)(a1)
	j	.LBB0_4
.LBB0_4:
	j	.LBB0_5
.LBB0_5:
	lw	a0, -32(s0)
	addi	a0, a0, 1
	sw	a0, -32(s0)
	j	.LBB0_1
.LBB0_6:
	mv	a0, zero
	sw	a0, -36(s0)
	lui	a0, %hi(.L.str.7)
	addi	a1, a0, %lo(.L.str.7)
	addi	a0, s0, -36
	sw	a0, -68(s0)
	call	addFlagsFromEnvVar
	lw	a0, -68(s0)
	lui	a1, %hi(.L.str.8)
	addi	a1, a1, %lo(.L.str.8)
	call	addFlagsFromEnvVar
	addi	a0, zero, 1
	sw	a0, -24(s0)
	j	.LBB0_7
.LBB0_7:
	lw	a1, -24(s0)
	lw	a0, -16(s0)
	addi	a0, a0, -1
	blt	a0, a1, .LBB0_10
	j	.LBB0_8
.LBB0_8:
	lw	a0, -36(s0)
	lw	a1, -20(s0)
	lw	a2, -24(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	call	snocString
	sw	a0, -36(s0)
	j	.LBB0_9
.LBB0_9:
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB0_7
.LBB0_10:
	lui	a1, %hi(longestFileName)
	addi	a0, zero, 7
	sw	a0, %lo(longestFileName)(a1)
	lui	a1, %hi(numFileNames)
	mv	a0, zero
	sw	a0, %lo(numFileNames)(a1)
	addi	a0, zero, 1
	sb	a0, -41(s0)
	lw	a0, -36(s0)
	sw	a0, -40(s0)
	j	.LBB0_11
.LBB0_11:
	lw	a0, -40(s0)
	mv	a1, zero
	beq	a0, a1, .LBB0_21
	j	.LBB0_12
.LBB0_12:
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	lui	a1, %hi(.L.str.9)
	addi	a1, a1, %lo(.L.str.9)
	call	strcmp
	mv	a1, zero
	bne	a0, a1, .LBB0_14
	j	.LBB0_13
.LBB0_13:
	mv	a0, zero
	sb	a0, -41(s0)
	j	.LBB0_20
.LBB0_14:
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	lbu	a0, 0(a0)
	addi	a1, zero, 45
	bne	a0, a1, .LBB0_17
	j	.LBB0_15
.LBB0_15:
	lbu	a0, -41(s0)
	mv	a1, zero
	beq	a0, a1, .LBB0_17
	j	.LBB0_16
.LBB0_16:
	j	.LBB0_20
.LBB0_17:
	lui	a1, %hi(numFileNames)
	lw	a0, %lo(numFileNames)(a1)
	addi	a0, a0, 1
	sw	a0, %lo(numFileNames)(a1)
	lui	a0, %hi(longestFileName)
	lw	a0, %lo(longestFileName)(a0)
	sw	a0, -72(s0)
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	call	strlen
	mv	a1, a0
	lw	a0, -72(s0)
	bge	a0, a1, .LBB0_19
	j	.LBB0_18
.LBB0_18:
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	call	strlen
	lui	a1, %hi(longestFileName)
	sw	a0, %lo(longestFileName)(a1)
	j	.LBB0_19
.LBB0_19:
	j	.LBB0_20
.LBB0_20:
	lw	a0, -40(s0)
	lw	a0, 4(a0)
	sw	a0, -40(s0)
	j	.LBB0_11
.LBB0_21:
	lui	a0, %hi(numFileNames)
	lw	a0, %lo(numFileNames)(a0)
	mv	a1, zero
	bne	a0, a1, .LBB0_23
	j	.LBB0_22
.LBB0_22:
	lui	a1, %hi(srcMode)
	addi	a0, zero, 1
	sw	a0, %lo(srcMode)(a1)
	j	.LBB0_24
.LBB0_23:
	lui	a1, %hi(srcMode)
	addi	a0, zero, 3
	sw	a0, %lo(srcMode)(a1)
	j	.LBB0_24
.LBB0_24:
	lui	a1, %hi(opMode)
	addi	a0, zero, 1
	sw	a0, %lo(opMode)(a1)
	lui	a0, %hi(progName)
	lw	a0, %lo(progName)(a0)
	lui	a1, %hi(.L.str.10)
	addi	a1, a1, %lo(.L.str.10)
	call	strstr
	mv	a1, zero
	bne	a0, a1, .LBB0_26
	j	.LBB0_25
.LBB0_25:
	lui	a0, %hi(progName)
	lw	a0, %lo(progName)(a0)
	lui	a1, %hi(.L.str.11)
	addi	a1, a1, %lo(.L.str.11)
	call	strstr
	mv	a1, zero
	beq	a0, a1, .LBB0_27
	j	.LBB0_26
.LBB0_26:
	lui	a1, %hi(opMode)
	addi	a0, zero, 2
	sw	a0, %lo(opMode)(a1)
	j	.LBB0_27
.LBB0_27:
	lui	a0, %hi(progName)
	lw	a0, %lo(progName)(a0)
	lui	a1, %hi(.L.str.12)
	addi	a1, a1, %lo(.L.str.12)
	call	strstr
	mv	a1, zero
	bne	a0, a1, .LBB0_31
	j	.LBB0_28
.LBB0_28:
	lui	a0, %hi(progName)
	lw	a0, %lo(progName)(a0)
	lui	a1, %hi(.L.str.13)
	addi	a1, a1, %lo(.L.str.13)
	call	strstr
	mv	a1, zero
	bne	a0, a1, .LBB0_31
	j	.LBB0_29
.LBB0_29:
	lui	a0, %hi(progName)
	lw	a0, %lo(progName)(a0)
	lui	a1, %hi(.L.str.14)
	addi	a1, a1, %lo(.L.str.14)
	call	strstr
	mv	a1, zero
	bne	a0, a1, .LBB0_31
	j	.LBB0_30
.LBB0_30:
	lui	a0, %hi(progName)
	lw	a0, %lo(progName)(a0)
	lui	a1, %hi(.L.str.15)
	addi	a1, a1, %lo(.L.str.15)
	call	strstr
	mv	a1, zero
	beq	a0, a1, .LBB0_32
	j	.LBB0_31
.LBB0_31:
	lui	a1, %hi(opMode)
	addi	a0, zero, 2
	sw	a0, %lo(opMode)(a1)
	lui	a1, %hi(numFileNames)
	lw	a1, %lo(numFileNames)(a1)
	seqz	a1, a1
	sub	a0, a0, a1
	lui	a1, %hi(srcMode)
	sw	a0, %lo(srcMode)(a1)
	j	.LBB0_32
.LBB0_32:
	lw	a0, -36(s0)
	sw	a0, -40(s0)
	j	.LBB0_33
.LBB0_33:
	lw	a0, -40(s0)
	mv	a1, zero
	beq	a0, a1, .LBB0_68
	j	.LBB0_34
.LBB0_34:
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	lui	a1, %hi(.L.str.9)
	addi	a1, a1, %lo(.L.str.9)
	call	strcmp
	mv	a1, zero
	bne	a0, a1, .LBB0_36
	j	.LBB0_35
.LBB0_35:
	j	.LBB0_68
.LBB0_36:
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	lbu	a0, 0(a0)
	addi	a1, zero, 45
	bne	a0, a1, .LBB0_66
	j	.LBB0_37
.LBB0_37:
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	lbu	a0, 1(a0)
	addi	a1, zero, 45
	beq	a0, a1, .LBB0_66
	j	.LBB0_38
.LBB0_38:
	addi	a0, zero, 1
	sw	a0, -28(s0)
	j	.LBB0_39
.LBB0_39:
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	lw	a1, -28(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	mv	a1, zero
	beq	a0, a1, .LBB0_65
	j	.LBB0_40
.LBB0_40:
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	lw	a1, -28(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	addi	a1, a0, -49
	sw	a1, -76(s0)
	addi	a0, zero, 73
	bltu	a0, a1, .LBB0_62
	lw	a0, -76(s0)
	slli	a0, a0, 2
	lui	a1, %hi(.LJTI0_0)
	addi	a1, a1, %lo(.LJTI0_0)
	add	a0, a0, a1
	lw	a0, 0(a0)
	jr	a0
.LBB0_42:
	lui	a1, %hi(srcMode)
	addi	a0, zero, 2
	sw	a0, %lo(srcMode)(a1)
	j	.LBB0_63
.LBB0_43:
	lui	a1, %hi(opMode)
	addi	a0, zero, 2
	sw	a0, %lo(opMode)(a1)
	j	.LBB0_63
.LBB0_44:
	lui	a1, %hi(opMode)
	addi	a0, zero, 1
	sw	a0, %lo(opMode)(a1)
	j	.LBB0_63
.LBB0_45:
	lui	a1, %hi(forceOverwrite)
	addi	a0, zero, 1
	sb	a0, %lo(forceOverwrite)(a1)
	j	.LBB0_63
.LBB0_46:
	lui	a1, %hi(opMode)
	addi	a0, zero, 3
	sw	a0, %lo(opMode)(a1)
	j	.LBB0_63
.LBB0_47:
	lui	a1, %hi(keepInputFiles)
	addi	a0, zero, 1
	sb	a0, %lo(keepInputFiles)(a1)
	j	.LBB0_63
.LBB0_48:
	lui	a1, %hi(smallMode)
	addi	a0, zero, 1
	sb	a0, %lo(smallMode)(a1)
	j	.LBB0_63
.LBB0_49:
	lui	a1, %hi(noisy)
	mv	a0, zero
	sb	a0, %lo(noisy)(a1)
	j	.LBB0_63
.LBB0_50:
	lui	a1, %hi(blockSize100k)
	addi	a0, zero, 1
	sw	a0, %lo(blockSize100k)(a1)
	j	.LBB0_63
.LBB0_51:
	lui	a1, %hi(blockSize100k)
	addi	a0, zero, 2
	sw	a0, %lo(blockSize100k)(a1)
	j	.LBB0_63
.LBB0_52:
	lui	a1, %hi(blockSize100k)
	addi	a0, zero, 3
	sw	a0, %lo(blockSize100k)(a1)
	j	.LBB0_63
.LBB0_53:
	lui	a1, %hi(blockSize100k)
	addi	a0, zero, 4
	sw	a0, %lo(blockSize100k)(a1)
	j	.LBB0_63
.LBB0_54:
	lui	a1, %hi(blockSize100k)
	addi	a0, zero, 5
	sw	a0, %lo(blockSize100k)(a1)
	j	.LBB0_63
.LBB0_55:
	lui	a1, %hi(blockSize100k)
	addi	a0, zero, 6
	sw	a0, %lo(blockSize100k)(a1)
	j	.LBB0_63
.LBB0_56:
	lui	a1, %hi(blockSize100k)
	addi	a0, zero, 7
	sw	a0, %lo(blockSize100k)(a1)
	j	.LBB0_63
.LBB0_57:
	lui	a1, %hi(blockSize100k)
	addi	a0, zero, 8
	sw	a0, %lo(blockSize100k)(a1)
	j	.LBB0_63
.LBB0_58:
	lui	a1, %hi(blockSize100k)
	addi	a0, zero, 9
	sw	a0, %lo(blockSize100k)(a1)
	j	.LBB0_63
.LBB0_59:
	call	license
	j	.LBB0_63
.LBB0_60:
	lui	a1, %hi(verbosity)
	lw	a0, %lo(verbosity)(a1)
	addi	a0, a0, 1
	sw	a0, %lo(verbosity)(a1)
	j	.LBB0_63
.LBB0_61:
	lui	a0, %hi(progName)
	lw	a0, %lo(progName)(a0)
	call	usage
	mv	a0, zero
	call	exit
.LBB0_62:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	sw	a1, -80(s0)
	lw	a2, %lo(progName)(a1)
	lw	a1, -40(s0)
	lw	a3, 0(a1)
	lui	a1, %hi(.L.str.16)
	addi	a1, a1, %lo(.L.str.16)
	call	fprintf
	lw	a0, -80(s0)
	lw	a0, %lo(progName)(a0)
	call	usage
	addi	a0, zero, 1
	call	exit
.LBB0_63:
	j	.LBB0_64
.LBB0_64:
	lw	a0, -28(s0)
	addi	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB0_39
.LBB0_65:
	j	.LBB0_66
.LBB0_66:
	j	.LBB0_67
.LBB0_67:
	lw	a0, -40(s0)
	lw	a0, 4(a0)
	sw	a0, -40(s0)
	j	.LBB0_33
.LBB0_68:
	lw	a0, -36(s0)
	sw	a0, -40(s0)
	j	.LBB0_69
.LBB0_69:
	lw	a0, -40(s0)
	mv	a1, zero
	beq	a0, a1, .LBB0_127
	j	.LBB0_70
.LBB0_70:
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	lui	a1, %hi(.L.str.9)
	addi	a1, a1, %lo(.L.str.9)
	call	strcmp
	mv	a1, zero
	bne	a0, a1, .LBB0_72
	j	.LBB0_71
.LBB0_71:
	j	.LBB0_127
.LBB0_72:
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	lui	a1, %hi(.L.str.17)
	addi	a1, a1, %lo(.L.str.17)
	call	strcmp
	mv	a1, zero
	bne	a0, a1, .LBB0_74
	j	.LBB0_73
.LBB0_73:
	lui	a1, %hi(srcMode)
	addi	a0, zero, 2
	sw	a0, %lo(srcMode)(a1)
	j	.LBB0_125
.LBB0_74:
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	lui	a1, %hi(.L.str.18)
	addi	a1, a1, %lo(.L.str.18)
	call	strcmp
	mv	a1, zero
	bne	a0, a1, .LBB0_76
	j	.LBB0_75
.LBB0_75:
	lui	a1, %hi(opMode)
	addi	a0, zero, 2
	sw	a0, %lo(opMode)(a1)
	j	.LBB0_124
.LBB0_76:
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	lui	a1, %hi(.L.str.19)
	addi	a1, a1, %lo(.L.str.19)
	call	strcmp
	mv	a1, zero
	bne	a0, a1, .LBB0_78
	j	.LBB0_77
.LBB0_77:
	lui	a1, %hi(opMode)
	addi	a0, zero, 1
	sw	a0, %lo(opMode)(a1)
	j	.LBB0_123
.LBB0_78:
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	lui	a1, %hi(.L.str.20)
	addi	a1, a1, %lo(.L.str.20)
	call	strcmp
	mv	a1, zero
	bne	a0, a1, .LBB0_80
	j	.LBB0_79
.LBB0_79:
	lui	a1, %hi(forceOverwrite)
	addi	a0, zero, 1
	sb	a0, %lo(forceOverwrite)(a1)
	j	.LBB0_122
.LBB0_80:
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	lui	a1, %hi(.L.str.21)
	addi	a1, a1, %lo(.L.str.21)
	call	strcmp
	mv	a1, zero
	bne	a0, a1, .LBB0_82
	j	.LBB0_81
.LBB0_81:
	lui	a1, %hi(opMode)
	addi	a0, zero, 3
	sw	a0, %lo(opMode)(a1)
	j	.LBB0_121
.LBB0_82:
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	lui	a1, %hi(.L.str.22)
	addi	a1, a1, %lo(.L.str.22)
	call	strcmp
	mv	a1, zero
	bne	a0, a1, .LBB0_84
	j	.LBB0_83
.LBB0_83:
	lui	a1, %hi(keepInputFiles)
	addi	a0, zero, 1
	sb	a0, %lo(keepInputFiles)(a1)
	j	.LBB0_120
.LBB0_84:
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	lui	a1, %hi(.L.str.23)
	addi	a1, a1, %lo(.L.str.23)
	call	strcmp
	mv	a1, zero
	bne	a0, a1, .LBB0_86
	j	.LBB0_85
.LBB0_85:
	lui	a1, %hi(smallMode)
	addi	a0, zero, 1
	sb	a0, %lo(smallMode)(a1)
	j	.LBB0_119
.LBB0_86:
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	lui	a1, %hi(.L.str.24)
	addi	a1, a1, %lo(.L.str.24)
	call	strcmp
	mv	a1, zero
	bne	a0, a1, .LBB0_88
	j	.LBB0_87
.LBB0_87:
	lui	a1, %hi(noisy)
	mv	a0, zero
	sb	a0, %lo(noisy)(a1)
	j	.LBB0_118
.LBB0_88:
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	lui	a1, %hi(.L.str.25)
	addi	a1, a1, %lo(.L.str.25)
	call	strcmp
	mv	a1, zero
	bne	a0, a1, .LBB0_90
	j	.LBB0_89
.LBB0_89:
	call	license
	j	.LBB0_117
.LBB0_90:
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	lui	a1, %hi(.L.str.26)
	addi	a1, a1, %lo(.L.str.26)
	call	strcmp
	mv	a1, zero
	bne	a0, a1, .LBB0_92
	j	.LBB0_91
.LBB0_91:
	call	license
	j	.LBB0_116
.LBB0_92:
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	lui	a1, %hi(.L.str.27)
	addi	a1, a1, %lo(.L.str.27)
	call	strcmp
	mv	a1, zero
	bne	a0, a1, .LBB0_94
	j	.LBB0_93
.LBB0_93:
	lui	a1, %hi(workFactor)
	addi	a0, zero, 1
	sw	a0, %lo(workFactor)(a1)
	j	.LBB0_115
.LBB0_94:
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	lui	a1, %hi(.L.str.28)
	addi	a1, a1, %lo(.L.str.28)
	call	strcmp
	mv	a1, zero
	bne	a0, a1, .LBB0_96
	j	.LBB0_95
.LBB0_95:
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	call	redundant
	j	.LBB0_114
.LBB0_96:
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	lui	a1, %hi(.L.str.29)
	addi	a1, a1, %lo(.L.str.29)
	call	strcmp
	mv	a1, zero
	bne	a0, a1, .LBB0_98
	j	.LBB0_97
.LBB0_97:
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	call	redundant
	j	.LBB0_113
.LBB0_98:
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	lui	a1, %hi(.L.str.30)
	addi	a1, a1, %lo(.L.str.30)
	call	strcmp
	mv	a1, zero
	bne	a0, a1, .LBB0_100
	j	.LBB0_99
.LBB0_99:
	lui	a1, %hi(blockSize100k)
	addi	a0, zero, 1
	sw	a0, %lo(blockSize100k)(a1)
	j	.LBB0_112
.LBB0_100:
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	lui	a1, %hi(.L.str.31)
	addi	a1, a1, %lo(.L.str.31)
	call	strcmp
	mv	a1, zero
	bne	a0, a1, .LBB0_102
	j	.LBB0_101
.LBB0_101:
	lui	a1, %hi(blockSize100k)
	addi	a0, zero, 9
	sw	a0, %lo(blockSize100k)(a1)
	j	.LBB0_111
.LBB0_102:
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	lui	a1, %hi(.L.str.32)
	addi	a1, a1, %lo(.L.str.32)
	call	strcmp
	mv	a1, zero
	bne	a0, a1, .LBB0_104
	j	.LBB0_103
.LBB0_103:
	lui	a1, %hi(verbosity)
	lw	a0, %lo(verbosity)(a1)
	addi	a0, a0, 1
	sw	a0, %lo(verbosity)(a1)
	j	.LBB0_110
.LBB0_104:
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	lui	a1, %hi(.L.str.33)
	addi	a1, a1, %lo(.L.str.33)
	call	strcmp
	mv	a1, zero
	bne	a0, a1, .LBB0_106
	j	.LBB0_105
.LBB0_105:
	lui	a0, %hi(progName)
	lw	a0, %lo(progName)(a0)
	call	usage
	mv	a0, zero
	call	exit
.LBB0_106:
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	lui	a1, %hi(.L.str.9)
	addi	a1, a1, %lo(.L.str.9)
	addi	a2, zero, 2
	call	strncmp
	mv	a1, zero
	bne	a0, a1, .LBB0_108
	j	.LBB0_107
.LBB0_107:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	sw	a1, -84(s0)
	lw	a2, %lo(progName)(a1)
	lw	a1, -40(s0)
	lw	a3, 0(a1)
	lui	a1, %hi(.L.str.16)
	addi	a1, a1, %lo(.L.str.16)
	call	fprintf
	lw	a0, -84(s0)
	lw	a0, %lo(progName)(a0)
	call	usage
	addi	a0, zero, 1
	call	exit
.LBB0_108:
	j	.LBB0_109
.LBB0_109:
	j	.LBB0_110
.LBB0_110:
	j	.LBB0_111
.LBB0_111:
	j	.LBB0_112
.LBB0_112:
	j	.LBB0_113
.LBB0_113:
	j	.LBB0_114
.LBB0_114:
	j	.LBB0_115
.LBB0_115:
	j	.LBB0_116
.LBB0_116:
	j	.LBB0_117
.LBB0_117:
	j	.LBB0_118
.LBB0_118:
	j	.LBB0_119
.LBB0_119:
	j	.LBB0_120
.LBB0_120:
	j	.LBB0_121
.LBB0_121:
	j	.LBB0_122
.LBB0_122:
	j	.LBB0_123
.LBB0_123:
	j	.LBB0_124
.LBB0_124:
	j	.LBB0_125
.LBB0_125:
	j	.LBB0_126
.LBB0_126:
	lw	a0, -40(s0)
	lw	a0, 4(a0)
	sw	a0, -40(s0)
	j	.LBB0_69
.LBB0_127:
	lui	a0, %hi(verbosity)
	lw	a0, %lo(verbosity)(a0)
	addi	a1, zero, 5
	blt	a0, a1, .LBB0_129
	j	.LBB0_128
.LBB0_128:
	lui	a1, %hi(verbosity)
	addi	a0, zero, 4
	sw	a0, %lo(verbosity)(a1)
	j	.LBB0_129
.LBB0_129:
	lui	a0, %hi(opMode)
	lw	a0, %lo(opMode)(a0)
	addi	a1, zero, 1
	bne	a0, a1, .LBB0_133
	j	.LBB0_130
.LBB0_130:
	lui	a0, %hi(smallMode)
	lbu	a0, %lo(smallMode)(a0)
	mv	a1, zero
	beq	a0, a1, .LBB0_133
	j	.LBB0_131
.LBB0_131:
	lui	a0, %hi(blockSize100k)
	lw	a0, %lo(blockSize100k)(a0)
	addi	a1, zero, 3
	blt	a0, a1, .LBB0_133
	j	.LBB0_132
.LBB0_132:
	lui	a1, %hi(blockSize100k)
	addi	a0, zero, 2
	sw	a0, %lo(blockSize100k)(a1)
	j	.LBB0_133
.LBB0_133:
	lui	a0, %hi(opMode)
	lw	a0, %lo(opMode)(a0)
	addi	a1, zero, 3
	bne	a0, a1, .LBB0_136
	j	.LBB0_134
.LBB0_134:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	addi	a1, zero, 2
	bne	a0, a1, .LBB0_136
	j	.LBB0_135
.LBB0_135:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	lw	a2, %lo(progName)(a1)
	lui	a1, %hi(.L.str.34)
	addi	a1, a1, %lo(.L.str.34)
	call	fprintf
	addi	a0, zero, 1
	call	exit
.LBB0_136:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	addi	a1, zero, 2
	bne	a0, a1, .LBB0_139
	j	.LBB0_137
.LBB0_137:
	lui	a0, %hi(numFileNames)
	lw	a0, %lo(numFileNames)(a0)
	mv	a1, zero
	bne	a0, a1, .LBB0_139
	j	.LBB0_138
.LBB0_138:
	lui	a1, %hi(srcMode)
	addi	a0, zero, 1
	sw	a0, %lo(srcMode)(a1)
	j	.LBB0_139
.LBB0_139:
	lui	a0, %hi(opMode)
	lw	a0, %lo(opMode)(a0)
	addi	a1, zero, 1
	beq	a0, a1, .LBB0_141
	j	.LBB0_140
.LBB0_140:
	lui	a1, %hi(blockSize100k)
	mv	a0, zero
	sw	a0, %lo(blockSize100k)(a1)
	j	.LBB0_141
.LBB0_141:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	addi	a1, zero, 3
	bne	a0, a1, .LBB0_143
	j	.LBB0_142
.LBB0_142:
	lui	a0, %hi(mySignalCatcher)
	addi	a1, a0, %lo(mySignalCatcher)
	sw	a1, -88(s0)
	addi	a0, zero, 2
	call	signal
	lw	a1, -88(s0)
	addi	a0, zero, 15
	call	signal
	lw	a1, -88(s0)
	addi	a0, zero, 1
	call	signal
	j	.LBB0_143
.LBB0_143:
	lui	a0, %hi(opMode)
	lw	a0, %lo(opMode)(a0)
	addi	a1, zero, 1
	bne	a0, a1, .LBB0_157
	j	.LBB0_144
.LBB0_144:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	addi	a1, zero, 1
	bne	a0, a1, .LBB0_146
	j	.LBB0_145
.LBB0_145:
	mv	a0, zero
	call	compress
	j	.LBB0_156
.LBB0_146:
	addi	a0, zero, 1
	sb	a0, -41(s0)
	lw	a0, -36(s0)
	sw	a0, -40(s0)
	j	.LBB0_147
.LBB0_147:
	lw	a0, -40(s0)
	mv	a1, zero
	beq	a0, a1, .LBB0_155
	j	.LBB0_148
.LBB0_148:
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	lui	a1, %hi(.L.str.9)
	addi	a1, a1, %lo(.L.str.9)
	call	strcmp
	mv	a1, zero
	bne	a0, a1, .LBB0_150
	j	.LBB0_149
.LBB0_149:
	mv	a0, zero
	sb	a0, -41(s0)
	j	.LBB0_154
.LBB0_150:
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	lbu	a0, 0(a0)
	addi	a1, zero, 45
	bne	a0, a1, .LBB0_153
	j	.LBB0_151
.LBB0_151:
	lbu	a0, -41(s0)
	mv	a1, zero
	beq	a0, a1, .LBB0_153
	j	.LBB0_152
.LBB0_152:
	j	.LBB0_154
.LBB0_153:
	lui	a1, %hi(numFilesProcessed)
	lw	a0, %lo(numFilesProcessed)(a1)
	addi	a0, a0, 1
	sw	a0, %lo(numFilesProcessed)(a1)
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	call	compress
	j	.LBB0_154
.LBB0_154:
	lw	a0, -40(s0)
	lw	a0, 4(a0)
	sw	a0, -40(s0)
	j	.LBB0_147
.LBB0_155:
	j	.LBB0_156
.LBB0_156:
	j	.LBB0_191
.LBB0_157:
	lui	a0, %hi(opMode)
	lw	a0, %lo(opMode)(a0)
	addi	a1, zero, 2
	bne	a0, a1, .LBB0_173
	j	.LBB0_158
.LBB0_158:
	lui	a1, %hi(unzFailsExist)
	mv	a0, zero
	sb	a0, %lo(unzFailsExist)(a1)
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	addi	a1, zero, 1
	bne	a0, a1, .LBB0_160
	j	.LBB0_159
.LBB0_159:
	mv	a0, zero
	call	uncompress
	j	.LBB0_170
.LBB0_160:
	addi	a0, zero, 1
	sb	a0, -41(s0)
	lw	a0, -36(s0)
	sw	a0, -40(s0)
	j	.LBB0_161
.LBB0_161:
	lw	a0, -40(s0)
	mv	a1, zero
	beq	a0, a1, .LBB0_169
	j	.LBB0_162
.LBB0_162:
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	lui	a1, %hi(.L.str.9)
	addi	a1, a1, %lo(.L.str.9)
	call	strcmp
	mv	a1, zero
	bne	a0, a1, .LBB0_164
	j	.LBB0_163
.LBB0_163:
	mv	a0, zero
	sb	a0, -41(s0)
	j	.LBB0_168
.LBB0_164:
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	lbu	a0, 0(a0)
	addi	a1, zero, 45
	bne	a0, a1, .LBB0_167
	j	.LBB0_165
.LBB0_165:
	lbu	a0, -41(s0)
	mv	a1, zero
	beq	a0, a1, .LBB0_167
	j	.LBB0_166
.LBB0_166:
	j	.LBB0_168
.LBB0_167:
	lui	a1, %hi(numFilesProcessed)
	lw	a0, %lo(numFilesProcessed)(a1)
	addi	a0, a0, 1
	sw	a0, %lo(numFilesProcessed)(a1)
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	call	uncompress
	j	.LBB0_168
.LBB0_168:
	lw	a0, -40(s0)
	lw	a0, 4(a0)
	sw	a0, -40(s0)
	j	.LBB0_161
.LBB0_169:
	j	.LBB0_170
.LBB0_170:
	lui	a0, %hi(unzFailsExist)
	lbu	a0, %lo(unzFailsExist)(a0)
	mv	a1, zero
	beq	a0, a1, .LBB0_172
	j	.LBB0_171
.LBB0_171:
	addi	a0, zero, 2
	call	setExit
	lui	a0, %hi(exitValue)
	lw	a0, %lo(exitValue)(a0)
	call	exit
.LBB0_172:
	j	.LBB0_190
.LBB0_173:
	lui	a1, %hi(testFailsExist)
	mv	a0, zero
	sb	a0, %lo(testFailsExist)(a1)
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	addi	a1, zero, 1
	bne	a0, a1, .LBB0_175
	j	.LBB0_174
.LBB0_174:
	mv	a0, zero
	call	testf
	j	.LBB0_185
.LBB0_175:
	addi	a0, zero, 1
	sb	a0, -41(s0)
	lw	a0, -36(s0)
	sw	a0, -40(s0)
	j	.LBB0_176
.LBB0_176:
	lw	a0, -40(s0)
	mv	a1, zero
	beq	a0, a1, .LBB0_184
	j	.LBB0_177
.LBB0_177:
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	lui	a1, %hi(.L.str.9)
	addi	a1, a1, %lo(.L.str.9)
	call	strcmp
	mv	a1, zero
	bne	a0, a1, .LBB0_179
	j	.LBB0_178
.LBB0_178:
	mv	a0, zero
	sb	a0, -41(s0)
	j	.LBB0_183
.LBB0_179:
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	lbu	a0, 0(a0)
	addi	a1, zero, 45
	bne	a0, a1, .LBB0_182
	j	.LBB0_180
.LBB0_180:
	lbu	a0, -41(s0)
	mv	a1, zero
	beq	a0, a1, .LBB0_182
	j	.LBB0_181
.LBB0_181:
	j	.LBB0_183
.LBB0_182:
	lui	a1, %hi(numFilesProcessed)
	lw	a0, %lo(numFilesProcessed)(a1)
	addi	a0, a0, 1
	sw	a0, %lo(numFilesProcessed)(a1)
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	call	testf
	j	.LBB0_183
.LBB0_183:
	lw	a0, -40(s0)
	lw	a0, 4(a0)
	sw	a0, -40(s0)
	j	.LBB0_176
.LBB0_184:
	j	.LBB0_185
.LBB0_185:
	lui	a0, %hi(testFailsExist)
	lbu	a0, %lo(testFailsExist)(a0)
	mv	a1, zero
	beq	a0, a1, .LBB0_189
	j	.LBB0_186
.LBB0_186:
	lui	a0, %hi(noisy)
	lbu	a0, %lo(noisy)(a0)
	mv	a1, zero
	beq	a0, a1, .LBB0_188
	j	.LBB0_187
.LBB0_187:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(.L.str.35)
	addi	a1, a1, %lo(.L.str.35)
	call	fprintf
	j	.LBB0_188
.LBB0_188:
	addi	a0, zero, 2
	call	setExit
	lui	a0, %hi(exitValue)
	lw	a0, %lo(exitValue)(a0)
	call	exit
.LBB0_189:
	j	.LBB0_190
.LBB0_190:
	j	.LBB0_191
.LBB0_191:
	lw	a0, -36(s0)
	sw	a0, -40(s0)
	j	.LBB0_192
.LBB0_192:
	lw	a0, -40(s0)
	mv	a1, zero
	beq	a0, a1, .LBB0_196
	j	.LBB0_193
.LBB0_193:
	lw	a0, -40(s0)
	lw	a0, 4(a0)
	sw	a0, -48(s0)
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	mv	a1, zero
	beq	a0, a1, .LBB0_195
	j	.LBB0_194
.LBB0_194:
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	call	free
	j	.LBB0_195
.LBB0_195:
	lw	a0, -40(s0)
	call	free
	lw	a0, -48(s0)
	sw	a0, -40(s0)
	j	.LBB0_192
.LBB0_196:
	lui	a0, %hi(exitValue)
	lw	a0, %lo(exitValue)(a0)
	lw	s0, 88(sp)
	lw	ra, 92(sp)
	addi	sp, sp, 96
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_50
	.word	.LBB0_51
	.word	.LBB0_52
	.word	.LBB0_53
	.word	.LBB0_54
	.word	.LBB0_55
	.word	.LBB0_56
	.word	.LBB0_57
	.word	.LBB0_58
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_59
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_59
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_42
	.word	.LBB0_43
	.word	.LBB0_62
	.word	.LBB0_45
	.word	.LBB0_62
	.word	.LBB0_61
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_47
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_49
	.word	.LBB0_62
	.word	.LBB0_48
	.word	.LBB0_46
	.word	.LBB0_62
	.word	.LBB0_60
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_62
	.word	.LBB0_44

	.text
	.p2align	1
	.type	mySIGSEGVorSIGBUScatcher,@function
mySIGSEGVorSIGBUScatcher:
	addi	sp, sp, -64
	sw	ra, 60(sp)
	sw	s0, 56(sp)
	addi	s0, sp, 64
	sw	a0, -12(s0)
	lui	a0, %hi(opMode)
	lw	a0, %lo(opMode)(a0)
	addi	a1, zero, 1
	bne	a0, a1, .LBB1_2
	j	.LBB1_1
.LBB1_1:
	lui	a0, %hi(.L.str.36)
	addi	a0, a0, %lo(.L.str.36)
	sw	a0, -16(s0)
	j	.LBB1_3
.LBB1_2:
	lui	a0, %hi(.L.str.37)
	addi	a0, a0, %lo(.L.str.37)
	sw	a0, -16(s0)
	j	.LBB1_3
.LBB1_3:
	lui	a0, %hi(.L.str.38)
	addi	a1, a0, %lo(.L.str.38)
	sw	a1, -28(s0)
	addi	a0, zero, 2
	sw	a0, -24(s0)
	addi	a2, zero, 1
	sw	a2, -20(s0)
	call	write
	lui	a0, %hi(progName)
	lw	a0, %lo(progName)(a0)
	sw	a0, -52(s0)
	call	strlen
	lw	a1, -52(s0)
	mv	a2, a0
	lw	a0, -24(s0)
	call	write
	lw	a0, -16(s0)
	sw	a0, -48(s0)
	call	strlen
	lw	a1, -48(s0)
	mv	a2, a0
	lw	a0, -24(s0)
	call	write
	lui	a0, %hi(.L.str.39)
	addi	a0, a0, %lo(.L.str.39)
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	sw	a0, -44(s0)
	call	strlen
	lw	a1, -44(s0)
	mv	a2, a0
	lw	a0, -24(s0)
	call	write
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	sw	a0, -40(s0)
	call	strlen
	lw	a1, -40(s0)
	mv	a2, a0
	lw	a0, -24(s0)
	call	write
	lw	a1, -28(s0)
	lw	a2, -20(s0)
	lw	a0, -24(s0)
	call	write
	lui	a0, %hi(.L.str.40)
	addi	a0, a0, %lo(.L.str.40)
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	sw	a0, -36(s0)
	call	strlen
	lw	a1, -36(s0)
	mv	a2, a0
	lw	a0, -24(s0)
	call	write
	lui	a0, %hi(outName)
	addi	a0, a0, %lo(outName)
	sw	a0, -32(s0)
	call	strlen
	lw	a1, -32(s0)
	mv	a2, a0
	lw	a0, -24(s0)
	call	write
	lw	a1, -28(s0)
	lw	a2, -20(s0)
	lw	a0, -24(s0)
	call	write
	lw	a1, -20(s0)
	lui	a0, %hi(opMode)
	lw	a0, %lo(opMode)(a0)
	bne	a0, a1, .LBB1_5
	j	.LBB1_4
.LBB1_4:
	addi	a0, zero, 3
	call	setExit
	j	.LBB1_6
.LBB1_5:
	addi	a0, zero, 2
	call	setExit
	j	.LBB1_6
.LBB1_6:
	lui	a0, %hi(exitValue)
	lw	a0, %lo(exitValue)(a0)
	call	_exit
.Lfunc_end1:
	.size	mySIGSEGVorSIGBUScatcher, .Lfunc_end1-mySIGSEGVorSIGBUScatcher

	.p2align	1
	.type	copyFileName,@function
copyFileName:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	s0, sp, 16
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	lw	a0, -16(s0)
	call	strlen
	addi	a1, zero, 1025
	bltu	a0, a1, .LBB2_2
	j	.LBB2_1
.LBB2_1:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lw	a2, -16(s0)
	lui	a1, %hi(.L.str.41)
	addi	a1, a1, %lo(.L.str.41)
	addi	a3, zero, 1024
	call	fprintf
	addi	a0, zero, 1
	call	setExit
	lui	a0, %hi(exitValue)
	lw	a0, %lo(exitValue)(a0)
	call	exit
.LBB2_2:
	lw	a0, -12(s0)
	lw	a1, -16(s0)
	addi	a2, zero, 1024
	call	strncpy
	lw	a1, -12(s0)
	mv	a0, zero
	sb	a0, 1024(a1)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end2:
	.size	copyFileName, .Lfunc_end2-copyFileName

	.p2align	1
	.type	addFlagsFromEnvVar,@function
addFlagsFromEnvVar:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	sw	s0, 40(sp)
	addi	s0, sp, 48
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	lw	a0, -16(s0)
	call	getenv
	sw	a0, -32(s0)
	lw	a0, -32(s0)
	mv	a1, zero
	beq	a0, a1, .LBB3_22
	j	.LBB3_1
.LBB3_1:
	lw	a0, -32(s0)
	sw	a0, -36(s0)
	mv	a0, zero
	sw	a0, -20(s0)
	j	.LBB3_2
.LBB3_2:
	lw	a0, -36(s0)
	lw	a1, -20(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	mv	a1, zero
	bne	a0, a1, .LBB3_4
	j	.LBB3_3
.LBB3_3:
	j	.LBB3_21
.LBB3_4:
	lw	a1, -20(s0)
	lw	a0, -36(s0)
	add	a0, a0, a1
	sw	a0, -36(s0)
	mv	a0, zero
	sw	a0, -20(s0)
	j	.LBB3_5
.LBB3_5:
	lw	a0, -36(s0)
	lbu	a1, 0(a0)
	lui	a0, %hi(_ctype_)
	addi	a0, a0, %lo(_ctype_)
	add	a0, a0, a1
	lbu	a0, 1(a0)
	andi	a0, a0, 8
	mv	a1, zero
	beq	a0, a1, .LBB3_7
	j	.LBB3_6
.LBB3_6:
	lw	a0, -36(s0)
	addi	a0, a0, 1
	sw	a0, -36(s0)
	j	.LBB3_5
.LBB3_7:
	j	.LBB3_8
.LBB3_8:
	lw	a0, -36(s0)
	lw	a1, -20(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	mv	a1, zero
	mv	a2, a1
	sw	a2, -40(s0)
	beq	a0, a1, .LBB3_10
	j	.LBB3_9
.LBB3_9:
	lw	a0, -36(s0)
	lw	a1, -20(s0)
	add	a0, a0, a1
	lbu	a1, 0(a0)
	lui	a0, %hi(_ctype_)
	addi	a0, a0, %lo(_ctype_)
	add	a0, a0, a1
	lbu	a0, 1(a0)
	andi	a0, a0, 8
	seqz	a0, a0
	sw	a0, -40(s0)
	j	.LBB3_10
.LBB3_10:
	lw	a0, -40(s0)
	andi	a0, a0, 1
	mv	a1, zero
	beq	a0, a1, .LBB3_12
	j	.LBB3_11
.LBB3_11:
	lw	a0, -20(s0)
	addi	a0, a0, 1
	sw	a0, -20(s0)
	j	.LBB3_8
.LBB3_12:
	lw	a0, -20(s0)
	addi	a1, zero, 1
	blt	a0, a1, .LBB3_20
	j	.LBB3_13
.LBB3_13:
	lw	a0, -20(s0)
	sw	a0, -28(s0)
	lw	a0, -28(s0)
	addi	a1, zero, 1025
	blt	a0, a1, .LBB3_15
	j	.LBB3_14
.LBB3_14:
	addi	a0, zero, 1024
	sw	a0, -28(s0)
	j	.LBB3_15
.LBB3_15:
	mv	a0, zero
	sw	a0, -24(s0)
	j	.LBB3_16
.LBB3_16:
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	bge	a0, a1, .LBB3_19
	j	.LBB3_17
.LBB3_17:
	lw	a0, -36(s0)
	lw	a1, -24(s0)
	add	a0, a0, a1
	lb	a0, 0(a0)
	lui	a2, %hi(tmpName)
	addi	a2, a2, %lo(tmpName)
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB3_18
.LBB3_18:
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB3_16
.LBB3_19:
	lw	a0, -28(s0)
	lui	a1, %hi(tmpName)
	addi	a1, a1, %lo(tmpName)
	add	a2, a0, a1
	mv	a0, zero
	sb	a0, 0(a2)
	lw	a0, -12(s0)
	lw	a0, 0(a0)
	call	snocString
	lw	a1, -12(s0)
	sw	a0, 0(a1)
	j	.LBB3_20
.LBB3_20:
	j	.LBB3_2
.LBB3_21:
	j	.LBB3_22
.LBB3_22:
	lw	s0, 40(sp)
	lw	ra, 44(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end3:
	.size	addFlagsFromEnvVar, .Lfunc_end3-addFlagsFromEnvVar

	.p2align	1
	.type	snocString,@function
snocString:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	addi	s0, sp, 32
	sw	a0, -16(s0)
	sw	a1, -20(s0)
	lw	a0, -16(s0)
	mv	a1, zero
	bne	a0, a1, .LBB4_2
	j	.LBB4_1
.LBB4_1:
	call	mkCell
	sw	a0, -24(s0)
	lw	a0, -20(s0)
	call	strlen
	addi	a0, a0, 5
	call	myMalloc
	lw	a1, -24(s0)
	sw	a0, 0(a1)
	lw	a0, -24(s0)
	lw	a0, 0(a0)
	lw	a1, -20(s0)
	call	strcpy
	lw	a0, -24(s0)
	sw	a0, -12(s0)
	j	.LBB4_6
.LBB4_2:
	lw	a0, -16(s0)
	sw	a0, -28(s0)
	j	.LBB4_3
.LBB4_3:
	lw	a0, -28(s0)
	lw	a0, 4(a0)
	mv	a1, zero
	beq	a0, a1, .LBB4_5
	j	.LBB4_4
.LBB4_4:
	lw	a0, -28(s0)
	lw	a0, 4(a0)
	sw	a0, -28(s0)
	j	.LBB4_3
.LBB4_5:
	lw	a0, -28(s0)
	lw	a0, 4(a0)
	lw	a1, -20(s0)
	call	snocString
	lw	a1, -28(s0)
	sw	a0, 4(a1)
	lw	a0, -16(s0)
	sw	a0, -12(s0)
	j	.LBB4_6
.LBB4_6:
	lw	a0, -12(s0)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end4:
	.size	snocString, .Lfunc_end4-snocString

	.p2align	1
	.type	license,@function
license:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	s0, sp, 16
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	sw	a0, -12(s0)
	call	BZ2_bzlibVersion
	mv	a2, a0
	lw	a0, -12(s0)
	lui	a1, %hi(.L.str.51)
	addi	a1, a1, %lo(.L.str.51)
	call	fprintf
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end5:
	.size	license, .Lfunc_end5-license

	.p2align	1
	.type	usage,@function
usage:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	s0, sp, 16
	sw	a0, -12(s0)
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	sw	a0, -16(s0)
	call	BZ2_bzlibVersion
	mv	a2, a0
	lw	a0, -16(s0)
	lw	a3, -12(s0)
	lui	a1, %hi(.L.str.52)
	addi	a1, a1, %lo(.L.str.52)
	call	fprintf
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end6:
	.size	usage, .Lfunc_end6-usage

	.p2align	1
	.type	redundant,@function
redundant:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	s0, sp, 16
	sw	a0, -12(s0)
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	lw	a2, %lo(progName)(a1)
	lw	a3, -12(s0)
	lui	a1, %hi(.L.str.53)
	addi	a1, a1, %lo(.L.str.53)
	call	fprintf
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end7:
	.size	redundant, .Lfunc_end7-redundant

	.p2align	1
	.type	mySignalCatcher,@function
mySignalCatcher:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	s0, sp, 16
	sw	a0, -12(s0)
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	lw	a2, %lo(progName)(a1)
	lui	a1, %hi(.L.str.54)
	addi	a1, a1, %lo(.L.str.54)
	call	fprintf
	addi	a0, zero, 1
	call	cleanUpAndFail
.Lfunc_end8:
	.size	mySignalCatcher, .Lfunc_end8-mySignalCatcher

	.p2align	1
	.type	compress,@function
compress:
	addi	sp, sp, -224
	sw	ra, 220(sp)
	sw	s0, 216(sp)
	addi	s0, sp, 224
	sw	a0, -12(s0)
	lui	a0, %hi(deleteOutputOnInterrupt)
	mv	a1, zero
	sb	a1, %lo(deleteOutputOnInterrupt)(a0)
	lw	a0, -12(s0)
	bne	a0, a1, .LBB9_3
	j	.LBB9_1
.LBB9_1:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	addi	a1, zero, 1
	beq	a0, a1, .LBB9_3
	j	.LBB9_2
.LBB9_2:
	lui	a0, %hi(.L.str.55)
	addi	a0, a0, %lo(.L.str.55)
	call	panic
.LBB9_3:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	sw	a0, -128(s0)
	addi	a1, zero, 1
	beq	a0, a1, .LBB9_6
	j	.LBB9_4
.LBB9_4:
	lw	a0, -128(s0)
	addi	a1, zero, 2
	beq	a0, a1, .LBB9_8
	j	.LBB9_5
.LBB9_5:
	lw	a0, -128(s0)
	addi	a1, zero, 3
	beq	a0, a1, .LBB9_7
	j	.LBB9_9
.LBB9_6:
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	lui	a1, %hi(.L.str.56)
	addi	a1, a1, %lo(.L.str.56)
	call	copyFileName
	lui	a0, %hi(outName)
	addi	a0, a0, %lo(outName)
	lui	a1, %hi(.L.str.57)
	addi	a1, a1, %lo(.L.str.57)
	call	copyFileName
	j	.LBB9_9
.LBB9_7:
	lw	a1, -12(s0)
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	call	copyFileName
	lw	a1, -12(s0)
	lui	a0, %hi(outName)
	addi	a0, a0, %lo(outName)
	sw	a0, -132(s0)
	call	copyFileName
	lw	a0, -132(s0)
	lui	a1, %hi(.L.str)
	addi	a1, a1, %lo(.L.str)
	call	strcat
	j	.LBB9_9
.LBB9_8:
	lw	a1, -12(s0)
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	call	copyFileName
	lui	a0, %hi(outName)
	addi	a0, a0, %lo(outName)
	lui	a1, %hi(.L.str.57)
	addi	a1, a1, %lo(.L.str.57)
	call	copyFileName
	j	.LBB9_9
.LBB9_9:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	addi	a1, zero, 1
	beq	a0, a1, .LBB9_14
	j	.LBB9_10
.LBB9_10:
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	call	containsDubiousChars
	mv	a1, zero
	beq	a0, a1, .LBB9_14
	j	.LBB9_11
.LBB9_11:
	lui	a0, %hi(noisy)
	lbu	a0, %lo(noisy)(a0)
	mv	a1, zero
	beq	a0, a1, .LBB9_13
	j	.LBB9_12
.LBB9_12:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	lw	a2, %lo(progName)(a1)
	lui	a1, %hi(.L.str.58)
	addi	a1, a1, %lo(.L.str.58)
	lui	a3, %hi(inName)
	addi	a3, a3, %lo(inName)
	call	fprintf
	j	.LBB9_13
.LBB9_13:
	addi	a0, zero, 1
	call	setExit
	j	.LBB9_82
.LBB9_14:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	addi	a1, zero, 1
	beq	a0, a1, .LBB9_17
	j	.LBB9_15
.LBB9_15:
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	call	fileExists
	mv	a1, zero
	bne	a0, a1, .LBB9_17
	j	.LBB9_16
.LBB9_16:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	sw	a0, -136(s0)
	lui	a0, %hi(progName)
	lw	a0, %lo(progName)(a0)
	sw	a0, -140(s0)
	call	__errno
	lw	a0, 0(a0)
	call	strerror
	lw	a2, -140(s0)
	mv	a4, a0
	lw	a0, -136(s0)
	lui	a1, %hi(.L.str.59)
	addi	a1, a1, %lo(.L.str.59)
	lui	a3, %hi(inName)
	addi	a3, a3, %lo(inName)
	call	fprintf
	addi	a0, zero, 1
	call	setExit
	j	.LBB9_82
.LBB9_17:
	mv	a0, zero
	sw	a0, -28(s0)
	j	.LBB9_18
.LBB9_18:
	lw	a1, -28(s0)
	addi	a0, zero, 3
	blt	a0, a1, .LBB9_25
	j	.LBB9_19
.LBB9_19:
	lw	a0, -28(s0)
	lui	a1, %hi(zSuffix)
	addi	a1, a1, %lo(zSuffix)
	slli	a0, a0, 2
	add	a0, a0, a1
	lw	a1, 0(a0)
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	call	hasSuffix
	mv	a1, zero
	beq	a0, a1, .LBB9_23
	j	.LBB9_20
.LBB9_20:
	lui	a0, %hi(noisy)
	lbu	a0, %lo(noisy)(a0)
	mv	a1, zero
	beq	a0, a1, .LBB9_22
	j	.LBB9_21
.LBB9_21:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	lw	a2, %lo(progName)(a1)
	lw	a1, -28(s0)
	lui	a3, %hi(zSuffix)
	addi	a3, a3, %lo(zSuffix)
	slli	a1, a1, 2
	add	a1, a1, a3
	lw	a4, 0(a1)
	lui	a1, %hi(.L.str.60)
	addi	a1, a1, %lo(.L.str.60)
	lui	a3, %hi(inName)
	addi	a3, a3, %lo(inName)
	call	fprintf
	j	.LBB9_22
.LBB9_22:
	addi	a0, zero, 1
	call	setExit
	j	.LBB9_82
.LBB9_23:
	j	.LBB9_24
.LBB9_24:
	lw	a0, -28(s0)
	addi	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB9_18
.LBB9_25:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	addi	a1, zero, 3
	beq	a0, a1, .LBB9_27
	j	.LBB9_26
.LBB9_26:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	addi	a1, zero, 2
	bne	a0, a1, .LBB9_30
	j	.LBB9_27
.LBB9_27:
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	addi	a1, s0, -120
	call	stat
	lw	a0, -116(s0)
	lui	a1, 15
	and	a0, a0, a1
	lui	a1, 4
	bne	a0, a1, .LBB9_29
	j	.LBB9_28
.LBB9_28:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	lw	a2, %lo(progName)(a1)
	lui	a1, %hi(.L.str.61)
	addi	a1, a1, %lo(.L.str.61)
	lui	a3, %hi(inName)
	addi	a3, a3, %lo(inName)
	call	fprintf
	addi	a0, zero, 1
	call	setExit
	j	.LBB9_82
.LBB9_29:
	j	.LBB9_30
.LBB9_30:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	addi	a1, zero, 3
	bne	a0, a1, .LBB9_36
	j	.LBB9_31
.LBB9_31:
	lui	a0, %hi(forceOverwrite)
	lbu	a0, %lo(forceOverwrite)(a0)
	mv	a1, zero
	bne	a0, a1, .LBB9_36
	j	.LBB9_32
.LBB9_32:
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	call	notAStandardFile
	mv	a1, zero
	beq	a0, a1, .LBB9_36
	j	.LBB9_33
.LBB9_33:
	lui	a0, %hi(noisy)
	lbu	a0, %lo(noisy)(a0)
	mv	a1, zero
	beq	a0, a1, .LBB9_35
	j	.LBB9_34
.LBB9_34:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	lw	a2, %lo(progName)(a1)
	lui	a1, %hi(.L.str.62)
	addi	a1, a1, %lo(.L.str.62)
	lui	a3, %hi(inName)
	addi	a3, a3, %lo(inName)
	call	fprintf
	j	.LBB9_35
.LBB9_35:
	addi	a0, zero, 1
	call	setExit
	j	.LBB9_82
.LBB9_36:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	addi	a1, zero, 3
	bne	a0, a1, .LBB9_42
	j	.LBB9_37
.LBB9_37:
	lui	a0, %hi(outName)
	addi	a0, a0, %lo(outName)
	call	fileExists
	mv	a1, zero
	beq	a0, a1, .LBB9_42
	j	.LBB9_38
.LBB9_38:
	lui	a0, %hi(forceOverwrite)
	lbu	a0, %lo(forceOverwrite)(a0)
	mv	a1, zero
	beq	a0, a1, .LBB9_40
	j	.LBB9_39
.LBB9_39:
	lui	a0, %hi(outName)
	addi	a0, a0, %lo(outName)
	call	remove
	j	.LBB9_41
.LBB9_40:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	lw	a2, %lo(progName)(a1)
	lui	a1, %hi(.L.str.63)
	addi	a1, a1, %lo(.L.str.63)
	lui	a3, %hi(outName)
	addi	a3, a3, %lo(outName)
	call	fprintf
	addi	a0, zero, 1
	call	setExit
	j	.LBB9_82
.LBB9_41:
	j	.LBB9_42
.LBB9_42:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	addi	a1, zero, 3
	bne	a0, a1, .LBB9_48
	j	.LBB9_43
.LBB9_43:
	lui	a0, %hi(forceOverwrite)
	lbu	a0, %lo(forceOverwrite)(a0)
	mv	a1, zero
	bne	a0, a1, .LBB9_48
	j	.LBB9_44
.LBB9_44:
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	call	countHardLinks
	sw	a0, -24(s0)
	addi	a1, zero, 1
	blt	a0, a1, .LBB9_48
	j	.LBB9_45
.LBB9_45:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	sw	a0, -164(s0)
	lui	a0, %hi(progName)
	lw	a0, %lo(progName)(a0)
	sw	a0, -160(s0)
	lw	a1, -24(s0)
	sw	a1, -156(s0)
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	sw	a0, -152(s0)
	lui	a0, %hi(.L.str.65)
	addi	a2, a0, %lo(.L.str.65)
	addi	a0, zero, 1
	sw	a0, -148(s0)
	sw	a2, -144(s0)
	blt	a0, a1, .LBB9_47
	lw	a0, -152(s0)
	sw	a0, -144(s0)
.LBB9_47:
	lw	a4, -156(s0)
	lw	a2, -160(s0)
	lw	a0, -164(s0)
	lw	a5, -144(s0)
	lui	a1, %hi(.L.str.64)
	addi	a1, a1, %lo(.L.str.64)
	lui	a3, %hi(inName)
	addi	a3, a3, %lo(inName)
	call	fprintf
	lw	a0, -148(s0)
	call	setExit
	j	.LBB9_82
.LBB9_48:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	addi	a1, zero, 3
	bne	a0, a1, .LBB9_50
	j	.LBB9_49
.LBB9_49:
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	call	saveInputFileMetaInfo
	j	.LBB9_50
.LBB9_50:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	sw	a0, -168(s0)
	addi	a1, zero, 1
	beq	a0, a1, .LBB9_53
	j	.LBB9_51
.LBB9_51:
	lw	a0, -168(s0)
	addi	a1, zero, 2
	beq	a0, a1, .LBB9_56
	j	.LBB9_52
.LBB9_52:
	lw	a0, -168(s0)
	addi	a1, zero, 3
	beq	a0, a1, .LBB9_63
	j	.LBB9_72
.LBB9_53:
	lui	a0, %hi(_impure_ptr)
	lw	a1, %lo(_impure_ptr)(a0)
	lw	a1, 4(a1)
	sw	a1, -16(s0)
	lw	a1, %lo(_impure_ptr)(a0)
	lw	a1, 8(a1)
	sw	a1, -20(s0)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 8(a0)
	call	fileno
	call	isatty
	mv	a1, zero
	beq	a0, a1, .LBB9_55
	j	.LBB9_54
.LBB9_54:
	lui	a0, %hi(_impure_ptr)
	sw	a0, -172(s0)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	sw	a1, -176(s0)
	lw	a2, %lo(progName)(a1)
	lui	a1, %hi(.L.str.66)
	addi	a1, a1, %lo(.L.str.66)
	call	fprintf
	lw	a1, -176(s0)
	lw	a0, -172(s0)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lw	a3, %lo(progName)(a1)
	lui	a1, %hi(.L.str.67)
	addi	a1, a1, %lo(.L.str.67)
	mv	a2, a3
	call	fprintf
	addi	a0, zero, 1
	call	setExit
	j	.LBB9_82
.LBB9_55:
	j	.LBB9_73
.LBB9_56:
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	lui	a1, %hi(.L.str.68)
	addi	a1, a1, %lo(.L.str.68)
	call	fopen
	sw	a0, -16(s0)
	lui	a0, %hi(_impure_ptr)
	lw	a1, %lo(_impure_ptr)(a0)
	lw	a1, 8(a1)
	sw	a1, -20(s0)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 8(a0)
	call	fileno
	call	isatty
	mv	a1, zero
	beq	a0, a1, .LBB9_60
	j	.LBB9_57
.LBB9_57:
	lui	a0, %hi(_impure_ptr)
	sw	a0, -180(s0)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	sw	a1, -184(s0)
	lw	a2, %lo(progName)(a1)
	lui	a1, %hi(.L.str.66)
	addi	a1, a1, %lo(.L.str.66)
	call	fprintf
	lw	a1, -184(s0)
	lw	a0, -180(s0)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lw	a3, %lo(progName)(a1)
	lui	a1, %hi(.L.str.67)
	addi	a1, a1, %lo(.L.str.67)
	mv	a2, a3
	call	fprintf
	lw	a0, -16(s0)
	mv	a1, zero
	beq	a0, a1, .LBB9_59
	j	.LBB9_58
.LBB9_58:
	lw	a0, -16(s0)
	call	fclose
	j	.LBB9_59
.LBB9_59:
	addi	a0, zero, 1
	call	setExit
	j	.LBB9_82
.LBB9_60:
	lw	a0, -16(s0)
	mv	a1, zero
	bne	a0, a1, .LBB9_62
	j	.LBB9_61
.LBB9_61:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	sw	a0, -188(s0)
	lui	a0, %hi(progName)
	lw	a0, %lo(progName)(a0)
	sw	a0, -192(s0)
	call	__errno
	lw	a0, 0(a0)
	call	strerror
	lw	a2, -192(s0)
	mv	a4, a0
	lw	a0, -188(s0)
	lui	a1, %hi(.L.str.59)
	addi	a1, a1, %lo(.L.str.59)
	lui	a3, %hi(inName)
	addi	a3, a3, %lo(inName)
	call	fprintf
	addi	a0, zero, 1
	call	setExit
	j	.LBB9_82
.LBB9_62:
	j	.LBB9_73
.LBB9_63:
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	lui	a1, %hi(.L.str.68)
	addi	a1, a1, %lo(.L.str.68)
	call	fopen
	sw	a0, -16(s0)
	lui	a0, %hi(outName)
	addi	a0, a0, %lo(outName)
	lui	a1, %hi(.L.str.69)
	addi	a1, a1, %lo(.L.str.69)
	call	fopen_output_safely
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	mv	a1, zero
	bne	a0, a1, .LBB9_67
	j	.LBB9_64
.LBB9_64:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	sw	a0, -196(s0)
	lui	a0, %hi(progName)
	lw	a0, %lo(progName)(a0)
	sw	a0, -200(s0)
	call	__errno
	lw	a0, 0(a0)
	call	strerror
	lw	a2, -200(s0)
	mv	a4, a0
	lw	a0, -196(s0)
	lui	a1, %hi(.L.str.70)
	addi	a1, a1, %lo(.L.str.70)
	lui	a3, %hi(outName)
	addi	a3, a3, %lo(outName)
	call	fprintf
	lw	a0, -16(s0)
	mv	a1, zero
	beq	a0, a1, .LBB9_66
	j	.LBB9_65
.LBB9_65:
	lw	a0, -16(s0)
	call	fclose
	j	.LBB9_66
.LBB9_66:
	addi	a0, zero, 1
	call	setExit
	j	.LBB9_82
.LBB9_67:
	lw	a0, -16(s0)
	mv	a1, zero
	bne	a0, a1, .LBB9_71
	j	.LBB9_68
.LBB9_68:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	sw	a0, -204(s0)
	lui	a0, %hi(progName)
	lw	a0, %lo(progName)(a0)
	sw	a0, -208(s0)
	call	__errno
	lw	a0, 0(a0)
	call	strerror
	lw	a2, -208(s0)
	mv	a4, a0
	lw	a0, -204(s0)
	lui	a1, %hi(.L.str.59)
	addi	a1, a1, %lo(.L.str.59)
	lui	a3, %hi(inName)
	addi	a3, a3, %lo(inName)
	call	fprintf
	lw	a0, -20(s0)
	mv	a1, zero
	beq	a0, a1, .LBB9_70
	j	.LBB9_69
.LBB9_69:
	lw	a0, -20(s0)
	call	fclose
	j	.LBB9_70
.LBB9_70:
	addi	a0, zero, 1
	call	setExit
	j	.LBB9_82
.LBB9_71:
	j	.LBB9_73
.LBB9_72:
	lui	a0, %hi(.L.str.71)
	addi	a0, a0, %lo(.L.str.71)
	call	panic
.LBB9_73:
	lui	a0, %hi(verbosity)
	lw	a0, %lo(verbosity)(a0)
	addi	a1, zero, 1
	blt	a0, a1, .LBB9_75
	j	.LBB9_74
.LBB9_74:
	lui	a0, %hi(_impure_ptr)
	sw	a0, -212(s0)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(.L.str.72)
	addi	a1, a1, %lo(.L.str.72)
	lui	a2, %hi(inName)
	addi	a2, a2, %lo(inName)
	sw	a2, -216(s0)
	call	fprintf
	lw	a0, -216(s0)
	call	pad
	lw	a0, -212(s0)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	call	fflush
	j	.LBB9_75
.LBB9_75:
	lw	a0, -20(s0)
	lui	a1, %hi(outputHandleJustInCase)
	sw	a1, -220(s0)
	sw	a0, %lo(outputHandleJustInCase)(a1)
	lui	a1, %hi(deleteOutputOnInterrupt)
	addi	a0, zero, 1
	sb	a0, %lo(deleteOutputOnInterrupt)(a1)
	lw	a0, -16(s0)
	lw	a1, -20(s0)
	call	compressStream
	lw	a1, -220(s0)
	mv	a0, zero
	sw	a0, %lo(outputHandleJustInCase)(a1)
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	addi	a1, zero, 3
	bne	a0, a1, .LBB9_81
	j	.LBB9_76
.LBB9_76:
	lui	a0, %hi(outName)
	addi	a0, a0, %lo(outName)
	call	applySavedTimeInfoToOutputFile
	lui	a0, %hi(deleteOutputOnInterrupt)
	mv	a1, zero
	sb	a1, %lo(deleteOutputOnInterrupt)(a0)
	lui	a0, %hi(keepInputFiles)
	lbu	a0, %lo(keepInputFiles)(a0)
	bne	a0, a1, .LBB9_80
	j	.LBB9_77
.LBB9_77:
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	call	remove
	sw	a0, -124(s0)
	lw	a0, -124(s0)
	mv	a1, zero
	beq	a0, a1, .LBB9_79
	j	.LBB9_78
.LBB9_78:
	call	ioError
.LBB9_79:
	j	.LBB9_80
.LBB9_80:
	j	.LBB9_81
.LBB9_81:
	lui	a1, %hi(deleteOutputOnInterrupt)
	mv	a0, zero
	sb	a0, %lo(deleteOutputOnInterrupt)(a1)
	j	.LBB9_82
.LBB9_82:
	lw	s0, 216(sp)
	lw	ra, 220(sp)
	addi	sp, sp, 224
	ret
.Lfunc_end9:
	.size	compress, .Lfunc_end9-compress

	.p2align	1
	.type	uncompress,@function
uncompress:
	addi	sp, sp, -224
	sw	ra, 220(sp)
	sw	s0, 216(sp)
	addi	s0, sp, 224
	sw	a0, -12(s0)
	lui	a0, %hi(deleteOutputOnInterrupt)
	mv	a1, zero
	sb	a1, %lo(deleteOutputOnInterrupt)(a0)
	lw	a0, -12(s0)
	bne	a0, a1, .LBB10_3
	j	.LBB10_1
.LBB10_1:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	addi	a1, zero, 1
	beq	a0, a1, .LBB10_3
	j	.LBB10_2
.LBB10_2:
	lui	a0, %hi(.L.str.80)
	addi	a0, a0, %lo(.L.str.80)
	call	panic
.LBB10_3:
	mv	a0, zero
	sb	a0, -30(s0)
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	sw	a0, -132(s0)
	addi	a1, zero, 1
	beq	a0, a1, .LBB10_6
	j	.LBB10_4
.LBB10_4:
	lw	a0, -132(s0)
	addi	a1, zero, 2
	beq	a0, a1, .LBB10_14
	j	.LBB10_5
.LBB10_5:
	lw	a0, -132(s0)
	addi	a1, zero, 3
	beq	a0, a1, .LBB10_7
	j	.LBB10_15
.LBB10_6:
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	lui	a1, %hi(.L.str.56)
	addi	a1, a1, %lo(.L.str.56)
	call	copyFileName
	lui	a0, %hi(outName)
	addi	a0, a0, %lo(outName)
	lui	a1, %hi(.L.str.57)
	addi	a1, a1, %lo(.L.str.57)
	call	copyFileName
	j	.LBB10_15
.LBB10_7:
	lw	a1, -12(s0)
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	call	copyFileName
	lw	a1, -12(s0)
	lui	a0, %hi(outName)
	addi	a0, a0, %lo(outName)
	call	copyFileName
	mv	a0, zero
	sw	a0, -28(s0)
	j	.LBB10_8
.LBB10_8:
	lw	a1, -28(s0)
	addi	a0, zero, 3
	blt	a0, a1, .LBB10_13
	j	.LBB10_9
.LBB10_9:
	lw	a0, -28(s0)
	lui	a1, %hi(zSuffix)
	addi	a1, a1, %lo(zSuffix)
	slli	a0, a0, 2
	add	a1, a1, a0
	lw	a1, 0(a1)
	lui	a2, %hi(unzSuffix)
	addi	a2, a2, %lo(unzSuffix)
	add	a0, a0, a2
	lw	a2, 0(a0)
	lui	a0, %hi(outName)
	addi	a0, a0, %lo(outName)
	call	mapSuffix
	mv	a1, zero
	beq	a0, a1, .LBB10_11
	j	.LBB10_10
.LBB10_10:
	j	.LBB10_16
.LBB10_11:
	j	.LBB10_12
.LBB10_12:
	lw	a0, -28(s0)
	addi	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB10_8
.LBB10_13:
	addi	a0, zero, 1
	sb	a0, -30(s0)
	lui	a0, %hi(outName)
	addi	a0, a0, %lo(outName)
	lui	a1, %hi(.L.str.81)
	addi	a1, a1, %lo(.L.str.81)
	call	strcat
	j	.LBB10_15
.LBB10_14:
	lw	a1, -12(s0)
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	call	copyFileName
	lui	a0, %hi(outName)
	addi	a0, a0, %lo(outName)
	lui	a1, %hi(.L.str.57)
	addi	a1, a1, %lo(.L.str.57)
	call	copyFileName
	j	.LBB10_15
.LBB10_15:
	j	.LBB10_16
.LBB10_16:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	addi	a1, zero, 1
	beq	a0, a1, .LBB10_21
	j	.LBB10_17
.LBB10_17:
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	call	containsDubiousChars
	mv	a1, zero
	beq	a0, a1, .LBB10_21
	j	.LBB10_18
.LBB10_18:
	lui	a0, %hi(noisy)
	lbu	a0, %lo(noisy)(a0)
	mv	a1, zero
	beq	a0, a1, .LBB10_20
	j	.LBB10_19
.LBB10_19:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	lw	a2, %lo(progName)(a1)
	lui	a1, %hi(.L.str.58)
	addi	a1, a1, %lo(.L.str.58)
	lui	a3, %hi(inName)
	addi	a3, a3, %lo(inName)
	call	fprintf
	j	.LBB10_20
.LBB10_20:
	addi	a0, zero, 1
	call	setExit
	j	.LBB10_97
.LBB10_21:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	addi	a1, zero, 1
	beq	a0, a1, .LBB10_24
	j	.LBB10_22
.LBB10_22:
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	call	fileExists
	mv	a1, zero
	bne	a0, a1, .LBB10_24
	j	.LBB10_23
.LBB10_23:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	sw	a0, -136(s0)
	lui	a0, %hi(progName)
	lw	a0, %lo(progName)(a0)
	sw	a0, -140(s0)
	call	__errno
	lw	a0, 0(a0)
	call	strerror
	lw	a2, -140(s0)
	mv	a4, a0
	lw	a0, -136(s0)
	lui	a1, %hi(.L.str.59)
	addi	a1, a1, %lo(.L.str.59)
	lui	a3, %hi(inName)
	addi	a3, a3, %lo(inName)
	call	fprintf
	addi	a0, zero, 1
	call	setExit
	j	.LBB10_97
.LBB10_24:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	addi	a1, zero, 3
	beq	a0, a1, .LBB10_26
	j	.LBB10_25
.LBB10_25:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	addi	a1, zero, 2
	bne	a0, a1, .LBB10_29
	j	.LBB10_26
.LBB10_26:
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	addi	a1, s0, -120
	call	stat
	lw	a0, -116(s0)
	lui	a1, 15
	and	a0, a0, a1
	lui	a1, 4
	bne	a0, a1, .LBB10_28
	j	.LBB10_27
.LBB10_27:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	lw	a2, %lo(progName)(a1)
	lui	a1, %hi(.L.str.61)
	addi	a1, a1, %lo(.L.str.61)
	lui	a3, %hi(inName)
	addi	a3, a3, %lo(inName)
	call	fprintf
	addi	a0, zero, 1
	call	setExit
	j	.LBB10_97
.LBB10_28:
	j	.LBB10_29
.LBB10_29:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	addi	a1, zero, 3
	bne	a0, a1, .LBB10_35
	j	.LBB10_30
.LBB10_30:
	lui	a0, %hi(forceOverwrite)
	lbu	a0, %lo(forceOverwrite)(a0)
	mv	a1, zero
	bne	a0, a1, .LBB10_35
	j	.LBB10_31
.LBB10_31:
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	call	notAStandardFile
	mv	a1, zero
	beq	a0, a1, .LBB10_35
	j	.LBB10_32
.LBB10_32:
	lui	a0, %hi(noisy)
	lbu	a0, %lo(noisy)(a0)
	mv	a1, zero
	beq	a0, a1, .LBB10_34
	j	.LBB10_33
.LBB10_33:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	lw	a2, %lo(progName)(a1)
	lui	a1, %hi(.L.str.62)
	addi	a1, a1, %lo(.L.str.62)
	lui	a3, %hi(inName)
	addi	a3, a3, %lo(inName)
	call	fprintf
	j	.LBB10_34
.LBB10_34:
	addi	a0, zero, 1
	call	setExit
	j	.LBB10_97
.LBB10_35:
	lbu	a0, -30(s0)
	mv	a1, zero
	beq	a0, a1, .LBB10_39
	j	.LBB10_36
.LBB10_36:
	lui	a0, %hi(noisy)
	lbu	a0, %lo(noisy)(a0)
	mv	a1, zero
	beq	a0, a1, .LBB10_38
	j	.LBB10_37
.LBB10_37:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	lw	a2, %lo(progName)(a1)
	lui	a1, %hi(.L.str.82)
	addi	a1, a1, %lo(.L.str.82)
	lui	a3, %hi(inName)
	addi	a3, a3, %lo(inName)
	lui	a4, %hi(outName)
	addi	a4, a4, %lo(outName)
	call	fprintf
	j	.LBB10_38
.LBB10_38:
	j	.LBB10_39
.LBB10_39:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	addi	a1, zero, 3
	bne	a0, a1, .LBB10_45
	j	.LBB10_40
.LBB10_40:
	lui	a0, %hi(outName)
	addi	a0, a0, %lo(outName)
	call	fileExists
	mv	a1, zero
	beq	a0, a1, .LBB10_45
	j	.LBB10_41
.LBB10_41:
	lui	a0, %hi(forceOverwrite)
	lbu	a0, %lo(forceOverwrite)(a0)
	mv	a1, zero
	beq	a0, a1, .LBB10_43
	j	.LBB10_42
.LBB10_42:
	lui	a0, %hi(outName)
	addi	a0, a0, %lo(outName)
	call	remove
	j	.LBB10_44
.LBB10_43:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	lw	a2, %lo(progName)(a1)
	lui	a1, %hi(.L.str.63)
	addi	a1, a1, %lo(.L.str.63)
	lui	a3, %hi(outName)
	addi	a3, a3, %lo(outName)
	call	fprintf
	addi	a0, zero, 1
	call	setExit
	j	.LBB10_97
.LBB10_44:
	j	.LBB10_45
.LBB10_45:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	addi	a1, zero, 3
	bne	a0, a1, .LBB10_51
	j	.LBB10_46
.LBB10_46:
	lui	a0, %hi(forceOverwrite)
	lbu	a0, %lo(forceOverwrite)(a0)
	mv	a1, zero
	bne	a0, a1, .LBB10_51
	j	.LBB10_47
.LBB10_47:
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	call	countHardLinks
	sw	a0, -24(s0)
	addi	a1, zero, 1
	blt	a0, a1, .LBB10_51
	j	.LBB10_48
.LBB10_48:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	sw	a0, -164(s0)
	lui	a0, %hi(progName)
	lw	a0, %lo(progName)(a0)
	sw	a0, -160(s0)
	lw	a1, -24(s0)
	sw	a1, -156(s0)
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	sw	a0, -152(s0)
	lui	a0, %hi(.L.str.65)
	addi	a2, a0, %lo(.L.str.65)
	addi	a0, zero, 1
	sw	a0, -148(s0)
	sw	a2, -144(s0)
	blt	a0, a1, .LBB10_50
	lw	a0, -152(s0)
	sw	a0, -144(s0)
.LBB10_50:
	lw	a4, -156(s0)
	lw	a2, -160(s0)
	lw	a0, -164(s0)
	lw	a5, -144(s0)
	lui	a1, %hi(.L.str.64)
	addi	a1, a1, %lo(.L.str.64)
	lui	a3, %hi(inName)
	addi	a3, a3, %lo(inName)
	call	fprintf
	lw	a0, -148(s0)
	call	setExit
	j	.LBB10_97
.LBB10_51:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	addi	a1, zero, 3
	bne	a0, a1, .LBB10_53
	j	.LBB10_52
.LBB10_52:
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	call	saveInputFileMetaInfo
	j	.LBB10_53
.LBB10_53:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	sw	a0, -168(s0)
	addi	a1, zero, 1
	beq	a0, a1, .LBB10_56
	j	.LBB10_54
.LBB10_54:
	lw	a0, -168(s0)
	addi	a1, zero, 2
	beq	a0, a1, .LBB10_59
	j	.LBB10_55
.LBB10_55:
	lw	a0, -168(s0)
	addi	a1, zero, 3
	beq	a0, a1, .LBB10_64
	j	.LBB10_73
.LBB10_56:
	lui	a0, %hi(_impure_ptr)
	lw	a1, %lo(_impure_ptr)(a0)
	lw	a1, 4(a1)
	sw	a1, -16(s0)
	lw	a1, %lo(_impure_ptr)(a0)
	lw	a1, 8(a1)
	sw	a1, -20(s0)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 4(a0)
	call	fileno
	call	isatty
	mv	a1, zero
	beq	a0, a1, .LBB10_58
	j	.LBB10_57
.LBB10_57:
	lui	a0, %hi(_impure_ptr)
	sw	a0, -172(s0)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	sw	a1, -176(s0)
	lw	a2, %lo(progName)(a1)
	lui	a1, %hi(.L.str.83)
	addi	a1, a1, %lo(.L.str.83)
	call	fprintf
	lw	a1, -176(s0)
	lw	a0, -172(s0)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lw	a3, %lo(progName)(a1)
	lui	a1, %hi(.L.str.67)
	addi	a1, a1, %lo(.L.str.67)
	mv	a2, a3
	call	fprintf
	addi	a0, zero, 1
	call	setExit
	j	.LBB10_97
.LBB10_58:
	j	.LBB10_74
.LBB10_59:
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	lui	a1, %hi(.L.str.68)
	addi	a1, a1, %lo(.L.str.68)
	call	fopen
	sw	a0, -16(s0)
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 8(a0)
	sw	a0, -20(s0)
	lw	a0, -16(s0)
	mv	a1, zero
	bne	a0, a1, .LBB10_63
	j	.LBB10_60
.LBB10_60:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	sw	a0, -180(s0)
	lui	a0, %hi(progName)
	lw	a0, %lo(progName)(a0)
	sw	a0, -184(s0)
	call	__errno
	lw	a0, 0(a0)
	call	strerror
	lw	a2, -184(s0)
	mv	a4, a0
	lw	a0, -180(s0)
	lui	a1, %hi(.L.str.84)
	addi	a1, a1, %lo(.L.str.84)
	lui	a3, %hi(inName)
	addi	a3, a3, %lo(inName)
	call	fprintf
	lw	a0, -16(s0)
	mv	a1, zero
	beq	a0, a1, .LBB10_62
	j	.LBB10_61
.LBB10_61:
	lw	a0, -16(s0)
	call	fclose
	j	.LBB10_62
.LBB10_62:
	addi	a0, zero, 1
	call	setExit
	j	.LBB10_97
.LBB10_63:
	j	.LBB10_74
.LBB10_64:
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	lui	a1, %hi(.L.str.68)
	addi	a1, a1, %lo(.L.str.68)
	call	fopen
	sw	a0, -16(s0)
	lui	a0, %hi(outName)
	addi	a0, a0, %lo(outName)
	lui	a1, %hi(.L.str.69)
	addi	a1, a1, %lo(.L.str.69)
	call	fopen_output_safely
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	mv	a1, zero
	bne	a0, a1, .LBB10_68
	j	.LBB10_65
.LBB10_65:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	sw	a0, -188(s0)
	lui	a0, %hi(progName)
	lw	a0, %lo(progName)(a0)
	sw	a0, -192(s0)
	call	__errno
	lw	a0, 0(a0)
	call	strerror
	lw	a2, -192(s0)
	mv	a4, a0
	lw	a0, -188(s0)
	lui	a1, %hi(.L.str.70)
	addi	a1, a1, %lo(.L.str.70)
	lui	a3, %hi(outName)
	addi	a3, a3, %lo(outName)
	call	fprintf
	lw	a0, -16(s0)
	mv	a1, zero
	beq	a0, a1, .LBB10_67
	j	.LBB10_66
.LBB10_66:
	lw	a0, -16(s0)
	call	fclose
	j	.LBB10_67
.LBB10_67:
	addi	a0, zero, 1
	call	setExit
	j	.LBB10_97
.LBB10_68:
	lw	a0, -16(s0)
	mv	a1, zero
	bne	a0, a1, .LBB10_72
	j	.LBB10_69
.LBB10_69:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	sw	a0, -196(s0)
	lui	a0, %hi(progName)
	lw	a0, %lo(progName)(a0)
	sw	a0, -200(s0)
	call	__errno
	lw	a0, 0(a0)
	call	strerror
	lw	a2, -200(s0)
	mv	a4, a0
	lw	a0, -196(s0)
	lui	a1, %hi(.L.str.59)
	addi	a1, a1, %lo(.L.str.59)
	lui	a3, %hi(inName)
	addi	a3, a3, %lo(inName)
	call	fprintf
	lw	a0, -20(s0)
	mv	a1, zero
	beq	a0, a1, .LBB10_71
	j	.LBB10_70
.LBB10_70:
	lw	a0, -20(s0)
	call	fclose
	j	.LBB10_71
.LBB10_71:
	addi	a0, zero, 1
	call	setExit
	j	.LBB10_97
.LBB10_72:
	j	.LBB10_74
.LBB10_73:
	lui	a0, %hi(.L.str.85)
	addi	a0, a0, %lo(.L.str.85)
	call	panic
.LBB10_74:
	lui	a0, %hi(verbosity)
	lw	a0, %lo(verbosity)(a0)
	addi	a1, zero, 1
	blt	a0, a1, .LBB10_76
	j	.LBB10_75
.LBB10_75:
	lui	a0, %hi(_impure_ptr)
	sw	a0, -204(s0)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(.L.str.72)
	addi	a1, a1, %lo(.L.str.72)
	lui	a2, %hi(inName)
	addi	a2, a2, %lo(inName)
	sw	a2, -208(s0)
	call	fprintf
	lw	a0, -208(s0)
	call	pad
	lw	a0, -204(s0)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	call	fflush
	j	.LBB10_76
.LBB10_76:
	lw	a0, -20(s0)
	lui	a1, %hi(outputHandleJustInCase)
	sw	a1, -212(s0)
	sw	a0, %lo(outputHandleJustInCase)(a1)
	lui	a1, %hi(deleteOutputOnInterrupt)
	addi	a0, zero, 1
	sb	a0, %lo(deleteOutputOnInterrupt)(a1)
	lw	a0, -16(s0)
	lw	a1, -20(s0)
	call	uncompressStream
	mv	a1, a0
	lw	a0, -212(s0)
	sb	a1, -29(s0)
	mv	a1, zero
	sw	a1, %lo(outputHandleJustInCase)(a0)
	lbu	a0, -29(s0)
	beq	a0, a1, .LBB10_84
	j	.LBB10_77
.LBB10_77:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	addi	a1, zero, 3
	bne	a0, a1, .LBB10_83
	j	.LBB10_78
.LBB10_78:
	lui	a0, %hi(outName)
	addi	a0, a0, %lo(outName)
	call	applySavedTimeInfoToOutputFile
	lui	a0, %hi(deleteOutputOnInterrupt)
	mv	a1, zero
	sb	a1, %lo(deleteOutputOnInterrupt)(a0)
	lui	a0, %hi(keepInputFiles)
	lbu	a0, %lo(keepInputFiles)(a0)
	bne	a0, a1, .LBB10_82
	j	.LBB10_79
.LBB10_79:
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	call	remove
	sw	a0, -124(s0)
	lw	a0, -124(s0)
	mv	a1, zero
	beq	a0, a1, .LBB10_81
	j	.LBB10_80
.LBB10_80:
	call	ioError
.LBB10_81:
	j	.LBB10_82
.LBB10_82:
	j	.LBB10_83
.LBB10_83:
	j	.LBB10_89
.LBB10_84:
	lui	a1, %hi(unzFailsExist)
	addi	a0, zero, 1
	sb	a0, %lo(unzFailsExist)(a1)
	lui	a1, %hi(deleteOutputOnInterrupt)
	mv	a0, zero
	sb	a0, %lo(deleteOutputOnInterrupt)(a1)
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	addi	a1, zero, 3
	bne	a0, a1, .LBB10_88
	j	.LBB10_85
.LBB10_85:
	lui	a0, %hi(outName)
	addi	a0, a0, %lo(outName)
	call	remove
	sw	a0, -128(s0)
	lw	a0, -128(s0)
	mv	a1, zero
	beq	a0, a1, .LBB10_87
	j	.LBB10_86
.LBB10_86:
	call	ioError
.LBB10_87:
	j	.LBB10_88
.LBB10_88:
	j	.LBB10_89
.LBB10_89:
	lui	a0, %hi(deleteOutputOnInterrupt)
	mv	a1, zero
	sb	a1, %lo(deleteOutputOnInterrupt)(a0)
	lbu	a0, -29(s0)
	beq	a0, a1, .LBB10_93
	j	.LBB10_90
.LBB10_90:
	lui	a0, %hi(verbosity)
	lw	a0, %lo(verbosity)(a0)
	addi	a1, zero, 1
	blt	a0, a1, .LBB10_92
	j	.LBB10_91
.LBB10_91:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(.L.str.86)
	addi	a1, a1, %lo(.L.str.86)
	call	fprintf
	j	.LBB10_92
.LBB10_92:
	j	.LBB10_97
.LBB10_93:
	addi	a0, zero, 2
	call	setExit
	lui	a0, %hi(verbosity)
	lw	a0, %lo(verbosity)(a0)
	addi	a1, zero, 1
	blt	a0, a1, .LBB10_95
	j	.LBB10_94
.LBB10_94:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(.L.str.87)
	addi	a1, a1, %lo(.L.str.87)
	call	fprintf
	j	.LBB10_96
.LBB10_95:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	lw	a2, %lo(progName)(a1)
	lui	a1, %hi(.L.str.88)
	addi	a1, a1, %lo(.L.str.88)
	lui	a3, %hi(inName)
	addi	a3, a3, %lo(inName)
	call	fprintf
	j	.LBB10_96
.LBB10_96:
	j	.LBB10_97
.LBB10_97:
	lw	s0, 216(sp)
	lw	ra, 220(sp)
	addi	sp, sp, 224
	ret
.Lfunc_end10:
	.size	uncompress, .Lfunc_end10-uncompress

	.p2align	1
	.type	setExit,@function
setExit:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	s0, sp, 16
	sw	a0, -12(s0)
	lw	a1, -12(s0)
	lui	a0, %hi(exitValue)
	lw	a0, %lo(exitValue)(a0)
	bge	a0, a1, .LBB11_2
	j	.LBB11_1
.LBB11_1:
	lw	a0, -12(s0)
	lui	a1, %hi(exitValue)
	sw	a0, %lo(exitValue)(a1)
	j	.LBB11_2
.LBB11_2:
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end11:
	.size	setExit, .Lfunc_end11-setExit

	.p2align	1
	.type	testf,@function
testf:
	addi	sp, sp, -160
	sw	ra, 156(sp)
	sw	s0, 152(sp)
	addi	s0, sp, 160
	sw	a0, -12(s0)
	lui	a0, %hi(deleteOutputOnInterrupt)
	mv	a1, zero
	sb	a1, %lo(deleteOutputOnInterrupt)(a0)
	lw	a0, -12(s0)
	bne	a0, a1, .LBB12_3
	j	.LBB12_1
.LBB12_1:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	addi	a1, zero, 1
	beq	a0, a1, .LBB12_3
	j	.LBB12_2
.LBB12_2:
	lui	a0, %hi(.L.str.96)
	addi	a0, a0, %lo(.L.str.96)
	call	panic
.LBB12_3:
	lui	a0, %hi(outName)
	addi	a0, a0, %lo(outName)
	lui	a1, %hi(.L.str.6)
	addi	a1, a1, %lo(.L.str.6)
	call	copyFileName
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	sw	a0, -116(s0)
	addi	a1, zero, 1
	beq	a0, a1, .LBB12_6
	j	.LBB12_4
.LBB12_4:
	lw	a0, -116(s0)
	addi	a1, zero, 2
	beq	a0, a1, .LBB12_8
	j	.LBB12_5
.LBB12_5:
	lw	a0, -116(s0)
	addi	a1, zero, 3
	beq	a0, a1, .LBB12_7
	j	.LBB12_9
.LBB12_6:
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	lui	a1, %hi(.L.str.56)
	addi	a1, a1, %lo(.L.str.56)
	call	copyFileName
	j	.LBB12_9
.LBB12_7:
	lw	a1, -12(s0)
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	call	copyFileName
	j	.LBB12_9
.LBB12_8:
	lw	a1, -12(s0)
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	call	copyFileName
	j	.LBB12_9
.LBB12_9:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	addi	a1, zero, 1
	beq	a0, a1, .LBB12_14
	j	.LBB12_10
.LBB12_10:
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	call	containsDubiousChars
	mv	a1, zero
	beq	a0, a1, .LBB12_14
	j	.LBB12_11
.LBB12_11:
	lui	a0, %hi(noisy)
	lbu	a0, %lo(noisy)(a0)
	mv	a1, zero
	beq	a0, a1, .LBB12_13
	j	.LBB12_12
.LBB12_12:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	lw	a2, %lo(progName)(a1)
	lui	a1, %hi(.L.str.58)
	addi	a1, a1, %lo(.L.str.58)
	lui	a3, %hi(inName)
	addi	a3, a3, %lo(inName)
	call	fprintf
	j	.LBB12_13
.LBB12_13:
	addi	a0, zero, 1
	call	setExit
	j	.LBB12_37
.LBB12_14:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	addi	a1, zero, 1
	beq	a0, a1, .LBB12_17
	j	.LBB12_15
.LBB12_15:
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	call	fileExists
	mv	a1, zero
	bne	a0, a1, .LBB12_17
	j	.LBB12_16
.LBB12_16:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	sw	a0, -120(s0)
	lui	a0, %hi(progName)
	lw	a0, %lo(progName)(a0)
	sw	a0, -124(s0)
	call	__errno
	lw	a0, 0(a0)
	call	strerror
	lw	a2, -124(s0)
	mv	a4, a0
	lw	a0, -120(s0)
	lui	a1, %hi(.L.str.97)
	addi	a1, a1, %lo(.L.str.97)
	lui	a3, %hi(inName)
	addi	a3, a3, %lo(inName)
	call	fprintf
	addi	a0, zero, 1
	call	setExit
	j	.LBB12_37
.LBB12_17:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	addi	a1, zero, 1
	beq	a0, a1, .LBB12_21
	j	.LBB12_18
.LBB12_18:
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	addi	a1, s0, -112
	call	stat
	lw	a0, -108(s0)
	lui	a1, 15
	and	a0, a0, a1
	lui	a1, 4
	bne	a0, a1, .LBB12_20
	j	.LBB12_19
.LBB12_19:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	lw	a2, %lo(progName)(a1)
	lui	a1, %hi(.L.str.61)
	addi	a1, a1, %lo(.L.str.61)
	lui	a3, %hi(inName)
	addi	a3, a3, %lo(inName)
	call	fprintf
	addi	a0, zero, 1
	call	setExit
	j	.LBB12_37
.LBB12_20:
	j	.LBB12_21
.LBB12_21:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	sw	a0, -128(s0)
	addi	a1, zero, 1
	beq	a0, a1, .LBB12_23
	j	.LBB12_22
.LBB12_22:
	lw	a0, -128(s0)
	addi	a0, a0, -2
	addi	a1, zero, 2
	bltu	a0, a1, .LBB12_26
	j	.LBB12_29
.LBB12_23:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 4(a0)
	call	fileno
	call	isatty
	mv	a1, zero
	beq	a0, a1, .LBB12_25
	j	.LBB12_24
.LBB12_24:
	lui	a0, %hi(_impure_ptr)
	sw	a0, -132(s0)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	sw	a1, -136(s0)
	lw	a2, %lo(progName)(a1)
	lui	a1, %hi(.L.str.83)
	addi	a1, a1, %lo(.L.str.83)
	call	fprintf
	lw	a1, -136(s0)
	lw	a0, -132(s0)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lw	a3, %lo(progName)(a1)
	lui	a1, %hi(.L.str.67)
	addi	a1, a1, %lo(.L.str.67)
	mv	a2, a3
	call	fprintf
	addi	a0, zero, 1
	call	setExit
	j	.LBB12_37
.LBB12_25:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 4(a0)
	sw	a0, -16(s0)
	j	.LBB12_30
.LBB12_26:
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	lui	a1, %hi(.L.str.68)
	addi	a1, a1, %lo(.L.str.68)
	call	fopen
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	mv	a1, zero
	bne	a0, a1, .LBB12_28
	j	.LBB12_27
.LBB12_27:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	sw	a0, -140(s0)
	lui	a0, %hi(progName)
	lw	a0, %lo(progName)(a0)
	sw	a0, -144(s0)
	call	__errno
	lw	a0, 0(a0)
	call	strerror
	lw	a2, -144(s0)
	mv	a4, a0
	lw	a0, -140(s0)
	lui	a1, %hi(.L.str.84)
	addi	a1, a1, %lo(.L.str.84)
	lui	a3, %hi(inName)
	addi	a3, a3, %lo(inName)
	call	fprintf
	addi	a0, zero, 1
	call	setExit
	j	.LBB12_37
.LBB12_28:
	j	.LBB12_30
.LBB12_29:
	lui	a0, %hi(.L.str.98)
	addi	a0, a0, %lo(.L.str.98)
	call	panic
.LBB12_30:
	lui	a0, %hi(verbosity)
	lw	a0, %lo(verbosity)(a0)
	addi	a1, zero, 1
	blt	a0, a1, .LBB12_32
	j	.LBB12_31
.LBB12_31:
	lui	a0, %hi(_impure_ptr)
	sw	a0, -148(s0)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(.L.str.72)
	addi	a1, a1, %lo(.L.str.72)
	lui	a2, %hi(inName)
	addi	a2, a2, %lo(inName)
	sw	a2, -152(s0)
	call	fprintf
	lw	a0, -152(s0)
	call	pad
	lw	a0, -148(s0)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	call	fflush
	j	.LBB12_32
.LBB12_32:
	lui	a1, %hi(outputHandleJustInCase)
	mv	a0, zero
	sw	a0, -156(s0)
	sw	a0, %lo(outputHandleJustInCase)(a1)
	lw	a0, -16(s0)
	call	testStream
	lw	a1, -156(s0)
	sb	a0, -17(s0)
	lbu	a0, -17(s0)
	beq	a0, a1, .LBB12_35
	j	.LBB12_33
.LBB12_33:
	lui	a0, %hi(verbosity)
	lw	a0, %lo(verbosity)(a0)
	addi	a1, zero, 1
	blt	a0, a1, .LBB12_35
	j	.LBB12_34
.LBB12_34:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(.L.str.99)
	addi	a1, a1, %lo(.L.str.99)
	call	fprintf
	j	.LBB12_35
.LBB12_35:
	lbu	a0, -17(s0)
	mv	a1, zero
	bne	a0, a1, .LBB12_37
	j	.LBB12_36
.LBB12_36:
	lui	a1, %hi(testFailsExist)
	addi	a0, zero, 1
	sb	a0, %lo(testFailsExist)(a1)
	j	.LBB12_37
.LBB12_37:
	lw	s0, 152(sp)
	lw	ra, 156(sp)
	addi	sp, sp, 160
	ret
.Lfunc_end12:
	.size	testf, .Lfunc_end12-testf

	.p2align	1
	.type	mkCell,@function
mkCell:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	s0, sp, 16
	addi	a0, zero, 8
	call	myMalloc
	sw	a0, -12(s0)
	lw	a1, -12(s0)
	mv	a0, zero
	sw	a0, 0(a1)
	lw	a1, -12(s0)
	sw	a0, 4(a1)
	lw	a0, -12(s0)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end13:
	.size	mkCell, .Lfunc_end13-mkCell

	.p2align	1
	.type	myMalloc,@function
myMalloc:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	s0, sp, 16
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	call	malloc
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	mv	a1, zero
	bne	a0, a1, .LBB14_2
	j	.LBB14_1
.LBB14_1:
	call	outOfMemory
.LBB14_2:
	lw	a0, -16(s0)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end14:
	.size	myMalloc, .Lfunc_end14-myMalloc

	.p2align	1
	.type	outOfMemory,@function
outOfMemory:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	s0, sp, 16
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	lw	a2, %lo(progName)(a1)
	lui	a1, %hi(.L.str.42)
	addi	a1, a1, %lo(.L.str.42)
	call	fprintf
	call	showFileNames
	addi	a0, zero, 1
	call	cleanUpAndFail
.Lfunc_end15:
	.size	outOfMemory, .Lfunc_end15-outOfMemory

	.p2align	1
	.type	showFileNames,@function
showFileNames:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	s0, sp, 16
	lui	a0, %hi(noisy)
	lbu	a0, %lo(noisy)(a0)
	mv	a1, zero
	beq	a0, a1, .LBB16_2
	j	.LBB16_1
.LBB16_1:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(.L.str.43)
	addi	a1, a1, %lo(.L.str.43)
	lui	a2, %hi(inName)
	addi	a2, a2, %lo(inName)
	lui	a3, %hi(outName)
	addi	a3, a3, %lo(outName)
	call	fprintf
	j	.LBB16_2
.LBB16_2:
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end16:
	.size	showFileNames, .Lfunc_end16-showFileNames

	.p2align	1
	.type	cleanUpAndFail,@function
cleanUpAndFail:
	addi	sp, sp, -112
	sw	ra, 108(sp)
	sw	s0, 104(sp)
	addi	s0, sp, 112
	sw	a0, -12(s0)
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	addi	a1, zero, 3
	bne	a0, a1, .LBB17_13
	j	.LBB17_1
.LBB17_1:
	lui	a0, %hi(opMode)
	lw	a0, %lo(opMode)(a0)
	addi	a1, zero, 3
	beq	a0, a1, .LBB17_13
	j	.LBB17_2
.LBB17_2:
	lui	a0, %hi(deleteOutputOnInterrupt)
	lbu	a0, %lo(deleteOutputOnInterrupt)(a0)
	mv	a1, zero
	beq	a0, a1, .LBB17_13
	j	.LBB17_3
.LBB17_3:
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	addi	a1, s0, -104
	call	stat
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	mv	a1, zero
	bne	a0, a1, .LBB17_11
	j	.LBB17_4
.LBB17_4:
	lui	a0, %hi(noisy)
	lbu	a0, %lo(noisy)(a0)
	mv	a1, zero
	beq	a0, a1, .LBB17_6
	j	.LBB17_5
.LBB17_5:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	lw	a2, %lo(progName)(a1)
	lui	a1, %hi(.L.str.44)
	addi	a1, a1, %lo(.L.str.44)
	lui	a3, %hi(outName)
	addi	a3, a3, %lo(outName)
	call	fprintf
	j	.LBB17_6
.LBB17_6:
	lui	a0, %hi(outputHandleJustInCase)
	lw	a0, %lo(outputHandleJustInCase)(a0)
	mv	a1, zero
	beq	a0, a1, .LBB17_8
	j	.LBB17_7
.LBB17_7:
	lui	a0, %hi(outputHandleJustInCase)
	lw	a0, %lo(outputHandleJustInCase)(a0)
	call	fclose
	j	.LBB17_8
.LBB17_8:
	lui	a0, %hi(outName)
	addi	a0, a0, %lo(outName)
	call	remove
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	mv	a1, zero
	beq	a0, a1, .LBB17_10
	j	.LBB17_9
.LBB17_9:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	lw	a2, %lo(progName)(a1)
	lui	a1, %hi(.L.str.45)
	addi	a1, a1, %lo(.L.str.45)
	call	fprintf
	j	.LBB17_10
.LBB17_10:
	j	.LBB17_12
.LBB17_11:
	lui	a0, %hi(_impure_ptr)
	sw	a0, -108(s0)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	sw	a1, -112(s0)
	lw	a2, %lo(progName)(a1)
	lui	a1, %hi(.L.str.46)
	addi	a1, a1, %lo(.L.str.46)
	call	fprintf
	lw	a1, -112(s0)
	lw	a0, -108(s0)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lw	a2, %lo(progName)(a1)
	lui	a1, %hi(.L.str.47)
	addi	a1, a1, %lo(.L.str.47)
	call	fprintf
	lw	a1, -112(s0)
	lw	a0, -108(s0)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lw	a2, %lo(progName)(a1)
	lui	a1, %hi(.L.str.48)
	addi	a1, a1, %lo(.L.str.48)
	lui	a3, %hi(outName)
	addi	a3, a3, %lo(outName)
	call	fprintf
	lw	a1, -112(s0)
	lw	a0, -108(s0)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lw	a2, %lo(progName)(a1)
	lui	a1, %hi(.L.str.49)
	addi	a1, a1, %lo(.L.str.49)
	call	fprintf
	j	.LBB17_12
.LBB17_12:
	j	.LBB17_13
.LBB17_13:
	lui	a0, %hi(noisy)
	lbu	a0, %lo(noisy)(a0)
	mv	a1, zero
	beq	a0, a1, .LBB17_17
	j	.LBB17_14
.LBB17_14:
	lui	a0, %hi(numFileNames)
	lw	a0, %lo(numFileNames)(a0)
	addi	a1, zero, 1
	blt	a0, a1, .LBB17_17
	j	.LBB17_15
.LBB17_15:
	lui	a0, %hi(numFilesProcessed)
	lw	a0, %lo(numFilesProcessed)(a0)
	lui	a1, %hi(numFileNames)
	lw	a1, %lo(numFileNames)(a1)
	bge	a0, a1, .LBB17_17
	j	.LBB17_16
.LBB17_16:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	lw	a3, %lo(progName)(a1)
	lui	a1, %hi(numFileNames)
	lw	a4, %lo(numFileNames)(a1)
	lui	a1, %hi(numFilesProcessed)
	lw	a1, %lo(numFilesProcessed)(a1)
	sub	a5, a4, a1
	lui	a1, %hi(.L.str.50)
	addi	a1, a1, %lo(.L.str.50)
	mv	a2, a3
	call	fprintf
	j	.LBB17_17
.LBB17_17:
	lw	a0, -12(s0)
	call	setExit
	lui	a0, %hi(exitValue)
	lw	a0, %lo(exitValue)(a0)
	call	exit
.Lfunc_end17:
	.size	cleanUpAndFail, .Lfunc_end17-cleanUpAndFail

	.p2align	1
	.type	panic,@function
panic:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	s0, sp, 16
	sw	a0, -12(s0)
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	lw	a2, %lo(progName)(a1)
	lw	a3, -12(s0)
	lui	a1, %hi(.L.str.73)
	addi	a1, a1, %lo(.L.str.73)
	call	fprintf
	call	showFileNames
	addi	a0, zero, 3
	call	cleanUpAndFail
.Lfunc_end18:
	.size	panic, .Lfunc_end18-panic

	.p2align	1
	.type	containsDubiousChars,@function
containsDubiousChars:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	s0, sp, 16
	sw	a0, -12(s0)
	mv	a0, zero
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end19:
	.size	containsDubiousChars, .Lfunc_end19-containsDubiousChars

	.p2align	1
	.type	fileExists,@function
fileExists:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	addi	s0, sp, 32
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	lui	a1, %hi(.L.str.68)
	addi	a1, a1, %lo(.L.str.68)
	call	fopen
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	snez	a0, a0
	sb	a0, -17(s0)
	lw	a0, -16(s0)
	mv	a1, zero
	beq	a0, a1, .LBB20_2
	j	.LBB20_1
.LBB20_1:
	lw	a0, -16(s0)
	call	fclose
	j	.LBB20_2
.LBB20_2:
	lbu	a0, -17(s0)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end20:
	.size	fileExists, .Lfunc_end20-fileExists

	.p2align	1
	.type	hasSuffix,@function
hasSuffix:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	addi	s0, sp, 32
	sw	a0, -16(s0)
	sw	a1, -20(s0)
	lw	a0, -16(s0)
	call	strlen
	sw	a0, -24(s0)
	lw	a0, -20(s0)
	call	strlen
	sw	a0, -28(s0)
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	bge	a0, a1, .LBB21_2
	j	.LBB21_1
.LBB21_1:
	mv	a0, zero
	sb	a0, -9(s0)
	j	.LBB21_5
.LBB21_2:
	lw	a0, -16(s0)
	lw	a1, -24(s0)
	add	a0, a0, a1
	lw	a1, -28(s0)
	sub	a0, a0, a1
	lw	a1, -20(s0)
	call	strcmp
	mv	a1, zero
	bne	a0, a1, .LBB21_4
	j	.LBB21_3
.LBB21_3:
	addi	a0, zero, 1
	sb	a0, -9(s0)
	j	.LBB21_5
.LBB21_4:
	mv	a0, zero
	sb	a0, -9(s0)
	j	.LBB21_5
.LBB21_5:
	lbu	a0, -9(s0)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end21:
	.size	hasSuffix, .Lfunc_end21-hasSuffix

	.p2align	1
	.type	notAStandardFile,@function
notAStandardFile:
	addi	sp, sp, -112
	sw	ra, 108(sp)
	sw	s0, 104(sp)
	addi	s0, sp, 112
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	addi	a1, s0, -112
	call	lstat
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	mv	a1, zero
	beq	a0, a1, .LBB22_2
	j	.LBB22_1
.LBB22_1:
	addi	a0, zero, 1
	sb	a0, -9(s0)
	j	.LBB22_5
.LBB22_2:
	lw	a0, -108(s0)
	lui	a1, 15
	and	a0, a0, a1
	lui	a1, 8
	bne	a0, a1, .LBB22_4
	j	.LBB22_3
.LBB22_3:
	mv	a0, zero
	sb	a0, -9(s0)
	j	.LBB22_5
.LBB22_4:
	addi	a0, zero, 1
	sb	a0, -9(s0)
	j	.LBB22_5
.LBB22_5:
	lbu	a0, -9(s0)
	lw	s0, 104(sp)
	lw	ra, 108(sp)
	addi	sp, sp, 112
	ret
.Lfunc_end22:
	.size	notAStandardFile, .Lfunc_end22-notAStandardFile

	.p2align	1
	.type	countHardLinks,@function
countHardLinks:
	addi	sp, sp, -112
	sw	ra, 108(sp)
	sw	s0, 104(sp)
	addi	s0, sp, 112
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	addi	a1, s0, -112
	call	lstat
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	mv	a1, zero
	beq	a0, a1, .LBB23_2
	j	.LBB23_1
.LBB23_1:
	mv	a0, zero
	sw	a0, -12(s0)
	j	.LBB23_3
.LBB23_2:
	lhu	a0, -104(s0)
	addi	a0, a0, -1
	sw	a0, -12(s0)
	j	.LBB23_3
.LBB23_3:
	lw	a0, -12(s0)
	lw	s0, 104(sp)
	lw	ra, 108(sp)
	addi	sp, sp, 112
	ret
.Lfunc_end23:
	.size	countHardLinks, .Lfunc_end23-countHardLinks

	.p2align	1
	.type	saveInputFileMetaInfo,@function
saveInputFileMetaInfo:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	s0, sp, 16
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	lui	a1, %hi(fileMetaInfo)
	addi	a1, a1, %lo(fileMetaInfo)
	call	stat
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	mv	a1, zero
	beq	a0, a1, .LBB24_2
	j	.LBB24_1
.LBB24_1:
	call	ioError
.LBB24_2:
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end24:
	.size	saveInputFileMetaInfo, .Lfunc_end24-saveInputFileMetaInfo

	.p2align	1
	.type	fopen_output_safely,@function
fopen_output_safely:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	addi	s0, sp, 32
	sw	a0, -16(s0)
	sw	a1, -20(s0)
	lw	a0, -16(s0)
	lui	a1, 1
	addi	a1, a1, -1535
	addi	a2, zero, 384
	call	open
	sw	a0, -28(s0)
	lw	a0, -28(s0)
	addi	a1, zero, -1
	bne	a0, a1, .LBB25_2
	j	.LBB25_1
.LBB25_1:
	mv	a0, zero
	sw	a0, -12(s0)
	j	.LBB25_5
.LBB25_2:
	lw	a0, -28(s0)
	lw	a1, -20(s0)
	call	fdopen
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	mv	a1, zero
	bne	a0, a1, .LBB25_4
	j	.LBB25_3
.LBB25_3:
	lw	a0, -28(s0)
	call	close
	j	.LBB25_4
.LBB25_4:
	lw	a0, -24(s0)
	sw	a0, -12(s0)
	j	.LBB25_5
.LBB25_5:
	lw	a0, -12(s0)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end25:
	.size	fopen_output_safely, .Lfunc_end25-fopen_output_safely

	.p2align	1
	.type	pad,@function
pad:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	addi	s0, sp, 32
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	call	strlen
	lui	a1, %hi(longestFileName)
	lw	a1, %lo(longestFileName)(a1)
	blt	a0, a1, .LBB26_2
	j	.LBB26_1
.LBB26_1:
	j	.LBB26_6
.LBB26_2:
	addi	a0, zero, 1
	sw	a0, -16(s0)
	j	.LBB26_3
.LBB26_3:
	lw	a0, -16(s0)
	sw	a0, -24(s0)
	lui	a0, %hi(longestFileName)
	lw	a0, %lo(longestFileName)(a0)
	sw	a0, -20(s0)
	lw	a0, -12(s0)
	call	strlen
	lw	a1, -24(s0)
	mv	a2, a0
	lw	a0, -20(s0)
	sub	a0, a0, a2
	blt	a0, a1, .LBB26_6
	j	.LBB26_4
.LBB26_4:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(.L.str.74)
	addi	a1, a1, %lo(.L.str.74)
	call	fprintf
	j	.LBB26_5
.LBB26_5:
	lw	a0, -16(s0)
	addi	a0, a0, 1
	sw	a0, -16(s0)
	j	.LBB26_3
.LBB26_6:
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end26:
	.size	pad, .Lfunc_end26-pad

	.p2align	1
	.type	compressStream,@function
compressStream:
	addi	sp, sp, -2032
	sw	ra, 2028(sp)
	sw	s0, 2024(sp)
	addi	s0, sp, 2032
	lui	a2, 1
	addi	a2, a2, -880
	sub	sp, sp, a2
	sw	a0, -16(s0)
	sw	a1, -20(s0)
	mv	a1, zero
	sw	a1, -24(s0)
	lw	a0, -16(s0)
	lhu	a0, 12(a0)
	andi	a0, a0, 64
	beq	a0, a1, .LBB27_2
	j	.LBB27_1
.LBB27_1:
	j	.LBB27_47
.LBB27_2:
	lw	a0, -20(s0)
	lhu	a0, 12(a0)
	andi	a0, a0, 64
	mv	a1, zero
	beq	a0, a1, .LBB27_4
	j	.LBB27_3
.LBB27_3:
	j	.LBB27_47
.LBB27_4:
	lw	a1, -20(s0)
	lui	a0, %hi(blockSize100k)
	lw	a2, %lo(blockSize100k)(a0)
	lui	a0, %hi(verbosity)
	lw	a3, %lo(verbosity)(a0)
	lui	a0, %hi(workFactor)
	lw	a4, %lo(workFactor)(a0)
	lui	a0, 1048575
	addi	a0, a0, -952
	add	a0, a0, s0
	mv	a0, a0
	call	BZ2_bzWriteOpen
	sw	a0, -24(s0)
	lui	a0, 1048575
	addi	a0, a0, -952
	add	a0, a0, s0
	lw	a0, 0(a0)
	mv	a1, zero
	beq	a0, a1, .LBB27_6
	j	.LBB27_5
.LBB27_5:
	j	.LBB27_41
.LBB27_6:
	lui	a0, %hi(verbosity)
	lw	a0, %lo(verbosity)(a0)
	addi	a1, zero, 2
	blt	a0, a1, .LBB27_8
	j	.LBB27_7
.LBB27_7:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(.L.str.38)
	addi	a1, a1, %lo(.L.str.38)
	call	fprintf
	j	.LBB27_8
.LBB27_8:
	j	.LBB27_9
.LBB27_9:
	lw	a0, -16(s0)
	call	myfeof
	mv	a1, zero
	beq	a0, a1, .LBB27_11
	j	.LBB27_10
.LBB27_10:
	j	.LBB27_18
.LBB27_11:
	lw	a3, -16(s0)
	lui	a0, 1
	addi	a2, a0, 904
	lui	a0, 1048575
	addi	a0, a0, -928
	add	a0, a0, s0
	mv	a0, a0
	addi	a1, zero, 1
	call	fread
	lui	a1, 1048575
	addi	a1, a1, -932
	add	a1, a1, s0
	sw	a0, 0(a1)
	lw	a0, -16(s0)
	lhu	a0, 12(a0)
	andi	a0, a0, 64
	mv	a1, zero
	beq	a0, a1, .LBB27_13
	j	.LBB27_12
.LBB27_12:
	j	.LBB27_47
.LBB27_13:
	lui	a0, 1048575
	addi	a0, a0, -932
	add	a0, a0, s0
	lw	a0, 0(a0)
	addi	a1, zero, 1
	blt	a0, a1, .LBB27_15
	j	.LBB27_14
.LBB27_14:
	lw	a1, -24(s0)
	lui	a0, 1048575
	addi	a0, a0, -932
	add	a0, a0, s0
	lw	a3, 0(a0)
	lui	a0, 1048575
	addi	a0, a0, -952
	add	a0, a0, s0
	mv	a0, a0
	lui	a2, 1048575
	addi	a2, a2, -928
	add	a2, a2, s0
	mv	a2, a2
	call	BZ2_bzWrite
	j	.LBB27_15
.LBB27_15:
	lui	a0, 1048575
	addi	a0, a0, -952
	add	a0, a0, s0
	lw	a0, 0(a0)
	mv	a1, zero
	beq	a0, a1, .LBB27_17
	j	.LBB27_16
.LBB27_16:
	j	.LBB27_41
.LBB27_17:
	j	.LBB27_9
.LBB27_18:
	lw	a1, -24(s0)
	lui	a0, 1048575
	addi	a0, a0, -952
	add	a0, a0, s0
	mv	a0, a0
	mv	a2, zero
	lui	a3, 1048575
	addi	a3, a3, -1068
	add	a3, a3, s0
	sw	a2, 0(a3)
	lui	a3, 1048575
	addi	a3, a3, -936
	add	a3, a3, s0
	mv	a3, a3
	lui	a4, 1048575
	addi	a4, a4, -940
	add	a4, a4, s0
	mv	a4, a4
	lui	a5, 1048575
	addi	a5, a5, -944
	add	a5, a5, s0
	mv	a5, a5
	lui	a6, 1048575
	addi	a6, a6, -948
	add	a6, a6, s0
	mv	a6, a6
	call	BZ2_bzWriteClose64
	lui	a0, 1048575
	addi	a0, a0, -1068
	add	a0, a0, s0
	lw	a1, 0(a0)
	lui	a0, 1048575
	addi	a0, a0, -952
	add	a0, a0, s0
	lw	a0, 0(a0)
	beq	a0, a1, .LBB27_20
	j	.LBB27_19
.LBB27_19:
	j	.LBB27_41
.LBB27_20:
	lw	a0, -20(s0)
	lhu	a0, 12(a0)
	andi	a0, a0, 64
	mv	a1, zero
	beq	a0, a1, .LBB27_22
	j	.LBB27_21
.LBB27_21:
	j	.LBB27_47
.LBB27_22:
	lw	a0, -20(s0)
	call	fflush
	lui	a1, 1048575
	addi	a1, a1, -960
	add	a1, a1, s0
	sw	a0, 0(a1)
	lui	a0, 1048575
	addi	a0, a0, -960
	add	a0, a0, s0
	lw	a0, 0(a0)
	addi	a1, zero, -1
	bne	a0, a1, .LBB27_24
	j	.LBB27_23
.LBB27_23:
	j	.LBB27_47
.LBB27_24:
	lw	a0, -20(s0)
	lui	a1, %hi(_impure_ptr)
	lw	a1, %lo(_impure_ptr)(a1)
	lw	a1, 8(a1)
	beq	a0, a1, .LBB27_30
	j	.LBB27_25
.LBB27_25:
	lw	a0, -20(s0)
	call	fileno
	lui	a1, 1048575
	addi	a1, a1, -964
	add	a1, a1, s0
	sw	a0, 0(a1)
	lui	a0, 1048575
	addi	a0, a0, -964
	add	a0, a0, s0
	lw	a1, 0(a0)
	addi	a0, zero, -1
	blt	a0, a1, .LBB27_27
	j	.LBB27_26
.LBB27_26:
	j	.LBB27_47
.LBB27_27:
	lui	a0, 1048575
	addi	a0, a0, -964
	add	a0, a0, s0
	lw	a0, 0(a0)
	call	applySavedFileAttrToOutputFile
	lw	a0, -20(s0)
	call	fclose
	lui	a1, 1048575
	addi	a1, a1, -960
	add	a1, a1, s0
	sw	a0, 0(a1)
	lui	a1, %hi(outputHandleJustInCase)
	mv	a0, zero
	sw	a0, %lo(outputHandleJustInCase)(a1)
	lui	a0, 1048575
	addi	a0, a0, -960
	add	a0, a0, s0
	lw	a0, 0(a0)
	addi	a1, zero, -1
	bne	a0, a1, .LBB27_29
	j	.LBB27_28
.LBB27_28:
	j	.LBB27_47
.LBB27_29:
	j	.LBB27_30
.LBB27_30:
	lui	a0, %hi(outputHandleJustInCase)
	mv	a1, zero
	sw	a1, %lo(outputHandleJustInCase)(a0)
	lw	a0, -16(s0)
	lhu	a0, 12(a0)
	andi	a0, a0, 64
	beq	a0, a1, .LBB27_32
	j	.LBB27_31
.LBB27_31:
	j	.LBB27_47
.LBB27_32:
	lw	a0, -16(s0)
	call	fclose
	lui	a1, 1048575
	addi	a1, a1, -960
	add	a1, a1, s0
	sw	a0, 0(a1)
	lui	a0, 1048575
	addi	a0, a0, -960
	add	a0, a0, s0
	lw	a0, 0(a0)
	addi	a1, zero, -1
	bne	a0, a1, .LBB27_34
	j	.LBB27_33
.LBB27_33:
	j	.LBB27_47
.LBB27_34:
	lui	a0, %hi(verbosity)
	lw	a0, %lo(verbosity)(a0)
	addi	a1, zero, 1
	blt	a0, a1, .LBB27_40
	j	.LBB27_35
.LBB27_35:
	lui	a0, 1048575
	addi	a0, a0, -936
	add	a0, a0, s0
	lw	a0, 0(a0)
	mv	a1, zero
	bne	a0, a1, .LBB27_38
	j	.LBB27_36
.LBB27_36:
	lui	a0, 1048575
	addi	a0, a0, -940
	add	a0, a0, s0
	lw	a0, 0(a0)
	mv	a1, zero
	bne	a0, a1, .LBB27_38
	j	.LBB27_37
.LBB27_37:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(.L.str.75)
	addi	a1, a1, %lo(.L.str.75)
	call	fprintf
	j	.LBB27_39
.LBB27_38:
	lui	a0, 1048575
	addi	a0, a0, -936
	add	a0, a0, s0
	lw	a1, 0(a0)
	lui	a0, 1048575
	addi	a0, a0, -940
	add	a0, a0, s0
	lw	a2, 0(a0)
	lui	a0, 1048575
	addi	a0, a0, -1040
	add	a0, a0, s0
	mv	a0, a0
	lui	a3, 1048575
	addi	a3, a3, -1124
	add	a3, a3, s0
	sw	a0, 0(a3)
	call	uInt64_from_UInt32s
	lui	a0, 1048575
	addi	a0, a0, -944
	add	a0, a0, s0
	lw	a1, 0(a0)
	lui	a0, 1048575
	addi	a0, a0, -948
	add	a0, a0, s0
	lw	a2, 0(a0)
	lui	a0, 1048575
	addi	a0, a0, -1048
	add	a0, a0, s0
	mv	a0, a0
	lui	a3, 1048575
	addi	a3, a3, -1120
	add	a3, a3, s0
	sw	a0, 0(a3)
	call	uInt64_from_UInt32s
	lui	a0, 1048575
	addi	a0, a0, -1124
	add	a0, a0, s0
	lw	a0, 0(a0)
	call	uInt64_to_double
	mv	a2, a0
	lui	a0, 1048575
	addi	a0, a0, -1120
	add	a0, a0, s0
	lw	a0, 0(a0)
	lui	a3, 1048575
	addi	a3, a3, -1128
	add	a3, a3, s0
	sw	a2, 0(a3)
	mv	a2, a1
	lui	a1, 1048575
	addi	a1, a1, -1128
	add	a1, a1, s0
	lw	a1, 0(a1)
	lui	a3, 1048575
	addi	a3, a3, -1052
	add	a3, a3, s0
	sw	a2, 0(a3)
	lui	a2, 1048575
	addi	a2, a2, -1056
	add	a2, a2, s0
	sw	a1, 0(a2)
	call	uInt64_to_double
	mv	a2, a1
	lui	a1, 1048575
	addi	a1, a1, -1124
	add	a1, a1, s0
	lw	a1, 0(a1)
	lui	a3, 1048575
	addi	a3, a3, -1060
	add	a3, a3, s0
	sw	a2, 0(a3)
	lui	a2, 1048575
	addi	a2, a2, -1064
	add	a2, a2, s0
	sw	a0, 0(a2)
	lui	a0, 1048575
	addi	a0, a0, -996
	add	a0, a0, s0
	mv	a0, a0
	lui	a2, 1048575
	addi	a2, a2, -1072
	add	a2, a2, s0
	sw	a0, 0(a2)
	call	uInt64_toAscii
	lui	a0, 1048575
	addi	a0, a0, -1120
	add	a0, a0, s0
	lw	a1, 0(a0)
	lui	a0, 1048575
	addi	a0, a0, -1028
	add	a0, a0, s0
	mv	a0, a0
	lui	a2, 1048575
	addi	a2, a2, -1096
	add	a2, a2, s0
	sw	a0, 0(a2)
	call	uInt64_toAscii
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, 1048575
	addi	a1, a1, -1076
	add	a1, a1, s0
	sw	a0, 0(a1)
	lui	a0, 1048575
	addi	a0, a0, -1056
	add	a0, a0, s0
	lw	a0, 0(a0)
	lui	a1, 1048575
	addi	a1, a1, -1116
	add	a1, a1, s0
	sw	a0, 0(a1)
	lui	a1, 1048575
	addi	a1, a1, -1052
	add	a1, a1, s0
	lw	a1, 0(a1)
	lui	a2, 1048575
	addi	a2, a2, -1112
	add	a2, a2, s0
	sw	a1, 0(a2)
	lui	a2, 1048575
	addi	a2, a2, -1064
	add	a2, a2, s0
	lw	a2, 0(a2)
	lui	a3, 1048575
	addi	a3, a3, -1108
	add	a3, a3, s0
	sw	a2, 0(a3)
	lui	a3, 1048575
	addi	a3, a3, -1060
	add	a3, a3, s0
	lw	a3, 0(a3)
	lui	a4, 1048575
	addi	a4, a4, -1104
	add	a4, a4, s0
	sw	a3, 0(a4)
	call	__divdf3@plt
	mv	a2, a0
	lui	a0, 1048575
	addi	a0, a0, -1108
	add	a0, a0, s0
	lw	a0, 0(a0)
	lui	a3, 1048575
	addi	a3, a3, -1092
	add	a3, a3, s0
	sw	a2, 0(a3)
	mv	a2, a1
	lui	a1, 1048575
	addi	a1, a1, -1104
	add	a1, a1, s0
	lw	a1, 0(a1)
	lui	a3, 1048575
	addi	a3, a3, -1088
	add	a3, a3, s0
	sw	a2, 0(a3)
	mv	a2, zero
	lui	a3, 1048575
	addi	a3, a3, -1100
	add	a3, a3, s0
	sw	a2, 0(a3)
	lui	a3, 262656
	call	__muldf3@plt
	lui	a2, 1048575
	addi	a2, a2, -1116
	add	a2, a2, s0
	lw	a2, 0(a2)
	lui	a3, 1048575
	addi	a3, a3, -1112
	add	a3, a3, s0
	lw	a3, 0(a3)
	call	__divdf3@plt
	lui	a2, 1048575
	addi	a2, a2, -1116
	add	a2, a2, s0
	lw	a2, 0(a2)
	lui	a3, 1048575
	addi	a3, a3, -1112
	add	a3, a3, s0
	lw	a3, 0(a3)
	mv	a4, a0
	lui	a0, 1048575
	addi	a0, a0, -1108
	add	a0, a0, s0
	lw	a0, 0(a0)
	lui	a5, 1048575
	addi	a5, a5, -1084
	add	a5, a5, s0
	sw	a4, 0(a5)
	mv	a4, a1
	lui	a1, 1048575
	addi	a1, a1, -1104
	add	a1, a1, s0
	lw	a1, 0(a1)
	lui	a5, 1048575
	addi	a5, a5, -1080
	add	a5, a5, s0
	sw	a4, 0(a5)
	call	__divdf3@plt
	mv	a2, a0
	lui	a0, 1048575
	addi	a0, a0, -1100
	add	a0, a0, s0
	lw	a0, 0(a0)
	mv	a3, a1
	lui	a1, 261888
	call	__subdf3@plt
	lui	a2, 1048575
	addi	a2, a2, -1100
	add	a2, a2, s0
	lw	a2, 0(a2)
	lui	a3, 263568
	call	__muldf3@plt
	lui	a2, 1048575
	addi	a2, a2, -1096
	add	a2, a2, s0
	lw	t1, 0(a2)
	lui	a2, 1048575
	addi	a2, a2, -1092
	add	a2, a2, s0
	lw	a2, 0(a2)
	lui	a3, 1048575
	addi	a3, a3, -1088
	add	a3, a3, s0
	lw	a3, 0(a3)
	lui	a4, 1048575
	addi	a4, a4, -1084
	add	a4, a4, s0
	lw	a4, 0(a4)
	lui	a5, 1048575
	addi	a5, a5, -1080
	add	a5, a5, s0
	lw	a5, 0(a5)
	mv	a6, a0
	lui	a0, 1048575
	addi	a0, a0, -1076
	add	a0, a0, s0
	lw	a0, 0(a0)
	mv	a7, a1
	lui	a1, 1048575
	addi	a1, a1, -1072
	add	a1, a1, s0
	lw	a1, 0(a1)
	mv	t0, sp
	sw	t1, 4(t0)
	sw	a1, 0(t0)
	lui	a1, %hi(.L.str.76)
	addi	a1, a1, %lo(.L.str.76)
	call	fprintf
	j	.LBB27_39
.LBB27_39:
	j	.LBB27_40
.LBB27_40:
	lui	a0, 1
	addi	a0, a0, -880
	add	sp, sp, a0
	lw	s0, 2024(sp)
	lw	ra, 2028(sp)
	addi	sp, sp, 2032
	ret
.LBB27_41:
	lw	a1, -24(s0)
	lui	a0, 1048575
	addi	a0, a0, -956
	add	a0, a0, s0
	mv	a0, a0
	addi	a2, zero, 1
	lui	a3, 1048575
	addi	a3, a3, -936
	add	a3, a3, s0
	mv	a3, a3
	lui	a4, 1048575
	addi	a4, a4, -940
	add	a4, a4, s0
	mv	a4, a4
	lui	a5, 1048575
	addi	a5, a5, -944
	add	a5, a5, s0
	mv	a5, a5
	lui	a6, 1048575
	addi	a6, a6, -948
	add	a6, a6, s0
	mv	a6, a6
	call	BZ2_bzWriteClose64
	lui	a0, 1048575
	addi	a0, a0, -952
	add	a0, a0, s0
	lw	a0, 0(a0)
	lui	a1, 1048575
	addi	a1, a1, -1132
	add	a1, a1, s0
	sw	a0, 0(a1)
	addi	a1, zero, -9
	beq	a0, a1, .LBB27_44
	j	.LBB27_42
.LBB27_42:
	lui	a0, 1048575
	addi	a0, a0, -1132
	add	a0, a0, s0
	lw	a0, 0(a0)
	addi	a1, zero, -6
	beq	a0, a1, .LBB27_46
	j	.LBB27_43
.LBB27_43:
	lui	a0, 1048575
	addi	a0, a0, -1132
	add	a0, a0, s0
	lw	a0, 0(a0)
	addi	a1, zero, -3
	beq	a0, a1, .LBB27_45
	j	.LBB27_48
.LBB27_44:
	call	configError
.LBB27_45:
	call	outOfMemory
.LBB27_46:
	j	.LBB27_47
.LBB27_47:
	call	ioError
.LBB27_48:
	lui	a0, %hi(.L.str.77)
	addi	a0, a0, %lo(.L.str.77)
	call	panic
.Lfunc_end27:
	.size	compressStream, .Lfunc_end27-compressStream

	.p2align	1
	.type	applySavedTimeInfoToOutputFile,@function
applySavedTimeInfoToOutputFile:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	addi	s0, sp, 32
	sw	a0, -12(s0)
	lui	a0, %hi(fileMetaInfo)
	addi	a1, a0, %lo(fileMetaInfo)
	lw	a0, 24(a1)
	lw	a2, 28(a1)
	sw	a2, -28(s0)
	sw	a0, -32(s0)
	lw	a0, 40(a1)
	lw	a1, 44(a1)
	sw	a1, -20(s0)
	sw	a0, -24(s0)
	lw	a0, -12(s0)
	addi	a1, s0, -32
	call	utime
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	mv	a1, zero
	beq	a0, a1, .LBB28_2
	j	.LBB28_1
.LBB28_1:
	call	ioError
.LBB28_2:
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end28:
	.size	applySavedTimeInfoToOutputFile, .Lfunc_end28-applySavedTimeInfoToOutputFile

	.p2align	1
	.type	ioError,@function
ioError:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	s0, sp, 16
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	sw	a1, -12(s0)
	lw	a2, %lo(progName)(a1)
	lui	a1, %hi(.L.str.79)
	addi	a1, a1, %lo(.L.str.79)
	call	fprintf
	lw	a0, -12(s0)
	lw	a0, %lo(progName)(a0)
	call	perror
	call	showFileNames
	addi	a0, zero, 1
	call	cleanUpAndFail
.Lfunc_end29:
	.size	ioError, .Lfunc_end29-ioError

	.p2align	1
	.type	myfeof,@function
myfeof:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	addi	s0, sp, 32
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	call	fgetc
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	addi	a1, zero, -1
	bne	a0, a1, .LBB30_2
	j	.LBB30_1
.LBB30_1:
	addi	a0, zero, 1
	sb	a0, -9(s0)
	j	.LBB30_3
.LBB30_2:
	lw	a0, -20(s0)
	lw	a1, -16(s0)
	call	ungetc
	mv	a0, zero
	sb	a0, -9(s0)
	j	.LBB30_3
.LBB30_3:
	lbu	a0, -9(s0)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end30:
	.size	myfeof, .Lfunc_end30-myfeof

	.p2align	1
	.type	applySavedFileAttrToOutputFile,@function
applySavedFileAttrToOutputFile:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	s0, sp, 16
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	lui	a1, %hi(fileMetaInfo)
	lw	a1, %lo(fileMetaInfo+4)(a1)
	call	fchmod
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	mv	a1, zero
	beq	a0, a1, .LBB31_2
	j	.LBB31_1
.LBB31_1:
	call	ioError
.LBB31_2:
	lw	a0, -12(s0)
	lui	a1, %hi(fileMetaInfo)
	addi	a2, a1, %lo(fileMetaInfo)
	lhu	a1, 10(a2)
	lhu	a2, 12(a2)
	call	fchown
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end31:
	.size	applySavedFileAttrToOutputFile, .Lfunc_end31-applySavedFileAttrToOutputFile

	.p2align	1
	.type	uInt64_from_UInt32s,@function
uInt64_from_UInt32s:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	addi	s0, sp, 32
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
	lbu	a0, -17(s0)
	lw	a1, -12(s0)
	sb	a0, 7(a1)
	lhu	a0, -18(s0)
	lw	a1, -12(s0)
	sb	a0, 6(a1)
	lw	a0, -20(s0)
	srli	a0, a0, 8
	lw	a1, -12(s0)
	sb	a0, 5(a1)
	lw	a0, -20(s0)
	lw	a1, -12(s0)
	sb	a0, 4(a1)
	lbu	a0, -13(s0)
	lw	a1, -12(s0)
	sb	a0, 3(a1)
	lhu	a0, -14(s0)
	lw	a1, -12(s0)
	sb	a0, 2(a1)
	lw	a0, -16(s0)
	srli	a0, a0, 8
	lw	a1, -12(s0)
	sb	a0, 1(a1)
	lw	a0, -16(s0)
	lw	a1, -12(s0)
	sb	a0, 0(a1)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end32:
	.size	uInt64_from_UInt32s, .Lfunc_end32-uInt64_from_UInt32s

	.p2align	1
	.type	uInt64_to_double,@function
uInt64_to_double:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	sw	s0, 40(sp)
	addi	s0, sp, 48
	sw	a0, -12(s0)
	lui	a0, 261888
	sw	a0, -20(s0)
	mv	a0, zero
	sw	a0, -24(s0)
	sw	a0, -28(s0)
	sw	a0, -32(s0)
	sw	a0, -16(s0)
	j	.LBB33_1
.LBB33_1:
	lw	a1, -16(s0)
	addi	a0, zero, 7
	blt	a0, a1, .LBB33_4
	j	.LBB33_2
.LBB33_2:
	lw	a0, -24(s0)
	sw	a0, -40(s0)
	lw	a0, -20(s0)
	sw	a0, -36(s0)
	lw	a0, -12(s0)
	lw	a1, -16(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	call	__floatunsidf@plt
	mv	a2, a0
	lw	a0, -40(s0)
	mv	a3, a1
	lw	a1, -36(s0)
	call	__muldf3@plt
	mv	a2, a0
	mv	a3, a1
	lw	a0, -32(s0)
	lw	a1, -28(s0)
	call	__adddf3@plt
	sw	a1, -28(s0)
	sw	a0, -32(s0)
	lw	a0, -24(s0)
	lw	a1, -20(s0)
	mv	a2, zero
	lui	a3, 263936
	call	__muldf3@plt
	sw	a1, -20(s0)
	sw	a0, -24(s0)
	j	.LBB33_3
.LBB33_3:
	lw	a0, -16(s0)
	addi	a0, a0, 1
	sw	a0, -16(s0)
	j	.LBB33_1
.LBB33_4:
	lw	a0, -32(s0)
	lw	a1, -28(s0)
	lw	s0, 40(sp)
	lw	ra, 44(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end33:
	.size	uInt64_to_double, .Lfunc_end33-uInt64_to_double

	.p2align	1
	.type	uInt64_toAscii,@function
uInt64_toAscii:
	addi	sp, sp, -80
	sw	ra, 76(sp)
	sw	s0, 72(sp)
	addi	s0, sp, 80
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	mv	a0, zero
	sw	a0, -60(s0)
	lw	a0, -16(s0)
	sw	a0, -76(s0)
	lbu	a2, 4(a0)
	lbu	a1, 5(a0)
	slli	a1, a1, 8
	or	a2, a2, a1
	lbu	a3, 6(a0)
	lbu	a1, 7(a0)
	slli	a1, a1, 8
	or	a1, a1, a3
	slli	a1, a1, 16
	or	a1, a1, a2
	sw	a1, -68(s0)
	lbu	a2, 0(a0)
	lbu	a1, 1(a0)
	slli	a1, a1, 8
	or	a1, a1, a2
	lbu	a2, 2(a0)
	lbu	a0, 3(a0)
	slli	a0, a0, 8
	or	a0, a0, a2
	slli	a0, a0, 16
	or	a0, a0, a1
	sw	a0, -72(s0)
	j	.LBB34_1
.LBB34_1:
	addi	a0, s0, -72
	call	uInt64_qrm10
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	addi	a0, a0, 48
	lw	a2, -60(s0)
	addi	a1, s0, -56
	add	a1, a1, a2
	sb	a0, 0(a1)
	lw	a0, -60(s0)
	addi	a0, a0, 1
	sw	a0, -60(s0)
	j	.LBB34_2
.LBB34_2:
	addi	a0, s0, -72
	call	uInt64_isZero
	mv	a1, zero
	beq	a0, a1, .LBB34_1
	j	.LBB34_3
.LBB34_3:
	lw	a0, -12(s0)
	lw	a1, -60(s0)
	add	a1, a1, a0
	mv	a0, zero
	sb	a0, 0(a1)
	sw	a0, -20(s0)
	j	.LBB34_4
.LBB34_4:
	lw	a0, -20(s0)
	lw	a1, -60(s0)
	bge	a0, a1, .LBB34_7
	j	.LBB34_5
.LBB34_5:
	lw	a0, -60(s0)
	lw	a2, -20(s0)
	sub	a0, a0, a2
	addi	a1, s0, -56
	add	a0, a0, a1
	lb	a0, -1(a0)
	lw	a1, -12(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB34_6
.LBB34_6:
	lw	a0, -20(s0)
	addi	a0, a0, 1
	sw	a0, -20(s0)
	j	.LBB34_4
.LBB34_7:
	lw	s0, 72(sp)
	lw	ra, 76(sp)
	addi	sp, sp, 80
	ret
.Lfunc_end34:
	.size	uInt64_toAscii, .Lfunc_end34-uInt64_toAscii

	.p2align	1
	.type	configError,@function
configError:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	s0, sp, 16
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(.L.str.78)
	addi	a1, a1, %lo(.L.str.78)
	call	fprintf
	addi	a0, zero, 3
	call	setExit
	lui	a0, %hi(exitValue)
	lw	a0, %lo(exitValue)(a0)
	call	exit
.Lfunc_end35:
	.size	configError, .Lfunc_end35-configError

	.p2align	1
	.type	uInt64_qrm10,@function
uInt64_qrm10:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	addi	s0, sp, 32
	sw	a0, -12(s0)
	mv	a0, zero
	sw	a0, -16(s0)
	addi	a0, zero, 7
	sw	a0, -24(s0)
	j	.LBB36_1
.LBB36_1:
	lw	a0, -24(s0)
	mv	a1, zero
	blt	a0, a1, .LBB36_4
	j	.LBB36_2
.LBB36_2:
	lw	a0, -16(s0)
	slli	a0, a0, 8
	lw	a1, -12(s0)
	lw	a2, -24(s0)
	add	a1, a1, a2
	lbu	a1, 0(a1)
	or	a0, a0, a1
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	lui	a1, 838861
	addi	a1, a1, -819
	mulhu	a0, a0, a1
	srli	a0, a0, 3
	lw	a2, -12(s0)
	lw	a3, -24(s0)
	add	a2, a2, a3
	sb	a0, 0(a2)
	lw	a0, -20(s0)
	mulhu	a1, a0, a1
	srli	a1, a1, 3
	addi	a2, zero, 10
	mul	a1, a1, a2
	sub	a0, a0, a1
	sw	a0, -16(s0)
	j	.LBB36_3
.LBB36_3:
	lw	a0, -24(s0)
	addi	a0, a0, -1
	sw	a0, -24(s0)
	j	.LBB36_1
.LBB36_4:
	lw	a0, -16(s0)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end36:
	.size	uInt64_qrm10, .Lfunc_end36-uInt64_qrm10

	.p2align	1
	.type	uInt64_isZero,@function
uInt64_isZero:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	addi	s0, sp, 32
	sw	a0, -16(s0)
	mv	a0, zero
	sw	a0, -20(s0)
	j	.LBB37_1
.LBB37_1:
	lw	a1, -20(s0)
	addi	a0, zero, 7
	blt	a0, a1, .LBB37_6
	j	.LBB37_2
.LBB37_2:
	lw	a0, -16(s0)
	lw	a1, -20(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	mv	a1, zero
	beq	a0, a1, .LBB37_4
	j	.LBB37_3
.LBB37_3:
	mv	a0, zero
	sb	a0, -9(s0)
	j	.LBB37_7
.LBB37_4:
	j	.LBB37_5
.LBB37_5:
	lw	a0, -20(s0)
	addi	a0, a0, 1
	sw	a0, -20(s0)
	j	.LBB37_1
.LBB37_6:
	addi	a0, zero, 1
	sb	a0, -9(s0)
	j	.LBB37_7
.LBB37_7:
	lbu	a0, -9(s0)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end37:
	.size	uInt64_isZero, .Lfunc_end37-uInt64_isZero

	.p2align	1
	.type	mapSuffix,@function
mapSuffix:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	addi	s0, sp, 32
	sw	a0, -16(s0)
	sw	a1, -20(s0)
	sw	a2, -24(s0)
	lw	a0, -16(s0)
	lw	a1, -20(s0)
	call	hasSuffix
	mv	a1, zero
	bne	a0, a1, .LBB38_2
	j	.LBB38_1
.LBB38_1:
	mv	a0, zero
	sb	a0, -9(s0)
	j	.LBB38_3
.LBB38_2:
	lw	a0, -16(s0)
	sw	a0, -28(s0)
	call	strlen
	sw	a0, -32(s0)
	lw	a0, -20(s0)
	call	strlen
	lw	a1, -32(s0)
	mv	a2, a0
	lw	a0, -28(s0)
	sub	a1, a1, a2
	add	a1, a1, a0
	mv	a0, zero
	sb	a0, 0(a1)
	lw	a0, -16(s0)
	lw	a1, -24(s0)
	call	strcat
	addi	a0, zero, 1
	sb	a0, -9(s0)
	j	.LBB38_3
.LBB38_3:
	lbu	a0, -9(s0)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end38:
	.size	mapSuffix, .Lfunc_end38-mapSuffix

	.p2align	1
	.type	uncompressStream,@function
uncompressStream:
	addi	sp, sp, -2032
	sw	ra, 2028(sp)
	sw	s0, 2024(sp)
	addi	s0, sp, 2032
	lui	a2, 2
	addi	a2, a2, -144
	sub	sp, sp, a2
	sw	a0, -20(s0)
	sw	a1, -24(s0)
	mv	a1, zero
	sw	a1, -28(s0)
	lui	a0, 1048574
	addi	a0, a0, -1864
	add	a0, a0, s0
	sw	a1, 0(a0)
	sw	a1, -48(s0)
	lw	a0, -24(s0)
	lhu	a0, 12(a0)
	andi	a0, a0, 64
	beq	a0, a1, .LBB39_2
	j	.LBB39_1
.LBB39_1:
	j	.LBB39_70
.LBB39_2:
	lw	a0, -20(s0)
	lhu	a0, 12(a0)
	andi	a0, a0, 64
	mv	a1, zero
	beq	a0, a1, .LBB39_4
	j	.LBB39_3
.LBB39_3:
	j	.LBB39_70
.LBB39_4:
	j	.LBB39_5
.LBB39_5:
	lw	a1, -20(s0)
	lui	a0, %hi(verbosity)
	lw	a2, %lo(verbosity)(a0)
	lui	a0, %hi(smallMode)
	lbu	a3, %lo(smallMode)(a0)
	lui	a0, 1048574
	addi	a0, a0, -1864
	add	a0, a0, s0
	lw	a5, 0(a0)
	addi	a0, s0, -32
	lui	a4, 1048574
	addi	a4, a4, -1860
	add	a4, a4, s0
	mv	a4, a4
	call	BZ2_bzReadOpen
	sw	a0, -28(s0)
	lw	a0, -28(s0)
	mv	a1, zero
	beq	a0, a1, .LBB39_7
	j	.LBB39_6
.LBB39_6:
	lw	a0, -32(s0)
	mv	a1, zero
	beq	a0, a1, .LBB39_8
	j	.LBB39_7
.LBB39_7:
	j	.LBB39_66
.LBB39_8:
	lw	a0, -48(s0)
	addi	a0, a0, 1
	sw	a0, -48(s0)
	j	.LBB39_9
.LBB39_9:
	lw	a0, -32(s0)
	mv	a1, zero
	bne	a0, a1, .LBB39_19
	j	.LBB39_10
.LBB39_10:
	lw	a1, -28(s0)
	lui	a0, 1
	addi	a3, a0, 904
	addi	a0, s0, -32
	lui	a2, 1048575
	addi	a2, a2, -956
	add	a2, a2, s0
	mv	a2, a2
	call	BZ2_bzRead
	sw	a0, -44(s0)
	lw	a0, -32(s0)
	addi	a1, zero, -5
	bne	a0, a1, .LBB39_12
	j	.LBB39_11
.LBB39_11:
	j	.LBB39_53
.LBB39_12:
	lw	a0, -32(s0)
	mv	a1, zero
	beq	a0, a1, .LBB39_14
	j	.LBB39_13
.LBB39_13:
	lw	a0, -32(s0)
	addi	a1, zero, 4
	bne	a0, a1, .LBB39_16
	j	.LBB39_14
.LBB39_14:
	lw	a0, -44(s0)
	addi	a1, zero, 1
	blt	a0, a1, .LBB39_16
	j	.LBB39_15
.LBB39_15:
	lw	a2, -44(s0)
	lw	a3, -24(s0)
	lui	a0, 1048575
	addi	a0, a0, -956
	add	a0, a0, s0
	mv	a0, a0
	addi	a1, zero, 1
	call	fwrite
	j	.LBB39_16
.LBB39_16:
	lw	a0, -24(s0)
	lhu	a0, 12(a0)
	andi	a0, a0, 64
	mv	a1, zero
	beq	a0, a1, .LBB39_18
	j	.LBB39_17
.LBB39_17:
	j	.LBB39_70
.LBB39_18:
	j	.LBB39_9
.LBB39_19:
	lw	a0, -32(s0)
	addi	a1, zero, 4
	beq	a0, a1, .LBB39_21
	j	.LBB39_20
.LBB39_20:
	j	.LBB39_66
.LBB39_21:
	lw	a1, -28(s0)
	addi	a0, s0, -32
	lui	a2, 1048574
	addi	a2, a2, -1868
	add	a2, a2, s0
	mv	a2, a2
	lui	a3, 1048574
	addi	a3, a3, -1864
	add	a3, a3, s0
	mv	a3, a3
	call	BZ2_bzReadGetUnused
	lw	a0, -32(s0)
	mv	a1, zero
	beq	a0, a1, .LBB39_23
	j	.LBB39_22
.LBB39_22:
	lui	a0, %hi(.L.str.89)
	addi	a0, a0, %lo(.L.str.89)
	call	panic
.LBB39_23:
	lui	a0, 1048574
	addi	a0, a0, -1868
	add	a0, a0, s0
	lw	a0, 0(a0)
	lui	a1, 1048574
	addi	a1, a1, -1872
	add	a1, a1, s0
	sw	a0, 0(a1)
	mv	a0, zero
	sw	a0, -52(s0)
	j	.LBB39_24
.LBB39_24:
	lw	a0, -52(s0)
	lui	a1, 1048574
	addi	a1, a1, -1864
	add	a1, a1, s0
	lw	a1, 0(a1)
	bge	a0, a1, .LBB39_27
	j	.LBB39_25
.LBB39_25:
	lui	a0, 1048574
	addi	a0, a0, -1872
	add	a0, a0, s0
	lw	a0, 0(a0)
	lw	a2, -52(s0)
	add	a0, a0, a2
	lb	a0, 0(a0)
	lui	a1, 1048574
	addi	a1, a1, -1860
	add	a1, a1, s0
	mv	a1, a1
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB39_26
.LBB39_26:
	lw	a0, -52(s0)
	addi	a0, a0, 1
	sw	a0, -52(s0)
	j	.LBB39_24
.LBB39_27:
	lw	a1, -28(s0)
	addi	a0, s0, -32
	call	BZ2_bzReadClose
	lw	a0, -32(s0)
	mv	a1, zero
	beq	a0, a1, .LBB39_29
	j	.LBB39_28
.LBB39_28:
	lui	a0, %hi(.L.str.89)
	addi	a0, a0, %lo(.L.str.89)
	call	panic
.LBB39_29:
	lui	a0, 1048574
	addi	a0, a0, -1864
	add	a0, a0, s0
	lw	a0, 0(a0)
	mv	a1, zero
	bne	a0, a1, .LBB39_32
	j	.LBB39_30
.LBB39_30:
	lw	a0, -20(s0)
	call	myfeof
	mv	a1, zero
	beq	a0, a1, .LBB39_32
	j	.LBB39_31
.LBB39_31:
	j	.LBB39_33
.LBB39_32:
	j	.LBB39_5
.LBB39_33:
	j	.LBB39_34
.LBB39_34:
	lw	a0, -20(s0)
	lhu	a0, 12(a0)
	andi	a0, a0, 64
	mv	a1, zero
	beq	a0, a1, .LBB39_36
	j	.LBB39_35
.LBB39_35:
	j	.LBB39_70
.LBB39_36:
	lw	a0, -24(s0)
	lui	a1, %hi(_impure_ptr)
	lw	a1, %lo(_impure_ptr)(a1)
	lw	a1, 8(a1)
	beq	a0, a1, .LBB39_40
	j	.LBB39_37
.LBB39_37:
	lw	a0, -24(s0)
	call	fileno
	lui	a1, 1048574
	addi	a1, a1, -1876
	add	a1, a1, s0
	sw	a0, 0(a1)
	lui	a0, 1048574
	addi	a0, a0, -1876
	add	a0, a0, s0
	lw	a1, 0(a0)
	addi	a0, zero, -1
	blt	a0, a1, .LBB39_39
	j	.LBB39_38
.LBB39_38:
	j	.LBB39_70
.LBB39_39:
	lui	a0, 1048574
	addi	a0, a0, -1876
	add	a0, a0, s0
	lw	a0, 0(a0)
	call	applySavedFileAttrToOutputFile
	j	.LBB39_40
.LBB39_40:
	lw	a0, -20(s0)
	call	fclose
	sw	a0, -40(s0)
	lw	a0, -40(s0)
	addi	a1, zero, -1
	bne	a0, a1, .LBB39_42
	j	.LBB39_41
.LBB39_41:
	j	.LBB39_70
.LBB39_42:
	lw	a0, -24(s0)
	lhu	a0, 12(a0)
	andi	a0, a0, 64
	mv	a1, zero
	beq	a0, a1, .LBB39_44
	j	.LBB39_43
.LBB39_43:
	j	.LBB39_70
.LBB39_44:
	lw	a0, -24(s0)
	call	fflush
	sw	a0, -40(s0)
	lw	a0, -40(s0)
	mv	a1, zero
	beq	a0, a1, .LBB39_46
	j	.LBB39_45
.LBB39_45:
	j	.LBB39_70
.LBB39_46:
	lw	a0, -24(s0)
	lui	a1, %hi(_impure_ptr)
	lw	a1, %lo(_impure_ptr)(a1)
	lw	a1, 8(a1)
	beq	a0, a1, .LBB39_50
	j	.LBB39_47
.LBB39_47:
	lw	a0, -24(s0)
	call	fclose
	sw	a0, -40(s0)
	lui	a1, %hi(outputHandleJustInCase)
	mv	a0, zero
	sw	a0, %lo(outputHandleJustInCase)(a1)
	lw	a0, -40(s0)
	addi	a1, zero, -1
	bne	a0, a1, .LBB39_49
	j	.LBB39_48
.LBB39_48:
	j	.LBB39_70
.LBB39_49:
	j	.LBB39_50
.LBB39_50:
	lui	a1, %hi(outputHandleJustInCase)
	mv	a0, zero
	sw	a0, %lo(outputHandleJustInCase)(a1)
	lui	a0, %hi(verbosity)
	lw	a0, %lo(verbosity)(a0)
	addi	a1, zero, 2
	blt	a0, a1, .LBB39_52
	j	.LBB39_51
.LBB39_51:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(.L.str.90)
	addi	a1, a1, %lo(.L.str.90)
	call	fprintf
	j	.LBB39_52
.LBB39_52:
	addi	a0, zero, 1
	sb	a0, -13(s0)
	j	.LBB39_84
.LBB39_53:
	lui	a0, %hi(forceOverwrite)
	lbu	a0, %lo(forceOverwrite)(a0)
	mv	a1, zero
	beq	a0, a1, .LBB39_65
	j	.LBB39_54
.LBB39_54:
	lw	a0, -20(s0)
	call	rewind
	j	.LBB39_55
.LBB39_55:
	lw	a0, -20(s0)
	call	myfeof
	mv	a1, zero
	beq	a0, a1, .LBB39_57
	j	.LBB39_56
.LBB39_56:
	j	.LBB39_64
.LBB39_57:
	lw	a3, -20(s0)
	lui	a0, 1
	addi	a2, a0, 904
	lui	a0, 1048575
	addi	a0, a0, -956
	add	a0, a0, s0
	mv	a0, a0
	addi	a1, zero, 1
	call	fread
	sw	a0, -44(s0)
	lw	a0, -20(s0)
	lhu	a0, 12(a0)
	andi	a0, a0, 64
	mv	a1, zero
	beq	a0, a1, .LBB39_59
	j	.LBB39_58
.LBB39_58:
	j	.LBB39_70
.LBB39_59:
	lw	a0, -44(s0)
	addi	a1, zero, 1
	blt	a0, a1, .LBB39_61
	j	.LBB39_60
.LBB39_60:
	lw	a2, -44(s0)
	lw	a3, -24(s0)
	lui	a0, 1048575
	addi	a0, a0, -956
	add	a0, a0, s0
	mv	a0, a0
	addi	a1, zero, 1
	call	fwrite
	j	.LBB39_61
.LBB39_61:
	lw	a0, -24(s0)
	lhu	a0, 12(a0)
	andi	a0, a0, 64
	mv	a1, zero
	beq	a0, a1, .LBB39_63
	j	.LBB39_62
.LBB39_62:
	j	.LBB39_70
.LBB39_63:
	j	.LBB39_55
.LBB39_64:
	j	.LBB39_34
.LBB39_65:
	j	.LBB39_66
.LBB39_66:
	lw	a1, -28(s0)
	addi	a0, s0, -36
	call	BZ2_bzReadClose
	lw	a0, -32(s0)
	addi	a1, a0, 9
	lui	a0, 1048574
	addi	a0, a0, -1880
	add	a0, a0, s0
	sw	a1, 0(a0)
	addi	a0, zero, 6
	bltu	a0, a1, .LBB39_83
	lui	a0, 1048574
	addi	a0, a0, -1880
	add	a0, a0, s0
	lw	a0, 0(a0)
	slli	a0, a0, 2
	lui	a1, %hi(.LJTI39_0)
	addi	a1, a1, %lo(.LJTI39_0)
	add	a0, a0, a1
	lw	a0, 0(a0)
	jr	a0
.LBB39_68:
	call	configError
.LBB39_69:
	j	.LBB39_70
.LBB39_70:
	call	ioError
.LBB39_71:
	call	crcError
.LBB39_72:
	call	outOfMemory
.LBB39_73:
	call	compressedStreamEOF
.LBB39_74:
	lw	a0, -20(s0)
	lui	a1, %hi(_impure_ptr)
	lw	a1, %lo(_impure_ptr)(a1)
	lw	a1, 4(a1)
	beq	a0, a1, .LBB39_76
	j	.LBB39_75
.LBB39_75:
	lw	a0, -20(s0)
	call	fclose
	j	.LBB39_76
.LBB39_76:
	lw	a0, -24(s0)
	lui	a1, %hi(_impure_ptr)
	lw	a1, %lo(_impure_ptr)(a1)
	lw	a1, 8(a1)
	beq	a0, a1, .LBB39_78
	j	.LBB39_77
.LBB39_77:
	lw	a0, -24(s0)
	call	fclose
	j	.LBB39_78
.LBB39_78:
	lw	a0, -48(s0)
	addi	a1, zero, 1
	bne	a0, a1, .LBB39_80
	j	.LBB39_79
.LBB39_79:
	mv	a0, zero
	sb	a0, -13(s0)
	j	.LBB39_84
.LBB39_80:
	lui	a0, %hi(noisy)
	lbu	a0, %lo(noisy)(a0)
	mv	a1, zero
	beq	a0, a1, .LBB39_82
	j	.LBB39_81
.LBB39_81:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	lw	a2, %lo(progName)(a1)
	lui	a1, %hi(.L.str.91)
	addi	a1, a1, %lo(.L.str.91)
	lui	a3, %hi(inName)
	addi	a3, a3, %lo(inName)
	call	fprintf
	j	.LBB39_82
.LBB39_82:
	addi	a0, zero, 1
	sb	a0, -13(s0)
	j	.LBB39_84
.LBB39_83:
	lui	a0, %hi(.L.str.92)
	addi	a0, a0, %lo(.L.str.92)
	call	panic
.LBB39_84:
	lbu	a0, -13(s0)
	lui	a1, 2
	addi	a1, a1, -144
	add	sp, sp, a1
	lw	s0, 2024(sp)
	lw	ra, 2028(sp)
	addi	sp, sp, 2032
	ret
.Lfunc_end39:
	.size	uncompressStream, .Lfunc_end39-uncompressStream
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI39_0:
	.word	.LBB39_68
	.word	.LBB39_83
	.word	.LBB39_73
	.word	.LBB39_69
	.word	.LBB39_74
	.word	.LBB39_71
	.word	.LBB39_72

	.text
	.p2align	1
	.type	crcError,@function
crcError:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	s0, sp, 16
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	lw	a2, %lo(progName)(a1)
	lui	a1, %hi(.L.str.93)
	addi	a1, a1, %lo(.L.str.93)
	call	fprintf
	call	showFileNames
	call	cadvise
	addi	a0, zero, 2
	call	cleanUpAndFail
.Lfunc_end40:
	.size	crcError, .Lfunc_end40-crcError

	.p2align	1
	.type	compressedStreamEOF,@function
compressedStreamEOF:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	s0, sp, 16
	lui	a0, %hi(noisy)
	lbu	a0, %lo(noisy)(a0)
	mv	a1, zero
	beq	a0, a1, .LBB41_2
	j	.LBB41_1
.LBB41_1:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	sw	a1, -12(s0)
	lw	a2, %lo(progName)(a1)
	lui	a1, %hi(.L.str.95)
	addi	a1, a1, %lo(.L.str.95)
	call	fprintf
	lw	a0, -12(s0)
	lw	a0, %lo(progName)(a0)
	call	perror
	call	showFileNames
	call	cadvise
	j	.LBB41_2
.LBB41_2:
	addi	a0, zero, 2
	call	cleanUpAndFail
.Lfunc_end41:
	.size	compressedStreamEOF, .Lfunc_end41-compressedStreamEOF

	.p2align	1
	.type	cadvise,@function
cadvise:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	s0, sp, 16
	lui	a0, %hi(noisy)
	lbu	a0, %lo(noisy)(a0)
	mv	a1, zero
	beq	a0, a1, .LBB42_2
	j	.LBB42_1
.LBB42_1:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(.L.str.94)
	addi	a1, a1, %lo(.L.str.94)
	call	fprintf
	j	.LBB42_2
.LBB42_2:
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end42:
	.size	cadvise, .Lfunc_end42-cadvise

	.p2align	1
	.type	testStream,@function
testStream:
	addi	sp, sp, -2032
	sw	ra, 2028(sp)
	sw	s0, 2024(sp)
	addi	s0, sp, 2032
	lui	a1, 2
	addi	a1, a1, -160
	sub	sp, sp, a1
	sw	a0, -20(s0)
	mv	a1, zero
	sw	a1, -24(s0)
	lui	a0, 1048574
	addi	a0, a0, -1856
	add	a0, a0, s0
	sw	a1, 0(a0)
	sw	a1, -40(s0)
	lw	a0, -20(s0)
	lhu	a0, 12(a0)
	andi	a0, a0, 64
	beq	a0, a1, .LBB43_2
	j	.LBB43_1
.LBB43_1:
	j	.LBB43_38
.LBB43_2:
	j	.LBB43_3
.LBB43_3:
	lw	a1, -20(s0)
	lui	a0, %hi(verbosity)
	lw	a2, %lo(verbosity)(a0)
	lui	a0, %hi(smallMode)
	lbu	a3, %lo(smallMode)(a0)
	lui	a0, 1048574
	addi	a0, a0, -1856
	add	a0, a0, s0
	lw	a5, 0(a0)
	addi	a0, s0, -28
	lui	a4, 1048574
	addi	a4, a4, -1852
	add	a4, a4, s0
	mv	a4, a4
	call	BZ2_bzReadOpen
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	mv	a1, zero
	beq	a0, a1, .LBB43_5
	j	.LBB43_4
.LBB43_4:
	lw	a0, -28(s0)
	mv	a1, zero
	beq	a0, a1, .LBB43_6
	j	.LBB43_5
.LBB43_5:
	j	.LBB43_32
.LBB43_6:
	lw	a0, -40(s0)
	addi	a0, a0, 1
	sw	a0, -40(s0)
	j	.LBB43_7
.LBB43_7:
	lw	a0, -28(s0)
	mv	a1, zero
	bne	a0, a1, .LBB43_11
	j	.LBB43_8
.LBB43_8:
	lw	a1, -24(s0)
	lui	a0, 1
	addi	a3, a0, 904
	addi	a0, s0, -28
	lui	a2, 1048575
	addi	a2, a2, -948
	add	a2, a2, s0
	mv	a2, a2
	call	BZ2_bzRead
	lw	a0, -28(s0)
	addi	a1, zero, -5
	bne	a0, a1, .LBB43_10
	j	.LBB43_9
.LBB43_9:
	j	.LBB43_32
.LBB43_10:
	j	.LBB43_7
.LBB43_11:
	lw	a0, -28(s0)
	addi	a1, zero, 4
	beq	a0, a1, .LBB43_13
	j	.LBB43_12
.LBB43_12:
	j	.LBB43_32
.LBB43_13:
	lw	a1, -24(s0)
	addi	a0, s0, -28
	lui	a2, 1048574
	addi	a2, a2, -1860
	add	a2, a2, s0
	mv	a2, a2
	lui	a3, 1048574
	addi	a3, a3, -1856
	add	a3, a3, s0
	mv	a3, a3
	call	BZ2_bzReadGetUnused
	lw	a0, -28(s0)
	mv	a1, zero
	beq	a0, a1, .LBB43_15
	j	.LBB43_14
.LBB43_14:
	lui	a0, %hi(.L.str.100)
	addi	a0, a0, %lo(.L.str.100)
	call	panic
.LBB43_15:
	lui	a0, 1048574
	addi	a0, a0, -1860
	add	a0, a0, s0
	lw	a0, 0(a0)
	lui	a1, 1048574
	addi	a1, a1, -1864
	add	a1, a1, s0
	sw	a0, 0(a1)
	mv	a0, zero
	sw	a0, -44(s0)
	j	.LBB43_16
.LBB43_16:
	lw	a0, -44(s0)
	lui	a1, 1048574
	addi	a1, a1, -1856
	add	a1, a1, s0
	lw	a1, 0(a1)
	bge	a0, a1, .LBB43_19
	j	.LBB43_17
.LBB43_17:
	lui	a0, 1048574
	addi	a0, a0, -1864
	add	a0, a0, s0
	lw	a0, 0(a0)
	lw	a2, -44(s0)
	add	a0, a0, a2
	lb	a0, 0(a0)
	lui	a1, 1048574
	addi	a1, a1, -1852
	add	a1, a1, s0
	mv	a1, a1
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB43_18
.LBB43_18:
	lw	a0, -44(s0)
	addi	a0, a0, 1
	sw	a0, -44(s0)
	j	.LBB43_16
.LBB43_19:
	lw	a1, -24(s0)
	addi	a0, s0, -28
	call	BZ2_bzReadClose
	lw	a0, -28(s0)
	mv	a1, zero
	beq	a0, a1, .LBB43_21
	j	.LBB43_20
.LBB43_20:
	lui	a0, %hi(.L.str.100)
	addi	a0, a0, %lo(.L.str.100)
	call	panic
.LBB43_21:
	lui	a0, 1048574
	addi	a0, a0, -1856
	add	a0, a0, s0
	lw	a0, 0(a0)
	mv	a1, zero
	bne	a0, a1, .LBB43_24
	j	.LBB43_22
.LBB43_22:
	lw	a0, -20(s0)
	call	myfeof
	mv	a1, zero
	beq	a0, a1, .LBB43_24
	j	.LBB43_23
.LBB43_23:
	j	.LBB43_25
.LBB43_24:
	j	.LBB43_3
.LBB43_25:
	lw	a0, -20(s0)
	lhu	a0, 12(a0)
	andi	a0, a0, 64
	mv	a1, zero
	beq	a0, a1, .LBB43_27
	j	.LBB43_26
.LBB43_26:
	j	.LBB43_38
.LBB43_27:
	lw	a0, -20(s0)
	call	fclose
	sw	a0, -36(s0)
	lw	a0, -36(s0)
	addi	a1, zero, -1
	bne	a0, a1, .LBB43_29
	j	.LBB43_28
.LBB43_28:
	j	.LBB43_38
.LBB43_29:
	lui	a0, %hi(verbosity)
	lw	a0, %lo(verbosity)(a0)
	addi	a1, zero, 2
	blt	a0, a1, .LBB43_31
	j	.LBB43_30
.LBB43_30:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(.L.str.90)
	addi	a1, a1, %lo(.L.str.90)
	call	fprintf
	j	.LBB43_31
.LBB43_31:
	addi	a0, zero, 1
	sb	a0, -13(s0)
	j	.LBB43_50
.LBB43_32:
	lw	a1, -24(s0)
	addi	a0, s0, -32
	call	BZ2_bzReadClose
	lui	a0, %hi(verbosity)
	lw	a0, %lo(verbosity)(a0)
	mv	a1, zero
	bne	a0, a1, .LBB43_34
	j	.LBB43_33
.LBB43_33:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	lw	a2, %lo(progName)(a1)
	lui	a1, %hi(.L.str.101)
	addi	a1, a1, %lo(.L.str.101)
	lui	a3, %hi(inName)
	addi	a3, a3, %lo(inName)
	call	fprintf
	j	.LBB43_34
.LBB43_34:
	lw	a0, -28(s0)
	addi	a1, a0, 9
	lui	a0, 1048574
	addi	a0, a0, -1868
	add	a0, a0, s0
	sw	a1, 0(a0)
	addi	a0, zero, 6
	bltu	a0, a1, .LBB43_49
	lui	a0, 1048574
	addi	a0, a0, -1868
	add	a0, a0, s0
	lw	a0, 0(a0)
	slli	a0, a0, 2
	lui	a1, %hi(.LJTI43_0)
	addi	a1, a1, %lo(.LJTI43_0)
	add	a0, a0, a1
	lw	a0, 0(a0)
	jr	a0
.LBB43_36:
	call	configError
.LBB43_37:
	j	.LBB43_38
.LBB43_38:
	call	ioError
.LBB43_39:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(.L.str.102)
	addi	a1, a1, %lo(.L.str.102)
	call	fprintf
	mv	a0, zero
	sb	a0, -13(s0)
	j	.LBB43_50
.LBB43_40:
	call	outOfMemory
.LBB43_41:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(.L.str.103)
	addi	a1, a1, %lo(.L.str.103)
	call	fprintf
	mv	a0, zero
	sb	a0, -13(s0)
	j	.LBB43_50
.LBB43_42:
	lw	a0, -20(s0)
	lui	a1, %hi(_impure_ptr)
	lw	a1, %lo(_impure_ptr)(a1)
	lw	a1, 4(a1)
	beq	a0, a1, .LBB43_44
	j	.LBB43_43
.LBB43_43:
	lw	a0, -20(s0)
	call	fclose
	j	.LBB43_44
.LBB43_44:
	lw	a0, -40(s0)
	addi	a1, zero, 1
	bne	a0, a1, .LBB43_46
	j	.LBB43_45
.LBB43_45:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(.L.str.104)
	addi	a1, a1, %lo(.L.str.104)
	call	fprintf
	mv	a0, zero
	sb	a0, -13(s0)
	j	.LBB43_50
.LBB43_46:
	lui	a0, %hi(noisy)
	lbu	a0, %lo(noisy)(a0)
	mv	a1, zero
	beq	a0, a1, .LBB43_48
	j	.LBB43_47
.LBB43_47:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(.L.str.105)
	addi	a1, a1, %lo(.L.str.105)
	call	fprintf
	j	.LBB43_48
.LBB43_48:
	addi	a0, zero, 1
	sb	a0, -13(s0)
	j	.LBB43_50
.LBB43_49:
	lui	a0, %hi(.L.str.106)
	addi	a0, a0, %lo(.L.str.106)
	call	panic
.LBB43_50:
	lbu	a0, -13(s0)
	lui	a1, 2
	addi	a1, a1, -160
	add	sp, sp, a1
	lw	s0, 2024(sp)
	lw	ra, 2028(sp)
	addi	sp, sp, 2032
	ret
.Lfunc_end43:
	.size	testStream, .Lfunc_end43-testStream
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI43_0:
	.word	.LBB43_36
	.word	.LBB43_49
	.word	.LBB43_41
	.word	.LBB43_37
	.word	.LBB43_42
	.word	.LBB43_39
	.word	.LBB43_40

	.type	.L.str,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	".bz2"
	.size	.L.str, 5

	.type	.L.str.1,@object
.L.str.1:
	.asciz	".bz"
	.size	.L.str.1, 4

	.type	.L.str.2,@object
.L.str.2:
	.asciz	".tbz2"
	.size	.L.str.2, 6

	.type	.L.str.3,@object
.L.str.3:
	.asciz	".tbz"
	.size	.L.str.3, 5

	.type	zSuffix,@object
	.data
	.globl	zSuffix
	.p2align	2
zSuffix:
	.word	.L.str
	.word	.L.str.1
	.word	.L.str.2
	.word	.L.str.3
	.size	zSuffix, 16

	.type	.L.str.4,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.zero	1
	.size	.L.str.4, 1

	.type	.L.str.5,@object
.L.str.5:
	.asciz	".tar"
	.size	.L.str.5, 5

	.type	unzSuffix,@object
	.data
	.globl	unzSuffix
	.p2align	2
unzSuffix:
	.word	.L.str.4
	.word	.L.str.4
	.word	.L.str.5
	.word	.L.str.5
	.size	unzSuffix, 16

	.type	outputHandleJustInCase,@object
	.section	.sbss,"aw",@nobits
	.globl	outputHandleJustInCase
	.p2align	2
outputHandleJustInCase:
	.word	0
	.size	outputHandleJustInCase, 4

	.type	smallMode,@object
	.globl	smallMode
smallMode:
	.byte	0
	.size	smallMode, 1

	.type	keepInputFiles,@object
	.globl	keepInputFiles
keepInputFiles:
	.byte	0
	.size	keepInputFiles, 1

	.type	forceOverwrite,@object
	.globl	forceOverwrite
forceOverwrite:
	.byte	0
	.size	forceOverwrite, 1

	.type	noisy,@object
	.globl	noisy
noisy:
	.byte	0
	.size	noisy, 1

	.type	verbosity,@object
	.globl	verbosity
	.p2align	2
verbosity:
	.word	0
	.size	verbosity, 4

	.type	blockSize100k,@object
	.globl	blockSize100k
	.p2align	2
blockSize100k:
	.word	0
	.size	blockSize100k, 4

	.type	testFailsExist,@object
	.globl	testFailsExist
testFailsExist:
	.byte	0
	.size	testFailsExist, 1

	.type	unzFailsExist,@object
	.globl	unzFailsExist
unzFailsExist:
	.byte	0
	.size	unzFailsExist, 1

	.type	numFileNames,@object
	.globl	numFileNames
	.p2align	2
numFileNames:
	.word	0
	.size	numFileNames, 4

	.type	numFilesProcessed,@object
	.globl	numFilesProcessed
	.p2align	2
numFilesProcessed:
	.word	0
	.size	numFilesProcessed, 4

	.type	workFactor,@object
	.globl	workFactor
	.p2align	2
workFactor:
	.word	0
	.size	workFactor, 4

	.type	deleteOutputOnInterrupt,@object
	.globl	deleteOutputOnInterrupt
deleteOutputOnInterrupt:
	.byte	0
	.size	deleteOutputOnInterrupt, 1

	.type	exitValue,@object
	.globl	exitValue
	.p2align	2
exitValue:
	.word	0
	.size	exitValue, 4

	.type	inName,@object
	.bss
	.globl	inName
inName:
	.zero	1034
	.size	inName, 1034

	.type	.L.str.6,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"(none)"
	.size	.L.str.6, 7

	.type	outName,@object
	.bss
	.globl	outName
outName:
	.zero	1034
	.size	outName, 1034

	.type	progNameReally,@object
	.globl	progNameReally
progNameReally:
	.zero	1034
	.size	progNameReally, 1034

	.type	progName,@object
	.section	.sbss,"aw",@nobits
	.globl	progName
	.p2align	2
progName:
	.word	0
	.size	progName, 4

	.type	.L.str.7,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"BZIP2"
	.size	.L.str.7, 6

	.type	.L.str.8,@object
.L.str.8:
	.asciz	"BZIP"
	.size	.L.str.8, 5

	.type	longestFileName,@object
	.section	.sbss,"aw",@nobits
	.globl	longestFileName
	.p2align	2
longestFileName:
	.word	0
	.size	longestFileName, 4

	.type	.L.str.9,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"--"
	.size	.L.str.9, 3

	.type	srcMode,@object
	.section	.sbss,"aw",@nobits
	.globl	srcMode
	.p2align	2
srcMode:
	.word	0
	.size	srcMode, 4

	.type	opMode,@object
	.globl	opMode
	.p2align	2
opMode:
	.word	0
	.size	opMode, 4

	.type	.L.str.10,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"unzip"
	.size	.L.str.10, 6

	.type	.L.str.11,@object
.L.str.11:
	.asciz	"UNZIP"
	.size	.L.str.11, 6

	.type	.L.str.12,@object
.L.str.12:
	.asciz	"z2cat"
	.size	.L.str.12, 6

	.type	.L.str.13,@object
.L.str.13:
	.asciz	"Z2CAT"
	.size	.L.str.13, 6

	.type	.L.str.14,@object
.L.str.14:
	.asciz	"zcat"
	.size	.L.str.14, 5

	.type	.L.str.15,@object
.L.str.15:
	.asciz	"ZCAT"
	.size	.L.str.15, 5

	.type	.L.str.16,@object
.L.str.16:
	.asciz	"%s: Bad flag `%s'\n"
	.size	.L.str.16, 19

	.type	.L.str.17,@object
.L.str.17:
	.asciz	"--stdout"
	.size	.L.str.17, 9

	.type	.L.str.18,@object
.L.str.18:
	.asciz	"--decompress"
	.size	.L.str.18, 13

	.type	.L.str.19,@object
.L.str.19:
	.asciz	"--compress"
	.size	.L.str.19, 11

	.type	.L.str.20,@object
.L.str.20:
	.asciz	"--force"
	.size	.L.str.20, 8

	.type	.L.str.21,@object
.L.str.21:
	.asciz	"--test"
	.size	.L.str.21, 7

	.type	.L.str.22,@object
.L.str.22:
	.asciz	"--keep"
	.size	.L.str.22, 7

	.type	.L.str.23,@object
.L.str.23:
	.asciz	"--small"
	.size	.L.str.23, 8

	.type	.L.str.24,@object
.L.str.24:
	.asciz	"--quiet"
	.size	.L.str.24, 8

	.type	.L.str.25,@object
.L.str.25:
	.asciz	"--version"
	.size	.L.str.25, 10

	.type	.L.str.26,@object
.L.str.26:
	.asciz	"--license"
	.size	.L.str.26, 10

	.type	.L.str.27,@object
.L.str.27:
	.asciz	"--exponential"
	.size	.L.str.27, 14

	.type	.L.str.28,@object
.L.str.28:
	.asciz	"--repetitive-best"
	.size	.L.str.28, 18

	.type	.L.str.29,@object
.L.str.29:
	.asciz	"--repetitive-fast"
	.size	.L.str.29, 18

	.type	.L.str.30,@object
.L.str.30:
	.asciz	"--fast"
	.size	.L.str.30, 7

	.type	.L.str.31,@object
.L.str.31:
	.asciz	"--best"
	.size	.L.str.31, 7

	.type	.L.str.32,@object
.L.str.32:
	.asciz	"--verbose"
	.size	.L.str.32, 10

	.type	.L.str.33,@object
.L.str.33:
	.asciz	"--help"
	.size	.L.str.33, 7

	.type	.L.str.34,@object
.L.str.34:
	.asciz	"%s: -c and -t cannot be used together.\n"
	.size	.L.str.34, 40

	.type	.L.str.35,@object
.L.str.35:
	.asciz	"\nYou can use the `bzip2recover' program to attempt to recover\ndata from undamaged sections of corrupted files.\n\n"
	.size	.L.str.35, 113

	.type	tmpName,@object
	.bss
	.globl	tmpName
tmpName:
	.zero	1034
	.size	tmpName, 1034

	.type	.L.str.36,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.36:
	.asciz	": Caught a SIGSEGV or SIGBUS whilst compressing.\n\n   Possible causes are (most likely first):\n   (1) This computer has unreliable memory or cache hardware\n       (a surprisingly common problem; try a different machine.)\n   (2) A bug in the compiler used to create this executable\n       (unlikely, if you didn't compile bzip2 yourself.)\n   (3) A real bug in bzip2 -- I hope this should never be the case.\n   The user's manual, Section 4.3, has more info on (1) and (2).\n   \n   If you suspect this is a bug in bzip2, or are unsure about (1)\n   or (2), feel free to report it to: bzip2-devel@sourceware.org.\n   Section 4.3 of the user's manual describes the info a useful\n   bug report should have.  If the manual is available on your\n   system, please try and read it before mailing me.  If you don't\n   have the manual or can't be bothered to read it, mail me anyway.\n\n"
	.size	.L.str.36, 870

	.type	.L.str.37,@object
.L.str.37:
	.asciz	": Caught a SIGSEGV or SIGBUS whilst decompressing.\n\n   Possible causes are (most likely first):\n   (1) The compressed data is corrupted, and bzip2's usual checks\n       failed to detect this.  Try bzip2 -tvv my_file.bz2.\n   (2) This computer has unreliable memory or cache hardware\n       (a surprisingly common problem; try a different machine.)\n   (3) A bug in the compiler used to create this executable\n       (unlikely, if you didn't compile bzip2 yourself.)\n   (4) A real bug in bzip2 -- I hope this should never be the case.\n   The user's manual, Section 4.3, has more info on (2) and (3).\n   \n   If you suspect this is a bug in bzip2, or are unsure about (2)\n   or (3), feel free to report it to: bzip2-devel@sourceware.org.\n   Section 4.3 of the user's manual describes the info a useful\n   bug report should have.  If the manual is available on your\n   system, please try and read it before mailing me.  If you don't\n   have the manual or can't be bothered to read it, mail me anyway.\n\n"
	.size	.L.str.37, 997

	.type	.L.str.38,@object
.L.str.38:
	.asciz	"\n"
	.size	.L.str.38, 2

	.type	.L.str.39,@object
.L.str.39:
	.asciz	"\tInput file = "
	.size	.L.str.39, 15

	.type	.L.str.40,@object
.L.str.40:
	.asciz	"\tOutput file = "
	.size	.L.str.40, 16

	.type	.L.str.41,@object
.L.str.41:
	.asciz	"bzip2: file name\n`%s'\nis suspiciously (more than %d chars) long.\nTry using a reasonable file name instead.  Sorry! :-)\n"
	.size	.L.str.41, 120

	.type	.L.str.42,@object
.L.str.42:
	.asciz	"\n%s: couldn't allocate enough memory\n"
	.size	.L.str.42, 38

	.type	.L.str.43,@object
.L.str.43:
	.asciz	"\tInput file = %s, output file = %s\n"
	.size	.L.str.43, 36

	.type	.L.str.44,@object
.L.str.44:
	.asciz	"%s: Deleting output file %s, if it exists.\n"
	.size	.L.str.44, 44

	.type	.L.str.45,@object
.L.str.45:
	.asciz	"%s: WARNING: deletion of output file (apparently) failed.\n"
	.size	.L.str.45, 59

	.type	.L.str.46,@object
.L.str.46:
	.asciz	"%s: WARNING: deletion of output file suppressed\n"
	.size	.L.str.46, 49

	.type	.L.str.47,@object
.L.str.47:
	.asciz	"%s:    since input file no longer exists.  Output file\n"
	.size	.L.str.47, 56

	.type	.L.str.48,@object
.L.str.48:
	.asciz	"%s:    `%s' may be incomplete.\n"
	.size	.L.str.48, 32

	.type	.L.str.49,@object
.L.str.49:
	.asciz	"%s:    I suggest doing an integrity test (bzip2 -tv) of it.\n"
	.size	.L.str.49, 61

	.type	.L.str.50,@object
.L.str.50:
	.asciz	"%s: WARNING: some files have not been processed:\n%s:    %d specified on command line, %d not processed yet.\n\n"
	.size	.L.str.50, 110

	.type	.L.str.51,@object
.L.str.51:
	.asciz	"bzip2, a block-sorting file compressor.  Version %s.\n   \n   Copyright (C) 1996-2019 by Julian Seward.\n   \n   This program is free software; you can redistribute it and/or modify\n   it under the terms set out in the LICENSE file, which is included\n   in the bzip2 source distribution.\n   \n   This program is distributed in the hope that it will be useful,\n   but WITHOUT ANY WARRANTY; without even the implied warranty of\n   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\n   LICENSE file for more details.\n   \n"
	.size	.L.str.51, 525

	.type	.L.str.52,@object
.L.str.52:
	.asciz	"bzip2, a block-sorting file compressor.  Version %s.\n\n   usage: %s [flags and input files in any order]\n\n   -h --help           print this message\n   -d --decompress     force decompression\n   -z --compress       force compression\n   -k --keep           keep (don't delete) input files\n   -f --force          overwrite existing output files\n   -t --test           test compressed file integrity\n   -c --stdout         output to standard out\n   -q --quiet          suppress noncritical error messages\n   -v --verbose        be verbose (a 2nd -v gives more)\n   -L --license        display software version & license\n   -V --version        display software version & license\n   -s --small          use less memory (at most 2500k)\n   -1 .. -9            set block size to 100k .. 900k\n   --fast              alias for -1\n   --best              alias for -9\n\n   If invoked as `bzip2', default action is to compress.\n              as `bunzip2',  default action is to decompress.\n              as `bzcat', default action is to decompress to stdout.\n\n   If no file names are given, bzip2 compresses or decompresses\n   from standard input to standard output.  You can combine\n   short flags, so `-v -4' means the same as -v4 or -4v, &c.\n\n"
	.size	.L.str.52, 1230

	.type	.L.str.53,@object
.L.str.53:
	.asciz	"%s: %s is redundant in versions 0.9.5 and above\n"
	.size	.L.str.53, 49

	.type	.L.str.54,@object
.L.str.54:
	.asciz	"\n%s: Control-C or similar caught, quitting.\n"
	.size	.L.str.54, 45

	.type	.L.str.55,@object
.L.str.55:
	.asciz	"compress: bad modes\n"
	.size	.L.str.55, 21

	.type	.L.str.56,@object
.L.str.56:
	.asciz	"(stdin)"
	.size	.L.str.56, 8

	.type	.L.str.57,@object
.L.str.57:
	.asciz	"(stdout)"
	.size	.L.str.57, 9

	.type	.L.str.58,@object
.L.str.58:
	.asciz	"%s: There are no files matching `%s'.\n"
	.size	.L.str.58, 39

	.type	.L.str.59,@object
.L.str.59:
	.asciz	"%s: Can't open input file %s: %s.\n"
	.size	.L.str.59, 35

	.type	.L.str.60,@object
.L.str.60:
	.asciz	"%s: Input file %s already has %s suffix.\n"
	.size	.L.str.60, 42

	.type	.L.str.61,@object
.L.str.61:
	.asciz	"%s: Input file %s is a directory.\n"
	.size	.L.str.61, 35

	.type	.L.str.62,@object
.L.str.62:
	.asciz	"%s: Input file %s is not a normal file.\n"
	.size	.L.str.62, 41

	.type	.L.str.63,@object
.L.str.63:
	.asciz	"%s: Output file %s already exists.\n"
	.size	.L.str.63, 36

	.type	.L.str.64,@object
.L.str.64:
	.asciz	"%s: Input file %s has %d other link%s.\n"
	.size	.L.str.64, 40

	.type	.L.str.65,@object
.L.str.65:
	.asciz	"s"
	.size	.L.str.65, 2

	.type	.L.str.66,@object
.L.str.66:
	.asciz	"%s: I won't write compressed data to a terminal.\n"
	.size	.L.str.66, 50

	.type	.L.str.67,@object
.L.str.67:
	.asciz	"%s: For help, type: `%s --help'.\n"
	.size	.L.str.67, 34

	.type	.L.str.68,@object
.L.str.68:
	.asciz	"rb"
	.size	.L.str.68, 3

	.type	.L.str.69,@object
.L.str.69:
	.asciz	"wb"
	.size	.L.str.69, 3

	.type	.L.str.70,@object
.L.str.70:
	.asciz	"%s: Can't create output file %s: %s.\n"
	.size	.L.str.70, 38

	.type	.L.str.71,@object
.L.str.71:
	.asciz	"compress: bad srcMode"
	.size	.L.str.71, 22

	.type	.L.str.72,@object
.L.str.72:
	.asciz	"  %s: "
	.size	.L.str.72, 7

	.type	.L.str.73,@object
.L.str.73:
	.asciz	"\n%s: PANIC -- internal consistency error:\n\t%s\n\tThis is a BUG.  Please report it to:\n\tbzip2-devel@sourceware.org\n"
	.size	.L.str.73, 113

	.type	fileMetaInfo,@object
	.local	fileMetaInfo
	.comm	fileMetaInfo,88,8
	.type	.L.str.74,@object
.L.str.74:
	.asciz	" "
	.size	.L.str.74, 2

	.type	.L.str.75,@object
.L.str.75:
	.asciz	" no data compressed.\n"
	.size	.L.str.75, 22

	.type	.L.str.76,@object
.L.str.76:
	.asciz	"%6.3f:1, %6.3f bits/byte, %5.2f%% saved, %s in, %s out.\n"
	.size	.L.str.76, 57

	.type	.L.str.77,@object
.L.str.77:
	.asciz	"compress:unexpected error"
	.size	.L.str.77, 26

	.type	.L.str.78,@object
.L.str.78:
	.asciz	"bzip2: I'm not configured correctly for this platform!\n\tI require Int32, Int16 and Char to have sizes\n\tof 4, 2 and 1 bytes to run properly, and they don't.\n\tProbably you can fix this by defining them correctly,\n\tand recompiling.  Bye!\n"
	.size	.L.str.78, 236

	.type	.L.str.79,@object
.L.str.79:
	.asciz	"\n%s: I/O or other error, bailing out.  Possible reason follows.\n"
	.size	.L.str.79, 65

	.type	.L.str.80,@object
.L.str.80:
	.asciz	"uncompress: bad modes\n"
	.size	.L.str.80, 23

	.type	.L.str.81,@object
.L.str.81:
	.asciz	".out"
	.size	.L.str.81, 5

	.type	.L.str.82,@object
.L.str.82:
	.asciz	"%s: Can't guess original name for %s -- using %s\n"
	.size	.L.str.82, 50

	.type	.L.str.83,@object
.L.str.83:
	.asciz	"%s: I won't read compressed data from a terminal.\n"
	.size	.L.str.83, 51

	.type	.L.str.84,@object
.L.str.84:
	.asciz	"%s: Can't open input file %s:%s.\n"
	.size	.L.str.84, 34

	.type	.L.str.85,@object
.L.str.85:
	.asciz	"uncompress: bad srcMode"
	.size	.L.str.85, 24

	.type	.L.str.86,@object
.L.str.86:
	.asciz	"done\n"
	.size	.L.str.86, 6

	.type	.L.str.87,@object
.L.str.87:
	.asciz	"not a bzip2 file.\n"
	.size	.L.str.87, 19

	.type	.L.str.88,@object
.L.str.88:
	.asciz	"%s: %s is not a bzip2 file.\n"
	.size	.L.str.88, 29

	.type	.L.str.89,@object
.L.str.89:
	.asciz	"decompress:bzReadGetUnused"
	.size	.L.str.89, 27

	.type	.L.str.90,@object
.L.str.90:
	.asciz	"\n    "
	.size	.L.str.90, 6

	.type	.L.str.91,@object
.L.str.91:
	.asciz	"\n%s: %s: trailing garbage after EOF ignored\n"
	.size	.L.str.91, 45

	.type	.L.str.92,@object
.L.str.92:
	.asciz	"decompress:unexpected error"
	.size	.L.str.92, 28

	.type	.L.str.93,@object
.L.str.93:
	.asciz	"\n%s: Data integrity error when decompressing.\n"
	.size	.L.str.93, 47

	.type	.L.str.94,@object
.L.str.94:
	.asciz	"\nIt is possible that the compressed file(s) have become corrupted.\nYou can use the -tvv option to test integrity of such files.\n\nYou can use the `bzip2recover' program to attempt to recover\ndata from undamaged sections of corrupted files.\n\n"
	.size	.L.str.94, 241

	.type	.L.str.95,@object
.L.str.95:
	.asciz	"\n%s: Compressed file ends unexpectedly;\n\tperhaps it is corrupted?  *Possible* reason follows.\n"
	.size	.L.str.95, 95

	.type	.L.str.96,@object
.L.str.96:
	.asciz	"testf: bad modes\n"
	.size	.L.str.96, 18

	.type	.L.str.97,@object
.L.str.97:
	.asciz	"%s: Can't open input %s: %s.\n"
	.size	.L.str.97, 30

	.type	.L.str.98,@object
.L.str.98:
	.asciz	"testf: bad srcMode"
	.size	.L.str.98, 19

	.type	.L.str.99,@object
.L.str.99:
	.asciz	"ok\n"
	.size	.L.str.99, 4

	.type	.L.str.100,@object
.L.str.100:
	.asciz	"test:bzReadGetUnused"
	.size	.L.str.100, 21

	.type	.L.str.101,@object
.L.str.101:
	.asciz	"%s: %s: "
	.size	.L.str.101, 9

	.type	.L.str.102,@object
.L.str.102:
	.asciz	"data integrity (CRC) error in data\n"
	.size	.L.str.102, 36

	.type	.L.str.103,@object
.L.str.103:
	.asciz	"file ends unexpectedly\n"
	.size	.L.str.103, 24

	.type	.L.str.104,@object
.L.str.104:
	.asciz	"bad magic number (file not created by bzip2)\n"
	.size	.L.str.104, 46

	.type	.L.str.105,@object
.L.str.105:
	.asciz	"trailing garbage after EOF ignored\n"
	.size	.L.str.105, 36

	.type	.L.str.106,@object
.L.str.106:
	.asciz	"test:unexpected error"
	.size	.L.str.106, 22

	.ident	"clang version 12.0.0"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym signal
	.addrsig_sym mySIGSEGVorSIGBUScatcher
	.addrsig_sym copyFileName
	.addrsig_sym addFlagsFromEnvVar
	.addrsig_sym snocString
	.addrsig_sym strcmp
	.addrsig_sym strlen
	.addrsig_sym strstr
	.addrsig_sym license
	.addrsig_sym usage
	.addrsig_sym exit
	.addrsig_sym fprintf
	.addrsig_sym redundant
	.addrsig_sym strncmp
	.addrsig_sym mySignalCatcher
	.addrsig_sym compress
	.addrsig_sym uncompress
	.addrsig_sym setExit
	.addrsig_sym testf
	.addrsig_sym free
	.addrsig_sym write
	.addrsig_sym _exit
	.addrsig_sym strncpy
	.addrsig_sym getenv
	.addrsig_sym mkCell
	.addrsig_sym myMalloc
	.addrsig_sym strcpy
	.addrsig_sym malloc
	.addrsig_sym outOfMemory
	.addrsig_sym showFileNames
	.addrsig_sym cleanUpAndFail
	.addrsig_sym stat
	.addrsig_sym fclose
	.addrsig_sym remove
	.addrsig_sym BZ2_bzlibVersion
	.addrsig_sym panic
	.addrsig_sym strcat
	.addrsig_sym containsDubiousChars
	.addrsig_sym fileExists
	.addrsig_sym strerror
	.addrsig_sym __errno
	.addrsig_sym hasSuffix
	.addrsig_sym notAStandardFile
	.addrsig_sym countHardLinks
	.addrsig_sym saveInputFileMetaInfo
	.addrsig_sym isatty
	.addrsig_sym fileno
	.addrsig_sym fopen
	.addrsig_sym fopen_output_safely
	.addrsig_sym pad
	.addrsig_sym fflush
	.addrsig_sym compressStream
	.addrsig_sym applySavedTimeInfoToOutputFile
	.addrsig_sym ioError
	.addrsig_sym lstat
	.addrsig_sym open
	.addrsig_sym fdopen
	.addrsig_sym close
	.addrsig_sym BZ2_bzWriteOpen
	.addrsig_sym myfeof
	.addrsig_sym fread
	.addrsig_sym BZ2_bzWrite
	.addrsig_sym BZ2_bzWriteClose64
	.addrsig_sym applySavedFileAttrToOutputFile
	.addrsig_sym uInt64_from_UInt32s
	.addrsig_sym uInt64_to_double
	.addrsig_sym uInt64_toAscii
	.addrsig_sym configError
	.addrsig_sym fgetc
	.addrsig_sym ungetc
	.addrsig_sym fchmod
	.addrsig_sym fchown
	.addrsig_sym uInt64_qrm10
	.addrsig_sym uInt64_isZero
	.addrsig_sym utime
	.addrsig_sym perror
	.addrsig_sym mapSuffix
	.addrsig_sym uncompressStream
	.addrsig_sym BZ2_bzReadOpen
	.addrsig_sym BZ2_bzRead
	.addrsig_sym fwrite
	.addrsig_sym BZ2_bzReadGetUnused
	.addrsig_sym BZ2_bzReadClose
	.addrsig_sym rewind
	.addrsig_sym crcError
	.addrsig_sym compressedStreamEOF
	.addrsig_sym cadvise
	.addrsig_sym testStream
	.addrsig_sym zSuffix
	.addrsig_sym unzSuffix
	.addrsig_sym outputHandleJustInCase
	.addrsig_sym smallMode
	.addrsig_sym keepInputFiles
	.addrsig_sym forceOverwrite
	.addrsig_sym noisy
	.addrsig_sym verbosity
	.addrsig_sym blockSize100k
	.addrsig_sym testFailsExist
	.addrsig_sym unzFailsExist
	.addrsig_sym numFileNames
	.addrsig_sym numFilesProcessed
	.addrsig_sym workFactor
	.addrsig_sym deleteOutputOnInterrupt
	.addrsig_sym exitValue
	.addrsig_sym inName
	.addrsig_sym outName
	.addrsig_sym progNameReally
	.addrsig_sym progName
	.addrsig_sym longestFileName
	.addrsig_sym srcMode
	.addrsig_sym opMode
	.addrsig_sym _impure_ptr
	.addrsig_sym tmpName
	.addrsig_sym _ctype_
	.addrsig_sym fileMetaInfo
