	.text
	.attribute	4, 16
	.attribute	5, "rv32i2p0_m2p0_a2p0_c2p0"
	.file	"bzip2.c"
	.globl	main
	.p2align	1
	.type	main,@function
main:
	addi	sp, sp, -128
	sw	ra, 124(sp)
	sw	s0, 120(sp)
	sw	s1, 116(sp)
	sw	s2, 112(sp)
	sw	s3, 108(sp)
	sw	s4, 104(sp)
	sw	s5, 100(sp)
	sw	s6, 96(sp)
	sw	s7, 92(sp)
	sw	s8, 88(sp)
	sw	s9, 84(sp)
	sw	s10, 80(sp)
	sw	s11, 76(sp)
	mv	s2, a1
	mv	s3, a0
	lui	a0, %hi(outputHandleJustInCase)
	sw	zero, %lo(outputHandleJustInCase)(a0)
	lui	a0, %hi(smallMode)
	sb	zero, %lo(smallMode)(a0)
	lui	a0, %hi(keepInputFiles)
	sb	zero, %lo(keepInputFiles)(a0)
	lui	a0, %hi(forceOverwrite)
	sb	zero, %lo(forceOverwrite)(a0)
	lui	a0, %hi(noisy)
	addi	a1, zero, 1
	sb	a1, %lo(noisy)(a0)
	lui	a0, %hi(verbosity)
	sw	zero, %lo(verbosity)(a0)
	lui	a0, %hi(blockSize100k)
	addi	a1, zero, 9
	sw	a1, %lo(blockSize100k)(a0)
	lui	a0, %hi(testFailsExist)
	sb	zero, %lo(testFailsExist)(a0)
	lui	a0, %hi(unzFailsExist)
	sb	zero, %lo(unzFailsExist)(a0)
	lui	a0, %hi(numFileNames)
	sw	zero, %lo(numFileNames)(a0)
	lui	a0, %hi(numFilesProcessed)
	sw	zero, %lo(numFilesProcessed)(a0)
	lui	a0, %hi(workFactor)
	addi	a1, zero, 30
	sw	a1, %lo(workFactor)(a0)
	lui	a0, %hi(deleteOutputOnInterrupt)
	sb	zero, %lo(deleteOutputOnInterrupt)(a0)
	lui	s4, %hi(exitValue)
	sw	zero, %lo(exitValue)(s4)
	lui	a0, %hi(mySIGSEGVorSIGBUScatcher)
	addi	s1, a0, %lo(mySIGSEGVorSIGBUScatcher)
	addi	a0, zero, 11
	mv	a1, s1
	call	signal
	addi	a0, zero, 10
	mv	a1, s1
	call	signal
	lui	a0, %hi(.L.str.6)
	addi	s1, a0, %lo(.L.str.6)
	lui	a0, %hi(inName)
	addi	s0, a0, %lo(inName)
	addi	a2, zero, 1024
	mv	a0, s0
	mv	a1, s1
	call	strncpy
	sb	zero, 1024(s0)
	lui	a0, %hi(outName)
	addi	s0, a0, %lo(outName)
	addi	a2, zero, 1024
	mv	a0, s0
	mv	a1, s1
	call	strncpy
	sb	zero, 1024(s0)
	lw	s1, 0(s2)
	mv	a0, s1
	call	strlen
	addi	a1, zero, 1025
	bgeu	a0, a1, .LBB0_145
	lui	a0, %hi(progNameReally)
	addi	s0, a0, %lo(progNameReally)
	addi	a2, zero, 1024
	mv	a0, s0
	mv	a1, s1
	call	strncpy
	sb	zero, 1024(s0)
	lui	a2, %hi(progName)
	sw	s0, %lo(progName)(a2)
	addi	a0, s0, 1
	addi	a1, zero, 47
	addi	a2, a2, %lo(progName)
	j	.LBB0_4
.LBB0_2:
	sw	a0, 0(a2)
.LBB0_3:
	addi	a0, a0, 1
.LBB0_4:
	lbu	a3, -1(a0)
	beq	a3, a1, .LBB0_2
	bnez	a3, .LBB0_3
	sw	zero, 72(sp)
	lui	a0, %hi(.L.str.7)
	addi	a1, a0, %lo(.L.str.7)
	addi	a0, sp, 72
	call	addFlagsFromEnvVar
	lui	a0, %hi(.L.str.8)
	addi	a1, a0, %lo(.L.str.8)
	addi	a0, sp, 72
	call	addFlagsFromEnvVar
	lw	s8, 72(sp)
	addi	a0, zero, 2
	blt	s3, a0, .LBB0_10
	addi	s0, s3, -1
	addi	s1, s2, 4
.LBB0_8:
	lw	a1, 0(s1)
	mv	a0, s8
	call	snocString
	mv	s8, a0
	addi	s0, s0, -1
	addi	s1, s1, 4
	bnez	s0, .LBB0_8
	sw	s8, 72(sp)
.LBB0_10:
	lui	a0, %hi(longestFileName)
	addi	s4, zero, 7
	sw	s4, %lo(longestFileName)(a0)
	lui	s3, %hi(numFileNames)
	sw	zero, %lo(numFileNames)(s3)
	mv	s2, zero
	beqz	s8, .LBB0_18
	addi	s7, zero, 1
	lui	a1, %hi(.L.str.9)
	addi	s6, a1, %lo(.L.str.9)
	addi	s5, a0, %lo(longestFileName)
	mv	s0, s8
	j	.LBB0_14
.LBB0_12:
	mv	s7, zero
.LBB0_13:
	lw	s0, 4(s0)
	beqz	s0, .LBB0_18
.LBB0_14:
	lw	s1, 0(s0)
	mv	a0, s1
	mv	a1, s6
	call	strcmp
	beqz	a0, .LBB0_12
	lbu	a0, 0(s1)
	addi	a0, a0, -45
	seqz	a0, a0
	andi	a1, s7, 255
	snez	a1, a1
	and	a0, a0, a1
	bnez	a0, .LBB0_13
	addi	s2, s2, 1
	sw	s2, %lo(numFileNames)(s3)
	mv	a0, s1
	call	strlen
	bge	s4, a0, .LBB0_13
	sw	a0, 0(s5)
	mv	s4, a0
	j	.LBB0_13
.LBB0_18:
	addi	a0, zero, 1
	addi	a1, zero, 1
	beqz	s2, .LBB0_20
	addi	a1, zero, 3
.LBB0_20:
	lui	a2, %hi(srcMode)
	lui	a3, %hi(progName)
	lw	s0, %lo(progName)(a3)
	sw	a1, %lo(srcMode)(a2)
	lui	s1, %hi(opMode)
	sw	a0, %lo(opMode)(s1)
	lui	a0, %hi(.L.str.10)
	addi	a1, a0, %lo(.L.str.10)
	mv	a0, s0
	call	strstr
	bnez	a0, .LBB0_22
	lui	a0, %hi(.L.str.11)
	addi	a1, a0, %lo(.L.str.11)
	mv	a0, s0
	call	strstr
	beqz	a0, .LBB0_23
.LBB0_22:
	addi	a0, s1, %lo(opMode)
	addi	a1, zero, 2
	sw	a1, 0(a0)
.LBB0_23:
	seqz	s9, s8
	lui	a0, %hi(.L.str.12)
	addi	a1, a0, %lo(.L.str.12)
	mv	a0, s0
	call	strstr
	bnez	a0, .LBB0_27
	lui	a0, %hi(.L.str.13)
	addi	a1, a0, %lo(.L.str.13)
	mv	a0, s0
	call	strstr
	bnez	a0, .LBB0_27
	lui	a0, %hi(.L.str.14)
	addi	a1, a0, %lo(.L.str.14)
	mv	a0, s0
	call	strstr
	bnez	a0, .LBB0_27
	lui	a0, %hi(.L.str.15)
	addi	a1, a0, %lo(.L.str.15)
	mv	a0, s0
	call	strstr
	beqz	a0, .LBB0_28
.LBB0_27:
	seqz	a0, s2
	lui	a1, %hi(opMode)
	addi	a2, zero, 2
	sw	a2, %lo(opMode)(a1)
	sub	a0, a2, a0
	lui	a1, %hi(srcMode)
	sw	a0, %lo(srcMode)(a1)
.LBB0_28:
	bnez	s9, .LBB0_93
	sw	s9, 60(sp)
	lui	a0, %hi(.L.str.9)
	addi	a0, a0, %lo(.L.str.9)
	sw	a0, 68(sp)
	addi	s5, zero, 122
	lui	a0, %hi(.LJTI0_0)
	addi	s1, a0, %lo(.LJTI0_0)
	lui	s6, %hi(blockSize100k)
	addi	s7, zero, 1
	addi	s10, zero, 2
	lui	s2, %hi(_impure_ptr)
	lui	a0, %hi(.L.str.51)
	addi	s4, a0, %lo(.L.str.51)
	lui	s9, %hi(opMode)
	lui	s3, %hi(verbosity)
	sw	s8, 64(sp)
	j	.LBB0_31
.LBB0_30:
	lw	s8, 4(s8)
	beqz	s8, .LBB0_57
.LBB0_31:
	lw	s0, 0(s8)
	mv	a0, s0
	lw	a1, 68(sp)
	call	strcmp
	beqz	a0, .LBB0_57
	lbu	a0, 0(s0)
	addi	a1, zero, 45
	bne	a0, a1, .LBB0_30
	lbu	a0, 1(s0)
	addi	a1, zero, 45
	beq	a0, a1, .LBB0_30
	addi	s11, zero, 2
	j	.LBB0_37
.LBB0_35:
	addi	a0, zero, 3
	sw	a0, %lo(opMode)(s9)
.LBB0_36:
	add	a0, s0, s11
	lbu	a0, 0(a0)
	addi	s11, s11, 1
.LBB0_37:
	andi	a0, a0, 255
	bltu	s5, a0, .LBB0_143
	slli	a0, a0, 2
	add	a0, a0, s1
	lw	a0, 0(a0)
	jr	a0
.LBB0_39:
	lw	a0, %lo(_impure_ptr)(s2)
	lw	s0, 12(a0)
	call	BZ2_bzlibVersion
	mv	a2, a0
	mv	a0, s0
	mv	a1, s4
	call	fprintf
	lw	s0, 0(s8)
	j	.LBB0_36
.LBB0_40:
	lui	a0, %hi(smallMode)
	sb	s7, %lo(smallMode)(a0)
	j	.LBB0_36
.LBB0_41:
	lui	a0, %hi(keepInputFiles)
	sb	s7, %lo(keepInputFiles)(a0)
	j	.LBB0_36
.LBB0_42:
	addi	a0, zero, 8
	sw	a0, %lo(blockSize100k)(s6)
	j	.LBB0_36
.LBB0_43:
	addi	a0, zero, 9
	sw	a0, %lo(blockSize100k)(s6)
	j	.LBB0_36
.LBB0_44:
	addi	a0, zero, 5
	sw	a0, %lo(blockSize100k)(s6)
	j	.LBB0_36
.LBB0_45:
	addi	a0, zero, 4
	sw	a0, %lo(blockSize100k)(s6)
	j	.LBB0_36
.LBB0_46:
	lui	a0, %hi(forceOverwrite)
	sb	s7, %lo(forceOverwrite)(a0)
	j	.LBB0_36
.LBB0_47:
	sw	s10, %lo(opMode)(s9)
	j	.LBB0_36
.LBB0_48:
	lui	a0, %hi(srcMode)
	sw	s10, %lo(srcMode)(a0)
	j	.LBB0_36
.LBB0_49:
	addi	a0, zero, 6
	sw	a0, %lo(blockSize100k)(s6)
	j	.LBB0_36
.LBB0_50:
	sw	s7, %lo(blockSize100k)(s6)
	j	.LBB0_36
.LBB0_51:
	sw	s10, %lo(blockSize100k)(s6)
	j	.LBB0_36
.LBB0_52:
	addi	a0, zero, 3
	sw	a0, %lo(blockSize100k)(s6)
	j	.LBB0_36
.LBB0_53:
	lw	a0, %lo(verbosity)(s3)
	addi	a0, a0, 1
	sw	a0, %lo(verbosity)(s3)
	j	.LBB0_36
.LBB0_54:
	addi	a0, zero, 7
	sw	a0, %lo(blockSize100k)(s6)
	j	.LBB0_36
.LBB0_55:
	lui	a0, %hi(noisy)
	sb	zero, %lo(noisy)(a0)
	j	.LBB0_36
.LBB0_56:
	sw	s7, %lo(opMode)(s9)
	j	.LBB0_36
.LBB0_57:
	lw	s8, 64(sp)
	lw	s9, 60(sp)
	bnez	s9, .LBB0_93
	lui	a0, %hi(.L.str.9)
	addi	s1, a0, %lo(.L.str.9)
	lui	a0, %hi(.L.str.17)
	addi	s2, a0, %lo(.L.str.17)
	addi	s7, zero, 2
	lui	a0, %hi(.L.str.18)
	addi	s3, a0, %lo(.L.str.18)
	lui	s0, %hi(opMode)
	lui	a0, %hi(.L.str.19)
	addi	s4, a0, %lo(.L.str.19)
	lui	a0, %hi(.L.str.20)
	addi	s5, a0, %lo(.L.str.20)
	lui	a0, %hi(.L.str.21)
	addi	s6, a0, %lo(.L.str.21)
	lui	a0, %hi(.L.str.22)
	addi	a0, a0, %lo(.L.str.22)
	sw	a0, 68(sp)
	lui	a0, %hi(.L.str.23)
	addi	a0, a0, %lo(.L.str.23)
	sw	a0, 56(sp)
	lui	a0, %hi(.L.str.24)
	addi	a0, a0, %lo(.L.str.24)
	sw	a0, 52(sp)
	lui	a0, %hi(.L.str.25)
	addi	a0, a0, %lo(.L.str.25)
	sw	a0, 48(sp)
	lui	a0, %hi(.L.str.51)
	addi	a0, a0, %lo(.L.str.51)
	sw	a0, 40(sp)
	lui	a0, %hi(.L.str.26)
	addi	a0, a0, %lo(.L.str.26)
	sw	a0, 44(sp)
	lui	a0, %hi(.L.str.27)
	addi	a0, a0, %lo(.L.str.27)
	sw	a0, 36(sp)
	lui	a0, %hi(.L.str.28)
	addi	a0, a0, %lo(.L.str.28)
	sw	a0, 32(sp)
	lui	a0, %hi(.L.str.53)
	addi	a0, a0, %lo(.L.str.53)
	sw	a0, 24(sp)
	lui	a0, %hi(.L.str.29)
	addi	a0, a0, %lo(.L.str.29)
	sw	a0, 28(sp)
	lui	a0, %hi(.L.str.30)
	addi	a0, a0, %lo(.L.str.30)
	sw	a0, 20(sp)
	lui	a0, %hi(.L.str.31)
	addi	a0, a0, %lo(.L.str.31)
	sw	a0, 16(sp)
	lui	a0, %hi(.L.str.32)
	addi	a0, a0, %lo(.L.str.32)
	sw	a0, 12(sp)
	lui	a0, %hi(.L.str.33)
	addi	a0, a0, %lo(.L.str.33)
	sw	a0, 8(sp)
	mv	s10, s8
	j	.LBB0_61
.LBB0_59:
	lui	a0, %hi(srcMode)
	sw	s7, %lo(srcMode)(a0)
.LBB0_60:
	lw	s10, 4(s10)
	beqz	s10, .LBB0_93
.LBB0_61:
	lw	s11, 0(s10)
	mv	a0, s11
	mv	a1, s1
	call	strcmp
	beqz	a0, .LBB0_93
	mv	a0, s11
	mv	a1, s2
	call	strcmp
	beqz	a0, .LBB0_59
	mv	a0, s11
	mv	a1, s3
	call	strcmp
	beqz	a0, .LBB0_80
	mv	a0, s11
	mv	a1, s4
	call	strcmp
	beqz	a0, .LBB0_81
	mv	a0, s11
	mv	a1, s5
	call	strcmp
	beqz	a0, .LBB0_82
	mv	a0, s11
	mv	a1, s6
	call	strcmp
	beqz	a0, .LBB0_83
	mv	a0, s11
	lw	a1, 68(sp)
	call	strcmp
	beqz	a0, .LBB0_84
	mv	a0, s11
	lw	a1, 56(sp)
	call	strcmp
	beqz	a0, .LBB0_85
	mv	a0, s11
	lw	a1, 52(sp)
	call	strcmp
	beqz	a0, .LBB0_87
	mv	a0, s11
	lw	a1, 48(sp)
	call	strcmp
	beqz	a0, .LBB0_86
	mv	a0, s11
	lw	a1, 44(sp)
	call	strcmp
	beqz	a0, .LBB0_86
	mv	a0, s11
	lw	a1, 36(sp)
	call	strcmp
	beqz	a0, .LBB0_89
	mv	a0, s11
	lw	a1, 32(sp)
	call	strcmp
	beqz	a0, .LBB0_88
	mv	a0, s11
	lw	a1, 28(sp)
	call	strcmp
	beqz	a0, .LBB0_88
	mv	a0, s11
	lw	a1, 20(sp)
	call	strcmp
	beqz	a0, .LBB0_90
	mv	a0, s11
	lw	a1, 16(sp)
	call	strcmp
	beqz	a0, .LBB0_91
	mv	a0, s11
	lw	a1, 12(sp)
	call	strcmp
	beqz	a0, .LBB0_92
	mv	a0, s11
	lw	a1, 8(sp)
	call	strcmp
	beqz	a0, .LBB0_142
	addi	a2, zero, 2
	mv	a0, s11
	mv	a1, s1
	call	strncmp
	bnez	a0, .LBB0_60
	j	.LBB0_154
.LBB0_80:
	sw	s7, %lo(opMode)(s0)
	j	.LBB0_60
.LBB0_81:
	addi	a0, zero, 1
	sw	a0, %lo(opMode)(s0)
	j	.LBB0_60
.LBB0_82:
	addi	a0, zero, 1
	lui	a1, %hi(forceOverwrite)
	sb	a0, %lo(forceOverwrite)(a1)
	j	.LBB0_60
.LBB0_83:
	addi	a0, zero, 3
	sw	a0, %lo(opMode)(s0)
	j	.LBB0_60
.LBB0_84:
	addi	a0, zero, 1
	lui	a1, %hi(keepInputFiles)
	sb	a0, %lo(keepInputFiles)(a1)
	j	.LBB0_60
.LBB0_85:
	addi	a0, zero, 1
	lui	a1, %hi(smallMode)
	sb	a0, %lo(smallMode)(a1)
	j	.LBB0_60
.LBB0_86:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	s11, 12(a0)
	call	BZ2_bzlibVersion
	mv	a2, a0
	mv	a0, s11
	lw	a1, 40(sp)
	call	fprintf
	j	.LBB0_60
.LBB0_87:
	lui	a0, %hi(noisy)
	sb	zero, %lo(noisy)(a0)
	j	.LBB0_60
.LBB0_88:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	lw	a2, %lo(progName)(a1)
	lw	a1, 24(sp)
	mv	a3, s11
	call	fprintf
	j	.LBB0_60
.LBB0_89:
	addi	a0, zero, 1
	lui	a1, %hi(workFactor)
	sw	a0, %lo(workFactor)(a1)
	j	.LBB0_60
.LBB0_90:
	addi	a0, zero, 1
	lui	a1, %hi(blockSize100k)
	sw	a0, %lo(blockSize100k)(a1)
	j	.LBB0_60
.LBB0_91:
	lui	a0, %hi(blockSize100k)
	addi	a1, zero, 9
	sw	a1, %lo(blockSize100k)(a0)
	j	.LBB0_60
.LBB0_92:
	lui	a1, %hi(verbosity)
	lw	a0, %lo(verbosity)(a1)
	addi	a0, a0, 1
	sw	a0, %lo(verbosity)(a1)
	j	.LBB0_60
.LBB0_93:
	lui	a0, %hi(verbosity)
	lw	a1, %lo(verbosity)(a0)
	addi	a2, zero, 5
	blt	a1, a2, .LBB0_95
	addi	a0, a0, %lo(verbosity)
	addi	a1, zero, 4
	sw	a1, 0(a0)
.LBB0_95:
	lui	a0, %hi(opMode)
	lw	a0, %lo(opMode)(a0)
	addi	a1, zero, 1
	bne	a0, a1, .LBB0_99
	lui	a1, %hi(smallMode)
	lbu	a2, %lo(smallMode)(a1)
	lui	a1, %hi(blockSize100k)
	lw	a3, %lo(blockSize100k)(a1)
	seqz	a2, a2
	slti	a3, a3, 3
	or	a2, a2, a3
	bnez	a2, .LBB0_98
	addi	a1, a1, %lo(blockSize100k)
	addi	a2, zero, 2
	sw	a2, 0(a1)
.LBB0_98:
	lui	a1, %hi(srcMode)
	lw	a1, %lo(srcMode)(a1)
	j	.LBB0_100
.LBB0_99:
	lui	a1, %hi(srcMode)
	lw	a1, %lo(srcMode)(a1)
	xori	a2, a0, 3
	xori	a3, a1, 2
	or	a2, a2, a3
	beqz	a2, .LBB0_147
.LBB0_100:
	addi	a2, a1, -2
	seqz	a2, a2
	lui	a3, %hi(numFileNames)
	lw	a3, %lo(numFileNames)(a3)
	addi	a4, a0, -1
	snez	a3, a3
	xori	a2, a2, 1
	or	a3, a3, a2
	seqz	a2, a4
	beqz	a3, .LBB0_107
	beqz	a2, .LBB0_108
.LBB0_102:
	addi	a2, zero, 3
	beq	a1, a2, .LBB0_109
.LBB0_103:
	addi	a1, zero, 2
	beq	a0, a1, .LBB0_110
.LBB0_104:
	addi	a1, zero, 1
	bne	a0, a1, .LBB0_113
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	bne	a0, a1, .LBB0_121
	mv	a0, zero
	call	compress
	j	.LBB0_116
.LBB0_107:
	lui	a3, %hi(srcMode)
	addi	a1, zero, 1
	sw	a1, %lo(srcMode)(a3)
	bnez	a2, .LBB0_102
.LBB0_108:
	lui	a2, %hi(blockSize100k)
	sw	zero, %lo(blockSize100k)(a2)
	addi	a2, zero, 3
	bne	a1, a2, .LBB0_103
.LBB0_109:
	lui	a0, %hi(mySignalCatcher)
	addi	s0, a0, %lo(mySignalCatcher)
	addi	a0, zero, 2
	mv	a1, s0
	call	signal
	addi	a0, zero, 15
	mv	a1, s0
	call	signal
	addi	a0, zero, 1
	mv	a1, s0
	call	signal
	lui	a0, %hi(opMode)
	lw	a0, %lo(opMode)(a0)
	addi	a1, zero, 2
	bne	a0, a1, .LBB0_104
.LBB0_110:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	lui	a1, %hi(unzFailsExist)
	addi	a2, zero, 1
	sb	zero, %lo(unzFailsExist)(a1)
	bne	a0, a2, .LBB0_128
	mv	a0, zero
	call	uncompress
.LBB0_112:
	lui	a0, %hi(unzFailsExist)
	lbu	a0, %lo(unzFailsExist)(a0)
	beqz	a0, .LBB0_116
	j	.LBB0_150
.LBB0_113:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	lui	a2, %hi(testFailsExist)
	sb	zero, %lo(testFailsExist)(a2)
	bne	a0, a1, .LBB0_135
	mv	a0, zero
	call	testf
.LBB0_115:
	lui	a0, %hi(testFailsExist)
	lbu	a0, %lo(testFailsExist)(a0)
	bnez	a0, .LBB0_148
.LBB0_116:
	beqz	s9, .LBB0_119
.LBB0_117:
	lui	a0, %hi(exitValue)
	lw	a0, %lo(exitValue)(a0)
	lw	s11, 76(sp)
	lw	s10, 80(sp)
	lw	s9, 84(sp)
	lw	s8, 88(sp)
	lw	s7, 92(sp)
	lw	s6, 96(sp)
	lw	s5, 100(sp)
	lw	s4, 104(sp)
	lw	s3, 108(sp)
	lw	s2, 112(sp)
	lw	s1, 116(sp)
	lw	s0, 120(sp)
	lw	ra, 124(sp)
	addi	sp, sp, 128
	ret
.LBB0_118:
	mv	a0, s8
	call	free
	mv	s8, s0
	beqz	s0, .LBB0_117
.LBB0_119:
	lw	a0, 0(s8)
	lw	s0, 4(s8)
	beqz	a0, .LBB0_118
	call	free
	j	.LBB0_118
.LBB0_121:
	bnez	s9, .LBB0_117
	addi	s2, zero, 1
	lui	a0, %hi(.L.str.9)
	addi	s4, a0, %lo(.L.str.9)
	lui	s3, %hi(numFilesProcessed)
	mv	s0, s8
	j	.LBB0_125
.LBB0_123:
	mv	s2, zero
.LBB0_124:
	lw	s0, 4(s0)
	beqz	s0, .LBB0_116
.LBB0_125:
	lw	s1, 0(s0)
	mv	a0, s1
	mv	a1, s4
	call	strcmp
	beqz	a0, .LBB0_123
	lbu	a0, 0(s1)
	addi	a0, a0, -45
	seqz	a0, a0
	andi	a1, s2, 255
	snez	a1, a1
	and	a0, a0, a1
	bnez	a0, .LBB0_124
	lw	a0, %lo(numFilesProcessed)(s3)
	addi	a0, a0, 1
	sw	a0, %lo(numFilesProcessed)(s3)
	mv	a0, s1
	call	compress
	j	.LBB0_124
.LBB0_128:
	bnez	s9, .LBB0_117
	addi	s2, zero, 1
	lui	a0, %hi(.L.str.9)
	addi	s4, a0, %lo(.L.str.9)
	lui	s3, %hi(numFilesProcessed)
	mv	s0, s8
	j	.LBB0_132
.LBB0_130:
	mv	s2, zero
.LBB0_131:
	lw	s0, 4(s0)
	beqz	s0, .LBB0_112
.LBB0_132:
	lw	s1, 0(s0)
	mv	a0, s1
	mv	a1, s4
	call	strcmp
	beqz	a0, .LBB0_130
	lbu	a0, 0(s1)
	addi	a0, a0, -45
	seqz	a0, a0
	andi	a1, s2, 255
	snez	a1, a1
	and	a0, a0, a1
	bnez	a0, .LBB0_131
	lw	a0, %lo(numFilesProcessed)(s3)
	addi	a0, a0, 1
	sw	a0, %lo(numFilesProcessed)(s3)
	mv	a0, s1
	call	uncompress
	j	.LBB0_131
.LBB0_135:
	bnez	s9, .LBB0_117
	addi	s2, zero, 1
	lui	a0, %hi(.L.str.9)
	addi	s4, a0, %lo(.L.str.9)
	lui	s3, %hi(numFilesProcessed)
	mv	s0, s8
	j	.LBB0_139
.LBB0_137:
	mv	s2, zero
.LBB0_138:
	lw	s0, 4(s0)
	beqz	s0, .LBB0_115
.LBB0_139:
	lw	s1, 0(s0)
	mv	a0, s1
	mv	a1, s4
	call	strcmp
	beqz	a0, .LBB0_137
	lbu	a0, 0(s1)
	addi	a0, a0, -45
	seqz	a0, a0
	andi	a1, s2, 255
	snez	a1, a1
	and	a0, a0, a1
	bnez	a0, .LBB0_138
	lw	a0, %lo(numFilesProcessed)(s3)
	addi	a0, a0, 1
	sw	a0, %lo(numFilesProcessed)(s3)
	mv	a0, s1
	call	testf
	j	.LBB0_138
.LBB0_142:
	lui	a0, %hi(progName)
	lw	a0, %lo(progName)(a0)
	call	usage
	mv	a0, zero
	call	exit
.LBB0_143:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	s1, %hi(progName)
	lw	a2, %lo(progName)(s1)
	lui	a1, %hi(.L.str.16)
	addi	a1, a1, %lo(.L.str.16)
	mv	a3, s0
	call	fprintf
	lw	a0, %lo(progName)(s1)
.LBB0_144:
	call	usage
	addi	a0, zero, 1
	call	exit
.LBB0_145:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(.L.str.41)
	addi	a1, a1, %lo(.L.str.41)
	addi	a3, zero, 1024
	mv	a2, s1
	call	fprintf
	lw	a0, %lo(exitValue)(s4)
	bgtz	a0, .LBB0_153
	lui	a1, %hi(exitValue)
	addi	a0, zero, 1
	j	.LBB0_152
.LBB0_147:
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
.LBB0_148:
	lui	a0, %hi(noisy)
	lbu	a0, %lo(noisy)(a0)
	beqz	a0, .LBB0_150
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a3, 12(a0)
	lui	a0, %hi(.L.str.35)
	addi	a0, a0, %lo(.L.str.35)
	addi	a1, zero, 112
	addi	a2, zero, 1
	call	fwrite
.LBB0_150:
	lui	a1, %hi(exitValue)
	lw	a0, %lo(exitValue)(a1)
	addi	a2, zero, 1
	blt	a2, a0, .LBB0_153
	addi	a0, zero, 2
.LBB0_152:
	sw	a0, %lo(exitValue)(a1)
.LBB0_153:
	call	exit
.LBB0_154:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	s0, %hi(progName)
	lw	a2, %lo(progName)(s0)
	lui	a1, %hi(.L.str.16)
	addi	a1, a1, %lo(.L.str.16)
	mv	a3, s11
	call	fprintf
	lw	a0, %lo(progName)(s0)
	j	.LBB0_144
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_30
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_50
	.word	.LBB0_51
	.word	.LBB0_52
	.word	.LBB0_45
	.word	.LBB0_44
	.word	.LBB0_49
	.word	.LBB0_54
	.word	.LBB0_42
	.word	.LBB0_43
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_39
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_39
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_48
	.word	.LBB0_47
	.word	.LBB0_143
	.word	.LBB0_46
	.word	.LBB0_143
	.word	.LBB0_142
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_41
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_55
	.word	.LBB0_143
	.word	.LBB0_40
	.word	.LBB0_35
	.word	.LBB0_143
	.word	.LBB0_53
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_143
	.word	.LBB0_56

	.text
	.p2align	1
	.type	mySIGSEGVorSIGBUScatcher,@function
mySIGSEGVorSIGBUScatcher:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	sw	s1, 20(sp)
	sw	s2, 16(sp)
	sw	s3, 12(sp)
	sw	s4, 8(sp)
	sw	s5, 4(sp)
	lui	s4, %hi(opMode)
	lw	s0, %lo(opMode)(s4)
	addi	s3, zero, 1
	beq	s0, s3, .LBB1_2
	lui	a0, %hi(.L.str.37)
	addi	s2, a0, %lo(.L.str.37)
	j	.LBB1_3
.LBB1_2:
	lui	a0, %hi(.L.str.36)
	addi	s2, a0, %lo(.L.str.36)
.LBB1_3:
	lui	a0, %hi(.L.str.38)
	addi	s5, a0, %lo(.L.str.38)
	addi	a0, zero, 2
	addi	a2, zero, 1
	mv	a1, s5
	call	write
	lui	a0, %hi(progName)
	lw	s1, %lo(progName)(a0)
	mv	a0, s1
	call	strlen
	mv	a2, a0
	addi	a0, zero, 2
	mv	a1, s1
	call	write
	addi	a2, zero, 869
	beq	s0, s3, .LBB1_5
	addi	a2, zero, 996
.LBB1_5:
	addi	a0, zero, 2
	mv	a1, s2
	call	write
	lui	a0, %hi(.L.str.39)
	addi	a1, a0, %lo(.L.str.39)
	addi	a0, zero, 2
	addi	a2, zero, 14
	call	write
	lui	a0, %hi(inName)
	addi	s1, a0, %lo(inName)
	mv	a0, s1
	call	strlen
	mv	a2, a0
	addi	a0, zero, 2
	mv	a1, s1
	call	write
	addi	a0, zero, 2
	addi	a2, zero, 1
	mv	a1, s5
	call	write
	lui	a0, %hi(.L.str.40)
	addi	a1, a0, %lo(.L.str.40)
	addi	a0, zero, 2
	addi	a2, zero, 15
	call	write
	lui	a0, %hi(outName)
	addi	s1, a0, %lo(outName)
	mv	a0, s1
	call	strlen
	mv	a2, a0
	addi	a0, zero, 2
	mv	a1, s1
	call	write
	addi	a0, zero, 2
	addi	a2, zero, 1
	mv	a1, s5
	call	write
	lw	a1, %lo(opMode)(s4)
	lui	a0, %hi(exitValue)
	lw	a0, %lo(exitValue)(a0)
	bne	a1, s3, .LBB1_8
	addi	a1, zero, 2
	blt	a1, a0, .LBB1_11
	lui	a1, %hi(exitValue)
	addi	a0, zero, 3
	j	.LBB1_10
.LBB1_8:
	addi	a1, zero, 1
	blt	a1, a0, .LBB1_11
	lui	a1, %hi(exitValue)
	addi	a0, zero, 2
.LBB1_10:
	sw	a0, %lo(exitValue)(a1)
.LBB1_11:
	call	_exit
.Lfunc_end1:
	.size	mySIGSEGVorSIGBUScatcher, .Lfunc_end1-mySIGSEGVorSIGBUScatcher

	.p2align	1
	.type	addFlagsFromEnvVar,@function
addFlagsFromEnvVar:
	addi	sp, sp, -48
	sw	ra, 44(sp)
	sw	s0, 40(sp)
	sw	s1, 36(sp)
	sw	s2, 32(sp)
	sw	s3, 28(sp)
	sw	s4, 24(sp)
	sw	s5, 20(sp)
	sw	s6, 16(sp)
	sw	s7, 12(sp)
	mv	s2, a0
	mv	a0, a1
	call	getenv
	beqz	a0, .LBB2_21
	lbu	a1, 0(a0)
	beqz	a1, .LBB2_21
	lui	a2, %hi(_ctype_)
	addi	s7, a2, %lo(_ctype_)
	lui	s3, %hi(tmpName)
	addi	s4, zero, 2
	addi	s6, s3, %lo(tmpName)
	addi	s5, s6, 1
	j	.LBB2_5
.LBB2_3:
	mv	s0, zero
.LBB2_4:
	add	a0, s1, s0
	lbu	a1, 0(a0)
	beqz	a1, .LBB2_21
.LBB2_5:
	andi	a2, a1, 255
	add	a2, a2, s7
	lbu	a2, 1(a2)
	andi	a3, a2, 8
	bnez	a3, .LBB2_7
	mv	s1, a0
	j	.LBB2_8
.LBB2_7:
	lbu	a1, 1(a0)
	add	a2, s7, a1
	lbu	a2, 1(a2)
	addi	s1, a0, 1
	andi	a3, a2, 8
	mv	a0, s1
	bnez	a3, .LBB2_7
.LBB2_8:
	andi	a0, a1, 255
	beqz	a0, .LBB2_3
	andi	a0, a2, 8
	mv	s0, zero
	bnez	a0, .LBB2_14
	addi	s0, zero, 1
.LBB2_11:
	add	a0, s1, s0
	lbu	a0, 0(a0)
	beqz	a0, .LBB2_15
	add	a0, a0, s7
	lbu	a0, 1(a0)
	andi	a0, a0, 8
	addi	s0, s0, 1
	beqz	a0, .LBB2_11
	addi	s0, s0, -1
.LBB2_14:
	beqz	s0, .LBB2_3
.LBB2_15:
	addi	a2, zero, 1024
	mv	a0, s0
	bltu	s0, a2, .LBB2_17
	addi	a0, zero, 1024
.LBB2_17:
	sb	a1, %lo(tmpName)(s3)
	blt	a0, s4, .LBB2_20
	addi	a1, a0, -1
	addi	a2, s1, 1
	mv	a3, s5
.LBB2_19:
	lb	a4, 0(a2)
	sb	a4, 0(a3)
	addi	a3, a3, 1
	addi	a1, a1, -1
	addi	a2, a2, 1
	bnez	a1, .LBB2_19
.LBB2_20:
	add	a0, a0, s6
	sb	zero, 0(a0)
	lw	a0, 0(s2)
	mv	a1, s6
	call	snocString
	sw	a0, 0(s2)
	j	.LBB2_4
.LBB2_21:
	lw	s7, 12(sp)
	lw	s6, 16(sp)
	lw	s5, 20(sp)
	lw	s4, 24(sp)
	lw	s3, 28(sp)
	lw	s2, 32(sp)
	lw	s1, 36(sp)
	lw	s0, 40(sp)
	lw	ra, 44(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end2:
	.size	addFlagsFromEnvVar, .Lfunc_end2-addFlagsFromEnvVar

	.p2align	1
	.type	snocString,@function
snocString:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	sw	s1, 20(sp)
	sw	s2, 16(sp)
	sw	s3, 12(sp)
	mv	s2, a1
	beqz	a0, .LBB3_6
	mv	s3, a0
.LBB3_2:
	mv	s0, a0
	lw	a0, 4(a0)
	bnez	a0, .LBB3_2
	addi	a0, zero, 8
	call	malloc
	beqz	a0, .LBB3_10
	mv	s1, a0
	sw	zero, 0(a0)
	sw	zero, 4(a0)
	mv	a0, s2
	call	strlen
	addi	a0, a0, 5
	call	malloc
	beqz	a0, .LBB3_10
	sw	a0, 0(s1)
	mv	a1, s2
	call	strcpy
	sw	s1, 4(s0)
	j	.LBB3_9
.LBB3_6:
	addi	a0, zero, 8
	call	malloc
	beqz	a0, .LBB3_10
	mv	s3, a0
	sw	zero, 0(a0)
	sw	zero, 4(a0)
	mv	a0, s2
	call	strlen
	addi	a0, a0, 5
	call	malloc
	beqz	a0, .LBB3_10
	sw	a0, 0(s3)
	mv	a1, s2
	call	strcpy
.LBB3_9:
	mv	a0, s3
	lw	s3, 12(sp)
	lw	s2, 16(sp)
	lw	s1, 20(sp)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.LBB3_10:
	call	outOfMemory
.Lfunc_end3:
	.size	snocString, .Lfunc_end3-snocString

	.p2align	1
	.type	usage,@function
usage:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	sw	s1, 4(sp)
	lui	a1, %hi(_impure_ptr)
	lw	a1, %lo(_impure_ptr)(a1)
	lw	s0, 12(a1)
	mv	s1, a0
	call	BZ2_bzlibVersion
	lui	a1, %hi(.L.str.52)
	addi	a1, a1, %lo(.L.str.52)
	mv	a2, a0
	mv	a0, s0
	mv	a3, s1
	lw	s1, 4(sp)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	tail	fprintf
.Lfunc_end4:
	.size	usage, .Lfunc_end4-usage

	.p2align	1
	.type	mySignalCatcher,@function
mySignalCatcher:
	addi	sp, sp, -16
	sw	ra, 12(sp)
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
.Lfunc_end5:
	.size	mySignalCatcher, .Lfunc_end5-mySignalCatcher

	.p2align	1
	.type	compress,@function
compress:
	addi	sp, sp, -2032
	sw	ra, 2028(sp)
	sw	s0, 2024(sp)
	sw	s1, 2020(sp)
	sw	s2, 2016(sp)
	sw	s3, 2012(sp)
	sw	s4, 2008(sp)
	sw	s5, 2004(sp)
	sw	s6, 2000(sp)
	sw	s7, 1996(sp)
	sw	s8, 1992(sp)
	sw	s9, 1988(sp)
	sw	s10, 1984(sp)
	lui	a1, 1
	addi	a1, a1, -864
	sub	sp, sp, a1
	lui	a1, %hi(srcMode)
	lw	a1, %lo(srcMode)(a1)
	mv	s0, a0
	lui	a0, %hi(deleteOutputOnInterrupt)
	snez	a2, s0
	addi	a3, a1, -1
	seqz	a3, a3
	or	a2, a2, a3
	sb	zero, %lo(deleteOutputOnInterrupt)(a0)
	beqz	a2, .LBB6_108
	addi	a0, zero, 3
	beq	a1, a0, .LBB6_5
	addi	a0, zero, 2
	beq	a1, a0, .LBB6_8
	addi	a0, zero, 1
	bne	a1, a0, .LBB6_10
	lui	a0, %hi(.L.str.56)
	addi	a1, a0, %lo(.L.str.56)
	lui	a0, %hi(inName)
	addi	s0, a0, %lo(inName)
	addi	a2, zero, 1024
	mv	a0, s0
	call	strncpy
	sb	zero, 1024(s0)
	lui	a0, %hi(.L.str.57)
	addi	a1, a0, %lo(.L.str.57)
	lui	a0, %hi(outName)
	addi	s0, a0, %lo(outName)
	addi	a2, zero, 1024
	mv	a0, s0
	call	strncpy
	sb	zero, 1024(s0)
	j	.LBB6_12
.LBB6_5:
	mv	a0, s0
	call	strlen
	addi	s2, zero, 1025
	bgeu	a0, s2, .LBB6_109
	lui	a0, %hi(inName)
	addi	s1, a0, %lo(inName)
	addi	a2, zero, 1024
	mv	a0, s1
	mv	a1, s0
	call	strncpy
	sb	zero, 1024(s1)
	mv	a0, s0
	call	strlen
	bgeu	a0, s2, .LBB6_109
	lui	a0, %hi(outName)
	addi	s1, a0, %lo(outName)
	addi	a2, zero, 1024
	mv	a0, s1
	mv	a1, s0
	call	strncpy
	sb	zero, 1024(s1)
	mv	a0, s1
	call	strlen
	add	a0, a0, s1
	addi	a1, zero, 46
	sb	a1, 0(a0)
	addi	a1, zero, 98
	sb	a1, 1(a0)
	addi	a1, zero, 122
	sb	a1, 2(a0)
	addi	a1, zero, 50
	sb	a1, 3(a0)
	sb	zero, 4(a0)
	j	.LBB6_10
.LBB6_8:
	mv	a0, s0
	call	strlen
	addi	a1, zero, 1025
	bgeu	a0, a1, .LBB6_109
	lui	a0, %hi(inName)
	addi	s1, a0, %lo(inName)
	addi	a2, zero, 1024
	mv	a0, s1
	mv	a1, s0
	call	strncpy
	sb	zero, 1024(s1)
	lui	a0, %hi(.L.str.57)
	addi	a1, a0, %lo(.L.str.57)
	lui	a0, %hi(outName)
	addi	s0, a0, %lo(outName)
	addi	a2, zero, 1024
	mv	a0, s0
	call	strncpy
	sb	zero, 1024(s0)
.LBB6_10:
	lui	a0, %hi(inName)
	addi	s0, a0, %lo(inName)
	lui	a0, %hi(.L.str.68)
	addi	a1, a0, %lo(.L.str.68)
	mv	a0, s0
	call	fopen
	beqz	a0, .LBB6_25
	call	fclose
.LBB6_12:
	lui	a0, %hi(inName)
	addi	s1, a0, %lo(inName)
	mv	a0, s1
	call	strlen
	lui	s3, %hi(zSuffix)
	lw	s0, %lo(zSuffix)(s3)
	mv	s2, a0
	add	s4, a0, s1
	mv	a0, s0
	call	strlen
	blt	s2, a0, .LBB6_14
	sub	a0, s4, a0
	mv	a1, s0
	call	strcmp
	beqz	a0, .LBB6_23
.LBB6_14:
	addi	a0, s3, %lo(zSuffix)
	lw	s0, 4(a0)
	mv	a0, s0
	call	strlen
	blt	s2, a0, .LBB6_16
	sub	a0, s4, a0
	mv	a1, s0
	call	strcmp
	beqz	a0, .LBB6_23
.LBB6_16:
	lui	a0, %hi(zSuffix)
	addi	s1, a0, %lo(zSuffix)
	lw	s0, 8(s1)
	mv	a0, s0
	call	strlen
	blt	s2, a0, .LBB6_18
	sub	a0, s4, a0
	mv	a1, s0
	call	strcmp
	beqz	a0, .LBB6_23
.LBB6_18:
	lw	s0, 12(s1)
	mv	a0, s0
	call	strlen
	blt	s2, a0, .LBB6_20
	sub	a0, s4, a0
	mv	a1, s0
	call	strcmp
	beqz	a0, .LBB6_23
.LBB6_20:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	andi	a1, a0, -2
	addi	a2, zero, 2
	bne	a1, a2, .LBB6_31
	lui	a0, %hi(inName)
	addi	s0, a0, %lo(inName)
	addi	a1, sp, 24
	mv	a0, s0
	call	stat
	lw	a0, 28(sp)
	lui	a1, 15
	and	a0, a0, a1
	lui	a1, 4
	bne	a0, a1, .LBB6_30
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	lw	a2, %lo(progName)(a1)
	lui	a1, %hi(.L.str.61)
	addi	a1, a1, %lo(.L.str.61)
	mv	a3, s0
	call	fprintf
	j	.LBB6_27
.LBB6_23:
	lui	a0, %hi(noisy)
	lbu	a0, %lo(noisy)(a0)
	beqz	a0, .LBB6_27
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	lw	a2, %lo(progName)(a1)
	lui	a1, %hi(.L.str.60)
	addi	a1, a1, %lo(.L.str.60)
	lui	a3, %hi(inName)
	addi	a3, a3, %lo(inName)
	mv	a4, s0
	j	.LBB6_26
.LBB6_25:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	s1, 12(a0)
	lui	a0, %hi(progName)
	lw	s2, %lo(progName)(a0)
	call	__errno
	lw	a0, 0(a0)
	call	strerror
	mv	a4, a0
	lui	a0, %hi(.L.str.59)
	addi	a1, a0, %lo(.L.str.59)
	mv	a0, s1
	mv	a2, s2
	mv	a3, s0
.LBB6_26:
	call	fprintf
.LBB6_27:
	lui	a0, %hi(exitValue)
	lw	a1, %lo(exitValue)(a0)
	bgtz	a1, .LBB6_29
	addi	a1, zero, 1
	sw	a1, %lo(exitValue)(a0)
.LBB6_29:
	lui	a0, 1
	addi	a0, a0, -864
	add	sp, sp, a0
	lw	s10, 1984(sp)
	lw	s9, 1988(sp)
	lw	s8, 1992(sp)
	lw	s7, 1996(sp)
	lw	s6, 2000(sp)
	lw	s5, 2004(sp)
	lw	s4, 2008(sp)
	lw	s3, 2012(sp)
	lw	s2, 2016(sp)
	lw	s1, 2020(sp)
	lw	s0, 2024(sp)
	lw	ra, 2028(sp)
	addi	sp, sp, 2032
	ret
.LBB6_30:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
.LBB6_31:
	lui	a1, %hi(forceOverwrite)
	lbu	a1, %lo(forceOverwrite)(a1)
	xori	a2, a0, 3
	or	a1, a1, a2
	bnez	a1, .LBB6_34
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	addi	a1, sp, 216
	call	lstat
	lw	a1, 220(sp)
	lui	a2, 15
	and	a1, a1, a2
	lui	a2, 8
	xor	a1, a1, a2
	or	a0, a0, a1
	bnez	a0, .LBB6_50
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
.LBB6_34:
	addi	a1, zero, 3
	bne	a0, a1, .LBB6_38
	lui	a0, %hi(outName)
	addi	a0, a0, %lo(outName)
	lui	a1, %hi(.L.str.68)
	addi	a1, a1, %lo(.L.str.68)
	call	fopen
	beqz	a0, .LBB6_38
	call	fclose
	lui	a0, %hi(forceOverwrite)
	lbu	a0, %lo(forceOverwrite)(a0)
	beqz	a0, .LBB6_63
	lui	a0, %hi(outName)
	addi	a0, a0, %lo(outName)
	call	remove
.LBB6_38:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	lui	a1, %hi(forceOverwrite)
	lbu	a1, %lo(forceOverwrite)(a1)
	xori	a2, a0, 3
	or	a1, a1, a2
	bnez	a1, .LBB6_42
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	addi	a1, sp, 216
	call	lstat
	beqz	a0, .LBB6_52
	mv	a4, zero
	addi	a1, zero, 1
	bge	a4, a1, .LBB6_53
.LBB6_41:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
.LBB6_42:
	addi	s0, zero, 3
	bne	a0, s0, .LBB6_45
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	lui	a1, %hi(fileMetaInfo)
	addi	a1, a1, %lo(fileMetaInfo)
	call	stat
	bnez	a0, .LBB6_107
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
.LBB6_45:
	beq	a0, s0, .LBB6_55
	addi	a1, zero, 2
	beq	a0, a1, .LBB6_59
	addi	a1, zero, 1
	bne	a0, a1, .LBB6_114
	lui	s1, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(s1)
	lw	s7, 4(a0)
	lw	s2, 8(a0)
	mv	a0, s2
	call	fileno
	call	isatty
	beqz	a0, .LBB6_65
	lw	a0, %lo(_impure_ptr)(s1)
	lw	a0, 12(a0)
	lui	s0, %hi(progName)
	lw	a2, %lo(progName)(s0)
	lui	a1, %hi(.L.str.66)
	addi	a1, a1, %lo(.L.str.66)
	call	fprintf
	lw	a0, %lo(_impure_ptr)(s1)
	lw	a0, 12(a0)
	lw	a2, %lo(progName)(s0)
	lui	a1, %hi(.L.str.67)
	addi	a1, a1, %lo(.L.str.67)
	mv	a3, a2
	call	fprintf
	j	.LBB6_27
.LBB6_50:
	lui	a0, %hi(noisy)
	lbu	a0, %lo(noisy)(a0)
	beqz	a0, .LBB6_27
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
	j	.LBB6_27
.LBB6_52:
	lhu	a0, 224(sp)
	addi	a4, a0, -1
	addi	a1, zero, 1
	blt	a4, a1, .LBB6_41
.LBB6_53:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a2, %hi(progName)
	lw	a2, %lo(progName)(a2)
	beq	a4, a1, .LBB6_61
	lui	a1, %hi(.L.str.65)
	addi	a5, a1, %lo(.L.str.65)
	j	.LBB6_62
.LBB6_55:
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	lui	a1, %hi(.L.str.68)
	addi	a1, a1, %lo(.L.str.68)
	call	fopen
	mv	s7, a0
	lui	a0, %hi(outName)
	addi	s3, a0, %lo(outName)
	lui	a0, 1
	addi	a1, a0, -1535
	addi	a2, zero, 384
	mv	a0, s3
	call	open
	addi	a1, zero, -1
	beq	a0, a1, .LBB6_94
	mv	s1, a0
	lui	a0, %hi(.L.str.69)
	addi	a1, a0, %lo(.L.str.69)
	mv	a0, s1
	call	fdopen
	beqz	a0, .LBB6_93
	mv	s2, a0
	bnez	s7, .LBB6_65
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	s0, 12(a0)
	lui	a0, %hi(progName)
	lw	s1, %lo(progName)(a0)
	call	__errno
	lw	a0, 0(a0)
	call	strerror
	mv	a4, a0
	lui	a0, %hi(.L.str.59)
	addi	a1, a0, %lo(.L.str.59)
	lui	a0, %hi(inName)
	addi	a3, a0, %lo(inName)
	mv	a0, s0
	mv	a2, s1
	call	fprintf
	mv	a0, s2
	call	fclose
	j	.LBB6_27
.LBB6_59:
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	lui	a1, %hi(.L.str.68)
	addi	a1, a1, %lo(.L.str.68)
	call	fopen
	lui	s1, %hi(_impure_ptr)
	lw	a1, %lo(_impure_ptr)(s1)
	lw	s2, 8(a1)
	mv	s7, a0
	mv	a0, s2
	call	fileno
	call	isatty
	beqz	a0, .LBB6_64
	lw	a0, %lo(_impure_ptr)(s1)
	lw	a0, 12(a0)
	lui	s2, %hi(progName)
	lw	a2, %lo(progName)(s2)
	lui	a1, %hi(.L.str.66)
	addi	a1, a1, %lo(.L.str.66)
	call	fprintf
	lw	a0, %lo(_impure_ptr)(s1)
	lw	a0, 12(a0)
	lw	a2, %lo(progName)(s2)
	lui	a1, %hi(.L.str.67)
	addi	a1, a1, %lo(.L.str.67)
	mv	a3, a2
	call	fprintf
	bnez	s7, .LBB6_95
	j	.LBB6_27
.LBB6_61:
	lui	a1, %hi(.L.str.4)
	addi	a5, a1, %lo(.L.str.4)
.LBB6_62:
	lui	a1, %hi(.L.str.64)
	addi	a1, a1, %lo(.L.str.64)
	lui	a3, %hi(inName)
	addi	a3, a3, %lo(inName)
	call	fprintf
	j	.LBB6_27
.LBB6_63:
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
	j	.LBB6_27
.LBB6_64:
	beqz	s7, .LBB6_102
.LBB6_65:
	lui	a0, %hi(verbosity)
	lw	a0, %lo(verbosity)(a0)
	addi	s3, zero, 1
	blt	a0, s3, .LBB6_70
	lui	s4, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(s4)
	lw	a0, 12(a0)
	lui	a1, %hi(.L.str.72)
	addi	a1, a1, %lo(.L.str.72)
	lui	a2, %hi(inName)
	addi	s6, a2, %lo(inName)
	mv	a2, s6
	call	fprintf
	mv	a0, s6
	call	strlen
	lui	s5, %hi(longestFileName)
	lw	a1, %lo(longestFileName)(s5)
	bge	a0, a1, .LBB6_69
	mv	s1, zero
.LBB6_68:
	lw	a0, %lo(_impure_ptr)(s4)
	lw	a1, 12(a0)
	addi	a0, zero, 32
	call	fputc@plt
	lw	s0, %lo(longestFileName)(s5)
	mv	a0, s6
	call	strlen
	sub	a0, s0, a0
	addi	s1, s1, 1
	blt	s1, a0, .LBB6_68
.LBB6_69:
	lw	a0, %lo(_impure_ptr)(s4)
	lw	a0, 12(a0)
	call	fflush
.LBB6_70:
	lui	a0, %hi(outputHandleJustInCase)
	sw	s2, %lo(outputHandleJustInCase)(a0)
	lui	a0, %hi(deleteOutputOnInterrupt)
	sb	s3, %lo(deleteOutputOnInterrupt)(a0)
	lbu	a0, 12(s7)
	andi	a0, a0, 64
	bnez	a0, .LBB6_107
	lbu	a0, 12(s2)
	andi	a0, a0, 64
	bnez	a0, .LBB6_107
	lui	a0, %hi(blockSize100k)
	lw	a2, %lo(blockSize100k)(a0)
	lui	s1, %hi(verbosity)
	lw	a3, %lo(verbosity)(s1)
	lui	a0, %hi(workFactor)
	lw	a4, %lo(workFactor)(a0)
	addi	a0, sp, 196
	mv	a1, s2
	call	BZ2_bzWriteOpen
	lw	a1, 196(sp)
	mv	s3, a0
	bnez	a1, .LBB6_103
	lw	a0, %lo(verbosity)(s1)
	addi	a1, zero, 2
	blt	a0, a1, .LBB6_75
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a1, 12(a0)
	addi	a0, zero, 10
	call	fputc@plt
.LBB6_75:
	addi	s4, zero, -1
	lui	a0, 1
	addi	s1, a0, 904
	addi	s5, zero, 1
	j	.LBB6_77
.LBB6_76:
	lw	a0, 196(sp)
	bnez	a0, .LBB6_103
.LBB6_77:
	mv	a0, s7
	call	fgetc
	beq	a0, s4, .LBB6_81
	mv	a1, s7
	call	ungetc
	addi	a0, sp, 216
	addi	a1, zero, 1
	mv	a2, s1
	mv	a3, s7
	call	fread
	lbu	a1, 12(s7)
	andi	a1, a1, 64
	bnez	a1, .LBB6_107
	mv	a3, a0
	blt	a0, s5, .LBB6_76
	addi	a0, sp, 196
	addi	a2, sp, 216
	mv	a1, s3
	call	BZ2_bzWrite
	j	.LBB6_76
.LBB6_81:
	addi	a0, sp, 196
	addi	a3, sp, 212
	addi	a4, sp, 208
	addi	a5, sp, 204
	addi	a6, sp, 200
	mv	a1, s3
	mv	a2, zero
	call	BZ2_bzWriteClose64
	lw	a0, 196(sp)
	bnez	a0, .LBB6_103
	lbu	a0, 12(s2)
	andi	a0, a0, 64
	bnez	a0, .LBB6_107
	mv	a0, s2
	call	fflush
	addi	a1, zero, -1
	beq	a0, a1, .LBB6_107
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 8(a0)
	beq	a0, s2, .LBB6_88
	mv	a0, s2
	call	fileno
	bltz	a0, .LBB6_107
	mv	s1, a0
	lui	s3, %hi(fileMetaInfo)
	lw	a1, %lo(fileMetaInfo+4)(s3)
	call	fchmod
	bnez	a0, .LBB6_107
	addi	a0, s3, %lo(fileMetaInfo)
	lhu	a1, 10(a0)
	lhu	a2, 12(a0)
	mv	a0, s1
	call	fchown
	mv	a0, s2
	call	fclose
	lui	a1, %hi(outputHandleJustInCase)
	addi	a2, zero, -1
	sw	zero, %lo(outputHandleJustInCase)(a1)
	beq	a0, a2, .LBB6_107
.LBB6_88:
	lui	a0, %hi(outputHandleJustInCase)
	sw	zero, %lo(outputHandleJustInCase)(a0)
	lbu	a0, 12(s7)
	andi	a0, a0, 64
	bnez	a0, .LBB6_107
	mv	a0, s7
	call	fclose
	addi	a1, zero, -1
	beq	a0, a1, .LBB6_107
	lui	a0, %hi(verbosity)
	lw	a0, %lo(verbosity)(a0)
	addi	a1, zero, 1
	blt	a0, a1, .LBB6_97
	lw	a0, 212(sp)
	lw	a1, 208(sp)
	or	a2, a1, a0
	beqz	a2, .LBB6_96
	sw	a1, 124(sp)
	srli	a1, a0, 24
	sb	a1, 123(sp)
	srli	a1, a0, 16
	sb	a1, 122(sp)
	srli	a1, a0, 8
	lw	a2, 200(sp)
	lw	a3, 204(sp)
	sb	a1, 121(sp)
	sb	a0, 120(sp)
	sw	a2, 116(sp)
	srli	a0, a3, 24
	sb	a0, 115(sp)
	srli	a0, a3, 16
	sb	a0, 114(sp)
	srli	a0, a3, 8
	sb	a0, 113(sp)
	sb	a3, 112(sp)
	addi	a0, sp, 120
	call	uInt64_to_double
	mv	s4, a0
	mv	s3, a1
	addi	a0, sp, 112
	call	uInt64_to_double
	mv	s0, a0
	mv	s1, a1
	addi	a0, sp, 164
	addi	a1, sp, 120
	addi	s9, sp, 164
	call	uInt64_toAscii
	addi	a0, sp, 132
	addi	a1, sp, 112
	addi	s10, sp, 132
	call	uInt64_toAscii
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	s2, 12(a0)
	mv	a0, s4
	mv	a1, s3
	mv	a2, s0
	mv	a3, s1
	call	__divdf3@plt
	mv	s5, a0
	mv	s6, a1
	lui	a3, 262656
	mv	a0, s0
	mv	a1, s1
	mv	a2, zero
	call	__muldf3@plt
	mv	a2, s4
	mv	a3, s3
	call	__divdf3@plt
	mv	s7, a0
	mv	s8, a1
	mv	a0, s0
	mv	a1, s1
	mv	a2, s4
	mv	a3, s3
	call	__divdf3@plt
	mv	a2, a0
	mv	a3, a1
	lui	a1, 261888
	mv	a0, zero
	call	__subdf3@plt
	lui	a3, 263568
	mv	a2, zero
	call	__muldf3@plt
	mv	a6, a0
	mv	a7, a1
	sw	s10, 4(sp)
	lui	a0, %hi(.L.str.76)
	addi	a1, a0, %lo(.L.str.76)
	sw	s9, 0(sp)
	mv	a0, s2
	mv	a2, s5
	mv	a3, s6
	mv	a4, s7
	mv	a5, s8
	call	fprintf
	j	.LBB6_97
.LBB6_93:
	mv	a0, s1
	call	close
.LBB6_94:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	s1, 12(a0)
	lui	a0, %hi(progName)
	lw	s2, %lo(progName)(a0)
	call	__errno
	lw	a0, 0(a0)
	call	strerror
	mv	a4, a0
	lui	a0, %hi(.L.str.70)
	addi	a1, a0, %lo(.L.str.70)
	mv	a0, s1
	mv	a2, s2
	mv	a3, s3
	call	fprintf
	beqz	s7, .LBB6_27
.LBB6_95:
	mv	a0, s7
	call	fclose
	j	.LBB6_27
.LBB6_96:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a3, 12(a0)
	lui	a0, %hi(.L.str.75)
	addi	a0, a0, %lo(.L.str.75)
	addi	a1, zero, 21
	addi	a2, zero, 1
	call	fwrite
.LBB6_97:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	lui	a1, %hi(outputHandleJustInCase)
	addi	a2, zero, 3
	sw	zero, %lo(outputHandleJustInCase)(a1)
	bne	a0, a2, .LBB6_101
	lui	a0, %hi(fileMetaInfo)
	addi	a0, a0, %lo(fileMetaInfo)
	lw	a1, 28(a0)
	lw	a2, 24(a0)
	lw	a3, 44(a0)
	lw	a0, 40(a0)
	sw	a1, 220(sp)
	sw	a2, 216(sp)
	sw	a3, 228(sp)
	sw	a0, 224(sp)
	lui	a0, %hi(outName)
	addi	a0, a0, %lo(outName)
	addi	a1, sp, 216
	call	utime
	bnez	a0, .LBB6_107
	lui	a0, %hi(keepInputFiles)
	lbu	a0, %lo(keepInputFiles)(a0)
	lui	a1, %hi(deleteOutputOnInterrupt)
	sb	zero, %lo(deleteOutputOnInterrupt)(a1)
	bnez	a0, .LBB6_101
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	call	remove
	bnez	a0, .LBB6_107
.LBB6_101:
	lui	a0, %hi(deleteOutputOnInterrupt)
	sb	zero, %lo(deleteOutputOnInterrupt)(a0)
	j	.LBB6_29
.LBB6_102:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	s0, 12(a0)
	lui	a0, %hi(progName)
	lw	s1, %lo(progName)(a0)
	call	__errno
	lw	a0, 0(a0)
	call	strerror
	mv	a4, a0
	lui	a0, %hi(.L.str.59)
	addi	a1, a0, %lo(.L.str.59)
	lui	a0, %hi(inName)
	addi	a3, a0, %lo(inName)
	mv	a0, s0
	mv	a2, s1
	j	.LBB6_26
.LBB6_103:
	addi	a0, sp, 164
	addi	a2, zero, 1
	addi	a3, sp, 212
	addi	a4, sp, 208
	addi	a5, sp, 204
	addi	a6, sp, 200
	mv	a1, s3
	call	BZ2_bzWriteClose64
	lw	a0, 196(sp)
	addi	a1, zero, -3
	beq	a0, a1, .LBB6_112
	addi	a1, zero, -6
	beq	a0, a1, .LBB6_107
	addi	a1, zero, -9
	bne	a0, a1, .LBB6_113
	call	configError
.LBB6_107:
	call	ioError
.LBB6_108:
	lui	a0, %hi(.L.str.55)
	addi	a0, a0, %lo(.L.str.55)
	call	panic
.LBB6_109:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(.L.str.41)
	addi	a1, a1, %lo(.L.str.41)
	addi	a3, zero, 1024
	mv	a2, s0
	call	fprintf
	lui	a1, %hi(exitValue)
	lw	a0, %lo(exitValue)(a1)
	bgtz	a0, .LBB6_111
	addi	a0, zero, 1
	sw	a0, %lo(exitValue)(a1)
.LBB6_111:
	call	exit
.LBB6_112:
	call	outOfMemory
.LBB6_113:
	lui	a0, %hi(.L.str.77)
	addi	a0, a0, %lo(.L.str.77)
	call	panic
.LBB6_114:
	lui	a0, %hi(.L.str.71)
	addi	a0, a0, %lo(.L.str.71)
	call	panic
.Lfunc_end6:
	.size	compress, .Lfunc_end6-compress

	.p2align	1
	.type	uncompress,@function
uncompress:
	addi	sp, sp, -2032
	sw	ra, 2028(sp)
	sw	s0, 2024(sp)
	sw	s1, 2020(sp)
	sw	s2, 2016(sp)
	sw	s3, 2012(sp)
	sw	s4, 2008(sp)
	sw	s5, 2004(sp)
	sw	s6, 2000(sp)
	sw	s7, 1996(sp)
	sw	s8, 1992(sp)
	sw	s9, 1988(sp)
	sw	s10, 1984(sp)
	sw	s11, 1980(sp)
	lui	a1, 2
	addi	a1, a1, -48
	sub	sp, sp, a1
	lui	a1, %hi(srcMode)
	lw	a1, %lo(srcMode)(a1)
	mv	s0, a0
	lui	a0, %hi(deleteOutputOnInterrupt)
	snez	a2, s0
	addi	a3, a1, -1
	seqz	a3, a3
	or	a2, a2, a3
	sb	zero, %lo(deleteOutputOnInterrupt)(a0)
	beqz	a2, .LBB7_139
	addi	a0, zero, 3
	beq	a1, a0, .LBB7_5
	addi	a0, zero, 2
	beq	a1, a0, .LBB7_16
	addi	a0, zero, 1
	bne	a1, a0, .LBB7_23
	lui	a0, %hi(.L.str.56)
	addi	a1, a0, %lo(.L.str.56)
	lui	a0, %hi(inName)
	addi	s0, a0, %lo(inName)
	addi	a2, zero, 1024
	mv	a0, s0
	call	strncpy
	sb	zero, 1024(s0)
	lui	a0, %hi(.L.str.57)
	addi	a1, a0, %lo(.L.str.57)
	lui	a0, %hi(outName)
	addi	s0, a0, %lo(outName)
	addi	a2, zero, 1024
	mv	a0, s0
	call	strncpy
	sb	zero, 1024(s0)
	j	.LBB7_35
.LBB7_5:
	mv	a0, s0
	call	strlen
	addi	s2, zero, 1025
	bgeu	a0, s2, .LBB7_140
	lui	a0, %hi(inName)
	addi	s1, a0, %lo(inName)
	addi	a2, zero, 1024
	mv	a0, s1
	mv	a1, s0
	call	strncpy
	sb	zero, 1024(s1)
	mv	a0, s0
	call	strlen
	bgeu	a0, s2, .LBB7_140
	lui	a0, %hi(outName)
	addi	s1, a0, %lo(outName)
	addi	a2, zero, 1024
	mv	a0, s1
	mv	a1, s0
	call	strncpy
	sb	zero, 1024(s1)
	mv	a0, s1
	call	strlen
	lui	s4, %hi(zSuffix)
	lw	s0, %lo(zSuffix)(s4)
	mv	s2, a0
	add	s3, a0, s1
	mv	a0, s0
	call	strlen
	blt	s2, a0, .LBB7_9
	mv	s1, a0
	sub	a0, s3, a0
	mv	a1, s0
	call	strcmp
	beqz	a0, .LBB7_18
.LBB7_9:
	addi	a0, s4, %lo(zSuffix)
	lw	s0, 4(a0)
	mv	a0, s0
	call	strlen
	blt	s2, a0, .LBB7_11
	mv	s1, a0
	sub	a0, s3, a0
	mv	a1, s0
	call	strcmp
	beqz	a0, .LBB7_19
.LBB7_11:
	lui	a0, %hi(zSuffix)
	addi	s4, a0, %lo(zSuffix)
	lw	s0, 8(s4)
	mv	a0, s0
	call	strlen
	blt	s2, a0, .LBB7_13
	mv	s1, a0
	sub	a0, s3, a0
	mv	a1, s0
	call	strcmp
	beqz	a0, .LBB7_20
.LBB7_13:
	lw	s0, 12(s4)
	mv	a0, s0
	call	strlen
	blt	s2, a0, .LBB7_15
	mv	s1, a0
	sub	a0, s3, a0
	mv	a1, s0
	call	strcmp
	beqz	a0, .LBB7_21
.LBB7_15:
	lui	a0, %hi(outName)
	addi	s0, a0, %lo(outName)
	mv	a0, s0
	call	strlen
	add	a0, a0, s0
	addi	a1, zero, 46
	sb	a1, 0(a0)
	addi	a1, zero, 111
	sb	a1, 1(a0)
	addi	a1, zero, 117
	sb	a1, 2(a0)
	addi	a1, zero, 116
	sb	a1, 3(a0)
	sb	zero, 4(a0)
	addi	s1, zero, 1
	j	.LBB7_24
.LBB7_16:
	mv	a0, s0
	call	strlen
	addi	a1, zero, 1025
	bgeu	a0, a1, .LBB7_140
	lui	a0, %hi(inName)
	addi	s1, a0, %lo(inName)
	addi	a2, zero, 1024
	mv	a0, s1
	mv	a1, s0
	call	strncpy
	sb	zero, 1024(s1)
	lui	a0, %hi(.L.str.57)
	addi	a1, a0, %lo(.L.str.57)
	lui	a0, %hi(outName)
	addi	s0, a0, %lo(outName)
	addi	a2, zero, 1024
	mv	a0, s0
	call	strncpy
	mv	s1, zero
	sb	zero, 1024(s0)
	j	.LBB7_24
.LBB7_18:
	mv	a0, zero
	j	.LBB7_22
.LBB7_19:
	addi	a0, zero, 1
	j	.LBB7_22
.LBB7_20:
	addi	a0, zero, 2
	j	.LBB7_22
.LBB7_21:
	addi	a0, zero, 3
.LBB7_22:
	lui	a1, %hi(unzSuffix)
	addi	a1, a1, %lo(unzSuffix)
	slli	a0, a0, 2
	add	a0, a0, a1
	lw	a1, 0(a0)
	sub	a2, s2, s1
	lui	a0, %hi(outName)
	addi	a0, a0, %lo(outName)
	add	a2, a2, a0
	sb	zero, 0(a2)
	call	strcat
.LBB7_23:
	mv	s1, zero
.LBB7_24:
	lui	a0, %hi(inName)
	addi	s0, a0, %lo(inName)
	lui	a0, %hi(.L.str.68)
	addi	a1, a0, %lo(.L.str.68)
	mv	a0, s0
	call	fopen
	beqz	a0, .LBB7_28
	call	fclose
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	andi	a1, a0, -2
	addi	a2, zero, 2
	bne	a1, a2, .LBB7_31
	lui	a0, %hi(inName)
	addi	s0, a0, %lo(inName)
	addi	a1, sp, 16
	mv	a0, s0
	call	stat
	lw	a0, 20(sp)
	lui	a1, 15
	and	a0, a0, a1
	lui	a1, 4
	bne	a0, a1, .LBB7_30
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	lw	a2, %lo(progName)(a1)
	lui	a1, %hi(.L.str.61)
	addi	a1, a1, %lo(.L.str.61)
	mv	a3, s0
	call	fprintf
	j	.LBB7_116
.LBB7_28:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	s1, 12(a0)
	lui	a0, %hi(progName)
	lw	s2, %lo(progName)(a0)
	call	__errno
	lw	a0, 0(a0)
	call	strerror
	mv	a4, a0
	lui	a0, %hi(.L.str.59)
	addi	a1, a0, %lo(.L.str.59)
.LBB7_29:
	mv	a0, s1
	mv	a2, s2
	mv	a3, s0
	call	fprintf
	j	.LBB7_116
.LBB7_30:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
.LBB7_31:
	lui	a1, %hi(forceOverwrite)
	lbu	a1, %lo(forceOverwrite)(a1)
	xori	a0, a0, 3
	or	a0, a0, a1
	bnez	a0, .LBB7_33
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	lui	a1, 1
	addi	a1, a1, 1016
	add	a1, a1, sp
	mv	a1, a1
	call	lstat
	lui	a1, 1
	addi	a1, a1, 1020
	add	a1, a1, sp
	lw	a1, 0(a1)
	lui	a2, 15
	and	a1, a1, a2
	lui	a2, 8
	xor	a1, a1, a2
	or	a0, a0, a1
	bnez	a0, .LBB7_80
.LBB7_33:
	lui	a0, %hi(noisy)
	lbu	a0, %lo(noisy)(a0)
	seqz	a0, a0
	xori	a1, s1, 1
	or	a0, a0, a1
	bnez	a0, .LBB7_35
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
.LBB7_35:
	lui	s0, %hi(srcMode)
	lw	a0, %lo(srcMode)(s0)
	addi	a1, zero, 3
	bne	a0, a1, .LBB7_39
	lui	a0, %hi(outName)
	addi	a0, a0, %lo(outName)
	lui	a1, %hi(.L.str.68)
	addi	a1, a1, %lo(.L.str.68)
	call	fopen
	beqz	a0, .LBB7_39
	call	fclose
	lui	a0, %hi(forceOverwrite)
	lbu	a0, %lo(forceOverwrite)(a0)
	beqz	a0, .LBB7_101
	lui	a0, %hi(outName)
	addi	a0, a0, %lo(outName)
	call	remove
.LBB7_39:
	lw	a0, %lo(srcMode)(s0)
	lui	a1, %hi(forceOverwrite)
	lbu	a1, %lo(forceOverwrite)(a1)
	xori	a2, a0, 3
	or	a1, a1, a2
	bnez	a1, .LBB7_43
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	lui	a1, 1
	addi	a1, a1, 1016
	add	a1, a1, sp
	mv	a1, a1
	call	lstat
	beqz	a0, .LBB7_51
	mv	a4, zero
	addi	a1, zero, 1
	bge	a4, a1, .LBB7_52
.LBB7_42:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
.LBB7_43:
	addi	s0, zero, 3
	bne	a0, s0, .LBB7_46
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	lui	a1, %hi(fileMetaInfo)
	addi	a1, a1, %lo(fileMetaInfo)
	call	stat
	bnez	a0, .LBB7_146
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
.LBB7_46:
	beq	a0, s0, .LBB7_54
	addi	a1, zero, 2
	beq	a0, a1, .LBB7_58
	addi	a1, zero, 1
	bne	a0, a1, .LBB7_150
	lui	s0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(s0)
	lw	s11, 4(a0)
	lw	s3, 8(a0)
	mv	a0, s11
	call	fileno
	call	isatty
	beqz	a0, .LBB7_60
	lw	a0, %lo(_impure_ptr)(s0)
	lw	a0, 12(a0)
	lui	s1, %hi(progName)
	lw	a2, %lo(progName)(s1)
	lui	a1, %hi(.L.str.83)
	addi	a1, a1, %lo(.L.str.83)
	call	fprintf
	lw	a0, %lo(_impure_ptr)(s0)
	lw	a0, 12(a0)
	lw	a2, %lo(progName)(s1)
	lui	a1, %hi(.L.str.67)
	addi	a1, a1, %lo(.L.str.67)
	mv	a3, a2
	call	fprintf
	j	.LBB7_116
.LBB7_51:
	lui	a0, 1
	addi	a0, a0, 1024
	add	a0, a0, sp
	lhu	a0, 0(a0)
	addi	a4, a0, -1
	addi	a1, zero, 1
	blt	a4, a1, .LBB7_42
.LBB7_52:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a2, %hi(progName)
	lw	a2, %lo(progName)(a2)
	beq	a4, a1, .LBB7_82
	lui	a1, %hi(.L.str.65)
	addi	a5, a1, %lo(.L.str.65)
	j	.LBB7_83
.LBB7_54:
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	lui	a1, %hi(.L.str.68)
	addi	a1, a1, %lo(.L.str.68)
	call	fopen
	mv	s11, a0
	lui	a0, %hi(outName)
	addi	s2, a0, %lo(outName)
	lui	a0, 1
	addi	a1, a0, -1535
	addi	a2, zero, 384
	mv	a0, s2
	call	open
	addi	a1, zero, -1
	beq	a0, a1, .LBB7_113
	mv	s0, a0
	lui	a0, %hi(.L.str.69)
	addi	a1, a0, %lo(.L.str.69)
	mv	a0, s0
	call	fdopen
	beqz	a0, .LBB7_112
	mv	s3, a0
	bnez	s11, .LBB7_60
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	s0, 12(a0)
	lui	a0, %hi(progName)
	lw	s1, %lo(progName)(a0)
	call	__errno
	lw	a0, 0(a0)
	call	strerror
	mv	a4, a0
	lui	a0, %hi(.L.str.59)
	addi	a1, a0, %lo(.L.str.59)
	lui	a0, %hi(inName)
	addi	a3, a0, %lo(inName)
	mv	a0, s0
	mv	a2, s1
	call	fprintf
	mv	a0, s3
	j	.LBB7_115
.LBB7_58:
	lui	a0, %hi(inName)
	addi	s0, a0, %lo(inName)
	lui	a0, %hi(.L.str.68)
	addi	a1, a0, %lo(.L.str.68)
	mv	a0, s0
	call	fopen
	lui	a1, %hi(_impure_ptr)
	lw	a1, %lo(_impure_ptr)(a1)
	beqz	a0, .LBB7_104
	mv	s11, a0
	lw	s3, 8(a1)
.LBB7_60:
	lui	a0, %hi(verbosity)
	lw	a0, %lo(verbosity)(a0)
	addi	s2, zero, 1
	blt	a0, s2, .LBB7_65
	lui	s4, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(s4)
	lw	a0, 12(a0)
	lui	a1, %hi(.L.str.72)
	addi	a1, a1, %lo(.L.str.72)
	lui	a2, %hi(inName)
	addi	s6, a2, %lo(inName)
	mv	a2, s6
	call	fprintf
	mv	a0, s6
	call	strlen
	lui	s5, %hi(longestFileName)
	lw	a1, %lo(longestFileName)(s5)
	bge	a0, a1, .LBB7_64
	mv	s1, zero
.LBB7_63:
	lw	a0, %lo(_impure_ptr)(s4)
	lw	a1, 12(a0)
	addi	a0, zero, 32
	call	fputc@plt
	lw	s0, %lo(longestFileName)(s5)
	mv	a0, s6
	call	strlen
	sub	a0, s0, a0
	addi	s1, s1, 1
	blt	s1, a0, .LBB7_63
.LBB7_64:
	lw	a0, %lo(_impure_ptr)(s4)
	lw	a0, 12(a0)
	call	fflush
.LBB7_65:
	lui	a0, %hi(outputHandleJustInCase)
	sw	s3, %lo(outputHandleJustInCase)(a0)
	lui	a0, %hi(deleteOutputOnInterrupt)
	sb	s2, %lo(deleteOutputOnInterrupt)(a0)
	sw	zero, 108(sp)
	lbu	a0, 12(s3)
	andi	a0, a0, 64
	bnez	a0, .LBB7_146
	lbu	a0, 12(s11)
	andi	a0, a0, 64
	bnez	a0, .LBB7_146
	lui	s5, %hi(verbosity)
	lw	a2, %lo(verbosity)(s5)
	lui	s6, %hi(smallMode)
	lbu	a3, %lo(smallMode)(s6)
	lui	a0, 2
	addi	a0, a0, 1928
	add	a0, a0, sp
	mv	a0, a0
	addi	a4, sp, 112
	mv	a1, s11
	mv	a5, zero
	call	BZ2_bzReadOpen
	lui	a1, 2
	addi	a1, a1, 1928
	add	a1, a1, sp
	lw	a1, 0(a1)
	mv	s0, a0
	seqz	a0, a0
	snez	a1, a1
	mv	s4, zero
	or	a0, a0, a1
	beqz	a0, .LBB7_84
.LBB7_68:
	lui	a0, 2
	addi	a0, a0, 1924
	add	a0, a0, sp
	mv	a0, a0
	mv	a1, s0
	call	BZ2_bzReadClose
	lui	a0, 2
	addi	a0, a0, 1928
	add	a0, a0, sp
	lw	a0, 0(a0)
	addi	a1, zero, -5
	bne	a0, a1, .LBB7_143
	lui	s0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(s0)
	lw	a1, 4(a0)
	beq	a1, s11, .LBB7_71
	mv	a0, s11
	call	fclose
	lw	a0, %lo(_impure_ptr)(s0)
.LBB7_71:
	lw	a0, 8(a0)
	beq	a0, s3, .LBB7_73
	mv	a0, s3
	call	fclose
.LBB7_73:
	addi	a0, zero, 1
	bne	s4, a0, .LBB7_102
	lui	a1, %hi(outputHandleJustInCase)
	sw	zero, %lo(outputHandleJustInCase)(a1)
	lui	a1, %hi(unzFailsExist)
	lui	a2, %hi(srcMode)
	lw	a2, %lo(srcMode)(a2)
	sb	a0, %lo(unzFailsExist)(a1)
	lui	s0, %hi(deleteOutputOnInterrupt)
	addi	a0, zero, 3
	sb	zero, %lo(deleteOutputOnInterrupt)(s0)
	bne	a2, a0, .LBB7_76
	lui	a0, %hi(outName)
	addi	a0, a0, %lo(outName)
	call	remove
	bnez	a0, .LBB7_146
.LBB7_76:
	lui	a1, %hi(exitValue)
	lw	a2, %lo(exitValue)(a1)
	addi	a0, zero, 1
	sb	zero, %lo(deleteOutputOnInterrupt)(s0)
	blt	a0, a2, .LBB7_78
	addi	a1, a1, %lo(exitValue)
	addi	a2, zero, 2
	sw	a2, 0(a1)
.LBB7_78:
	lui	a1, %hi(_impure_ptr)
	lw	a1, %lo(_impure_ptr)(a1)
	lui	a2, %hi(verbosity)
	lw	a2, %lo(verbosity)(a2)
	lw	a3, 12(a1)
	blt	a2, a0, .LBB7_119
	lui	a0, %hi(.L.str.87)
	addi	a0, a0, %lo(.L.str.87)
	addi	a1, zero, 18
	j	.LBB7_138
.LBB7_80:
	lui	a0, %hi(noisy)
	lbu	a0, %lo(noisy)(a0)
	beqz	a0, .LBB7_116
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
	j	.LBB7_116
.LBB7_82:
	lui	a1, %hi(.L.str.4)
	addi	a5, a1, %lo(.L.str.4)
.LBB7_83:
	lui	a1, %hi(.L.str.64)
	addi	a1, a1, %lo(.L.str.64)
	lui	a3, %hi(inName)
	addi	a3, a3, %lo(inName)
	call	fprintf
	j	.LBB7_116
.LBB7_84:
	lui	a0, 1
	addi	s2, a0, 904
	addi	s7, zero, -5
	addi	s8, zero, 1
	addi	s9, zero, 4
	addi	s10, zero, -1
.LBB7_85:
	mv	a0, zero
	addi	s4, s4, 1
	bnez	a0, .LBB7_91
.LBB7_86:
	lui	a0, 2
	addi	a0, a0, 1928
	add	a0, a0, sp
	mv	a0, a0
	lui	a1, 1
	addi	a1, a1, 1016
	add	a1, a1, sp
	mv	a2, a1
	mv	a1, s0
	mv	a3, s2
	call	BZ2_bzRead
	lui	a1, 2
	addi	a1, a1, 1928
	add	a1, a1, sp
	lw	a1, 0(a1)
	beq	a1, s7, .LBB7_105
	mv	a2, a0
	andi	a0, a1, -5
	snez	a0, a0
	slti	a1, a2, 1
	or	a0, a0, a1
	bnez	a0, .LBB7_89
	lui	a0, 1
	addi	a0, a0, 1016
	add	a0, a0, sp
	mv	a0, a0
	addi	a1, zero, 1
	mv	a3, s3
	call	fwrite
.LBB7_89:
	lbu	a0, 12(s3)
	andi	a0, a0, 64
	bnez	a0, .LBB7_146
	lui	a0, 2
	addi	a0, a0, 1928
	add	a0, a0, sp
	lw	a0, 0(a0)
	beqz	a0, .LBB7_86
.LBB7_91:
	bne	a0, s9, .LBB7_68
	lui	a0, 2
	addi	a0, a0, 1928
	add	a0, a0, sp
	mv	a0, a0
	addi	a2, sp, 104
	addi	a3, sp, 108
	mv	a1, s0
	call	BZ2_bzReadGetUnused
	lui	a0, 2
	addi	a0, a0, 1928
	add	a0, a0, sp
	lw	a0, 0(a0)
	bnez	a0, .LBB7_152
	lw	a0, 108(sp)
	blt	a0, s8, .LBB7_96
	lw	a1, 104(sp)
	addi	a2, sp, 112
.LBB7_95:
	lb	a3, 0(a1)
	sb	a3, 0(a2)
	addi	a0, a0, -1
	addi	a2, a2, 1
	addi	a1, a1, 1
	bnez	a0, .LBB7_95
.LBB7_96:
	lui	a0, 2
	addi	a0, a0, 1928
	add	a0, a0, sp
	mv	a0, a0
	mv	a1, s0
	call	BZ2_bzReadClose
	lui	a0, 2
	addi	a0, a0, 1928
	add	a0, a0, sp
	lw	a0, 0(a0)
	bnez	a0, .LBB7_152
	lw	a5, 108(sp)
	bnez	a5, .LBB7_100
	mv	a0, s11
	call	fgetc
	beq	a0, s10, .LBB7_120
	mv	a1, s11
	call	ungetc
	lw	a5, 108(sp)
.LBB7_100:
	lw	a2, %lo(verbosity)(s5)
	lbu	a3, %lo(smallMode)(s6)
	lui	a0, 2
	addi	a0, a0, 1928
	add	a0, a0, sp
	mv	a0, a0
	addi	a4, sp, 112
	mv	a1, s11
	call	BZ2_bzReadOpen
	lui	a1, 2
	addi	a1, a1, 1928
	add	a1, a1, sp
	lw	a1, 0(a1)
	mv	s0, a0
	seqz	a0, a0
	snez	a1, a1
	or	a0, a0, a1
	beqz	a0, .LBB7_85
	j	.LBB7_68
.LBB7_101:
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
	j	.LBB7_116
.LBB7_102:
	lui	a0, %hi(noisy)
	lbu	a0, %lo(noisy)(a0)
	beqz	a0, .LBB7_132
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
	j	.LBB7_132
.LBB7_104:
	lw	s1, 12(a1)
	lui	a0, %hi(progName)
	lw	s2, %lo(progName)(a0)
	call	__errno
	lw	a0, 0(a0)
	call	strerror
	mv	a4, a0
	lui	a0, %hi(.L.str.84)
	addi	a1, a0, %lo(.L.str.84)
	j	.LBB7_29
.LBB7_105:
	lui	a0, %hi(forceOverwrite)
	lbu	a0, %lo(forceOverwrite)(a0)
	beqz	a0, .LBB7_68
	mv	a0, s11
	call	rewind
	addi	s2, zero, -1
	lui	a0, 1
	addi	s0, a0, 904
	addi	s1, zero, 1
	j	.LBB7_108
.LBB7_107:
	lbu	a0, 12(s3)
	andi	a0, a0, 64
	bnez	a0, .LBB7_146
.LBB7_108:
	mv	a0, s11
	call	fgetc
	beq	a0, s2, .LBB7_120
	mv	a1, s11
	call	ungetc
	lui	a0, 1
	addi	a0, a0, 1016
	add	a0, a0, sp
	mv	a0, a0
	addi	a1, zero, 1
	mv	a2, s0
	mv	a3, s11
	call	fread
	lbu	a1, 12(s11)
	andi	a1, a1, 64
	bnez	a1, .LBB7_146
	mv	a2, a0
	blt	a0, s1, .LBB7_107
	lui	a0, 1
	addi	a0, a0, 1016
	add	a0, a0, sp
	mv	a0, a0
	addi	a1, zero, 1
	mv	a3, s3
	call	fwrite
	j	.LBB7_107
.LBB7_112:
	mv	a0, s0
	call	close
.LBB7_113:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	s0, 12(a0)
	lui	a0, %hi(progName)
	lw	s3, %lo(progName)(a0)
	call	__errno
	lw	a0, 0(a0)
	call	strerror
	mv	a4, a0
	lui	a0, %hi(.L.str.70)
	addi	a1, a0, %lo(.L.str.70)
	mv	a0, s0
	mv	a2, s3
	mv	a3, s2
	call	fprintf
	beqz	s11, .LBB7_116
	mv	a0, s11
.LBB7_115:
	call	fclose
.LBB7_116:
	lui	a0, %hi(exitValue)
	lw	a1, %lo(exitValue)(a0)
	bgtz	a1, .LBB7_118
	addi	a1, zero, 1
	sw	a1, %lo(exitValue)(a0)
.LBB7_118:
	lui	a0, 2
	addi	a0, a0, -48
	add	sp, sp, a0
	lw	s11, 1980(sp)
	lw	s10, 1984(sp)
	lw	s9, 1988(sp)
	lw	s8, 1992(sp)
	lw	s7, 1996(sp)
	lw	s6, 2000(sp)
	lw	s5, 2004(sp)
	lw	s4, 2008(sp)
	lw	s3, 2012(sp)
	lw	s2, 2016(sp)
	lw	s1, 2020(sp)
	lw	s0, 2024(sp)
	lw	ra, 2028(sp)
	addi	sp, sp, 2032
	ret
.LBB7_119:
	lui	a0, %hi(progName)
	lw	a2, %lo(progName)(a0)
	lui	a0, %hi(.L.str.88)
	addi	a1, a0, %lo(.L.str.88)
	lui	a0, %hi(inName)
	addi	a4, a0, %lo(inName)
	mv	a0, a3
	mv	a3, a4
	call	fprintf
	j	.LBB7_118
.LBB7_120:
	lbu	a0, 12(s11)
	andi	a0, a0, 64
	bnez	a0, .LBB7_146
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 8(a0)
	beq	a0, s3, .LBB7_125
	mv	a0, s3
	call	fileno
	bltz	a0, .LBB7_146
	mv	s0, a0
	lui	s1, %hi(fileMetaInfo)
	lw	a1, %lo(fileMetaInfo+4)(s1)
	call	fchmod
	bnez	a0, .LBB7_146
	addi	a0, s1, %lo(fileMetaInfo)
	lhu	a1, 10(a0)
	lhu	a2, 12(a0)
	mv	a0, s0
	call	fchown
.LBB7_125:
	mv	a0, s11
	call	fclose
	addi	a1, zero, -1
	beq	a0, a1, .LBB7_146
	lbu	a0, 12(s3)
	andi	a0, a0, 64
	bnez	a0, .LBB7_146
	mv	a0, s3
	call	fflush
	bnez	a0, .LBB7_146
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 8(a0)
	beq	a0, s3, .LBB7_130
	mv	a0, s3
	call	fclose
	lui	a1, %hi(outputHandleJustInCase)
	addi	a2, zero, -1
	sw	zero, %lo(outputHandleJustInCase)(a1)
	beq	a0, a2, .LBB7_146
.LBB7_130:
	lui	a0, %hi(verbosity)
	lw	a0, %lo(verbosity)(a0)
	lui	a1, %hi(outputHandleJustInCase)
	addi	a2, zero, 2
	sw	zero, %lo(outputHandleJustInCase)(a1)
	blt	a0, a2, .LBB7_132
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a3, 12(a0)
	lui	a0, %hi(.L.str.90)
	addi	a0, a0, %lo(.L.str.90)
	addi	a1, zero, 5
	addi	a2, zero, 1
	call	fwrite
.LBB7_132:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	lui	a1, %hi(outputHandleJustInCase)
	addi	a2, zero, 3
	sw	zero, %lo(outputHandleJustInCase)(a1)
	bne	a0, a2, .LBB7_136
	lui	a0, %hi(fileMetaInfo)
	addi	a0, a0, %lo(fileMetaInfo)
	lw	a1, 28(a0)
	lw	a2, 24(a0)
	lw	a3, 44(a0)
	lw	a0, 40(a0)
	lui	a4, 1
	addi	a4, a4, 1020
	add	a4, a4, sp
	sw	a1, 0(a4)
	lui	a1, 1
	addi	a1, a1, 1016
	add	a1, a1, sp
	sw	a2, 0(a1)
	lui	a1, 1
	addi	a1, a1, 1028
	add	a1, a1, sp
	sw	a3, 0(a1)
	lui	a1, 1
	addi	a1, a1, 1024
	add	a1, a1, sp
	sw	a0, 0(a1)
	lui	a0, %hi(outName)
	addi	a0, a0, %lo(outName)
	lui	a1, 1
	addi	a1, a1, 1016
	add	a1, a1, sp
	mv	a1, a1
	call	utime
	bnez	a0, .LBB7_146
	lui	a0, %hi(keepInputFiles)
	lbu	a0, %lo(keepInputFiles)(a0)
	lui	a1, %hi(deleteOutputOnInterrupt)
	sb	zero, %lo(deleteOutputOnInterrupt)(a1)
	bnez	a0, .LBB7_136
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	call	remove
	bnez	a0, .LBB7_146
.LBB7_136:
	lui	a0, %hi(verbosity)
	lw	a0, %lo(verbosity)(a0)
	lui	a1, %hi(deleteOutputOnInterrupt)
	addi	a2, zero, 1
	sb	zero, %lo(deleteOutputOnInterrupt)(a1)
	blt	a0, a2, .LBB7_118
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a3, 12(a0)
	lui	a0, %hi(.L.str.86)
	addi	a0, a0, %lo(.L.str.86)
	addi	a1, zero, 5
.LBB7_138:
	addi	a2, zero, 1
	call	fwrite
	j	.LBB7_118
.LBB7_139:
	lui	a0, %hi(.L.str.80)
	addi	a0, a0, %lo(.L.str.80)
	call	panic
.LBB7_140:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(.L.str.41)
	addi	a1, a1, %lo(.L.str.41)
	addi	a3, zero, 1024
	mv	a2, s0
	call	fprintf
	lui	a1, %hi(exitValue)
	lw	a0, %lo(exitValue)(a1)
	bgtz	a0, .LBB7_142
	addi	a0, zero, 1
	sw	a0, %lo(exitValue)(a1)
.LBB7_142:
	call	exit
.LBB7_143:
	addi	a0, a0, 9
	addi	a1, zero, 6
	bltu	a1, a0, .LBB7_151
	slli	a0, a0, 2
	lui	a1, %hi(.LJTI7_0)
	addi	a1, a1, %lo(.LJTI7_0)
	add	a0, a0, a1
	lw	a0, 0(a0)
	jr	a0
.LBB7_145:
	call	configError
.LBB7_146:
	call	ioError
.LBB7_147:
	call	compressedStreamEOF
.LBB7_148:
	call	crcError
.LBB7_149:
	call	outOfMemory
.LBB7_150:
	lui	a0, %hi(.L.str.85)
	addi	a0, a0, %lo(.L.str.85)
	call	panic
.LBB7_151:
	lui	a0, %hi(.L.str.92)
	addi	a0, a0, %lo(.L.str.92)
	call	panic
.LBB7_152:
	lui	a0, %hi(.L.str.89)
	addi	a0, a0, %lo(.L.str.89)
	call	panic
.Lfunc_end7:
	.size	uncompress, .Lfunc_end7-uncompress
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI7_0:
	.word	.LBB7_145
	.word	.LBB7_151
	.word	.LBB7_147
	.word	.LBB7_146
	.word	.LBB7_151
	.word	.LBB7_148
	.word	.LBB7_149

	.text
	.p2align	1
	.type	testf,@function
testf:
	addi	sp, sp, -2032
	sw	ra, 2028(sp)
	sw	s0, 2024(sp)
	sw	s1, 2020(sp)
	sw	s2, 2016(sp)
	sw	s3, 2012(sp)
	sw	s4, 2008(sp)
	sw	s5, 2004(sp)
	sw	s6, 2000(sp)
	sw	s7, 1996(sp)
	sw	s8, 1992(sp)
	sw	s9, 1988(sp)
	lui	a1, 2
	addi	a1, a1, -64
	sub	sp, sp, a1
	lui	a1, %hi(srcMode)
	lw	s0, %lo(srcMode)(a1)
	mv	s2, a0
	lui	a0, %hi(deleteOutputOnInterrupt)
	snez	a1, s2
	addi	a2, s0, -1
	seqz	a2, a2
	or	a1, a1, a2
	sb	zero, %lo(deleteOutputOnInterrupt)(a0)
	beqz	a1, .LBB8_70
	lui	a0, %hi(.L.str.6)
	addi	a1, a0, %lo(.L.str.6)
	lui	a0, %hi(outName)
	addi	s1, a0, %lo(outName)
	addi	a2, zero, 1024
	mv	a0, s1
	call	strncpy
	addi	a0, zero, 3
	sb	zero, 1024(s1)
	beq	s0, a0, .LBB8_5
	addi	a0, zero, 2
	beq	s0, a0, .LBB8_5
	addi	a0, zero, 1
	bne	s0, a0, .LBB8_7
	lui	a0, %hi(.L.str.56)
	addi	a1, a0, %lo(.L.str.56)
	lui	a0, %hi(inName)
	addi	s0, a0, %lo(inName)
	addi	a2, zero, 1024
	mv	a0, s0
	call	strncpy
	sb	zero, 1024(s0)
	j	.LBB8_9
.LBB8_5:
	mv	a0, s2
	call	strlen
	addi	a1, zero, 1025
	bgeu	a0, a1, .LBB8_71
	lui	a0, %hi(inName)
	addi	s1, a0, %lo(inName)
	addi	a2, zero, 1024
	mv	a0, s1
	mv	a1, s2
	call	strncpy
	sb	zero, 1024(s1)
.LBB8_7:
	lui	a0, %hi(inName)
	addi	s0, a0, %lo(inName)
	lui	a0, %hi(.L.str.68)
	addi	a1, a0, %lo(.L.str.68)
	mv	a0, s0
	call	fopen
	beqz	a0, .LBB8_11
	call	fclose
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	addi	a1, zero, 1
	bne	a0, a1, .LBB8_13
.LBB8_9:
	lui	s0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(s0)
	lw	a0, 4(a0)
	call	fileno
	call	isatty
	lw	a1, %lo(_impure_ptr)(s0)
	beqz	a0, .LBB8_18
	lw	a0, 12(a1)
	lui	s1, %hi(progName)
	lw	a2, %lo(progName)(s1)
	lui	a1, %hi(.L.str.83)
	addi	a1, a1, %lo(.L.str.83)
	call	fprintf
	lw	a0, %lo(_impure_ptr)(s0)
	lw	a0, 12(a0)
	lw	a2, %lo(progName)(s1)
	lui	a1, %hi(.L.str.67)
	addi	a1, a1, %lo(.L.str.67)
	mv	a3, a2
	j	.LBB8_15
.LBB8_11:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	s1, 12(a0)
	lui	a0, %hi(progName)
	lw	s2, %lo(progName)(a0)
	call	__errno
	lw	a0, 0(a0)
	call	strerror
	mv	a4, a0
	lui	a0, %hi(.L.str.97)
	addi	a1, a0, %lo(.L.str.97)
.LBB8_12:
	mv	a0, s1
	mv	a2, s2
	mv	a3, s0
	call	fprintf
	j	.LBB8_16
.LBB8_13:
	lui	a0, %hi(inName)
	addi	s0, a0, %lo(inName)
	addi	a1, sp, 8
	mv	a0, s0
	call	stat
	lw	a0, 12(sp)
	lui	a1, 15
	and	a0, a0, a1
	lui	a1, 4
	bne	a0, a1, .LBB8_45
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	lw	a2, %lo(progName)(a1)
	lui	a1, %hi(.L.str.61)
	addi	a1, a1, %lo(.L.str.61)
	mv	a3, s0
.LBB8_15:
	call	fprintf
.LBB8_16:
	lui	a0, %hi(exitValue)
	lw	a1, %lo(exitValue)(a0)
	bgtz	a1, .LBB8_58
	addi	a1, zero, 1
	sw	a1, %lo(exitValue)(a0)
	j	.LBB8_58
.LBB8_18:
	lw	s2, 4(a1)
.LBB8_19:
	lui	a0, %hi(verbosity)
	lw	a0, %lo(verbosity)(a0)
	addi	a1, zero, 1
	blt	a0, a1, .LBB8_24
	lui	s3, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(s3)
	lw	a0, 12(a0)
	lui	a1, %hi(.L.str.72)
	addi	a1, a1, %lo(.L.str.72)
	lui	a2, %hi(inName)
	addi	s5, a2, %lo(inName)
	mv	a2, s5
	call	fprintf
	mv	a0, s5
	call	strlen
	lui	s4, %hi(longestFileName)
	lw	a1, %lo(longestFileName)(s4)
	bge	a0, a1, .LBB8_23
	mv	s1, zero
.LBB8_22:
	lw	a0, %lo(_impure_ptr)(s3)
	lw	a1, 12(a0)
	addi	a0, zero, 32
	call	fputc@plt
	lw	s0, %lo(longestFileName)(s4)
	mv	a0, s5
	call	strlen
	sub	a0, s0, a0
	addi	s1, s1, 1
	blt	s1, a0, .LBB8_22
.LBB8_23:
	lw	a0, %lo(_impure_ptr)(s3)
	lw	a0, 12(a0)
	call	fflush
.LBB8_24:
	lui	a0, %hi(outputHandleJustInCase)
	sw	zero, %lo(outputHandleJustInCase)(a0)
	sw	zero, 104(sp)
	lbu	a0, 12(s2)
	andi	a0, a0, 64
	bnez	a0, .LBB8_74
	lui	s4, %hi(verbosity)
	lw	a2, %lo(verbosity)(s4)
	lui	s5, %hi(smallMode)
	lbu	a3, %lo(smallMode)(s5)
	lui	a0, 2
	addi	a0, a0, 1920
	add	a0, a0, sp
	mv	a0, a0
	addi	a4, sp, 108
	mv	a1, s2
	mv	a5, zero
	call	BZ2_bzReadOpen
	lui	a1, 2
	addi	a1, a1, 1920
	add	a1, a1, sp
	lw	a1, 0(a1)
	mv	s0, a0
	seqz	a0, a0
	snez	a1, a1
	mv	s3, zero
	or	a0, a0, a1
	beqz	a0, .LBB8_31
.LBB8_26:
	lui	a0, 2
	addi	a0, a0, 1916
	add	a0, a0, sp
	mv	a0, a0
	mv	a1, s0
	call	BZ2_bzReadClose
	lw	a0, %lo(verbosity)(s4)
	bnez	a0, .LBB8_28
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
.LBB8_28:
	lui	a0, 2
	addi	a0, a0, 1920
	add	a0, a0, sp
	lw	a0, 0(a0)
	addi	a0, a0, 9
	addi	a1, zero, 6
	bltu	a1, a0, .LBB8_77
	slli	a0, a0, 2
	lui	a1, %hi(.LJTI8_0)
	addi	a1, a1, %lo(.LJTI8_0)
	add	a0, a0, a1
	lw	a0, 0(a0)
	jr	a0
.LBB8_30:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a3, 12(a0)
	lui	a0, %hi(.L.str.103)
	addi	a0, a0, %lo(.L.str.103)
	addi	a1, zero, 23
	j	.LBB8_53
.LBB8_31:
	lui	a0, 1
	addi	s1, a0, 904
	addi	s6, zero, -5
	addi	s7, zero, 4
	addi	s8, zero, 1
	addi	s9, zero, -1
.LBB8_32:
	mv	a0, zero
	addi	s3, s3, 1
.LBB8_33:
	bnez	a0, .LBB8_35
	lui	a0, 2
	addi	a0, a0, 1920
	add	a0, a0, sp
	mv	a0, a0
	lui	a1, 1
	addi	a1, a1, 1012
	add	a1, a1, sp
	mv	a2, a1
	mv	a1, s0
	mv	a3, s1
	call	BZ2_bzRead
	lui	a0, 2
	addi	a0, a0, 1920
	add	a0, a0, sp
	lw	a0, 0(a0)
	bne	a0, s6, .LBB8_33
	j	.LBB8_26
.LBB8_35:
	bne	a0, s7, .LBB8_26
	lui	a0, 2
	addi	a0, a0, 1920
	add	a0, a0, sp
	mv	a0, a0
	addi	a2, sp, 100
	addi	a3, sp, 104
	mv	a1, s0
	call	BZ2_bzReadGetUnused
	lui	a0, 2
	addi	a0, a0, 1920
	add	a0, a0, sp
	lw	a0, 0(a0)
	bnez	a0, .LBB8_75
	lw	a0, 104(sp)
	blt	a0, s8, .LBB8_40
	lw	a1, 100(sp)
	addi	a2, sp, 108
.LBB8_39:
	lb	a3, 0(a1)
	sb	a3, 0(a2)
	addi	a0, a0, -1
	addi	a2, a2, 1
	addi	a1, a1, 1
	bnez	a0, .LBB8_39
.LBB8_40:
	lui	a0, 2
	addi	a0, a0, 1920
	add	a0, a0, sp
	mv	a0, a0
	mv	a1, s0
	call	BZ2_bzReadClose
	lui	a0, 2
	addi	a0, a0, 1920
	add	a0, a0, sp
	lw	a0, 0(a0)
	bnez	a0, .LBB8_75
	lw	a5, 104(sp)
	bnez	a5, .LBB8_44
	mv	a0, s2
	call	fgetc
	beq	a0, s9, .LBB8_65
	mv	a1, s2
	call	ungetc
	lw	a5, 104(sp)
.LBB8_44:
	lw	a2, %lo(verbosity)(s4)
	lbu	a3, %lo(smallMode)(s5)
	lui	a0, 2
	addi	a0, a0, 1920
	add	a0, a0, sp
	mv	a0, a0
	addi	a4, sp, 108
	mv	a1, s2
	call	BZ2_bzReadOpen
	lui	a1, 2
	addi	a1, a1, 1920
	add	a1, a1, sp
	lw	a1, 0(a1)
	mv	s0, a0
	seqz	a0, a0
	snez	a1, a1
	or	a0, a0, a1
	beqz	a0, .LBB8_32
	j	.LBB8_26
.LBB8_45:
	lui	a0, %hi(srcMode)
	lw	a0, %lo(srcMode)(a0)
	addi	a1, a0, -2
	addi	a2, zero, 2
	bgeu	a1, a2, .LBB8_62
	lui	a0, %hi(inName)
	addi	s0, a0, %lo(inName)
	lui	a0, %hi(.L.str.68)
	addi	a1, a0, %lo(.L.str.68)
	mv	a0, s0
	call	fopen
	mv	s2, a0
	bnez	a0, .LBB8_19
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	s1, 12(a0)
	lui	a0, %hi(progName)
	lw	s2, %lo(progName)(a0)
	call	__errno
	lw	a0, 0(a0)
	call	strerror
	mv	a4, a0
	lui	a0, %hi(.L.str.84)
	addi	a1, a0, %lo(.L.str.84)
	j	.LBB8_12
.LBB8_48:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 4(a0)
	beq	a0, s2, .LBB8_50
	mv	a0, s2
	call	fclose
.LBB8_50:
	addi	s0, zero, 1
	bne	s3, s0, .LBB8_59
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a3, 12(a0)
	lui	a0, %hi(.L.str.104)
	addi	a0, a0, %lo(.L.str.104)
	addi	a1, zero, 45
	j	.LBB8_53
.LBB8_52:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a3, 12(a0)
	lui	a0, %hi(.L.str.102)
	addi	a0, a0, %lo(.L.str.102)
	addi	a1, zero, 35
.LBB8_53:
	addi	a2, zero, 1
	addi	s1, zero, 1
	call	fwrite
	mv	s0, zero
.LBB8_54:
	lui	a0, %hi(verbosity)
	lw	a0, %lo(verbosity)(a0)
	slti	a0, a0, 1
	xori	a1, s0, 1
	or	a0, a0, a1
	bnez	a0, .LBB8_56
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a3, 12(a0)
	lui	a0, %hi(.L.str.99)
	addi	a0, a0, %lo(.L.str.99)
	addi	a1, zero, 3
	addi	a2, zero, 1
	call	fwrite
	j	.LBB8_58
.LBB8_56:
	beqz	s1, .LBB8_58
	lui	a0, %hi(testFailsExist)
	addi	a1, zero, 1
	sb	a1, %lo(testFailsExist)(a0)
.LBB8_58:
	lui	a0, 2
	addi	a0, a0, -64
	add	sp, sp, a0
	lw	s9, 1988(sp)
	lw	s8, 1992(sp)
	lw	s7, 1996(sp)
	lw	s6, 2000(sp)
	lw	s5, 2004(sp)
	lw	s4, 2008(sp)
	lw	s3, 2012(sp)
	lw	s2, 2016(sp)
	lw	s1, 2020(sp)
	lw	s0, 2024(sp)
	lw	ra, 2028(sp)
	addi	sp, sp, 2032
	ret
.LBB8_59:
	lui	a0, %hi(noisy)
	lbu	a0, %lo(noisy)(a0)
	beqz	a0, .LBB8_64
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a3, 12(a0)
	lui	a0, %hi(.L.str.105)
	addi	a0, a0, %lo(.L.str.105)
	addi	a1, zero, 35
.LBB8_61:
	addi	a2, zero, 1
	addi	s0, zero, 1
	call	fwrite
	mv	s1, zero
	j	.LBB8_54
.LBB8_62:
	addi	a1, zero, 1
	beq	a0, a1, .LBB8_9
	lui	a0, %hi(.L.str.98)
	addi	a0, a0, %lo(.L.str.98)
	call	panic
.LBB8_64:
	mv	s1, zero
	j	.LBB8_54
.LBB8_65:
	lbu	a0, 12(s2)
	andi	a0, a0, 64
	bnez	a0, .LBB8_74
	mv	a0, s2
	call	fclose
	addi	a1, zero, -1
	beq	a0, a1, .LBB8_74
	lui	a0, %hi(verbosity)
	lw	a0, %lo(verbosity)(a0)
	addi	a1, zero, 2
	blt	a0, a1, .LBB8_69
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a3, 12(a0)
	lui	a0, %hi(.L.str.90)
	addi	a0, a0, %lo(.L.str.90)
	addi	a1, zero, 5
	j	.LBB8_61
.LBB8_69:
	mv	s1, zero
	addi	s0, zero, 1
	j	.LBB8_54
.LBB8_70:
	lui	a0, %hi(.L.str.96)
	addi	a0, a0, %lo(.L.str.96)
	call	panic
.LBB8_71:
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(.L.str.41)
	addi	a1, a1, %lo(.L.str.41)
	addi	a3, zero, 1024
	mv	a2, s2
	call	fprintf
	lui	a1, %hi(exitValue)
	lw	a0, %lo(exitValue)(a1)
	bgtz	a0, .LBB8_73
	addi	a0, zero, 1
	sw	a0, %lo(exitValue)(a1)
.LBB8_73:
	call	exit
.LBB8_74:
	call	ioError
.LBB8_75:
	lui	a0, %hi(.L.str.100)
	addi	a0, a0, %lo(.L.str.100)
	call	panic
.LBB8_76:
	call	configError
.LBB8_77:
	lui	a0, %hi(.L.str.106)
	addi	a0, a0, %lo(.L.str.106)
	call	panic
.LBB8_78:
	call	outOfMemory
.Lfunc_end8:
	.size	testf, .Lfunc_end8-testf
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI8_0:
	.word	.LBB8_76
	.word	.LBB8_77
	.word	.LBB8_30
	.word	.LBB8_74
	.word	.LBB8_48
	.word	.LBB8_52
	.word	.LBB8_78

	.text
	.p2align	1
	.type	outOfMemory,@function
outOfMemory:
	addi	sp, sp, -16
	sw	ra, 12(sp)
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
.Lfunc_end9:
	.size	outOfMemory, .Lfunc_end9-outOfMemory

	.p2align	1
	.type	showFileNames,@function
showFileNames:
	lui	a0, %hi(noisy)
	lbu	a0, %lo(noisy)(a0)
	beqz	a0, .LBB10_2
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(.L.str.43)
	addi	a1, a1, %lo(.L.str.43)
	lui	a2, %hi(inName)
	addi	a2, a2, %lo(inName)
	lui	a3, %hi(outName)
	addi	a3, a3, %lo(outName)
	tail	fprintf
.LBB10_2:
	ret
.Lfunc_end10:
	.size	showFileNames, .Lfunc_end10-showFileNames

	.p2align	1
	.type	cleanUpAndFail,@function
cleanUpAndFail:
	addi	sp, sp, -112
	sw	ra, 108(sp)
	sw	s0, 104(sp)
	sw	s1, 100(sp)
	sw	s2, 96(sp)
	lui	a1, %hi(srcMode)
	lw	a1, %lo(srcMode)(a1)
	addi	a1, a1, -3
	lui	a2, %hi(opMode)
	lw	a2, %lo(opMode)(a2)
	snez	a1, a1
	lui	a3, %hi(deleteOutputOnInterrupt)
	lbu	a3, %lo(deleteOutputOnInterrupt)(a3)
	addi	a2, a2, -3
	seqz	a2, a2
	or	a1, a1, a2
	seqz	a2, a3
	or	a1, a1, a2
	mv	s0, a0
	bnez	a1, .LBB11_10
	lui	a0, %hi(inName)
	addi	a0, a0, %lo(inName)
	addi	a1, sp, 8
	call	stat
	bnez	a0, .LBB11_8
	lui	a0, %hi(noisy)
	lbu	a0, %lo(noisy)(a0)
	beqz	a0, .LBB11_4
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
.LBB11_4:
	lui	a0, %hi(outputHandleJustInCase)
	lw	a0, %lo(outputHandleJustInCase)(a0)
	beqz	a0, .LBB11_6
	call	fclose
.LBB11_6:
	lui	a0, %hi(outName)
	addi	a0, a0, %lo(outName)
	call	remove
	beqz	a0, .LBB11_10
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a1, %hi(progName)
	lw	a2, %lo(progName)(a1)
	lui	a1, %hi(.L.str.45)
	addi	a1, a1, %lo(.L.str.45)
	j	.LBB11_9
.LBB11_8:
	lui	s2, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(s2)
	lw	a0, 12(a0)
	lui	s1, %hi(progName)
	lw	a2, %lo(progName)(s1)
	lui	a1, %hi(.L.str.46)
	addi	a1, a1, %lo(.L.str.46)
	call	fprintf
	lw	a0, %lo(_impure_ptr)(s2)
	lw	a0, 12(a0)
	lw	a2, %lo(progName)(s1)
	lui	a1, %hi(.L.str.47)
	addi	a1, a1, %lo(.L.str.47)
	call	fprintf
	lw	a0, %lo(_impure_ptr)(s2)
	lw	a0, 12(a0)
	lw	a2, %lo(progName)(s1)
	lui	a1, %hi(.L.str.48)
	addi	a1, a1, %lo(.L.str.48)
	lui	a3, %hi(outName)
	addi	a3, a3, %lo(outName)
	call	fprintf
	lw	a0, %lo(_impure_ptr)(s2)
	lw	a0, 12(a0)
	lw	a2, %lo(progName)(s1)
	lui	a1, %hi(.L.str.49)
	addi	a1, a1, %lo(.L.str.49)
.LBB11_9:
	call	fprintf
.LBB11_10:
	lui	a0, %hi(noisy)
	lbu	a0, %lo(noisy)(a0)
	lui	a1, %hi(numFileNames)
	lw	a4, %lo(numFileNames)(a1)
	lui	a1, %hi(numFilesProcessed)
	lw	a1, %lo(numFilesProcessed)(a1)
	seqz	a0, a0
	slti	a2, a4, 1
	or	a0, a0, a2
	slt	a2, a1, a4
	xori	a2, a2, 1
	or	a0, a0, a2
	bnez	a0, .LBB11_12
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	a2, %hi(progName)
	lw	a2, %lo(progName)(a2)
	sub	a5, a4, a1
	lui	a1, %hi(.L.str.50)
	addi	a1, a1, %lo(.L.str.50)
	mv	a3, a2
	call	fprintf
.LBB11_12:
	lui	a1, %hi(exitValue)
	lw	a0, %lo(exitValue)(a1)
	bge	a0, s0, .LBB11_14
	addi	a0, a1, %lo(exitValue)
	sw	s0, 0(a0)
	mv	a0, s0
.LBB11_14:
	call	exit
.Lfunc_end11:
	.size	cleanUpAndFail, .Lfunc_end11-cleanUpAndFail

	.p2align	1
	.type	panic,@function
panic:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	lui	a1, %hi(_impure_ptr)
	lw	a1, %lo(_impure_ptr)(a1)
	lw	a4, 12(a1)
	lui	a1, %hi(progName)
	lw	a2, %lo(progName)(a1)
	mv	a3, a0
	lui	a0, %hi(.L.str.73)
	addi	a1, a0, %lo(.L.str.73)
	mv	a0, a4
	call	fprintf
	call	showFileNames
	addi	a0, zero, 3
	call	cleanUpAndFail
.Lfunc_end12:
	.size	panic, .Lfunc_end12-panic

	.p2align	1
	.type	ioError,@function
ioError:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a0, 12(a0)
	lui	s0, %hi(progName)
	lw	a2, %lo(progName)(s0)
	lui	a1, %hi(.L.str.79)
	addi	a1, a1, %lo(.L.str.79)
	call	fprintf
	lw	a0, %lo(progName)(s0)
	call	perror
	call	showFileNames
	addi	a0, zero, 1
	call	cleanUpAndFail
.Lfunc_end13:
	.size	ioError, .Lfunc_end13-ioError

	.p2align	1
	.type	uInt64_to_double,@function
uInt64_to_double:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	sw	s1, 4(sp)
	sw	s2, 0(sp)
	mv	s0, a0
	lbu	a0, 0(a0)
	call	__floatunsidf@plt
	lbu	a2, 1(s0)
	mv	s1, a0
	mv	s2, a1
	mv	a0, a2
	call	__floatunsidf@plt
	lui	a3, 263936
	mv	a2, zero
	call	__muldf3@plt
	mv	a2, s1
	mv	a3, s2
	call	__adddf3@plt
	lbu	a2, 2(s0)
	mv	s1, a0
	mv	s2, a1
	mv	a0, a2
	call	__floatunsidf@plt
	lui	a3, 265984
	mv	a2, zero
	call	__muldf3@plt
	mv	a2, a0
	mv	a3, a1
	mv	a0, s1
	mv	a1, s2
	call	__adddf3@plt
	lbu	a2, 3(s0)
	mv	s1, a0
	mv	s2, a1
	mv	a0, a2
	call	__floatunsidf@plt
	lui	a3, 268032
	mv	a2, zero
	call	__muldf3@plt
	mv	a2, a0
	mv	a3, a1
	mv	a0, s1
	mv	a1, s2
	call	__adddf3@plt
	lbu	a2, 4(s0)
	mv	s1, a0
	mv	s2, a1
	mv	a0, a2
	call	__floatunsidf@plt
	lui	a3, 270080
	mv	a2, zero
	call	__muldf3@plt
	mv	a2, a0
	mv	a3, a1
	mv	a0, s1
	mv	a1, s2
	call	__adddf3@plt
	lbu	a2, 5(s0)
	mv	s1, a0
	mv	s2, a1
	mv	a0, a2
	call	__floatunsidf@plt
	lui	a3, 272128
	mv	a2, zero
	call	__muldf3@plt
	mv	a2, a0
	mv	a3, a1
	mv	a0, s1
	mv	a1, s2
	call	__adddf3@plt
	lbu	a2, 6(s0)
	mv	s1, a0
	mv	s2, a1
	mv	a0, a2
	call	__floatunsidf@plt
	lui	a3, 274176
	mv	a2, zero
	call	__muldf3@plt
	mv	a2, a0
	mv	a3, a1
	mv	a0, s1
	mv	a1, s2
	call	__adddf3@plt
	lbu	a2, 7(s0)
	mv	s0, a0
	mv	s1, a1
	mv	a0, a2
	call	__floatunsidf@plt
	lui	a3, 276224
	mv	a2, zero
	call	__muldf3@plt
	mv	a2, a0
	mv	a3, a1
	mv	a0, s0
	mv	a1, s1
	call	__adddf3@plt
	lw	s2, 0(sp)
	lw	s1, 4(sp)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end14:
	.size	uInt64_to_double, .Lfunc_end14-uInt64_to_double

	.p2align	1
	.type	uInt64_toAscii,@function
uInt64_toAscii:
	addi	sp, sp, -48
	sw	s0, 44(sp)
	sw	s1, 40(sp)
	mv	a2, zero
	lbu	a3, 1(a1)
	lbu	a4, 0(a1)
	lbu	a5, 3(a1)
	lbu	a6, 2(a1)
	slli	a3, a3, 8
	or	a3, a3, a4
	slli	a4, a5, 8
	or	a4, a4, a6
	slli	a4, a4, 16
	or	a6, a4, a3
	lbu	a3, 5(a1)
	lbu	a4, 4(a1)
	lbu	a5, 7(a1)
	lbu	a1, 6(a1)
	slli	a3, a3, 8
	or	a3, a3, a4
	slli	a4, a5, 8
	or	a1, a1, a4
	slli	a1, a1, 16
	or	t4, a1, a3
	slli	a1, t4, 24
	srli	a3, a6, 8
	or	t0, a3, a1
	srli	a7, t4, 8
	slli	a1, t4, 16
	srli	a3, a6, 16
	or	a4, a3, a1
	srli	t5, t4, 16
	slli	a1, t4, 8
	srli	a3, a6, 24
	or	a1, a1, a3
	srli	a3, t4, 24
	lui	a5, 838861
	addi	a5, a5, -819
	addi	t1, zero, 10
	addi	t2, sp, 8
	addi	t3, zero, 9
.LBB15_1:
	andi	t6, a3, 255
	mulhu	s0, t6, a5
	srli	s0, s0, 3
	mul	s1, s0, t1
	sub	a3, a3, s1
	andi	a3, a3, 255
	slli	a3, a3, 8
	andi	s1, t5, 255
	or	a3, a3, s1
	mulhu	s1, a3, a5
	srli	t5, s1, 3
	mul	s1, t5, t1
	sub	a3, a3, s1
	slli	a3, a3, 8
	andi	s1, a7, 255
	or	a3, a3, s1
	mulhu	s1, a3, a5
	srli	a7, s1, 3
	mul	s1, a7, t1
	sub	a3, a3, s1
	slli	a3, a3, 8
	andi	s1, t4, 255
	or	a3, a3, s1
	mulhu	s1, a3, a5
	srli	t4, s1, 3
	mul	s1, t4, t1
	sub	a3, a3, s1
	slli	a3, a3, 8
	andi	a1, a1, 255
	or	a3, a3, a1
	mulhu	a1, a3, a5
	srli	a1, a1, 3
	mul	s1, a1, t1
	sub	a3, a3, s1
	slli	a3, a3, 8
	andi	a4, a4, 255
	or	a3, a3, a4
	mulhu	a4, a3, a5
	srli	a4, a4, 3
	mul	s1, a4, t1
	sub	a3, a3, s1
	slli	a3, a3, 8
	andi	s1, t0, 255
	or	a3, a3, s1
	mulhu	s1, a3, a5
	srli	t0, s1, 3
	mul	s1, t0, t1
	sub	a3, a3, s1
	slli	a3, a3, 8
	andi	s1, a6, 255
	or	a3, a3, s1
	mulhu	s1, a3, a5
	srli	a6, s1, 3
	mul	s1, a6, t1
	sub	a3, a3, s1
	ori	a3, a3, 48
	add	s1, t2, a2
	sb	a3, 0(s1)
	or	a3, a7, t5
	or	a3, a3, t4
	or	a3, a3, a1
	or	a3, a3, a4
	or	a3, a3, t0
	or	a3, a3, a6
	andi	a3, a3, 255
	snez	a3, a3
	sltu	s1, t3, t6
	or	s1, s1, a3
	addi	a2, a2, 1
	mv	a3, s0
	bnez	s1, .LBB15_1
	add	a1, a0, a2
	sb	zero, 0(a1)
	addi	a1, sp, 7
	addi	a3, a2, -1
	addi	a4, zero, -1
.LBB15_3:
	add	a5, a1, a2
	lb	a5, 0(a5)
	sb	a5, 0(a0)
	addi	a3, a3, -1
	addi	a0, a0, 1
	addi	a2, a2, -1
	bne	a3, a4, .LBB15_3
	lw	s1, 40(sp)
	lw	s0, 44(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end15:
	.size	uInt64_toAscii, .Lfunc_end15-uInt64_toAscii

	.p2align	1
	.type	configError,@function
configError:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a3, 12(a0)
	lui	a0, %hi(.L.str.78)
	addi	a0, a0, %lo(.L.str.78)
	addi	a1, zero, 235
	addi	a2, zero, 1
	call	fwrite
	lui	a1, %hi(exitValue)
	lw	a0, %lo(exitValue)(a1)
	addi	a2, zero, 2
	blt	a2, a0, .LBB16_2
	addi	a0, zero, 3
	sw	a0, %lo(exitValue)(a1)
.LBB16_2:
	call	exit
.Lfunc_end16:
	.size	configError, .Lfunc_end16-configError

	.p2align	1
	.type	crcError,@function
crcError:
	addi	sp, sp, -16
	sw	ra, 12(sp)
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
.Lfunc_end17:
	.size	crcError, .Lfunc_end17-crcError

	.p2align	1
	.type	compressedStreamEOF,@function
compressedStreamEOF:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	sw	s1, 4(sp)
	sw	s2, 0(sp)
	lui	s0, %hi(noisy)
	lbu	a0, %lo(noisy)(s0)
	beqz	a0, .LBB18_4
	lui	s2, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(s2)
	lw	a0, 12(a0)
	lui	s1, %hi(progName)
	lw	a2, %lo(progName)(s1)
	lui	a1, %hi(.L.str.95)
	addi	a1, a1, %lo(.L.str.95)
	call	fprintf
	lw	a0, %lo(progName)(s1)
	call	perror
	lbu	a0, %lo(noisy)(s0)
	beqz	a0, .LBB18_4
	lw	a0, %lo(_impure_ptr)(s2)
	lw	a0, 12(a0)
	lui	a1, %hi(.L.str.43)
	addi	a1, a1, %lo(.L.str.43)
	lui	a2, %hi(inName)
	addi	a2, a2, %lo(inName)
	lui	a3, %hi(outName)
	addi	a3, a3, %lo(outName)
	call	fprintf
	lui	a0, %hi(noisy)
	lbu	a0, %lo(noisy)(a0)
	beqz	a0, .LBB18_4
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a3, 12(a0)
	lui	a0, %hi(.L.str.94)
	addi	a0, a0, %lo(.L.str.94)
	addi	a1, zero, 240
	addi	a2, zero, 1
	call	fwrite
.LBB18_4:
	addi	a0, zero, 2
	call	cleanUpAndFail
.Lfunc_end18:
	.size	compressedStreamEOF, .Lfunc_end18-compressedStreamEOF

	.p2align	1
	.type	cadvise,@function
cadvise:
	lui	a0, %hi(noisy)
	lbu	a0, %lo(noisy)(a0)
	beqz	a0, .LBB19_2
	lui	a0, %hi(_impure_ptr)
	lw	a0, %lo(_impure_ptr)(a0)
	lw	a3, 12(a0)
	lui	a0, %hi(.L.str.94)
	addi	a0, a0, %lo(.L.str.94)
	addi	a1, zero, 240
	addi	a2, zero, 1
	tail	fwrite
.LBB19_2:
	ret
.Lfunc_end19:
	.size	cadvise, .Lfunc_end19-cadvise

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
	.addrsig_sym mySIGSEGVorSIGBUScatcher
	.addrsig_sym mySignalCatcher
	.addrsig_sym inName
	.addrsig_sym outName
	.addrsig_sym progNameReally
	.addrsig_sym tmpName
	.addrsig_sym fileMetaInfo
