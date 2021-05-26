; ModuleID = 'bzip2.c'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (%struct._reent*, i8*, i8*, i32)*, i32 (%struct._reent*, i8*, i8*, i32)*, i32 (%struct._reent*, i8*, i32, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i32, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon, [32 x i8] }
%struct.anon = type { i32, i8*, [26 x i8], %struct.__tm, i32, i64, %struct._rand48, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t, [8 x i8], [24 x i8], i32, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t, i32 }
%struct.__tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._rand48 = type { [3 x i16], [3 x i16], i16 }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.stat = type { i16, i16, i32, i16, i16, i16, i16, i32, %struct.timespec, %struct.timespec, %struct.timespec, i32, i32, [2 x i32] }
%struct.timespec = type { i64, i32 }
%struct.zzzz = type { i8*, %struct.zzzz* }
%struct.utimbuf = type { i64, i64 }
%struct.UInt64 = type { [8 x i8] }

@.str = private unnamed_addr constant [5 x i8] c".bz2\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c".bz\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c".tbz2\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".tbz\00", align 1
@zSuffix = dso_local local_unnamed_addr global [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)], align 4, !dbg !0
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".tar\00", align 1
@unzSuffix = dso_local local_unnamed_addr global [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)], align 4, !dbg !30
@outputHandleJustInCase = dso_local local_unnamed_addr global %struct.__sFILE* null, align 4, !dbg !80
@smallMode = dso_local local_unnamed_addr global i8 0, align 1, !dbg !41
@keepInputFiles = dso_local local_unnamed_addr global i8 0, align 1, !dbg !39
@forceOverwrite = dso_local local_unnamed_addr global i8 0, align 1, !dbg !45
@noisy = dso_local local_unnamed_addr global i8 0, align 1, !dbg !51
@verbosity = dso_local local_unnamed_addr global i32 0, align 4, !dbg !37
@blockSize100k = dso_local local_unnamed_addr global i32 0, align 4, !dbg !57
@testFailsExist = dso_local local_unnamed_addr global i8 0, align 1, !dbg !47
@unzFailsExist = dso_local local_unnamed_addr global i8 0, align 1, !dbg !49
@numFileNames = dso_local local_unnamed_addr global i32 0, align 4, !dbg !53
@numFilesProcessed = dso_local local_unnamed_addr global i32 0, align 4, !dbg !55
@workFactor = dso_local local_unnamed_addr global i32 0, align 4, !dbg !298
@deleteOutputOnInterrupt = dso_local local_unnamed_addr global i8 0, align 1, !dbg !43
@exitValue = dso_local local_unnamed_addr global i32 0, align 4, !dbg !59
@inName = dso_local global [1034 x i8] zeroinitializer, align 1, !dbg !67
@.str.6 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@outName = dso_local global [1034 x i8] zeroinitializer, align 1, !dbg !72
@progNameReally = dso_local global [1034 x i8] zeroinitializer, align 1, !dbg !78
@progName = dso_local local_unnamed_addr global i8* null, align 4, !dbg !76
@.str.7 = private unnamed_addr constant [6 x i8] c"BZIP2\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"BZIP\00", align 1
@longestFileName = dso_local local_unnamed_addr global i32 0, align 4, !dbg !65
@.str.9 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@srcMode = dso_local local_unnamed_addr global i32 0, align 4, !dbg !63
@opMode = dso_local local_unnamed_addr global i32 0, align 4, !dbg !61
@.str.10 = private unnamed_addr constant [6 x i8] c"unzip\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"UNZIP\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"z2cat\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"Z2CAT\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"zcat\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"ZCAT\00", align 1
@_impure_ptr = external dso_local local_unnamed_addr global %struct._reent*, align 4
@.str.16 = private unnamed_addr constant [19 x i8] c"%s: Bad flag `%s'\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"--stdout\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"--decompress\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"--compress\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"--force\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"--test\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"--keep\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"--small\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"--quiet\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"--license\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"--exponential\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"--repetitive-best\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"--repetitive-fast\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"--fast\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"--best\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"--verbose\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.34 = private unnamed_addr constant [40 x i8] c"%s: -c and -t cannot be used together.\0A\00", align 1
@.str.35 = private unnamed_addr constant [113 x i8] c"\0AYou can use the `bzip2recover' program to attempt to recover\0Adata from undamaged sections of corrupted files.\0A\0A\00", align 1
@tmpName = dso_local global [1034 x i8] zeroinitializer, align 1, !dbg !74
@.str.36 = private unnamed_addr constant [870 x i8] c": Caught a SIGSEGV or SIGBUS whilst compressing.\0A\0A   Possible causes are (most likely first):\0A   (1) This computer has unreliable memory or cache hardware\0A       (a surprisingly common problem; try a different machine.)\0A   (2) A bug in the compiler used to create this executable\0A       (unlikely, if you didn't compile bzip2 yourself.)\0A   (3) A real bug in bzip2 -- I hope this should never be the case.\0A   The user's manual, Section 4.3, has more info on (1) and (2).\0A   \0A   If you suspect this is a bug in bzip2, or are unsure about (1)\0A   or (2), feel free to report it to: bzip2-devel@sourceware.org.\0A   Section 4.3 of the user's manual describes the info a useful\0A   bug report should have.  If the manual is available on your\0A   system, please try and read it before mailing me.  If you don't\0A   have the manual or can't be bothered to read it, mail me anyway.\0A\0A\00", align 1
@.str.37 = private unnamed_addr constant [997 x i8] c": Caught a SIGSEGV or SIGBUS whilst decompressing.\0A\0A   Possible causes are (most likely first):\0A   (1) The compressed data is corrupted, and bzip2's usual checks\0A       failed to detect this.  Try bzip2 -tvv my_file.bz2.\0A   (2) This computer has unreliable memory or cache hardware\0A       (a surprisingly common problem; try a different machine.)\0A   (3) A bug in the compiler used to create this executable\0A       (unlikely, if you didn't compile bzip2 yourself.)\0A   (4) A real bug in bzip2 -- I hope this should never be the case.\0A   The user's manual, Section 4.3, has more info on (2) and (3).\0A   \0A   If you suspect this is a bug in bzip2, or are unsure about (2)\0A   or (3), feel free to report it to: bzip2-devel@sourceware.org.\0A   Section 4.3 of the user's manual describes the info a useful\0A   bug report should have.  If the manual is available on your\0A   system, please try and read it before mailing me.  If you don't\0A   have the manual or can't be bothered to read it, mail me anyway.\0A\0A\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"\09Input file = \00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"\09Output file = \00", align 1
@.str.41 = private unnamed_addr constant [120 x i8] c"bzip2: file name\0A`%s'\0Ais suspiciously (more than %d chars) long.\0ATry using a reasonable file name instead.  Sorry! :-)\0A\00", align 1
@_ctype_ = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.42 = private unnamed_addr constant [38 x i8] c"\0A%s: couldn't allocate enough memory\0A\00", align 1
@.str.43 = private unnamed_addr constant [36 x i8] c"\09Input file = %s, output file = %s\0A\00", align 1
@.str.44 = private unnamed_addr constant [44 x i8] c"%s: Deleting output file %s, if it exists.\0A\00", align 1
@.str.45 = private unnamed_addr constant [59 x i8] c"%s: WARNING: deletion of output file (apparently) failed.\0A\00", align 1
@.str.46 = private unnamed_addr constant [49 x i8] c"%s: WARNING: deletion of output file suppressed\0A\00", align 1
@.str.47 = private unnamed_addr constant [56 x i8] c"%s:    since input file no longer exists.  Output file\0A\00", align 1
@.str.48 = private unnamed_addr constant [32 x i8] c"%s:    `%s' may be incomplete.\0A\00", align 1
@.str.49 = private unnamed_addr constant [61 x i8] c"%s:    I suggest doing an integrity test (bzip2 -tv) of it.\0A\00", align 1
@.str.50 = private unnamed_addr constant [110 x i8] c"%s: WARNING: some files have not been processed:\0A%s:    %d specified on command line, %d not processed yet.\0A\0A\00", align 1
@.str.51 = private unnamed_addr constant [525 x i8] c"bzip2, a block-sorting file compressor.  Version %s.\0A   \0A   Copyright (C) 1996-2019 by Julian Seward.\0A   \0A   This program is free software; you can redistribute it and/or modify\0A   it under the terms set out in the LICENSE file, which is included\0A   in the bzip2 source distribution.\0A   \0A   This program is distributed in the hope that it will be useful,\0A   but WITHOUT ANY WARRANTY; without even the implied warranty of\0A   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\0A   LICENSE file for more details.\0A   \0A\00", align 1
@.str.52 = private unnamed_addr constant [1230 x i8] c"bzip2, a block-sorting file compressor.  Version %s.\0A\0A   usage: %s [flags and input files in any order]\0A\0A   -h --help           print this message\0A   -d --decompress     force decompression\0A   -z --compress       force compression\0A   -k --keep           keep (don't delete) input files\0A   -f --force          overwrite existing output files\0A   -t --test           test compressed file integrity\0A   -c --stdout         output to standard out\0A   -q --quiet          suppress noncritical error messages\0A   -v --verbose        be verbose (a 2nd -v gives more)\0A   -L --license        display software version & license\0A   -V --version        display software version & license\0A   -s --small          use less memory (at most 2500k)\0A   -1 .. -9            set block size to 100k .. 900k\0A   --fast              alias for -1\0A   --best              alias for -9\0A\0A   If invoked as `bzip2', default action is to compress.\0A              as `bunzip2',  default action is to decompress.\0A              as `bzcat', default action is to decompress to stdout.\0A\0A   If no file names are given, bzip2 compresses or decompresses\0A   from standard input to standard output.  You can combine\0A   short flags, so `-v -4' means the same as -v4 or -4v, &c.\0A\0A\00", align 1
@.str.53 = private unnamed_addr constant [49 x i8] c"%s: %s is redundant in versions 0.9.5 and above\0A\00", align 1
@.str.54 = private unnamed_addr constant [45 x i8] c"\0A%s: Control-C or similar caught, quitting.\0A\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"compress: bad modes\0A\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"(stdin)\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"(stdout)\00", align 1
@.str.59 = private unnamed_addr constant [35 x i8] c"%s: Can't open input file %s: %s.\0A\00", align 1
@.str.60 = private unnamed_addr constant [42 x i8] c"%s: Input file %s already has %s suffix.\0A\00", align 1
@.str.61 = private unnamed_addr constant [35 x i8] c"%s: Input file %s is a directory.\0A\00", align 1
@.str.62 = private unnamed_addr constant [41 x i8] c"%s: Input file %s is not a normal file.\0A\00", align 1
@.str.63 = private unnamed_addr constant [36 x i8] c"%s: Output file %s already exists.\0A\00", align 1
@.str.64 = private unnamed_addr constant [40 x i8] c"%s: Input file %s has %d other link%s.\0A\00", align 1
@.str.65 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.66 = private unnamed_addr constant [50 x i8] c"%s: I won't write compressed data to a terminal.\0A\00", align 1
@.str.67 = private unnamed_addr constant [34 x i8] c"%s: For help, type: `%s --help'.\0A\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.70 = private unnamed_addr constant [38 x i8] c"%s: Can't create output file %s: %s.\0A\00", align 1
@.str.71 = private unnamed_addr constant [22 x i8] c"compress: bad srcMode\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"  %s: \00", align 1
@.str.73 = private unnamed_addr constant [113 x i8] c"\0A%s: PANIC -- internal consistency error:\0A\09%s\0A\09This is a BUG.  Please report it to:\0A\09bzip2-devel@sourceware.org\0A\00", align 1
@fileMetaInfo = internal global %struct.stat zeroinitializer, align 8, !dbg !300
@.str.75 = private unnamed_addr constant [22 x i8] c" no data compressed.\0A\00", align 1
@.str.76 = private unnamed_addr constant [57 x i8] c"%6.3f:1, %6.3f bits/byte, %5.2f%% saved, %s in, %s out.\0A\00", align 1
@.str.77 = private unnamed_addr constant [26 x i8] c"compress:unexpected error\00", align 1
@.str.78 = private unnamed_addr constant [236 x i8] c"bzip2: I'm not configured correctly for this platform!\0A\09I require Int32, Int16 and Char to have sizes\0A\09of 4, 2 and 1 bytes to run properly, and they don't.\0A\09Probably you can fix this by defining them correctly,\0A\09and recompiling.  Bye!\0A\00", align 1
@.str.79 = private unnamed_addr constant [65 x i8] c"\0A%s: I/O or other error, bailing out.  Possible reason follows.\0A\00", align 1
@.str.80 = private unnamed_addr constant [23 x i8] c"uncompress: bad modes\0A\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c".out\00", align 1
@.str.82 = private unnamed_addr constant [50 x i8] c"%s: Can't guess original name for %s -- using %s\0A\00", align 1
@.str.83 = private unnamed_addr constant [51 x i8] c"%s: I won't read compressed data from a terminal.\0A\00", align 1
@.str.84 = private unnamed_addr constant [34 x i8] c"%s: Can't open input file %s:%s.\0A\00", align 1
@.str.85 = private unnamed_addr constant [24 x i8] c"uncompress: bad srcMode\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@.str.87 = private unnamed_addr constant [19 x i8] c"not a bzip2 file.\0A\00", align 1
@.str.88 = private unnamed_addr constant [29 x i8] c"%s: %s is not a bzip2 file.\0A\00", align 1
@.str.89 = private unnamed_addr constant [27 x i8] c"decompress:bzReadGetUnused\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"\0A    \00", align 1
@.str.91 = private unnamed_addr constant [45 x i8] c"\0A%s: %s: trailing garbage after EOF ignored\0A\00", align 1
@.str.92 = private unnamed_addr constant [28 x i8] c"decompress:unexpected error\00", align 1
@.str.93 = private unnamed_addr constant [47 x i8] c"\0A%s: Data integrity error when decompressing.\0A\00", align 1
@.str.94 = private unnamed_addr constant [241 x i8] c"\0AIt is possible that the compressed file(s) have become corrupted.\0AYou can use the -tvv option to test integrity of such files.\0A\0AYou can use the `bzip2recover' program to attempt to recover\0Adata from undamaged sections of corrupted files.\0A\0A\00", align 1
@.str.95 = private unnamed_addr constant [95 x i8] c"\0A%s: Compressed file ends unexpectedly;\0A\09perhaps it is corrupted?  *Possible* reason follows.\0A\00", align 1
@.str.96 = private unnamed_addr constant [18 x i8] c"testf: bad modes\0A\00", align 1
@.str.97 = private unnamed_addr constant [30 x i8] c"%s: Can't open input %s: %s.\0A\00", align 1
@.str.98 = private unnamed_addr constant [19 x i8] c"testf: bad srcMode\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1
@.str.100 = private unnamed_addr constant [21 x i8] c"test:bzReadGetUnused\00", align 1
@.str.101 = private unnamed_addr constant [9 x i8] c"%s: %s: \00", align 1
@.str.102 = private unnamed_addr constant [36 x i8] c"data integrity (CRC) error in data\0A\00", align 1
@.str.103 = private unnamed_addr constant [24 x i8] c"file ends unexpectedly\0A\00", align 1
@.str.104 = private unnamed_addr constant [46 x i8] c"bad magic number (file not created by bzip2)\0A\00", align 1
@.str.105 = private unnamed_addr constant [36 x i8] c"trailing garbage after EOF ignored\0A\00", align 1
@.str.106 = private unnamed_addr constant [22 x i8] c"test:unexpected error\00", align 1

; Function Attrs: nounwind
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #0 !dbg !358 {
  %3 = alloca %struct.zzzz*, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !364, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata i8** %1, metadata !365, metadata !DIExpression()), !dbg !374
  %4 = bitcast %struct.zzzz** %3 to i8*, !dbg !375
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #16, !dbg !375
  store %struct.__sFILE* null, %struct.__sFILE** @outputHandleJustInCase, align 4, !dbg !376, !tbaa !377
  store i8 0, i8* @smallMode, align 1, !dbg !381, !tbaa !382
  store i8 0, i8* @keepInputFiles, align 1, !dbg !383, !tbaa !382
  store i8 0, i8* @forceOverwrite, align 1, !dbg !384, !tbaa !382
  store i8 1, i8* @noisy, align 1, !dbg !385, !tbaa !382
  store i32 0, i32* @verbosity, align 4, !dbg !386, !tbaa !387
  store i32 9, i32* @blockSize100k, align 4, !dbg !389, !tbaa !387
  store i8 0, i8* @testFailsExist, align 1, !dbg !390, !tbaa !382
  store i8 0, i8* @unzFailsExist, align 1, !dbg !391, !tbaa !382
  store i32 0, i32* @numFileNames, align 4, !dbg !392, !tbaa !387
  store i32 0, i32* @numFilesProcessed, align 4, !dbg !393, !tbaa !387
  store i32 30, i32* @workFactor, align 4, !dbg !394, !tbaa !387
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !dbg !395, !tbaa !382
  store i32 0, i32* @exitValue, align 4, !dbg !396, !tbaa !387
  call void @llvm.dbg.value(metadata i32 0, metadata !367, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata i32 0, metadata !366, metadata !DIExpression()), !dbg !374
  %5 = tail call void (i32)* @signal(i32 11, void (i32)* nonnull @mySIGSEGVorSIGBUScatcher) #16, !dbg !397
  %6 = tail call void (i32)* @signal(i32 10, void (i32)* nonnull @mySIGSEGVorSIGBUScatcher) #16, !dbg !398
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), metadata !399, metadata !DIExpression()) #16, !dbg !405
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), metadata !404, metadata !DIExpression()) #16, !dbg !405
  %7 = tail call i8* @strncpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 1024) #16, !dbg !407
  store i8 0, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 1024), align 1, !dbg !408, !tbaa !382
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), metadata !399, metadata !DIExpression()) #16, !dbg !409
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), metadata !404, metadata !DIExpression()) #16, !dbg !409
  %8 = tail call i8* @strncpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 1024) #16, !dbg !411
  store i8 0, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 1024), align 1, !dbg !412, !tbaa !382
  %9 = load i8*, i8** %1, align 4, !dbg !413, !tbaa !377
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @progNameReally, i32 0, i32 0), metadata !399, metadata !DIExpression()) #16, !dbg !414
  call void @llvm.dbg.value(metadata i8* %9, metadata !404, metadata !DIExpression()) #16, !dbg !414
  %10 = tail call i32 @strlen(i8* nonnull dereferenceable(1) %9) #16, !dbg !416
  %11 = icmp ugt i32 %10, 1024, !dbg !418
  br i1 %11, label %12, label %22, !dbg !419

12:                                               ; preds = %2
  %13 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !420, !tbaa !377
  %14 = getelementptr inbounds %struct._reent, %struct._reent* %13, i32 0, i32 3, !dbg !420
  %15 = load %struct.__sFILE*, %struct.__sFILE** %14, align 4, !dbg !420, !tbaa !422
  %16 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.41, i32 0, i32 0), i8* %9, i32 1024) #16, !dbg !428
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()) #16, !dbg !434
  %17 = load i32, i32* @exitValue, align 4, !dbg !436, !tbaa !387
  %18 = icmp slt i32 %17, 1, !dbg !438
  br i1 %18, label %19, label %20, !dbg !439

19:                                               ; preds = %12
  store i32 1, i32* @exitValue, align 4, !dbg !440, !tbaa !387
  br label %20, !dbg !441

20:                                               ; preds = %19, %12
  %21 = phi i32 [ %17, %12 ], [ 1, %19 ], !dbg !442
  tail call void @exit(i32 %21) #17, !dbg !443
  unreachable, !dbg !443

22:                                               ; preds = %2
  %23 = tail call i8* @strncpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([1034 x i8], [1034 x i8]* @progNameReally, i32 0, i32 0), i8* nonnull dereferenceable(1) %9, i32 1024) #16, !dbg !444
  store i8 0, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @progNameReally, i32 0, i32 1024), align 1, !dbg !445, !tbaa !382
  store i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @progNameReally, i32 0, i32 0), i8** @progName, align 4, !dbg !446, !tbaa !377
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @progNameReally, i32 0, i32 0), metadata !368, metadata !DIExpression()), !dbg !374
  br label %24, !dbg !447

24:                                               ; preds = %29, %22
  %25 = phi i8* [ getelementptr inbounds ([1034 x i8], [1034 x i8]* @progNameReally, i32 0, i32 0), %22 ], [ %30, %29 ], !dbg !449
  call void @llvm.dbg.value(metadata i8* %25, metadata !368, metadata !DIExpression()), !dbg !374
  %26 = load i8, i8* %25, align 1, !dbg !450, !tbaa !382
  switch i8 %26, label %29 [
    i8 0, label %31
    i8 47, label %27
  ], !dbg !452

27:                                               ; preds = %24
  %28 = getelementptr inbounds i8, i8* %25, i32 1, !dbg !453
  store i8* %28, i8** @progName, align 4, !dbg !455, !tbaa !377
  br label %29, !dbg !456

29:                                               ; preds = %24, %27
  %30 = getelementptr inbounds i8, i8* %25, i32 1, !dbg !457
  call void @llvm.dbg.value(metadata i8* %30, metadata !368, metadata !DIExpression()), !dbg !374
  br label %24, !dbg !458, !llvm.loop !459

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata %struct.zzzz* null, metadata !369, metadata !DIExpression()), !dbg !374
  store %struct.zzzz* null, %struct.zzzz** %3, align 4, !dbg !462, !tbaa !377
  call void @llvm.dbg.value(metadata %struct.zzzz** %3, metadata !369, metadata !DIExpression(DW_OP_deref)), !dbg !374
  call fastcc void @addFlagsFromEnvVar(%struct.zzzz** nonnull %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0)), !dbg !463
  call fastcc void @addFlagsFromEnvVar(%struct.zzzz** nonnull %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)), !dbg !464
  call void @llvm.dbg.value(metadata i32 1, metadata !366, metadata !DIExpression()), !dbg !374
  %32 = icmp sgt i32 %0, 1, !dbg !465
  %33 = load %struct.zzzz*, %struct.zzzz** %3, align 4, !tbaa !377
  br i1 %32, label %34, label %43, !dbg !468

34:                                               ; preds = %31, %34
  %35 = phi %struct.zzzz* [ %39, %34 ], [ %33, %31 ], !dbg !374
  %36 = phi i32 [ %40, %34 ], [ 1, %31 ]
  call void @llvm.dbg.value(metadata i32 %36, metadata !366, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata %struct.zzzz* %35, metadata !369, metadata !DIExpression()), !dbg !374
  %37 = getelementptr inbounds i8*, i8** %1, i32 %36, !dbg !469
  %38 = load i8*, i8** %37, align 4, !dbg !469, !tbaa !377
  %39 = tail call fastcc %struct.zzzz* @snocString(%struct.zzzz* %35, i8* %38), !dbg !469
  call void @llvm.dbg.value(metadata %struct.zzzz* %39, metadata !369, metadata !DIExpression()), !dbg !374
  %40 = add nuw nsw i32 %36, 1, !dbg !470
  call void @llvm.dbg.value(metadata i32 %40, metadata !366, metadata !DIExpression()), !dbg !374
  %41 = icmp eq i32 %40, %0, !dbg !465
  br i1 %41, label %42, label %34, !dbg !468, !llvm.loop !471

42:                                               ; preds = %34
  store %struct.zzzz* %39, %struct.zzzz** %3, align 4, !dbg !469, !tbaa !377
  br label %43, !dbg !468

43:                                               ; preds = %31, %42
  %44 = phi %struct.zzzz* [ %39, %42 ], [ %33, %31 ], !dbg !473
  store i32 7, i32* @longestFileName, align 4, !dbg !475, !tbaa !387
  store i32 0, i32* @numFileNames, align 4, !dbg !476, !tbaa !387
  call void @llvm.dbg.value(metadata i8 1, metadata !371, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata %struct.zzzz* undef, metadata !369, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata %struct.zzzz* undef, metadata !370, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata %struct.zzzz* %44, metadata !370, metadata !DIExpression()), !dbg !374
  %45 = icmp eq %struct.zzzz* %44, null, !dbg !477
  br i1 %45, label %72, label %46, !dbg !479

46:                                               ; preds = %43, %65
  %47 = phi i32 [ %66, %65 ], [ 7, %43 ]
  %48 = phi i32 [ %67, %65 ], [ 0, %43 ]
  %49 = phi %struct.zzzz* [ %70, %65 ], [ %44, %43 ]
  %50 = phi i8 [ %68, %65 ], [ 1, %43 ]
  call void @llvm.dbg.value(metadata i8 %50, metadata !371, metadata !DIExpression()), !dbg !374
  %51 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %49, i32 0, i32 0, !dbg !480
  %52 = load i8*, i8** %51, align 4, !dbg !480, !tbaa !483
  %53 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %52, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)), !dbg !480
  %54 = icmp eq i32 %53, 0, !dbg !480
  br i1 %54, label %65, label %55, !dbg !485

55:                                               ; preds = %46
  %56 = load i8, i8* %52, align 1, !dbg !486, !tbaa !382
  %57 = icmp ne i8 %56, 45, !dbg !488
  %58 = icmp eq i8 %50, 0
  %59 = or i1 %58, %57, !dbg !489
  br i1 %59, label %60, label %65, !dbg !489

60:                                               ; preds = %55
  %61 = add nsw i32 %48, 1, !dbg !490
  store i32 %61, i32* @numFileNames, align 4, !dbg !490, !tbaa !387
  %62 = tail call i32 @strlen(i8* nonnull dereferenceable(1) %52), !dbg !491
  %63 = icmp slt i32 %47, %62, !dbg !493
  br i1 %63, label %64, label %65, !dbg !494

64:                                               ; preds = %60
  store i32 %62, i32* @longestFileName, align 4, !dbg !495, !tbaa !387
  br label %65, !dbg !496

65:                                               ; preds = %55, %46, %60, %64
  %66 = phi i32 [ %62, %64 ], [ %47, %60 ], [ %47, %46 ], [ %47, %55 ]
  %67 = phi i32 [ %61, %64 ], [ %61, %60 ], [ %48, %46 ], [ %48, %55 ]
  %68 = phi i8 [ %50, %64 ], [ %50, %60 ], [ 0, %46 ], [ %50, %55 ], !dbg !374
  call void @llvm.dbg.value(metadata i8 %68, metadata !371, metadata !DIExpression()), !dbg !374
  %69 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %49, i32 0, i32 1, !dbg !497
  call void @llvm.dbg.value(metadata %struct.zzzz* undef, metadata !370, metadata !DIExpression()), !dbg !374
  %70 = load %struct.zzzz*, %struct.zzzz** %69, align 4, !dbg !473, !tbaa !377
  call void @llvm.dbg.value(metadata %struct.zzzz* %70, metadata !370, metadata !DIExpression()), !dbg !374
  %71 = icmp eq %struct.zzzz* %70, null, !dbg !477
  br i1 %71, label %72, label %46, !dbg !479, !llvm.loop !498

72:                                               ; preds = %65, %43
  %73 = phi i32 [ 0, %43 ], [ %67, %65 ], !dbg !500
  %74 = icmp eq i32 %73, 0, !dbg !502
  %75 = select i1 %74, i32 1, i32 3, !dbg !503
  store i32 %75, i32* @srcMode, align 4, !dbg !504, !tbaa !387
  store i32 1, i32* @opMode, align 4, !dbg !505, !tbaa !387
  %76 = load i8*, i8** @progName, align 4, !dbg !506, !tbaa !377
  %77 = tail call i8* @strstr(i8* nonnull dereferenceable(1) %76, i8* nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0)), !dbg !508
  %78 = icmp eq i8* %77, null, !dbg !509
  br i1 %78, label %79, label %82, !dbg !510

79:                                               ; preds = %72
  %80 = tail call i8* @strstr(i8* nonnull dereferenceable(1) %76, i8* nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0)), !dbg !511
  %81 = icmp eq i8* %80, null, !dbg !512
  br i1 %81, label %83, label %82, !dbg !513

82:                                               ; preds = %79, %72
  store i32 2, i32* @opMode, align 4, !dbg !514, !tbaa !387
  br label %83, !dbg !515

83:                                               ; preds = %82, %79
  %84 = tail call i8* @strstr(i8* nonnull dereferenceable(1) %76, i8* nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0)), !dbg !516
  %85 = icmp eq i8* %84, null, !dbg !518
  br i1 %85, label %86, label %95, !dbg !519

86:                                               ; preds = %83
  %87 = tail call i8* @strstr(i8* nonnull dereferenceable(1) %76, i8* nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0)), !dbg !520
  %88 = icmp eq i8* %87, null, !dbg !521
  br i1 %88, label %89, label %95, !dbg !522

89:                                               ; preds = %86
  %90 = tail call i8* @strstr(i8* nonnull dereferenceable(1) %76, i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0)), !dbg !523
  %91 = icmp eq i8* %90, null, !dbg !524
  br i1 %91, label %92, label %95, !dbg !525

92:                                               ; preds = %89
  %93 = tail call i8* @strstr(i8* nonnull dereferenceable(1) %76, i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0)), !dbg !526
  %94 = icmp eq i8* %93, null, !dbg !527
  br i1 %94, label %97, label %95, !dbg !528

95:                                               ; preds = %92, %89, %86, %83
  store i32 2, i32* @opMode, align 4, !dbg !529, !tbaa !387
  %96 = select i1 %74, i32 1, i32 2, !dbg !531
  store i32 %96, i32* @srcMode, align 4, !dbg !532, !tbaa !387
  br label %97, !dbg !533

97:                                               ; preds = %95, %92
  call void @llvm.dbg.value(metadata %struct.zzzz* undef, metadata !369, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata %struct.zzzz* %44, metadata !370, metadata !DIExpression()), !dbg !374
  br i1 %45, label %272, label %98, !dbg !534

98:                                               ; preds = %97, %156
  %99 = phi %struct.zzzz* [ %158, %156 ], [ %44, %97 ]
  %100 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %99, i32 0, i32 0, !dbg !536
  %101 = load i8*, i8** %100, align 4, !dbg !536, !tbaa !483
  %102 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %101, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)), !dbg !536
  %103 = icmp eq i32 %102, 0, !dbg !536
  br i1 %103, label %160, label %104, !dbg !540

104:                                              ; preds = %98
  %105 = load i8, i8* %101, align 1, !dbg !541, !tbaa !382
  %106 = icmp eq i8 %105, 45, !dbg !543
  br i1 %106, label %107, label %156, !dbg !544

107:                                              ; preds = %104
  %108 = getelementptr inbounds i8, i8* %101, i32 1, !dbg !545
  %109 = load i8, i8* %108, align 1, !dbg !545, !tbaa !382
  %110 = icmp eq i8 %109, 45, !dbg !546
  br i1 %110, label %156, label %111, !dbg !547

111:                                              ; preds = %107, %151
  %112 = phi i8 [ %155, %151 ], [ %109, %107 ], !dbg !548
  %113 = phi i8* [ %152, %151 ], [ %101, %107 ], !dbg !552
  %114 = phi i32 [ %153, %151 ], [ 1, %107 ], !dbg !553
  call void @llvm.dbg.value(metadata i32 %114, metadata !367, metadata !DIExpression()), !dbg !374
  switch i8 %112, label %144 [
    i8 0, label %156
    i8 99, label %115
    i8 100, label %116
    i8 122, label %117
    i8 102, label %118
    i8 116, label %119
    i8 107, label %120
    i8 115, label %121
    i8 113, label %122
    i8 49, label %123
    i8 50, label %124
    i8 51, label %125
    i8 52, label %126
    i8 53, label %127
    i8 54, label %128
    i8 55, label %129
    i8 56, label %130
    i8 57, label %131
    i8 86, label %132
    i8 76, label %132
    i8 118, label %139
    i8 104, label %142
  ], !dbg !554

115:                                              ; preds = %111
  store i32 2, i32* @srcMode, align 4, !dbg !555, !tbaa !387
  br label %151, !dbg !558

116:                                              ; preds = %111
  store i32 2, i32* @opMode, align 4, !dbg !559, !tbaa !387
  br label %151, !dbg !560

117:                                              ; preds = %111
  store i32 1, i32* @opMode, align 4, !dbg !561, !tbaa !387
  br label %151, !dbg !562

118:                                              ; preds = %111
  store i8 1, i8* @forceOverwrite, align 1, !dbg !563, !tbaa !382
  br label %151, !dbg !564

119:                                              ; preds = %111
  store i32 3, i32* @opMode, align 4, !dbg !565, !tbaa !387
  br label %151, !dbg !566

120:                                              ; preds = %111
  store i8 1, i8* @keepInputFiles, align 1, !dbg !567, !tbaa !382
  br label %151, !dbg !568

121:                                              ; preds = %111
  store i8 1, i8* @smallMode, align 1, !dbg !569, !tbaa !382
  br label %151, !dbg !570

122:                                              ; preds = %111
  store i8 0, i8* @noisy, align 1, !dbg !571, !tbaa !382
  br label %151, !dbg !572

123:                                              ; preds = %111
  store i32 1, i32* @blockSize100k, align 4, !dbg !573, !tbaa !387
  br label %151, !dbg !574

124:                                              ; preds = %111
  store i32 2, i32* @blockSize100k, align 4, !dbg !575, !tbaa !387
  br label %151, !dbg !576

125:                                              ; preds = %111
  store i32 3, i32* @blockSize100k, align 4, !dbg !577, !tbaa !387
  br label %151, !dbg !578

126:                                              ; preds = %111
  store i32 4, i32* @blockSize100k, align 4, !dbg !579, !tbaa !387
  br label %151, !dbg !580

127:                                              ; preds = %111
  store i32 5, i32* @blockSize100k, align 4, !dbg !581, !tbaa !387
  br label %151, !dbg !582

128:                                              ; preds = %111
  store i32 6, i32* @blockSize100k, align 4, !dbg !583, !tbaa !387
  br label %151, !dbg !584

129:                                              ; preds = %111
  store i32 7, i32* @blockSize100k, align 4, !dbg !585, !tbaa !387
  br label %151, !dbg !586

130:                                              ; preds = %111
  store i32 8, i32* @blockSize100k, align 4, !dbg !587, !tbaa !387
  br label %151, !dbg !588

131:                                              ; preds = %111
  store i32 9, i32* @blockSize100k, align 4, !dbg !589, !tbaa !387
  br label %151, !dbg !590

132:                                              ; preds = %111, %111
  %133 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !591, !tbaa !377
  %134 = getelementptr inbounds %struct._reent, %struct._reent* %133, i32 0, i32 3, !dbg !591
  %135 = load %struct.__sFILE*, %struct.__sFILE** %134, align 4, !dbg !591, !tbaa !422
  %136 = tail call i8* @BZ2_bzlibVersion() #16, !dbg !594
  %137 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %135, i8* getelementptr inbounds ([525 x i8], [525 x i8]* @.str.51, i32 0, i32 0), i8* %136) #16, !dbg !595
  %138 = load i8*, i8** %100, align 4, !dbg !552, !tbaa !483
  br label %151, !dbg !596

139:                                              ; preds = %111
  %140 = load i32, i32* @verbosity, align 4, !dbg !597, !tbaa !387
  %141 = add nsw i32 %140, 1, !dbg !597
  store i32 %141, i32* @verbosity, align 4, !dbg !597, !tbaa !387
  br label %151, !dbg !598

142:                                              ; preds = %111
  %143 = load i8*, i8** @progName, align 4, !dbg !599, !tbaa !377
  tail call fastcc void @usage(i8* %143), !dbg !600
  tail call void @exit(i32 0) #17, !dbg !601
  unreachable, !dbg !601

144:                                              ; preds = %111
  %145 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !602, !tbaa !377
  %146 = getelementptr inbounds %struct._reent, %struct._reent* %145, i32 0, i32 3, !dbg !602
  %147 = load %struct.__sFILE*, %struct.__sFILE** %146, align 4, !dbg !602, !tbaa !422
  %148 = load i8*, i8** @progName, align 4, !dbg !603, !tbaa !377
  %149 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %147, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i8* %148, i8* nonnull %113), !dbg !604
  %150 = load i8*, i8** @progName, align 4, !dbg !605, !tbaa !377
  tail call fastcc void @usage(i8* %150), !dbg !606
  tail call void @exit(i32 1) #17, !dbg !607
  unreachable, !dbg !607

151:                                              ; preds = %115, %116, %117, %118, %119, %120, %121, %122, %123, %124, %125, %126, %127, %128, %129, %130, %131, %132, %139
  %152 = phi i8* [ %113, %115 ], [ %113, %116 ], [ %113, %117 ], [ %113, %118 ], [ %113, %119 ], [ %113, %120 ], [ %113, %121 ], [ %113, %122 ], [ %113, %123 ], [ %113, %124 ], [ %113, %125 ], [ %113, %126 ], [ %113, %127 ], [ %113, %128 ], [ %113, %129 ], [ %113, %130 ], [ %113, %131 ], [ %138, %132 ], [ %113, %139 ], !dbg !552
  %153 = add nuw nsw i32 %114, 1, !dbg !608
  call void @llvm.dbg.value(metadata i32 %153, metadata !367, metadata !DIExpression()), !dbg !374
  %154 = getelementptr inbounds i8, i8* %152, i32 %153
  %155 = load i8, i8* %154, align 1, !dbg !548, !tbaa !382
  br label %111, !dbg !609, !llvm.loop !610

156:                                              ; preds = %111, %104, %107
  %157 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %99, i32 0, i32 1, !dbg !612
  call void @llvm.dbg.value(metadata %struct.zzzz* undef, metadata !370, metadata !DIExpression()), !dbg !374
  %158 = load %struct.zzzz*, %struct.zzzz** %157, align 4, !dbg !613, !tbaa !377
  call void @llvm.dbg.value(metadata %struct.zzzz* %158, metadata !370, metadata !DIExpression()), !dbg !374
  %159 = icmp eq %struct.zzzz* %158, null, !dbg !614
  br i1 %159, label %160, label %98, !dbg !534, !llvm.loop !615

160:                                              ; preds = %156, %98
  call void @llvm.dbg.value(metadata %struct.zzzz* undef, metadata !369, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata %struct.zzzz* %44, metadata !370, metadata !DIExpression()), !dbg !374
  br i1 %45, label %272, label %161, !dbg !617

161:                                              ; preds = %160, %268
  %162 = phi %struct.zzzz* [ %270, %268 ], [ %44, %160 ]
  %163 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %162, i32 0, i32 0, !dbg !619
  %164 = load i8*, i8** %163, align 4, !dbg !619, !tbaa !483
  %165 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %164, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)), !dbg !619
  %166 = icmp eq i32 %165, 0, !dbg !619
  br i1 %166, label %272, label %167, !dbg !623

167:                                              ; preds = %161
  %168 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %164, i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0)), !dbg !624
  %169 = icmp eq i32 %168, 0, !dbg !624
  br i1 %169, label %170, label %171, !dbg !626

170:                                              ; preds = %167
  store i32 2, i32* @srcMode, align 4, !dbg !627, !tbaa !387
  br label %268, !dbg !628

171:                                              ; preds = %167
  %172 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %164, i8* nonnull dereferenceable(13) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0)), !dbg !629
  %173 = icmp eq i32 %172, 0, !dbg !629
  br i1 %173, label %174, label %175, !dbg !631

174:                                              ; preds = %171
  store i32 2, i32* @opMode, align 4, !dbg !632, !tbaa !387
  br label %268, !dbg !633

175:                                              ; preds = %171
  %176 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %164, i8* nonnull dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0)), !dbg !634
  %177 = icmp eq i32 %176, 0, !dbg !634
  br i1 %177, label %178, label %179, !dbg !636

178:                                              ; preds = %175
  store i32 1, i32* @opMode, align 4, !dbg !637, !tbaa !387
  br label %268, !dbg !638

179:                                              ; preds = %175
  %180 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %164, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0)), !dbg !639
  %181 = icmp eq i32 %180, 0, !dbg !639
  br i1 %181, label %182, label %183, !dbg !641

182:                                              ; preds = %179
  store i8 1, i8* @forceOverwrite, align 1, !dbg !642, !tbaa !382
  br label %268, !dbg !643

183:                                              ; preds = %179
  %184 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %164, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0)), !dbg !644
  %185 = icmp eq i32 %184, 0, !dbg !644
  br i1 %185, label %186, label %187, !dbg !646

186:                                              ; preds = %183
  store i32 3, i32* @opMode, align 4, !dbg !647, !tbaa !387
  br label %268, !dbg !648

187:                                              ; preds = %183
  %188 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %164, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0)), !dbg !649
  %189 = icmp eq i32 %188, 0, !dbg !649
  br i1 %189, label %190, label %191, !dbg !651

190:                                              ; preds = %187
  store i8 1, i8* @keepInputFiles, align 1, !dbg !652, !tbaa !382
  br label %268, !dbg !653

191:                                              ; preds = %187
  %192 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %164, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0)), !dbg !654
  %193 = icmp eq i32 %192, 0, !dbg !654
  br i1 %193, label %194, label %195, !dbg !656

194:                                              ; preds = %191
  store i8 1, i8* @smallMode, align 1, !dbg !657, !tbaa !382
  br label %268, !dbg !658

195:                                              ; preds = %191
  %196 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %164, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0)), !dbg !659
  %197 = icmp eq i32 %196, 0, !dbg !659
  br i1 %197, label %198, label %199, !dbg !661

198:                                              ; preds = %195
  store i8 0, i8* @noisy, align 1, !dbg !662, !tbaa !382
  br label %268, !dbg !663

199:                                              ; preds = %195
  %200 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %164, i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0)), !dbg !664
  %201 = icmp eq i32 %200, 0, !dbg !664
  br i1 %201, label %202, label %208, !dbg !666

202:                                              ; preds = %199
  %203 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !667, !tbaa !377
  %204 = getelementptr inbounds %struct._reent, %struct._reent* %203, i32 0, i32 3, !dbg !667
  %205 = load %struct.__sFILE*, %struct.__sFILE** %204, align 4, !dbg !667, !tbaa !422
  %206 = tail call i8* @BZ2_bzlibVersion() #16, !dbg !669
  %207 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %205, i8* getelementptr inbounds ([525 x i8], [525 x i8]* @.str.51, i32 0, i32 0), i8* %206) #16, !dbg !670
  br label %268, !dbg !671

208:                                              ; preds = %199
  %209 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %164, i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0)), !dbg !672
  %210 = icmp eq i32 %209, 0, !dbg !672
  br i1 %210, label %211, label %217, !dbg !674

211:                                              ; preds = %208
  %212 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !675, !tbaa !377
  %213 = getelementptr inbounds %struct._reent, %struct._reent* %212, i32 0, i32 3, !dbg !675
  %214 = load %struct.__sFILE*, %struct.__sFILE** %213, align 4, !dbg !675, !tbaa !422
  %215 = tail call i8* @BZ2_bzlibVersion() #16, !dbg !677
  %216 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %214, i8* getelementptr inbounds ([525 x i8], [525 x i8]* @.str.51, i32 0, i32 0), i8* %215) #16, !dbg !678
  br label %268, !dbg !679

217:                                              ; preds = %208
  %218 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %164, i8* nonnull dereferenceable(14) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0)), !dbg !680
  %219 = icmp eq i32 %218, 0, !dbg !680
  br i1 %219, label %220, label %221, !dbg !682

220:                                              ; preds = %217
  store i32 1, i32* @workFactor, align 4, !dbg !683, !tbaa !387
  br label %268, !dbg !684

221:                                              ; preds = %217
  %222 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %164, i8* nonnull dereferenceable(18) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0)), !dbg !685
  %223 = icmp eq i32 %222, 0, !dbg !685
  br i1 %223, label %224, label %230, !dbg !687

224:                                              ; preds = %221
  call void @llvm.dbg.value(metadata i8* %164, metadata !688, metadata !DIExpression()) #16, !dbg !693
  %225 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !695, !tbaa !377
  %226 = getelementptr inbounds %struct._reent, %struct._reent* %225, i32 0, i32 3, !dbg !695
  %227 = load %struct.__sFILE*, %struct.__sFILE** %226, align 4, !dbg !695, !tbaa !422
  %228 = load i8*, i8** @progName, align 4, !dbg !696, !tbaa !377
  %229 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %227, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.53, i32 0, i32 0), i8* %228, i8* %164) #16, !dbg !697
  br label %268, !dbg !698

230:                                              ; preds = %221
  %231 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %164, i8* nonnull dereferenceable(18) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0)), !dbg !699
  %232 = icmp eq i32 %231, 0, !dbg !699
  br i1 %232, label %233, label %239, !dbg !701

233:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8* %164, metadata !688, metadata !DIExpression()) #16, !dbg !702
  %234 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !704, !tbaa !377
  %235 = getelementptr inbounds %struct._reent, %struct._reent* %234, i32 0, i32 3, !dbg !704
  %236 = load %struct.__sFILE*, %struct.__sFILE** %235, align 4, !dbg !704, !tbaa !422
  %237 = load i8*, i8** @progName, align 4, !dbg !705, !tbaa !377
  %238 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %236, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.53, i32 0, i32 0), i8* %237, i8* %164) #16, !dbg !706
  br label %268, !dbg !707

239:                                              ; preds = %230
  %240 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %164, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0)), !dbg !708
  %241 = icmp eq i32 %240, 0, !dbg !708
  br i1 %241, label %242, label %243, !dbg !710

242:                                              ; preds = %239
  store i32 1, i32* @blockSize100k, align 4, !dbg !711, !tbaa !387
  br label %268, !dbg !712

243:                                              ; preds = %239
  %244 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %164, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0)), !dbg !713
  %245 = icmp eq i32 %244, 0, !dbg !713
  br i1 %245, label %246, label %247, !dbg !715

246:                                              ; preds = %243
  store i32 9, i32* @blockSize100k, align 4, !dbg !716, !tbaa !387
  br label %268, !dbg !717

247:                                              ; preds = %243
  %248 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %164, i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0)), !dbg !718
  %249 = icmp eq i32 %248, 0, !dbg !718
  br i1 %249, label %250, label %253, !dbg !720

250:                                              ; preds = %247
  %251 = load i32, i32* @verbosity, align 4, !dbg !721, !tbaa !387
  %252 = add nsw i32 %251, 1, !dbg !721
  store i32 %252, i32* @verbosity, align 4, !dbg !721, !tbaa !387
  br label %268, !dbg !722

253:                                              ; preds = %247
  %254 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %164, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0)), !dbg !723
  %255 = icmp eq i32 %254, 0, !dbg !723
  br i1 %255, label %256, label %258, !dbg !725

256:                                              ; preds = %253
  %257 = load i8*, i8** @progName, align 4, !dbg !726, !tbaa !377
  tail call fastcc void @usage(i8* %257), !dbg !728
  tail call void @exit(i32 0) #17, !dbg !729
  unreachable, !dbg !729

258:                                              ; preds = %253
  %259 = tail call i32 @strncmp(i8* nonnull dereferenceable(1) %164, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 2), !dbg !730
  %260 = icmp eq i32 %259, 0, !dbg !732
  br i1 %260, label %261, label %268, !dbg !733

261:                                              ; preds = %258
  %262 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !734, !tbaa !377
  %263 = getelementptr inbounds %struct._reent, %struct._reent* %262, i32 0, i32 3, !dbg !734
  %264 = load %struct.__sFILE*, %struct.__sFILE** %263, align 4, !dbg !734, !tbaa !422
  %265 = load i8*, i8** @progName, align 4, !dbg !736, !tbaa !377
  %266 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %264, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i8* %265, i8* %164), !dbg !737
  %267 = load i8*, i8** @progName, align 4, !dbg !738, !tbaa !377
  tail call fastcc void @usage(i8* %267), !dbg !739
  tail call void @exit(i32 1) #17, !dbg !740
  unreachable, !dbg !740

268:                                              ; preds = %170, %178, %186, %194, %202, %220, %233, %246, %258, %250, %242, %224, %211, %198, %190, %182, %174
  %269 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %162, i32 0, i32 1, !dbg !741
  call void @llvm.dbg.value(metadata %struct.zzzz* undef, metadata !370, metadata !DIExpression()), !dbg !374
  %270 = load %struct.zzzz*, %struct.zzzz** %269, align 4, !dbg !742, !tbaa !377
  call void @llvm.dbg.value(metadata %struct.zzzz* %270, metadata !370, metadata !DIExpression()), !dbg !374
  %271 = icmp eq %struct.zzzz* %270, null, !dbg !743
  br i1 %271, label %272, label %161, !dbg !617, !llvm.loop !744

272:                                              ; preds = %268, %161, %97, %160
  %273 = load i32, i32* @verbosity, align 4, !dbg !746, !tbaa !387
  %274 = icmp sgt i32 %273, 4, !dbg !748
  br i1 %274, label %275, label %276, !dbg !749

275:                                              ; preds = %272
  store i32 4, i32* @verbosity, align 4, !dbg !750, !tbaa !387
  br label %276, !dbg !751

276:                                              ; preds = %275, %272
  %277 = load i32, i32* @opMode, align 4, !dbg !752, !tbaa !387
  %278 = icmp eq i32 %277, 1, !dbg !754
  br i1 %278, label %279, label %289, !dbg !755

279:                                              ; preds = %276
  %280 = load i8, i8* @smallMode, align 1, !dbg !756, !tbaa !382
  %281 = icmp ne i8 %280, 0, !dbg !756
  %282 = load i32, i32* @blockSize100k, align 4
  %283 = icmp sgt i32 %282, 2
  %284 = and i1 %281, %283, !dbg !757
  br i1 %284, label %285, label %286, !dbg !757

285:                                              ; preds = %279
  store i32 2, i32* @blockSize100k, align 4, !dbg !758, !tbaa !387
  br label %286, !dbg !759

286:                                              ; preds = %285, %279
  %287 = load i32, i32* @srcMode, align 4
  %288 = icmp eq i32 %287, 2
  br label %300, !dbg !760

289:                                              ; preds = %276
  %290 = icmp eq i32 %277, 3, !dbg !762
  %291 = load i32, i32* @srcMode, align 4
  %292 = icmp eq i32 %291, 2
  %293 = and i1 %290, %292, !dbg !760
  br i1 %293, label %294, label %300, !dbg !760

294:                                              ; preds = %289
  %295 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !763, !tbaa !377
  %296 = getelementptr inbounds %struct._reent, %struct._reent* %295, i32 0, i32 3, !dbg !763
  %297 = load %struct.__sFILE*, %struct.__sFILE** %296, align 4, !dbg !763, !tbaa !422
  %298 = load i8*, i8** @progName, align 4, !dbg !765, !tbaa !377
  %299 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %297, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i32 0, i32 0), i8* %298), !dbg !766
  tail call void @exit(i32 1) #17, !dbg !767
  unreachable, !dbg !767

300:                                              ; preds = %286, %289
  %301 = phi i32 [ %287, %286 ], [ %291, %289 ]
  %302 = phi i1 [ %288, %286 ], [ %292, %289 ]
  %303 = load i32, i32* @numFileNames, align 4
  %304 = icmp eq i32 %303, 0
  %305 = and i1 %302, %304, !dbg !768
  br i1 %305, label %306, label %307, !dbg !768

306:                                              ; preds = %300
  store i32 1, i32* @srcMode, align 4, !dbg !770, !tbaa !387
  br label %307, !dbg !771

307:                                              ; preds = %306, %300
  %308 = phi i32 [ 1, %306 ], [ %301, %300 ]
  br i1 %278, label %310, label %309, !dbg !772

309:                                              ; preds = %307
  store i32 0, i32* @blockSize100k, align 4, !dbg !773, !tbaa !387
  br label %310, !dbg !775

310:                                              ; preds = %309, %307
  %311 = icmp eq i32 %308, 3, !dbg !776
  br i1 %311, label %312, label %317, !dbg !778

312:                                              ; preds = %310
  %313 = tail call void (i32)* @signal(i32 2, void (i32)* nonnull @mySignalCatcher) #16, !dbg !779
  %314 = tail call void (i32)* @signal(i32 15, void (i32)* nonnull @mySignalCatcher) #16, !dbg !781
  %315 = tail call void (i32)* @signal(i32 1, void (i32)* nonnull @mySignalCatcher) #16, !dbg !782
  %316 = load i32, i32* @opMode, align 4, !dbg !783, !tbaa !387
  br label %317, !dbg !785

317:                                              ; preds = %312, %310
  %318 = phi i32 [ %316, %312 ], [ %277, %310 ], !dbg !783
  switch i32 %318, label %378 [
    i32 1, label %319
    i32 2, label %344
  ], !dbg !786

319:                                              ; preds = %317
  %320 = load i32, i32* @srcMode, align 4, !dbg !787, !tbaa !387
  %321 = icmp eq i32 %320, 1, !dbg !790
  br i1 %321, label %323, label %322, !dbg !791

322:                                              ; preds = %319
  call void @llvm.dbg.value(metadata i8 1, metadata !371, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata %struct.zzzz* %44, metadata !370, metadata !DIExpression()), !dbg !374
  br i1 %45, label %432, label %324, !dbg !792

323:                                              ; preds = %319
  tail call fastcc void @compress(i8* null), !dbg !795
  br label %420, !dbg !797

324:                                              ; preds = %322, %339
  %325 = phi %struct.zzzz* [ %342, %339 ], [ %44, %322 ]
  %326 = phi i8 [ %340, %339 ], [ 1, %322 ]
  call void @llvm.dbg.value(metadata i8 %326, metadata !371, metadata !DIExpression()), !dbg !374
  %327 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %325, i32 0, i32 0, !dbg !798
  %328 = load i8*, i8** %327, align 4, !dbg !798, !tbaa !483
  %329 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %328, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)), !dbg !798
  %330 = icmp eq i32 %329, 0, !dbg !798
  br i1 %330, label %339, label %331, !dbg !802

331:                                              ; preds = %324
  %332 = load i8, i8* %328, align 1, !dbg !803, !tbaa !382
  %333 = icmp ne i8 %332, 45, !dbg !805
  %334 = icmp eq i8 %326, 0
  %335 = or i1 %334, %333, !dbg !806
  br i1 %335, label %336, label %339, !dbg !806

336:                                              ; preds = %331
  %337 = load i32, i32* @numFilesProcessed, align 4, !dbg !807, !tbaa !387
  %338 = add nsw i32 %337, 1, !dbg !807
  store i32 %338, i32* @numFilesProcessed, align 4, !dbg !807, !tbaa !387
  tail call fastcc void @compress(i8* nonnull %328), !dbg !808
  br label %339, !dbg !809

339:                                              ; preds = %331, %324, %336
  %340 = phi i8 [ %326, %336 ], [ 0, %324 ], [ %326, %331 ], !dbg !810
  call void @llvm.dbg.value(metadata i8 %340, metadata !371, metadata !DIExpression()), !dbg !374
  %341 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %325, i32 0, i32 1, !dbg !811
  call void @llvm.dbg.value(metadata %struct.zzzz* undef, metadata !370, metadata !DIExpression()), !dbg !374
  %342 = load %struct.zzzz*, %struct.zzzz** %341, align 4, !dbg !812, !tbaa !377
  call void @llvm.dbg.value(metadata %struct.zzzz* %342, metadata !370, metadata !DIExpression()), !dbg !374
  %343 = icmp eq %struct.zzzz* %342, null, !dbg !813
  br i1 %343, label %420, label %324, !dbg !792, !llvm.loop !814

344:                                              ; preds = %317
  store i8 0, i8* @unzFailsExist, align 1, !dbg !816, !tbaa !382
  %345 = load i32, i32* @srcMode, align 4, !dbg !819, !tbaa !387
  %346 = icmp eq i32 %345, 1, !dbg !821
  br i1 %346, label %348, label %347, !dbg !822

347:                                              ; preds = %344
  call void @llvm.dbg.value(metadata i8 1, metadata !371, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata %struct.zzzz* %44, metadata !370, metadata !DIExpression()), !dbg !374
  br i1 %45, label %432, label %349, !dbg !823

348:                                              ; preds = %344
  tail call fastcc void @uncompress(i8* null), !dbg !826
  br label %369, !dbg !828

349:                                              ; preds = %347, %364
  %350 = phi %struct.zzzz* [ %367, %364 ], [ %44, %347 ]
  %351 = phi i8 [ %365, %364 ], [ 1, %347 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !371, metadata !DIExpression()), !dbg !374
  %352 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %350, i32 0, i32 0, !dbg !829
  %353 = load i8*, i8** %352, align 4, !dbg !829, !tbaa !483
  %354 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %353, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)), !dbg !829
  %355 = icmp eq i32 %354, 0, !dbg !829
  br i1 %355, label %364, label %356, !dbg !833

356:                                              ; preds = %349
  %357 = load i8, i8* %353, align 1, !dbg !834, !tbaa !382
  %358 = icmp ne i8 %357, 45, !dbg !836
  %359 = icmp eq i8 %351, 0
  %360 = or i1 %359, %358, !dbg !837
  br i1 %360, label %361, label %364, !dbg !837

361:                                              ; preds = %356
  %362 = load i32, i32* @numFilesProcessed, align 4, !dbg !838, !tbaa !387
  %363 = add nsw i32 %362, 1, !dbg !838
  store i32 %363, i32* @numFilesProcessed, align 4, !dbg !838, !tbaa !387
  tail call fastcc void @uncompress(i8* nonnull %353), !dbg !839
  br label %364, !dbg !840

364:                                              ; preds = %356, %349, %361
  %365 = phi i8 [ %351, %361 ], [ 0, %349 ], [ %351, %356 ], !dbg !841
  call void @llvm.dbg.value(metadata i8 %365, metadata !371, metadata !DIExpression()), !dbg !374
  %366 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %350, i32 0, i32 1, !dbg !842
  call void @llvm.dbg.value(metadata %struct.zzzz* undef, metadata !370, metadata !DIExpression()), !dbg !374
  %367 = load %struct.zzzz*, %struct.zzzz** %366, align 4, !dbg !843, !tbaa !377
  call void @llvm.dbg.value(metadata %struct.zzzz* %367, metadata !370, metadata !DIExpression()), !dbg !374
  %368 = icmp eq %struct.zzzz* %367, null, !dbg !844
  br i1 %368, label %369, label %349, !dbg !823, !llvm.loop !845

369:                                              ; preds = %364, %348
  %370 = load i8, i8* @unzFailsExist, align 1, !dbg !847, !tbaa !382
  %371 = icmp eq i8 %370, 0, !dbg !847
  br i1 %371, label %420, label %372, !dbg !849

372:                                              ; preds = %369
  call void @llvm.dbg.value(metadata i32 2, metadata !429, metadata !DIExpression()), !dbg !850
  %373 = load i32, i32* @exitValue, align 4, !dbg !853, !tbaa !387
  %374 = icmp slt i32 %373, 2, !dbg !854
  br i1 %374, label %375, label %376, !dbg !855

375:                                              ; preds = %372
  store i32 2, i32* @exitValue, align 4, !dbg !856, !tbaa !387
  br label %376, !dbg !857

376:                                              ; preds = %372, %375
  %377 = phi i32 [ %373, %372 ], [ 2, %375 ], !dbg !858
  tail call void @exit(i32 %377) #17, !dbg !859
  unreachable, !dbg !859

378:                                              ; preds = %317
  store i8 0, i8* @testFailsExist, align 1, !dbg !860, !tbaa !382
  %379 = load i32, i32* @srcMode, align 4, !dbg !862, !tbaa !387
  %380 = icmp eq i32 %379, 1, !dbg !864
  br i1 %380, label %382, label %381, !dbg !865

381:                                              ; preds = %378
  call void @llvm.dbg.value(metadata i8 1, metadata !371, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata %struct.zzzz* %44, metadata !370, metadata !DIExpression()), !dbg !374
  br i1 %45, label %432, label %383, !dbg !866

382:                                              ; preds = %378
  tail call fastcc void @testf(i8* null), !dbg !869
  br label %403, !dbg !871

383:                                              ; preds = %381, %398
  %384 = phi %struct.zzzz* [ %401, %398 ], [ %44, %381 ]
  %385 = phi i8 [ %399, %398 ], [ 1, %381 ]
  call void @llvm.dbg.value(metadata i8 %385, metadata !371, metadata !DIExpression()), !dbg !374
  %386 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %384, i32 0, i32 0, !dbg !872
  %387 = load i8*, i8** %386, align 4, !dbg !872, !tbaa !483
  %388 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %387, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)), !dbg !872
  %389 = icmp eq i32 %388, 0, !dbg !872
  br i1 %389, label %398, label %390, !dbg !876

390:                                              ; preds = %383
  %391 = load i8, i8* %387, align 1, !dbg !877, !tbaa !382
  %392 = icmp ne i8 %391, 45, !dbg !879
  %393 = icmp eq i8 %385, 0
  %394 = or i1 %393, %392, !dbg !880
  br i1 %394, label %395, label %398, !dbg !880

395:                                              ; preds = %390
  %396 = load i32, i32* @numFilesProcessed, align 4, !dbg !881, !tbaa !387
  %397 = add nsw i32 %396, 1, !dbg !881
  store i32 %397, i32* @numFilesProcessed, align 4, !dbg !881, !tbaa !387
  tail call fastcc void @testf(i8* nonnull %387), !dbg !882
  br label %398, !dbg !883

398:                                              ; preds = %390, %383, %395
  %399 = phi i8 [ %385, %395 ], [ 0, %383 ], [ %385, %390 ], !dbg !884
  call void @llvm.dbg.value(metadata i8 %399, metadata !371, metadata !DIExpression()), !dbg !374
  %400 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %384, i32 0, i32 1, !dbg !885
  call void @llvm.dbg.value(metadata %struct.zzzz* undef, metadata !370, metadata !DIExpression()), !dbg !374
  %401 = load %struct.zzzz*, %struct.zzzz** %400, align 4, !dbg !886, !tbaa !377
  call void @llvm.dbg.value(metadata %struct.zzzz* %401, metadata !370, metadata !DIExpression()), !dbg !374
  %402 = icmp eq %struct.zzzz* %401, null, !dbg !887
  br i1 %402, label %403, label %383, !dbg !866, !llvm.loop !888

403:                                              ; preds = %398, %382
  %404 = load i8, i8* @testFailsExist, align 1, !dbg !890, !tbaa !382
  %405 = icmp eq i8 %404, 0, !dbg !890
  br i1 %405, label %420, label %406, !dbg !892

406:                                              ; preds = %403
  %407 = load i8, i8* @noisy, align 1, !dbg !893, !tbaa !382
  %408 = icmp eq i8 %407, 0, !dbg !893
  br i1 %408, label %414, label %409, !dbg !896

409:                                              ; preds = %406
  %410 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !897, !tbaa !377
  %411 = getelementptr inbounds %struct._reent, %struct._reent* %410, i32 0, i32 3, !dbg !897
  %412 = load %struct.__sFILE*, %struct.__sFILE** %411, align 4, !dbg !897, !tbaa !422
  %413 = tail call i32 @fwrite(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.35, i32 0, i32 0), i32 112, i32 1, %struct.__sFILE* %412), !dbg !899
  br label %414, !dbg !900

414:                                              ; preds = %409, %406
  call void @llvm.dbg.value(metadata i32 2, metadata !429, metadata !DIExpression()), !dbg !901
  %415 = load i32, i32* @exitValue, align 4, !dbg !903, !tbaa !387
  %416 = icmp slt i32 %415, 2, !dbg !904
  br i1 %416, label %417, label %418, !dbg !905

417:                                              ; preds = %414
  store i32 2, i32* @exitValue, align 4, !dbg !906, !tbaa !387
  br label %418, !dbg !907

418:                                              ; preds = %414, %417
  %419 = phi i32 [ %415, %414 ], [ 2, %417 ], !dbg !908
  tail call void @exit(i32 %419) #17, !dbg !909
  unreachable, !dbg !909

420:                                              ; preds = %339, %369, %403, %323
  call void @llvm.dbg.value(metadata %struct.zzzz* %44, metadata !369, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata %struct.zzzz* %44, metadata !370, metadata !DIExpression()), !dbg !374
  br i1 %45, label %432, label %421, !dbg !910

421:                                              ; preds = %420, %429
  %422 = phi %struct.zzzz* [ %424, %429 ], [ %44, %420 ]
  call void @llvm.dbg.value(metadata %struct.zzzz* %422, metadata !370, metadata !DIExpression()), !dbg !374
  %423 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %422, i32 0, i32 1, !dbg !911
  %424 = load %struct.zzzz*, %struct.zzzz** %423, align 4, !dbg !911, !tbaa !912
  call void @llvm.dbg.value(metadata %struct.zzzz* %424, metadata !372, metadata !DIExpression()), !dbg !913
  %425 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %422, i32 0, i32 0, !dbg !914
  %426 = load i8*, i8** %425, align 4, !dbg !914, !tbaa !483
  %427 = icmp eq i8* %426, null, !dbg !916
  br i1 %427, label %429, label %428, !dbg !917

428:                                              ; preds = %421
  tail call void @free(i8* nonnull %426), !dbg !918
  br label %429, !dbg !918

429:                                              ; preds = %428, %421
  %430 = bitcast %struct.zzzz* %422 to i8*, !dbg !919
  tail call void @free(i8* %430), !dbg !920
  call void @llvm.dbg.value(metadata %struct.zzzz* %424, metadata !370, metadata !DIExpression()), !dbg !374
  %431 = icmp eq %struct.zzzz* %424, null, !dbg !921
  br i1 %431, label %432, label %421, !dbg !910, !llvm.loop !922

432:                                              ; preds = %429, %381, %347, %322, %420
  %433 = load i32, i32* @exitValue, align 4, !dbg !924, !tbaa !387
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #16, !dbg !925
  ret i32 %433, !dbg !926
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !927 dso_local void (i32)* @signal(i32, void (i32)*) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
define internal void @mySIGSEGVorSIGBUScatcher(i32 %0) #4 !dbg !931 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !935, metadata !DIExpression()), !dbg !937
  %2 = load i32, i32* @opMode, align 4, !dbg !938, !tbaa !387
  %3 = icmp eq i32 %2, 1, !dbg !940
  %4 = select i1 %3, i8* getelementptr inbounds ([870 x i8], [870 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([997 x i8], [997 x i8]* @.str.37, i32 0, i32 0), !dbg !941
  call void @llvm.dbg.value(metadata i8* %4, metadata !936, metadata !DIExpression()), !dbg !937
  %5 = tail call i32 @write(i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0), i32 1) #16, !dbg !942
  %6 = load i8*, i8** @progName, align 4, !dbg !943, !tbaa !377
  %7 = tail call i32 @strlen(i8* nonnull dereferenceable(1) %6), !dbg !944
  %8 = tail call i32 @write(i32 2, i8* %6, i32 %7) #16, !dbg !945
  %9 = select i1 %3, i32 869, i32 996, !dbg !946
  %10 = tail call i32 @write(i32 2, i8* %4, i32 %9) #16, !dbg !947
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0), metadata !936, metadata !DIExpression()), !dbg !937
  %11 = tail call i32 @write(i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0), i32 14) #16, !dbg !948
  %12 = tail call i32 @strlen(i8* nonnull dereferenceable(1) getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !949
  %13 = tail call i32 @write(i32 2, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i32 %12) #16, !dbg !950
  %14 = tail call i32 @write(i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0), i32 1) #16, !dbg !951
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i32 0, i32 0), metadata !936, metadata !DIExpression()), !dbg !937
  %15 = tail call i32 @write(i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i32 0, i32 0), i32 15) #16, !dbg !952
  %16 = tail call i32 @strlen(i8* nonnull dereferenceable(1) getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0)), !dbg !953
  %17 = tail call i32 @write(i32 2, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i32 %16) #16, !dbg !954
  %18 = tail call i32 @write(i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0), i32 1) #16, !dbg !955
  %19 = load i32, i32* @opMode, align 4, !dbg !956, !tbaa !387
  %20 = icmp eq i32 %19, 1, !dbg !958
  %21 = load i32, i32* @exitValue, align 4, !dbg !959, !tbaa !387
  br i1 %20, label %22, label %25, !dbg !960

22:                                               ; preds = %1
  call void @llvm.dbg.value(metadata i32 3, metadata !429, metadata !DIExpression()), !dbg !961
  %23 = icmp slt i32 %21, 3, !dbg !963
  br i1 %23, label %24, label %28, !dbg !964

24:                                               ; preds = %22
  store i32 3, i32* @exitValue, align 4, !dbg !965, !tbaa !387
  br label %28, !dbg !966

25:                                               ; preds = %1
  call void @llvm.dbg.value(metadata i32 2, metadata !429, metadata !DIExpression()), !dbg !967
  %26 = icmp slt i32 %21, 2, !dbg !969
  br i1 %26, label %27, label %28, !dbg !970

27:                                               ; preds = %25
  store i32 2, i32* @exitValue, align 4, !dbg !971, !tbaa !387
  br label %28, !dbg !972

28:                                               ; preds = %27, %25, %24, %22
  %29 = phi i32 [ 2, %27 ], [ %21, %25 ], [ 3, %24 ], [ %21, %22 ], !dbg !973
  tail call void @_exit(i32 %29) #17, !dbg !974
  unreachable, !dbg !974
}

; Function Attrs: nounwind
define internal fastcc void @addFlagsFromEnvVar(%struct.zzzz** nocapture %0, i8* nocapture readonly %1) unnamed_addr #0 !dbg !975 {
  call void @llvm.dbg.value(metadata %struct.zzzz** %0, metadata !980, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %1, metadata !981, metadata !DIExpression()), !dbg !987
  %3 = tail call i8* @getenv(i8* %1), !dbg !988
  call void @llvm.dbg.value(metadata i8* %3, metadata !985, metadata !DIExpression()), !dbg !987
  %4 = icmp eq i8* %3, null, !dbg !989
  br i1 %4, label %69, label %5, !dbg !991

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !986, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i32 0, metadata !982, metadata !DIExpression()), !dbg !987
  %6 = load i8, i8* %3, align 1, !dbg !992, !tbaa !382
  %7 = icmp eq i8 %6, 0, !dbg !996
  br i1 %7, label %69, label %8, !dbg !997

8:                                                ; preds = %5, %64
  %9 = phi i8 [ %67, %64 ], [ %6, %5 ]
  %10 = phi i8* [ %66, %64 ], [ %3, %5 ]
  call void @llvm.dbg.value(metadata i8* %10, metadata !986, metadata !DIExpression()), !dbg !987
  %11 = zext i8 %9 to i32, !dbg !998
  %12 = getelementptr inbounds i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_ctype_, i32 0, i32 1), i32 %11, !dbg !998
  %13 = load i8, i8* %12, align 1, !dbg !998, !tbaa !382
  %14 = and i8 %13, 8, !dbg !998
  %15 = icmp eq i8 %14, 0, !dbg !999
  call void @llvm.dbg.value(metadata i8* %10, metadata !986, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !987
  br i1 %15, label %25, label %16, !dbg !999, !llvm.loop !1000

16:                                               ; preds = %8, %16
  %17 = phi i8* [ %18, %16 ], [ %10, %8 ]
  %18 = getelementptr inbounds i8, i8* %17, i32 1, !dbg !1001
  %19 = load i8, i8* %18, align 1, !dbg !998, !tbaa !382
  call void @llvm.dbg.value(metadata i8* %18, metadata !986, metadata !DIExpression()), !dbg !987
  %20 = zext i8 %19 to i32, !dbg !998
  %21 = getelementptr inbounds i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_ctype_, i32 0, i32 1), i32 %20, !dbg !998
  %22 = load i8, i8* %21, align 1, !dbg !998, !tbaa !382
  %23 = and i8 %22, 8, !dbg !998
  %24 = icmp eq i8 %23, 0, !dbg !999
  call void @llvm.dbg.value(metadata i8* %18, metadata !986, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !987
  br i1 %24, label %25, label %16, !dbg !999, !llvm.loop !1000

25:                                               ; preds = %16, %8
  %26 = phi i8 [ %9, %8 ], [ %19, %16 ], !dbg !998
  %27 = phi i8* [ %10, %8 ], [ %18, %16 ], !dbg !1002
  %28 = phi i8 [ %13, %8 ], [ %22, %16 ], !dbg !998
  call void @llvm.dbg.value(metadata i32 0, metadata !982, metadata !DIExpression()), !dbg !987
  %29 = icmp eq i8 %26, 0, !dbg !1003
  br i1 %29, label %64, label %30, !dbg !1004

30:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i32 0, metadata !982, metadata !DIExpression()), !dbg !987
  %31 = and i8 %28, 8, !dbg !1005
  %32 = icmp eq i8 %31, 0, !dbg !1006
  br i1 %32, label %33, label %45, !dbg !1007

33:                                               ; preds = %30, %39
  %34 = phi i32 [ %35, %39 ], [ 0, %30 ]
  call void @llvm.dbg.value(metadata i32 %34, metadata !982, metadata !DIExpression()), !dbg !987
  %35 = add nuw nsw i32 %34, 1, !dbg !1008
  call void @llvm.dbg.value(metadata i32 %35, metadata !982, metadata !DIExpression()), !dbg !987
  %36 = getelementptr inbounds i8, i8* %27, i32 %35, !dbg !1009
  %37 = load i8, i8* %36, align 1, !dbg !1009, !tbaa !382
  %38 = icmp eq i8 %37, 0, !dbg !1003
  br i1 %38, label %48, label %39, !dbg !1004, !llvm.loop !1010

39:                                               ; preds = %33
  %40 = zext i8 %37 to i32
  %41 = getelementptr inbounds i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_ctype_, i32 0, i32 1), i32 %40
  %42 = load i8, i8* %41, align 1, !dbg !1005, !tbaa !382
  call void @llvm.dbg.value(metadata i32 %35, metadata !982, metadata !DIExpression()), !dbg !987
  %43 = and i8 %42, 8, !dbg !1005
  %44 = icmp eq i8 %43, 0, !dbg !1006
  br i1 %44, label %33, label %45, !dbg !1007

45:                                               ; preds = %39, %30
  %46 = phi i32 [ 0, %30 ], [ %35, %39 ]
  %47 = icmp eq i32 %46, 0, !dbg !1011
  br i1 %47, label %64, label %48, !dbg !1013

48:                                               ; preds = %33, %45
  %49 = phi i32 [ %46, %45 ], [ %35, %33 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !984, metadata !DIExpression()), !dbg !987
  %50 = icmp ult i32 %49, 1024, !dbg !1014
  %51 = select i1 %50, i32 %49, i32 1024, !dbg !1014
  call void @llvm.dbg.value(metadata i32 %51, metadata !984, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i32 0, metadata !983, metadata !DIExpression()), !dbg !987
  %52 = icmp slt i32 %51, 2, !dbg !1016
  call void @llvm.dbg.value(metadata i32 0, metadata !983, metadata !DIExpression()), !dbg !987
  store i8 %26, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @tmpName, i32 0, i32 0), align 1, !dbg !1018, !tbaa !382
  call void @llvm.dbg.value(metadata i32 1, metadata !983, metadata !DIExpression()), !dbg !987
  br i1 %52, label %60, label %53, !dbg !1016, !llvm.loop !1020

53:                                               ; preds = %48, %53
  %54 = phi i32 [ %58, %53 ], [ 1, %48 ]
  %55 = getelementptr inbounds i8, i8* %27, i32 %54
  %56 = load i8, i8* %55, align 1, !dbg !1022, !tbaa !382
  call void @llvm.dbg.value(metadata i32 %54, metadata !983, metadata !DIExpression()), !dbg !987
  %57 = getelementptr inbounds [1034 x i8], [1034 x i8]* @tmpName, i32 0, i32 %54, !dbg !1023
  store i8 %56, i8* %57, align 1, !dbg !1018, !tbaa !382
  %58 = add nuw nsw i32 %54, 1, !dbg !1024
  call void @llvm.dbg.value(metadata i32 %58, metadata !983, metadata !DIExpression()), !dbg !987
  %59 = icmp eq i32 %58, %51, !dbg !1025
  br i1 %59, label %60, label %53, !dbg !1016, !llvm.loop !1020

60:                                               ; preds = %53, %48
  %61 = getelementptr inbounds [1034 x i8], [1034 x i8]* @tmpName, i32 0, i32 %51, !dbg !1026
  store i8 0, i8* %61, align 1, !dbg !1027, !tbaa !382
  %62 = load %struct.zzzz*, %struct.zzzz** %0, align 4, !dbg !1028, !tbaa !377
  %63 = tail call fastcc %struct.zzzz* @snocString(%struct.zzzz* %62, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @tmpName, i32 0, i32 0)), !dbg !1028
  store %struct.zzzz* %63, %struct.zzzz** %0, align 4, !dbg !1028, !tbaa !377
  br label %64, !dbg !1029

64:                                               ; preds = %25, %60, %45
  %65 = phi i32 [ %49, %60 ], [ 0, %45 ], [ 0, %25 ]
  call void @llvm.dbg.value(metadata i8* %27, metadata !986, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i32 undef, metadata !982, metadata !DIExpression()), !dbg !987
  %66 = getelementptr inbounds i8, i8* %27, i32 %65, !dbg !992
  %67 = load i8, i8* %66, align 1, !dbg !992, !tbaa !382
  %68 = icmp eq i8 %67, 0, !dbg !996
  br i1 %68, label %69, label %8, !dbg !997, !llvm.loop !1030

69:                                               ; preds = %64, %5, %2
  ret void, !dbg !1033
}

; Function Attrs: nounwind
define internal fastcc %struct.zzzz* @snocString(%struct.zzzz* %0, i8* nocapture readonly %1) unnamed_addr #0 !dbg !1034 {
  call void @llvm.dbg.value(metadata %struct.zzzz* %0, metadata !1038, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata i8* %1, metadata !1039, metadata !DIExpression()), !dbg !1045
  %3 = icmp eq %struct.zzzz* %0, null, !dbg !1046
  br i1 %3, label %4, label %20, !dbg !1047

4:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 8, metadata !1048, metadata !DIExpression()) #16, !dbg !1054
  %5 = tail call noalias dereferenceable_or_null(8) i8* @malloc(i32 8) #18, !dbg !1062
  call void @llvm.dbg.value(metadata i8* %5, metadata !1053, metadata !DIExpression()) #16, !dbg !1054
  %6 = icmp eq i8* %5, null, !dbg !1063
  br i1 %6, label %7, label %8, !dbg !1065

7:                                                ; preds = %4
  tail call fastcc void @outOfMemory() #17, !dbg !1066
  unreachable, !dbg !1066

8:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i8* %5, metadata !1060, metadata !DIExpression()) #16, !dbg !1067
  %9 = bitcast i8* %5 to i8**, !dbg !1068
  store i8* null, i8** %9, align 4, !dbg !1069, !tbaa !483
  %10 = getelementptr inbounds i8, i8* %5, i32 4, !dbg !1070
  %11 = bitcast i8* %10 to %struct.zzzz**, !dbg !1070
  store %struct.zzzz* null, %struct.zzzz** %11, align 4, !dbg !1071, !tbaa !912
  call void @llvm.dbg.value(metadata i8* %5, metadata !1040, metadata !DIExpression()), !dbg !1072
  %12 = tail call i32 @strlen(i8* nonnull dereferenceable(1) %1), !dbg !1073
  %13 = add i32 %12, 5, !dbg !1074
  call void @llvm.dbg.value(metadata i32 %13, metadata !1048, metadata !DIExpression()) #16, !dbg !1075
  %14 = tail call noalias i8* @malloc(i32 %13) #18, !dbg !1077
  call void @llvm.dbg.value(metadata i8* %14, metadata !1053, metadata !DIExpression()) #16, !dbg !1075
  %15 = icmp eq i8* %14, null, !dbg !1078
  br i1 %15, label %16, label %17, !dbg !1079

16:                                               ; preds = %8
  tail call fastcc void @outOfMemory() #17, !dbg !1080
  unreachable, !dbg !1080

17:                                               ; preds = %8
  %18 = bitcast i8* %5 to %struct.zzzz*, !dbg !1081
  call void @llvm.dbg.value(metadata %struct.zzzz* %18, metadata !1040, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata %struct.zzzz* %18, metadata !1060, metadata !DIExpression()) #16, !dbg !1067
  store i8* %14, i8** %9, align 4, !dbg !1082, !tbaa !483
  %19 = tail call i8* @strcpy(i8* nonnull dereferenceable(1) %14, i8* nonnull dereferenceable(1) %1), !dbg !1083
  br label %42

20:                                               ; preds = %2, %20
  %21 = phi %struct.zzzz* [ %23, %20 ], [ %0, %2 ], !dbg !1084
  call void @llvm.dbg.value(metadata %struct.zzzz* %21, metadata !1043, metadata !DIExpression()), !dbg !1084
  %22 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %21, i32 0, i32 1, !dbg !1085
  %23 = load %struct.zzzz*, %struct.zzzz** %22, align 4, !dbg !1085, !tbaa !912
  %24 = icmp eq %struct.zzzz* %23, null, !dbg !1086
  br i1 %24, label %25, label %20, !dbg !1087, !llvm.loop !1088

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %21, i32 0, i32 1, !dbg !1085
  call void @llvm.dbg.value(metadata %struct.zzzz* null, metadata !1038, metadata !DIExpression()) #16, !dbg !1090
  call void @llvm.dbg.value(metadata i8* %1, metadata !1039, metadata !DIExpression()) #16, !dbg !1090
  call void @llvm.dbg.value(metadata i32 8, metadata !1048, metadata !DIExpression()) #16, !dbg !1092
  %27 = tail call noalias dereferenceable_or_null(8) i8* @malloc(i32 8) #18, !dbg !1095
  call void @llvm.dbg.value(metadata i8* %27, metadata !1053, metadata !DIExpression()) #16, !dbg !1092
  %28 = icmp eq i8* %27, null, !dbg !1096
  br i1 %28, label %29, label %30, !dbg !1097

29:                                               ; preds = %25
  tail call fastcc void @outOfMemory() #17, !dbg !1098
  unreachable, !dbg !1098

30:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i8* %27, metadata !1060, metadata !DIExpression()) #16, !dbg !1099
  %31 = bitcast i8* %27 to i8**, !dbg !1100
  store i8* null, i8** %31, align 4, !dbg !1101, !tbaa !483
  %32 = getelementptr inbounds i8, i8* %27, i32 4, !dbg !1102
  %33 = bitcast i8* %32 to %struct.zzzz**, !dbg !1102
  store %struct.zzzz* null, %struct.zzzz** %33, align 4, !dbg !1103, !tbaa !912
  call void @llvm.dbg.value(metadata i8* %27, metadata !1040, metadata !DIExpression()) #16, !dbg !1104
  %34 = tail call i32 @strlen(i8* nonnull dereferenceable(1) %1) #16, !dbg !1105
  %35 = add i32 %34, 5, !dbg !1106
  call void @llvm.dbg.value(metadata i32 %35, metadata !1048, metadata !DIExpression()) #16, !dbg !1107
  %36 = tail call noalias i8* @malloc(i32 %35) #18, !dbg !1109
  call void @llvm.dbg.value(metadata i8* %36, metadata !1053, metadata !DIExpression()) #16, !dbg !1107
  %37 = icmp eq i8* %36, null, !dbg !1110
  br i1 %37, label %38, label %39, !dbg !1111

38:                                               ; preds = %30
  tail call fastcc void @outOfMemory() #17, !dbg !1112
  unreachable, !dbg !1112

39:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i8* %27, metadata !1040, metadata !DIExpression()) #16, !dbg !1104
  call void @llvm.dbg.value(metadata i8* %27, metadata !1060, metadata !DIExpression()) #16, !dbg !1099
  store i8* %36, i8** %31, align 4, !dbg !1113, !tbaa !483
  %40 = tail call i8* @strcpy(i8* nonnull dereferenceable(1) %36, i8* nonnull dereferenceable(1) %1) #16, !dbg !1114
  %41 = bitcast %struct.zzzz** %26 to i8**, !dbg !1115
  store i8* %27, i8** %41, align 4, !dbg !1115, !tbaa !912
  br label %42

42:                                               ; preds = %39, %17
  %43 = phi %struct.zzzz* [ %18, %17 ], [ %0, %39 ], !dbg !1116
  ret %struct.zzzz* %43, !dbg !1117
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare dso_local i32 @strlen(i8* nocapture) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare dso_local i8* @strstr(i8*, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind
define internal fastcc void @usage(i8* %0) unnamed_addr #0 !dbg !1118 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1120, metadata !DIExpression()), !dbg !1121
  %2 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1122, !tbaa !377
  %3 = getelementptr inbounds %struct._reent, %struct._reent* %2, i32 0, i32 3, !dbg !1122
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !1122, !tbaa !422
  %5 = tail call i8* @BZ2_bzlibVersion() #16, !dbg !1123
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([1230 x i8], [1230 x i8]* @.str.52, i32 0, i32 0), i8* %5, i8* %0), !dbg !1124
  ret void, !dbg !1125
}

; Function Attrs: noreturn
declare dso_local void @exit(i32) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct.__sFILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* nocapture, i8* nocapture, i32) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
define internal void @mySignalCatcher(i32 %0) #4 !dbg !1126 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1128, metadata !DIExpression()), !dbg !1129
  %2 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1130, !tbaa !377
  %3 = getelementptr inbounds %struct._reent, %struct._reent* %2, i32 0, i32 3, !dbg !1130
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !1130, !tbaa !422
  %5 = load i8*, i8** @progName, align 4, !dbg !1131, !tbaa !377
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.54, i32 0, i32 0), i8* %5), !dbg !1132
  tail call fastcc void @cleanUpAndFail(i32 1) #19, !dbg !1133
  unreachable, !dbg !1133
}

; Function Attrs: nounwind
define internal fastcc void @compress(i8* %0) unnamed_addr #0 !dbg !1134 {
  %2 = alloca %struct.utimbuf, align 8
  %3 = alloca [5000 x i8], align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [32 x i8], align 1
  %11 = alloca [32 x i8], align 1
  %12 = alloca %struct.UInt64, align 1
  %13 = alloca %struct.UInt64, align 1
  %14 = alloca %struct.stat, align 8
  %15 = alloca %struct.stat, align 8
  %16 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1136, metadata !DIExpression()), !dbg !1147
  %17 = bitcast %struct.stat* %16 to i8*, !dbg !1148
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %17) #16, !dbg !1148
  call void @llvm.dbg.declare(metadata %struct.stat* %16, metadata !1141, metadata !DIExpression()), !dbg !1149
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !dbg !1150, !tbaa !382
  %18 = icmp eq i8* %0, null, !dbg !1151
  %19 = load i32, i32* @srcMode, align 4
  %20 = icmp ne i32 %19, 1
  %21 = and i1 %18, %20, !dbg !1153
  br i1 %21, label %22, label %23, !dbg !1153

22:                                               ; preds = %1
  tail call fastcc void @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.55, i32 0, i32 0)) #19, !dbg !1154
  unreachable, !dbg !1154

23:                                               ; preds = %1
  switch i32 %19, label %74 [
    i32 1, label %24
    i32 3, label %27
    i32 2, label %58
  ], !dbg !1155

24:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), metadata !399, metadata !DIExpression()) #16, !dbg !1156
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), metadata !404, metadata !DIExpression()) #16, !dbg !1156
  %25 = tail call i8* @strncpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i32 1024) #16, !dbg !1159
  store i8 0, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 1024), align 1, !dbg !1160, !tbaa !382
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), metadata !399, metadata !DIExpression()) #16, !dbg !1161
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), metadata !404, metadata !DIExpression()) #16, !dbg !1161
  %26 = tail call i8* @strncpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), i32 1024) #16, !dbg !1163
  store i8 0, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 1024), align 1, !dbg !1164, !tbaa !382
  br label %91, !dbg !1165

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), metadata !399, metadata !DIExpression()) #16, !dbg !1167
  call void @llvm.dbg.value(metadata i8* %0, metadata !404, metadata !DIExpression()) #16, !dbg !1167
  %28 = tail call i32 @strlen(i8* nonnull dereferenceable(1) %0) #16, !dbg !1169
  %29 = icmp ugt i32 %28, 1024, !dbg !1170
  br i1 %29, label %30, label %40, !dbg !1171

30:                                               ; preds = %27
  %31 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1172, !tbaa !377
  %32 = getelementptr inbounds %struct._reent, %struct._reent* %31, i32 0, i32 3, !dbg !1172
  %33 = load %struct.__sFILE*, %struct.__sFILE** %32, align 4, !dbg !1172, !tbaa !422
  %34 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %33, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.41, i32 0, i32 0), i8* %0, i32 1024) #16, !dbg !1173
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()) #16, !dbg !1174
  %35 = load i32, i32* @exitValue, align 4, !dbg !1176, !tbaa !387
  %36 = icmp slt i32 %35, 1, !dbg !1177
  br i1 %36, label %37, label %38, !dbg !1178

37:                                               ; preds = %30
  store i32 1, i32* @exitValue, align 4, !dbg !1179, !tbaa !387
  br label %38, !dbg !1180

38:                                               ; preds = %37, %30
  %39 = phi i32 [ %35, %30 ], [ 1, %37 ], !dbg !1181
  tail call void @exit(i32 %39) #17, !dbg !1182
  unreachable, !dbg !1182

40:                                               ; preds = %27
  %41 = tail call i8* @strncpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* nonnull dereferenceable(1) %0, i32 1024) #16, !dbg !1183
  store i8 0, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 1024), align 1, !dbg !1184, !tbaa !382
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), metadata !399, metadata !DIExpression()) #16, !dbg !1185
  call void @llvm.dbg.value(metadata i8* %0, metadata !404, metadata !DIExpression()) #16, !dbg !1185
  %42 = tail call i32 @strlen(i8* nonnull dereferenceable(1) %0) #16, !dbg !1187
  %43 = icmp ugt i32 %42, 1024, !dbg !1188
  br i1 %43, label %44, label %54, !dbg !1189

44:                                               ; preds = %40
  %45 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1190, !tbaa !377
  %46 = getelementptr inbounds %struct._reent, %struct._reent* %45, i32 0, i32 3, !dbg !1190
  %47 = load %struct.__sFILE*, %struct.__sFILE** %46, align 4, !dbg !1190, !tbaa !422
  %48 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %47, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.41, i32 0, i32 0), i8* %0, i32 1024) #16, !dbg !1191
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()) #16, !dbg !1192
  %49 = load i32, i32* @exitValue, align 4, !dbg !1194, !tbaa !387
  %50 = icmp slt i32 %49, 1, !dbg !1195
  br i1 %50, label %51, label %52, !dbg !1196

51:                                               ; preds = %44
  store i32 1, i32* @exitValue, align 4, !dbg !1197, !tbaa !387
  br label %52, !dbg !1198

52:                                               ; preds = %51, %44
  %53 = phi i32 [ %49, %44 ], [ 1, %51 ], !dbg !1199
  tail call void @exit(i32 %53) #17, !dbg !1200
  unreachable, !dbg !1200

54:                                               ; preds = %40
  %55 = tail call i8* @strncpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* nonnull dereferenceable(1) %0, i32 1024) #16, !dbg !1201
  store i8 0, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 1024), align 1, !dbg !1202, !tbaa !382
  %56 = tail call i32 @strlen(i8* nonnull dereferenceable(1) getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0)), !dbg !1203
  %57 = getelementptr [1034 x i8], [1034 x i8]* @outName, i32 0, i32 %56, !dbg !1203
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 dereferenceable(5) %57, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 5, i1 false), !dbg !1203
  br label %74, !dbg !1204

58:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), metadata !399, metadata !DIExpression()) #16, !dbg !1205
  call void @llvm.dbg.value(metadata i8* %0, metadata !404, metadata !DIExpression()) #16, !dbg !1205
  %59 = tail call i32 @strlen(i8* nonnull dereferenceable(1) %0) #16, !dbg !1207
  %60 = icmp ugt i32 %59, 1024, !dbg !1208
  br i1 %60, label %61, label %71, !dbg !1209

61:                                               ; preds = %58
  %62 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1210, !tbaa !377
  %63 = getelementptr inbounds %struct._reent, %struct._reent* %62, i32 0, i32 3, !dbg !1210
  %64 = load %struct.__sFILE*, %struct.__sFILE** %63, align 4, !dbg !1210, !tbaa !422
  %65 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %64, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.41, i32 0, i32 0), i8* %0, i32 1024) #16, !dbg !1211
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()) #16, !dbg !1212
  %66 = load i32, i32* @exitValue, align 4, !dbg !1214, !tbaa !387
  %67 = icmp slt i32 %66, 1, !dbg !1215
  br i1 %67, label %68, label %69, !dbg !1216

68:                                               ; preds = %61
  store i32 1, i32* @exitValue, align 4, !dbg !1217, !tbaa !387
  br label %69, !dbg !1218

69:                                               ; preds = %68, %61
  %70 = phi i32 [ %66, %61 ], [ 1, %68 ], !dbg !1219
  tail call void @exit(i32 %70) #17, !dbg !1220
  unreachable, !dbg !1220

71:                                               ; preds = %58
  %72 = tail call i8* @strncpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* nonnull dereferenceable(1) %0, i32 1024) #16, !dbg !1221
  store i8 0, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 1024), align 1, !dbg !1222, !tbaa !382
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), metadata !399, metadata !DIExpression()) #16, !dbg !1223
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), metadata !404, metadata !DIExpression()) #16, !dbg !1223
  %73 = tail call i8* @strncpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), i32 1024) #16, !dbg !1225
  store i8 0, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 1024), align 1, !dbg !1226, !tbaa !382
  br label %74, !dbg !1227

74:                                               ; preds = %23, %54, %71
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), metadata !1228, metadata !DIExpression()) #16, !dbg !1235
  %75 = tail call %struct.__sFILE* @fopen(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0)) #16, !dbg !1237
  call void @llvm.dbg.value(metadata %struct.__sFILE* %75, metadata !1233, metadata !DIExpression()) #16, !dbg !1235
  %76 = icmp eq %struct.__sFILE* %75, null, !dbg !1238
  call void @llvm.dbg.value(metadata i1 %76, metadata !1234, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #16, !dbg !1235
  br i1 %76, label %79, label %77, !dbg !1239

77:                                               ; preds = %74
  %78 = tail call i32 @fclose(%struct.__sFILE* nonnull %75) #16, !dbg !1240
  call void @llvm.dbg.value(metadata i1 %76, metadata !1234, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #16, !dbg !1235
  br label %91

79:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i1 %76, metadata !1234, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #16, !dbg !1235
  %80 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1242, !tbaa !377
  %81 = getelementptr inbounds %struct._reent, %struct._reent* %80, i32 0, i32 3, !dbg !1242
  %82 = load %struct.__sFILE*, %struct.__sFILE** %81, align 4, !dbg !1242, !tbaa !422
  %83 = load i8*, i8** @progName, align 4, !dbg !1244, !tbaa !377
  %84 = tail call i32* @__errno() #16, !dbg !1245
  %85 = load i32, i32* %84, align 4, !dbg !1245, !tbaa !387
  %86 = tail call i8* @strerror(i32 %85) #16, !dbg !1246
  %87 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.59, i32 0, i32 0), i8* %83, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %86), !dbg !1247
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()), !dbg !1248
  %88 = load i32, i32* @exitValue, align 4, !dbg !1250, !tbaa !387
  %89 = icmp slt i32 %88, 1, !dbg !1251
  br i1 %89, label %90, label %545, !dbg !1252

90:                                               ; preds = %79
  store i32 1, i32* @exitValue, align 4, !dbg !1253, !tbaa !387
  br label %545, !dbg !1254

91:                                               ; preds = %24, %77
  call void @llvm.dbg.value(metadata i32 0, metadata !1140, metadata !DIExpression()), !dbg !1147
  %92 = tail call i32 @strlen(i8* nonnull dereferenceable(1) getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)) #16, !dbg !1147
  %93 = getelementptr inbounds [1034 x i8], [1034 x i8]* @inName, i32 0, i32 %92
  call void @llvm.dbg.value(metadata i32 0, metadata !1140, metadata !DIExpression()), !dbg !1147
  %94 = load i8*, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @zSuffix, i32 0, i32 0), align 4, !dbg !1255, !tbaa !377
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), metadata !1260, metadata !DIExpression()) #16, !dbg !1268
  call void @llvm.dbg.value(metadata i8* %94, metadata !1265, metadata !DIExpression()) #16, !dbg !1268
  call void @llvm.dbg.value(metadata i32 %92, metadata !1266, metadata !DIExpression()) #16, !dbg !1268
  %95 = tail call i32 @strlen(i8* nonnull dereferenceable(1) %94) #16, !dbg !1270
  call void @llvm.dbg.value(metadata i32 %95, metadata !1267, metadata !DIExpression()) #16, !dbg !1268
  %96 = icmp slt i32 %92, %95, !dbg !1271
  br i1 %96, label %116, label %97, !dbg !1273

97:                                               ; preds = %91
  %98 = sub i32 0, %95, !dbg !1274
  %99 = getelementptr inbounds i8, i8* %93, i32 %98, !dbg !1274
  %100 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %99, i8* nonnull dereferenceable(1) %94) #16, !dbg !1276
  %101 = icmp eq i32 %100, 0, !dbg !1277
  br i1 %101, label %102, label %116, !dbg !1278

102:                                              ; preds = %564, %555, %546, %97
  %103 = phi i8* [ %94, %97 ], [ %117, %546 ], [ %552, %555 ], [ %561, %564 ], !dbg !1255
  %104 = load i8, i8* @noisy, align 1, !dbg !1279, !tbaa !382
  %105 = icmp eq i8 %104, 0, !dbg !1279
  br i1 %105, label %112, label %106, !dbg !1282

106:                                              ; preds = %102
  %107 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1283, !tbaa !377
  %108 = getelementptr inbounds %struct._reent, %struct._reent* %107, i32 0, i32 3, !dbg !1283
  %109 = load %struct.__sFILE*, %struct.__sFILE** %108, align 4, !dbg !1283, !tbaa !422
  %110 = load i8*, i8** @progName, align 4, !dbg !1284, !tbaa !377
  %111 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %109, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.60, i32 0, i32 0), i8* %110, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %103), !dbg !1285
  br label %112, !dbg !1285

112:                                              ; preds = %106, %102
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()), !dbg !1286
  %113 = load i32, i32* @exitValue, align 4, !dbg !1288, !tbaa !387
  %114 = icmp slt i32 %113, 1, !dbg !1289
  br i1 %114, label %115, label %545, !dbg !1290

115:                                              ; preds = %112
  store i32 1, i32* @exitValue, align 4, !dbg !1291, !tbaa !387
  br label %545, !dbg !1292

116:                                              ; preds = %91, %97
  call void @llvm.dbg.value(metadata i32 1, metadata !1140, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata i32 1, metadata !1140, metadata !DIExpression()), !dbg !1147
  %117 = load i8*, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @zSuffix, i32 0, i32 1), align 4, !dbg !1255, !tbaa !377
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), metadata !1260, metadata !DIExpression()) #16, !dbg !1268
  call void @llvm.dbg.value(metadata i8* %117, metadata !1265, metadata !DIExpression()) #16, !dbg !1268
  call void @llvm.dbg.value(metadata i32 %92, metadata !1266, metadata !DIExpression()) #16, !dbg !1268
  %118 = tail call i32 @strlen(i8* nonnull dereferenceable(1) %117) #16, !dbg !1270
  call void @llvm.dbg.value(metadata i32 %118, metadata !1267, metadata !DIExpression()) #16, !dbg !1268
  %119 = icmp slt i32 %92, %118, !dbg !1271
  br i1 %119, label %551, label %546, !dbg !1273

120:                                              ; preds = %569
  %121 = call i32 @stat(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), %struct.stat* nonnull %16), !dbg !1293
  %122 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 2, !dbg !1296
  %123 = load i32, i32* %122, align 4, !dbg !1296, !tbaa !1298
  %124 = and i32 %123, 61440, !dbg !1296
  %125 = icmp eq i32 %124, 16384, !dbg !1296
  br i1 %125, label %128, label %126, !dbg !1303

126:                                              ; preds = %120
  %127 = load i32, i32* @srcMode, align 4, !dbg !1304, !tbaa !387
  br label %137, !dbg !1303

128:                                              ; preds = %120
  %129 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1306, !tbaa !377
  %130 = getelementptr inbounds %struct._reent, %struct._reent* %129, i32 0, i32 3, !dbg !1306
  %131 = load %struct.__sFILE*, %struct.__sFILE** %130, align 4, !dbg !1306, !tbaa !422
  %132 = load i8*, i8** @progName, align 4, !dbg !1308, !tbaa !377
  %133 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %131, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.61, i32 0, i32 0), i8* %132, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !1309
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()), !dbg !1310
  %134 = load i32, i32* @exitValue, align 4, !dbg !1312, !tbaa !387
  %135 = icmp slt i32 %134, 1, !dbg !1313
  br i1 %135, label %136, label %545, !dbg !1314

136:                                              ; preds = %128
  store i32 1, i32* @exitValue, align 4, !dbg !1315, !tbaa !387
  br label %545, !dbg !1316

137:                                              ; preds = %126, %569
  %138 = phi i32 [ %127, %126 ], [ %570, %569 ], !dbg !1304
  %139 = icmp ne i32 %138, 3, !dbg !1317
  %140 = load i8, i8* @forceOverwrite, align 1
  %141 = icmp ne i8 %140, 0
  %142 = or i1 %139, %141, !dbg !1318
  br i1 %142, label %167, label %143, !dbg !1318

143:                                              ; preds = %137
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), metadata !1319, metadata !DIExpression()) #16, !dbg !1324
  %144 = bitcast %struct.stat* %15 to i8*, !dbg !1326
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %144) #16, !dbg !1326
  call void @llvm.dbg.declare(metadata %struct.stat* %15, metadata !1323, metadata !DIExpression()) #16, !dbg !1327
  %145 = call i32 bitcast (i32 (...)* @lstat to i32 (i8*, %struct.stat*)*)(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), %struct.stat* nonnull %15) #16, !dbg !1328
  call void @llvm.dbg.value(metadata i32 %145, metadata !1322, metadata !DIExpression()) #16, !dbg !1324
  %146 = icmp eq i32 %145, 0, !dbg !1329
  %147 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 2, !dbg !1331
  %148 = load i32, i32* %147, align 4, !dbg !1331
  %149 = and i32 %148, 61440, !dbg !1331
  %150 = icmp eq i32 %149, 32768, !dbg !1331
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %144) #16, !dbg !1332
  %151 = and i1 %146, %150, !dbg !1333
  br i1 %151, label %165, label %152, !dbg !1334

152:                                              ; preds = %143
  %153 = load i8, i8* @noisy, align 1, !dbg !1335, !tbaa !382
  %154 = icmp eq i8 %153, 0, !dbg !1335
  br i1 %154, label %161, label %155, !dbg !1338

155:                                              ; preds = %152
  %156 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1339, !tbaa !377
  %157 = getelementptr inbounds %struct._reent, %struct._reent* %156, i32 0, i32 3, !dbg !1339
  %158 = load %struct.__sFILE*, %struct.__sFILE** %157, align 4, !dbg !1339, !tbaa !422
  %159 = load i8*, i8** @progName, align 4, !dbg !1340, !tbaa !377
  %160 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %158, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.62, i32 0, i32 0), i8* %159, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !1341
  br label %161, !dbg !1341

161:                                              ; preds = %155, %152
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()), !dbg !1342
  %162 = load i32, i32* @exitValue, align 4, !dbg !1344, !tbaa !387
  %163 = icmp slt i32 %162, 1, !dbg !1345
  br i1 %163, label %164, label %545, !dbg !1346

164:                                              ; preds = %161
  store i32 1, i32* @exitValue, align 4, !dbg !1347, !tbaa !387
  br label %545, !dbg !1348

165:                                              ; preds = %143
  %166 = load i32, i32* @srcMode, align 4, !dbg !1349, !tbaa !387
  br label %167, !dbg !1349

167:                                              ; preds = %165, %137
  %168 = phi i32 [ %166, %165 ], [ %138, %137 ], !dbg !1349
  %169 = icmp eq i32 %168, 3, !dbg !1351
  br i1 %169, label %170, label %188, !dbg !1352

170:                                              ; preds = %167
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), metadata !1228, metadata !DIExpression()) #16, !dbg !1353
  %171 = call %struct.__sFILE* @fopen(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0)) #16, !dbg !1355
  call void @llvm.dbg.value(metadata %struct.__sFILE* %171, metadata !1233, metadata !DIExpression()) #16, !dbg !1353
  %172 = icmp eq %struct.__sFILE* %171, null, !dbg !1356
  call void @llvm.dbg.value(metadata i1 %172, metadata !1234, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #16, !dbg !1353
  br i1 %172, label %188, label %173, !dbg !1357

173:                                              ; preds = %170
  %174 = call i32 @fclose(%struct.__sFILE* nonnull %171) #16, !dbg !1358
  call void @llvm.dbg.value(metadata i1 %172, metadata !1234, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #16, !dbg !1353
  %175 = load i8, i8* @forceOverwrite, align 1, !dbg !1359, !tbaa !382
  %176 = icmp eq i8 %175, 0, !dbg !1359
  br i1 %176, label %179, label %177, !dbg !1362

177:                                              ; preds = %173
  %178 = call i32 @remove(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0)), !dbg !1363
  br label %188, !dbg !1365

179:                                              ; preds = %173
  %180 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1366, !tbaa !377
  %181 = getelementptr inbounds %struct._reent, %struct._reent* %180, i32 0, i32 3, !dbg !1366
  %182 = load %struct.__sFILE*, %struct.__sFILE** %181, align 4, !dbg !1366, !tbaa !422
  %183 = load i8*, i8** @progName, align 4, !dbg !1368, !tbaa !377
  %184 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %182, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.63, i32 0, i32 0), i8* %183, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0)), !dbg !1369
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()), !dbg !1370
  %185 = load i32, i32* @exitValue, align 4, !dbg !1372, !tbaa !387
  %186 = icmp slt i32 %185, 1, !dbg !1373
  br i1 %186, label %187, label %545, !dbg !1374

187:                                              ; preds = %179
  store i32 1, i32* @exitValue, align 4, !dbg !1375, !tbaa !387
  br label %545, !dbg !1376

188:                                              ; preds = %170, %177, %167
  %189 = load i32, i32* @srcMode, align 4, !dbg !1377, !tbaa !387
  %190 = icmp ne i32 %189, 3, !dbg !1379
  %191 = load i8, i8* @forceOverwrite, align 1
  %192 = icmp ne i8 %191, 0
  %193 = or i1 %190, %192, !dbg !1380
  br i1 %193, label %217, label %194, !dbg !1380

194:                                              ; preds = %188
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), metadata !1381, metadata !DIExpression()) #16, !dbg !1388
  %195 = bitcast %struct.stat* %14 to i8*, !dbg !1390
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %195) #16, !dbg !1390
  call void @llvm.dbg.declare(metadata %struct.stat* %14, metadata !1387, metadata !DIExpression()) #16, !dbg !1391
  %196 = call i32 bitcast (i32 (...)* @lstat to i32 (i8*, %struct.stat*)*)(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), %struct.stat* nonnull %14) #16, !dbg !1392
  call void @llvm.dbg.value(metadata i32 %196, metadata !1386, metadata !DIExpression()) #16, !dbg !1388
  %197 = icmp eq i32 %196, 0, !dbg !1393
  %198 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 3, !dbg !1395
  %199 = load i16, i16* %198, align 8, !dbg !1395
  %200 = zext i16 %199 to i32, !dbg !1395
  %201 = add nsw i32 %200, -1, !dbg !1395
  %202 = select i1 %197, i32 %201, i32 0, !dbg !1395
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %195) #16, !dbg !1396
  call void @llvm.dbg.value(metadata i32 %202, metadata !1139, metadata !DIExpression()), !dbg !1147
  %203 = icmp sgt i32 %202, 0, !dbg !1397
  br i1 %203, label %204, label %215, !dbg !1398

204:                                              ; preds = %194
  %205 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1399, !tbaa !377
  %206 = getelementptr inbounds %struct._reent, %struct._reent* %205, i32 0, i32 3, !dbg !1399
  %207 = load %struct.__sFILE*, %struct.__sFILE** %206, align 4, !dbg !1399, !tbaa !422
  %208 = load i8*, i8** @progName, align 4, !dbg !1401, !tbaa !377
  %209 = icmp eq i32 %202, 1, !dbg !1402
  %210 = select i1 %209, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i32 0, i32 0), !dbg !1403
  %211 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %207, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.64, i32 0, i32 0), i8* %208, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i32 %202, i8* %210), !dbg !1404
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()), !dbg !1405
  %212 = load i32, i32* @exitValue, align 4, !dbg !1407, !tbaa !387
  %213 = icmp slt i32 %212, 1, !dbg !1408
  br i1 %213, label %214, label %545, !dbg !1409

214:                                              ; preds = %204
  store i32 1, i32* @exitValue, align 4, !dbg !1410, !tbaa !387
  br label %545, !dbg !1411

215:                                              ; preds = %194
  %216 = load i32, i32* @srcMode, align 4, !dbg !1412, !tbaa !387
  br label %217, !dbg !1412

217:                                              ; preds = %215, %188
  %218 = phi i32 [ %216, %215 ], [ %189, %188 ], !dbg !1412
  %219 = icmp eq i32 %218, 3, !dbg !1414
  br i1 %219, label %220, label %226, !dbg !1415

220:                                              ; preds = %217
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), metadata !1416, metadata !DIExpression()) #16, !dbg !1420
  %221 = call i32 @stat(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), %struct.stat* nonnull @fileMetaInfo) #16, !dbg !1423
  call void @llvm.dbg.value(metadata i32 %221, metadata !1419, metadata !DIExpression()) #16, !dbg !1420
  %222 = icmp eq i32 %221, 0, !dbg !1424
  br i1 %222, label %223, label %225, !dbg !1427

223:                                              ; preds = %220
  %224 = load i32, i32* @srcMode, align 4, !dbg !1428, !tbaa !387
  br label %226, !dbg !1427

225:                                              ; preds = %220
  call fastcc void @ioError() #17, !dbg !1424
  unreachable, !dbg !1424

226:                                              ; preds = %223, %217
  %227 = phi i32 [ %224, %223 ], [ %218, %217 ], !dbg !1428
  switch i32 %227, label %331 [
    i32 1, label %228
    i32 2, label %251
    i32 3, label %291
  ], !dbg !1429

228:                                              ; preds = %226
  %229 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1430, !tbaa !377
  %230 = getelementptr inbounds %struct._reent, %struct._reent* %229, i32 0, i32 1, !dbg !1430
  %231 = load %struct.__sFILE*, %struct.__sFILE** %230, align 4, !dbg !1430, !tbaa !1432
  call void @llvm.dbg.value(metadata %struct.__sFILE* %231, metadata !1137, metadata !DIExpression()), !dbg !1147
  %232 = getelementptr inbounds %struct._reent, %struct._reent* %229, i32 0, i32 2, !dbg !1433
  %233 = load %struct.__sFILE*, %struct.__sFILE** %232, align 8, !dbg !1433, !tbaa !1434
  call void @llvm.dbg.value(metadata %struct.__sFILE* %233, metadata !1138, metadata !DIExpression()), !dbg !1147
  %234 = call i32 @fileno(%struct.__sFILE* %233), !dbg !1435
  %235 = call i32 @isatty(i32 %234) #16, !dbg !1437
  %236 = icmp eq i32 %235, 0, !dbg !1437
  br i1 %236, label %332, label %237, !dbg !1438

237:                                              ; preds = %228
  %238 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1439, !tbaa !377
  %239 = getelementptr inbounds %struct._reent, %struct._reent* %238, i32 0, i32 3, !dbg !1439
  %240 = load %struct.__sFILE*, %struct.__sFILE** %239, align 4, !dbg !1439, !tbaa !422
  %241 = load i8*, i8** @progName, align 4, !dbg !1441, !tbaa !377
  %242 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %240, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.66, i32 0, i32 0), i8* %241), !dbg !1442
  %243 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1443, !tbaa !377
  %244 = getelementptr inbounds %struct._reent, %struct._reent* %243, i32 0, i32 3, !dbg !1443
  %245 = load %struct.__sFILE*, %struct.__sFILE** %244, align 4, !dbg !1443, !tbaa !422
  %246 = load i8*, i8** @progName, align 4, !dbg !1444, !tbaa !377
  %247 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %245, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.67, i32 0, i32 0), i8* %246, i8* %246), !dbg !1445
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()), !dbg !1446
  %248 = load i32, i32* @exitValue, align 4, !dbg !1448, !tbaa !387
  %249 = icmp slt i32 %248, 1, !dbg !1449
  br i1 %249, label %250, label %545, !dbg !1450

250:                                              ; preds = %237
  store i32 1, i32* @exitValue, align 4, !dbg !1451, !tbaa !387
  br label %545, !dbg !1452

251:                                              ; preds = %226
  %252 = call %struct.__sFILE* @fopen(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0)), !dbg !1453
  call void @llvm.dbg.value(metadata %struct.__sFILE* %252, metadata !1137, metadata !DIExpression()), !dbg !1147
  %253 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1454, !tbaa !377
  %254 = getelementptr inbounds %struct._reent, %struct._reent* %253, i32 0, i32 2, !dbg !1454
  %255 = load %struct.__sFILE*, %struct.__sFILE** %254, align 8, !dbg !1454, !tbaa !1434
  call void @llvm.dbg.value(metadata %struct.__sFILE* %255, metadata !1138, metadata !DIExpression()), !dbg !1147
  %256 = call i32 @fileno(%struct.__sFILE* %255), !dbg !1455
  %257 = call i32 @isatty(i32 %256) #16, !dbg !1457
  %258 = icmp eq i32 %257, 0, !dbg !1457
  br i1 %258, label %277, label %259, !dbg !1458

259:                                              ; preds = %251
  %260 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1459, !tbaa !377
  %261 = getelementptr inbounds %struct._reent, %struct._reent* %260, i32 0, i32 3, !dbg !1459
  %262 = load %struct.__sFILE*, %struct.__sFILE** %261, align 4, !dbg !1459, !tbaa !422
  %263 = load i8*, i8** @progName, align 4, !dbg !1461, !tbaa !377
  %264 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %262, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.66, i32 0, i32 0), i8* %263), !dbg !1462
  %265 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1463, !tbaa !377
  %266 = getelementptr inbounds %struct._reent, %struct._reent* %265, i32 0, i32 3, !dbg !1463
  %267 = load %struct.__sFILE*, %struct.__sFILE** %266, align 4, !dbg !1463, !tbaa !422
  %268 = load i8*, i8** @progName, align 4, !dbg !1464, !tbaa !377
  %269 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %267, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.67, i32 0, i32 0), i8* %268, i8* %268), !dbg !1465
  %270 = icmp eq %struct.__sFILE* %252, null, !dbg !1466
  br i1 %270, label %273, label %271, !dbg !1468

271:                                              ; preds = %259
  %272 = call i32 @fclose(%struct.__sFILE* nonnull %252), !dbg !1469
  br label %273, !dbg !1469

273:                                              ; preds = %271, %259
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()), !dbg !1470
  %274 = load i32, i32* @exitValue, align 4, !dbg !1472, !tbaa !387
  %275 = icmp slt i32 %274, 1, !dbg !1473
  br i1 %275, label %276, label %545, !dbg !1474

276:                                              ; preds = %273
  store i32 1, i32* @exitValue, align 4, !dbg !1475, !tbaa !387
  br label %545, !dbg !1476

277:                                              ; preds = %251
  %278 = icmp eq %struct.__sFILE* %252, null, !dbg !1477
  br i1 %278, label %279, label %332, !dbg !1479

279:                                              ; preds = %277
  %280 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1480, !tbaa !377
  %281 = getelementptr inbounds %struct._reent, %struct._reent* %280, i32 0, i32 3, !dbg !1480
  %282 = load %struct.__sFILE*, %struct.__sFILE** %281, align 4, !dbg !1480, !tbaa !422
  %283 = load i8*, i8** @progName, align 4, !dbg !1482, !tbaa !377
  %284 = call i32* @__errno() #16, !dbg !1483
  %285 = load i32, i32* %284, align 4, !dbg !1483, !tbaa !387
  %286 = call i8* @strerror(i32 %285) #16, !dbg !1484
  %287 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %282, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.59, i32 0, i32 0), i8* %283, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %286), !dbg !1485
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()), !dbg !1486
  %288 = load i32, i32* @exitValue, align 4, !dbg !1488, !tbaa !387
  %289 = icmp slt i32 %288, 1, !dbg !1489
  br i1 %289, label %290, label %545, !dbg !1490

290:                                              ; preds = %279
  store i32 1, i32* @exitValue, align 4, !dbg !1491, !tbaa !387
  br label %545, !dbg !1492

291:                                              ; preds = %226
  %292 = call %struct.__sFILE* @fopen(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0)), !dbg !1493
  call void @llvm.dbg.value(metadata %struct.__sFILE* %292, metadata !1137, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), metadata !1494, metadata !DIExpression()) #16, !dbg !1502
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0), metadata !1499, metadata !DIExpression()) #16, !dbg !1502
  %293 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i32 2561, i32 384) #16, !dbg !1504
  call void @llvm.dbg.value(metadata i32 %293, metadata !1501, metadata !DIExpression()) #16, !dbg !1502
  %294 = icmp eq i32 %293, -1, !dbg !1505
  br i1 %294, label %300, label %295, !dbg !1507

295:                                              ; preds = %291
  %296 = call %struct.__sFILE* @fdopen(i32 %293, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0)) #16, !dbg !1508
  call void @llvm.dbg.value(metadata %struct.__sFILE* %296, metadata !1500, metadata !DIExpression()) #16, !dbg !1502
  %297 = icmp eq %struct.__sFILE* %296, null, !dbg !1509
  br i1 %297, label %298, label %316, !dbg !1511

298:                                              ; preds = %295
  %299 = call i32 @close(i32 %293) #16, !dbg !1512
  br label %300, !dbg !1512

300:                                              ; preds = %291, %298
  call void @llvm.dbg.value(metadata %struct.__sFILE* %296, metadata !1138, metadata !DIExpression()), !dbg !1147
  %301 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1513, !tbaa !377
  %302 = getelementptr inbounds %struct._reent, %struct._reent* %301, i32 0, i32 3, !dbg !1513
  %303 = load %struct.__sFILE*, %struct.__sFILE** %302, align 4, !dbg !1513, !tbaa !422
  %304 = load i8*, i8** @progName, align 4, !dbg !1516, !tbaa !377
  %305 = call i32* @__errno() #16, !dbg !1517
  %306 = load i32, i32* %305, align 4, !dbg !1517, !tbaa !387
  %307 = call i8* @strerror(i32 %306) #16, !dbg !1518
  %308 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %303, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.70, i32 0, i32 0), i8* %304, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* %307), !dbg !1519
  %309 = icmp eq %struct.__sFILE* %292, null, !dbg !1520
  br i1 %309, label %312, label %310, !dbg !1522

310:                                              ; preds = %300
  %311 = call i32 @fclose(%struct.__sFILE* nonnull %292), !dbg !1523
  br label %312, !dbg !1523

312:                                              ; preds = %310, %300
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()), !dbg !1524
  %313 = load i32, i32* @exitValue, align 4, !dbg !1526, !tbaa !387
  %314 = icmp slt i32 %313, 1, !dbg !1527
  br i1 %314, label %315, label %545, !dbg !1528

315:                                              ; preds = %312
  store i32 1, i32* @exitValue, align 4, !dbg !1529, !tbaa !387
  br label %545, !dbg !1530

316:                                              ; preds = %295
  call void @llvm.dbg.value(metadata %struct.__sFILE* %296, metadata !1138, metadata !DIExpression()), !dbg !1147
  %317 = icmp eq %struct.__sFILE* %292, null, !dbg !1531
  br i1 %317, label %318, label %332, !dbg !1533

318:                                              ; preds = %316
  %319 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1534, !tbaa !377
  %320 = getelementptr inbounds %struct._reent, %struct._reent* %319, i32 0, i32 3, !dbg !1534
  %321 = load %struct.__sFILE*, %struct.__sFILE** %320, align 4, !dbg !1534, !tbaa !422
  %322 = load i8*, i8** @progName, align 4, !dbg !1536, !tbaa !377
  %323 = call i32* @__errno() #16, !dbg !1537
  %324 = load i32, i32* %323, align 4, !dbg !1537, !tbaa !387
  %325 = call i8* @strerror(i32 %324) #16, !dbg !1538
  %326 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %321, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.59, i32 0, i32 0), i8* %322, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %325), !dbg !1539
  %327 = call i32 @fclose(%struct.__sFILE* nonnull %296), !dbg !1540
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()), !dbg !1542
  %328 = load i32, i32* @exitValue, align 4, !dbg !1544, !tbaa !387
  %329 = icmp slt i32 %328, 1, !dbg !1545
  br i1 %329, label %330, label %545, !dbg !1546

330:                                              ; preds = %318
  store i32 1, i32* @exitValue, align 4, !dbg !1547, !tbaa !387
  br label %545, !dbg !1548

331:                                              ; preds = %226
  call fastcc void @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.71, i32 0, i32 0)) #19, !dbg !1549
  unreachable, !dbg !1549

332:                                              ; preds = %316, %277, %228
  %333 = phi %struct.__sFILE* [ %296, %316 ], [ %255, %277 ], [ %233, %228 ], !dbg !1550
  %334 = phi %struct.__sFILE* [ %292, %316 ], [ %252, %277 ], [ %231, %228 ], !dbg !1550
  call void @llvm.dbg.value(metadata %struct.__sFILE* %334, metadata !1137, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata %struct.__sFILE* %333, metadata !1138, metadata !DIExpression()), !dbg !1147
  %335 = load i32, i32* @verbosity, align 4, !dbg !1551, !tbaa !387
  %336 = icmp sgt i32 %335, 0, !dbg !1553
  br i1 %336, label %337, label %361, !dbg !1554

337:                                              ; preds = %332
  %338 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1555, !tbaa !377
  %339 = getelementptr inbounds %struct._reent, %struct._reent* %338, i32 0, i32 3, !dbg !1555
  %340 = load %struct.__sFILE*, %struct.__sFILE** %339, align 4, !dbg !1555, !tbaa !422
  %341 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %340, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !1557
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), metadata !1558, metadata !DIExpression()) #16, !dbg !1562
  %342 = call i32 @strlen(i8* nonnull dereferenceable(1) getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)) #16, !dbg !1564
  %343 = load i32, i32* @longestFileName, align 4, !dbg !1566, !tbaa !387
  %344 = icmp slt i32 %342, %343, !dbg !1567
  br i1 %344, label %345, label %356, !dbg !1568

345:                                              ; preds = %337, %345
  %346 = phi i32 [ %351, %345 ], [ 1, %337 ]
  call void @llvm.dbg.value(metadata i32 %346, metadata !1561, metadata !DIExpression()) #16, !dbg !1562
  %347 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1569, !tbaa !377
  %348 = getelementptr inbounds %struct._reent, %struct._reent* %347, i32 0, i32 3, !dbg !1569
  %349 = load %struct.__sFILE*, %struct.__sFILE** %348, align 4, !dbg !1569, !tbaa !422
  %350 = call i32 @fputc(i32 32, %struct.__sFILE* %349) #16, !dbg !1572
  %351 = add nuw nsw i32 %346, 1, !dbg !1573
  call void @llvm.dbg.value(metadata i32 %351, metadata !1561, metadata !DIExpression()) #16, !dbg !1562
  %352 = load i32, i32* @longestFileName, align 4, !dbg !1574, !tbaa !387
  %353 = call i32 @strlen(i8* nonnull dereferenceable(1) getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)) #16, !dbg !1575
  %354 = sub nsw i32 %352, %353, !dbg !1576
  %355 = icmp slt i32 %346, %354, !dbg !1577
  br i1 %355, label %345, label %356, !dbg !1578, !llvm.loop !1579

356:                                              ; preds = %345, %337
  %357 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1581, !tbaa !377
  %358 = getelementptr inbounds %struct._reent, %struct._reent* %357, i32 0, i32 3, !dbg !1581
  %359 = load %struct.__sFILE*, %struct.__sFILE** %358, align 4, !dbg !1581, !tbaa !422
  %360 = call i32 @fflush(%struct.__sFILE* %359), !dbg !1582
  br label %361, !dbg !1583

361:                                              ; preds = %356, %332
  store %struct.__sFILE* %333, %struct.__sFILE** @outputHandleJustInCase, align 4, !dbg !1584, !tbaa !377
  store i8 1, i8* @deleteOutputOnInterrupt, align 1, !dbg !1585, !tbaa !382
  call void @llvm.dbg.value(metadata %struct.__sFILE* %334, metadata !1586, metadata !DIExpression()) #16, !dbg !1631
  call void @llvm.dbg.value(metadata %struct.__sFILE* %333, metadata !1591, metadata !DIExpression()) #16, !dbg !1631
  call void @llvm.dbg.value(metadata i8* null, metadata !1592, metadata !DIExpression()) #16, !dbg !1631
  %362 = getelementptr inbounds [5000 x i8], [5000 x i8]* %3, i32 0, i32 0, !dbg !1633
  call void @llvm.lifetime.start.p0i8(i64 5000, i8* nonnull %362) #16, !dbg !1633
  call void @llvm.dbg.declare(metadata [5000 x i8]* %3, metadata !1596, metadata !DIExpression()) #16, !dbg !1634
  %363 = bitcast i32* %4 to i8*, !dbg !1635
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %363) #16, !dbg !1635
  %364 = bitcast i32* %5 to i8*, !dbg !1635
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %364) #16, !dbg !1635
  %365 = bitcast i32* %6 to i8*, !dbg !1636
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %365) #16, !dbg !1636
  %366 = bitcast i32* %7 to i8*, !dbg !1636
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %366) #16, !dbg !1636
  %367 = bitcast i32* %8 to i8*, !dbg !1637
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %367) #16, !dbg !1637
  %368 = bitcast i32* %9 to i8*, !dbg !1637
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %368) #16, !dbg !1637
  %369 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %334, i32 0, i32 3, !dbg !1638
  %370 = load i16, i16* %369, align 4, !dbg !1638, !tbaa !1640
  %371 = and i16 %370, 64, !dbg !1638
  %372 = icmp eq i16 %371, 0, !dbg !1638
  br i1 %372, label %373, label %523, !dbg !1644

373:                                              ; preds = %361
  %374 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %333, i32 0, i32 3, !dbg !1645
  %375 = load i16, i16* %374, align 4, !dbg !1645, !tbaa !1640
  %376 = and i16 %375, 64, !dbg !1645
  %377 = icmp eq i16 %376, 0, !dbg !1645
  br i1 %377, label %378, label %523, !dbg !1647

378:                                              ; preds = %373
  %379 = load i32, i32* @blockSize100k, align 4, !dbg !1648, !tbaa !387
  %380 = load i32, i32* @verbosity, align 4, !dbg !1649, !tbaa !387
  %381 = load i32, i32* @workFactor, align 4, !dbg !1650, !tbaa !387
  call void @llvm.dbg.value(metadata i32* %8, metadata !1606, metadata !DIExpression(DW_OP_deref)) #16, !dbg !1631
  %382 = call i8* @BZ2_bzWriteOpen(i32* nonnull %8, %struct.__sFILE* nonnull %333, i32 %379, i32 %380, i32 %381) #16, !dbg !1651
  call void @llvm.dbg.value(metadata i8* %382, metadata !1592, metadata !DIExpression()) #16, !dbg !1631
  %383 = load i32, i32* %8, align 4, !dbg !1652, !tbaa !387
  call void @llvm.dbg.value(metadata i32 %383, metadata !1606, metadata !DIExpression()) #16, !dbg !1631
  %384 = icmp eq i32 %383, 0, !dbg !1654
  br i1 %384, label %385, label %519, !dbg !1655

385:                                              ; preds = %378
  %386 = load i32, i32* @verbosity, align 4, !dbg !1656, !tbaa !387
  %387 = icmp sgt i32 %386, 1, !dbg !1658
  br i1 %387, label %388, label %393, !dbg !1659

388:                                              ; preds = %385
  %389 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1660, !tbaa !377
  %390 = getelementptr inbounds %struct._reent, %struct._reent* %389, i32 0, i32 3, !dbg !1660
  %391 = load %struct.__sFILE*, %struct.__sFILE** %390, align 4, !dbg !1660, !tbaa !422
  %392 = call i32 @fputc(i32 10, %struct.__sFILE* %391) #16, !dbg !1661
  br label %393, !dbg !1661

393:                                              ; preds = %388, %385
  br label %394, !dbg !1662

394:                                              ; preds = %393, %406
  call void @llvm.dbg.value(metadata %struct.__sFILE* %334, metadata !1663, metadata !DIExpression()) #16, !dbg !1669
  %395 = call i32 @fgetc(%struct.__sFILE* nonnull %334) #16, !dbg !1673
  call void @llvm.dbg.value(metadata i32 %395, metadata !1668, metadata !DIExpression()) #16, !dbg !1669
  %396 = icmp eq i32 %395, -1, !dbg !1674
  br i1 %396, label %409, label %397, !dbg !1676

397:                                              ; preds = %394
  %398 = call i32 @ungetc(i32 %395, %struct.__sFILE* nonnull %334) #16, !dbg !1677
  %399 = call i32 @fread(i8* nonnull %362, i32 1, i32 5000, %struct.__sFILE* nonnull %334) #16, !dbg !1678
  call void @llvm.dbg.value(metadata i32 %399, metadata !1600, metadata !DIExpression()) #16, !dbg !1631
  %400 = load i16, i16* %369, align 4, !dbg !1679, !tbaa !1640
  %401 = and i16 %400, 64, !dbg !1679
  %402 = icmp eq i16 %401, 0, !dbg !1679
  br i1 %402, label %403, label %523, !dbg !1681

403:                                              ; preds = %397
  %404 = icmp sgt i32 %399, 0, !dbg !1682
  br i1 %404, label %405, label %406, !dbg !1684

405:                                              ; preds = %403
  call void @llvm.dbg.value(metadata i32* %8, metadata !1606, metadata !DIExpression(DW_OP_deref)) #16, !dbg !1631
  call void @BZ2_bzWrite(i32* nonnull %8, i8* %382, i8* nonnull %362, i32 %399) #16, !dbg !1685
  br label %406, !dbg !1685

406:                                              ; preds = %405, %403
  %407 = load i32, i32* %8, align 4, !dbg !1686, !tbaa !387
  call void @llvm.dbg.value(metadata i32 %407, metadata !1606, metadata !DIExpression()) #16, !dbg !1631
  %408 = icmp eq i32 %407, 0, !dbg !1688
  br i1 %408, label %394, label %519, !dbg !1689, !llvm.loop !1690

409:                                              ; preds = %394
  call void @llvm.dbg.value(metadata i32* %4, metadata !1601, metadata !DIExpression(DW_OP_deref)) #16, !dbg !1631
  call void @llvm.dbg.value(metadata i32* %5, metadata !1603, metadata !DIExpression(DW_OP_deref)) #16, !dbg !1631
  call void @llvm.dbg.value(metadata i32* %6, metadata !1604, metadata !DIExpression(DW_OP_deref)) #16, !dbg !1631
  call void @llvm.dbg.value(metadata i32* %7, metadata !1605, metadata !DIExpression(DW_OP_deref)) #16, !dbg !1631
  call void @llvm.dbg.value(metadata i32* %8, metadata !1606, metadata !DIExpression(DW_OP_deref)) #16, !dbg !1631
  call void @BZ2_bzWriteClose64(i32* nonnull %8, i8* %382, i32 0, i32* nonnull %4, i32* nonnull %5, i32* nonnull %6, i32* nonnull %7) #16, !dbg !1692
  %410 = load i32, i32* %8, align 4, !dbg !1693, !tbaa !387
  call void @llvm.dbg.value(metadata i32 %410, metadata !1606, metadata !DIExpression()) #16, !dbg !1631
  %411 = icmp eq i32 %410, 0, !dbg !1695
  br i1 %411, label %412, label %519, !dbg !1696

412:                                              ; preds = %409
  %413 = load i16, i16* %374, align 4, !dbg !1697, !tbaa !1640
  %414 = and i16 %413, 64, !dbg !1697
  %415 = icmp eq i16 %414, 0, !dbg !1697
  br i1 %415, label %416, label %523, !dbg !1699

416:                                              ; preds = %412
  %417 = call i32 @fflush(%struct.__sFILE* nonnull %333) #16, !dbg !1700
  call void @llvm.dbg.value(metadata i32 %417, metadata !1608, metadata !DIExpression()) #16, !dbg !1631
  %418 = icmp eq i32 %417, -1, !dbg !1701
  br i1 %418, label %523, label %419, !dbg !1703

419:                                              ; preds = %416
  %420 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1704, !tbaa !377
  %421 = getelementptr inbounds %struct._reent, %struct._reent* %420, i32 0, i32 2, !dbg !1704
  %422 = load %struct.__sFILE*, %struct.__sFILE** %421, align 8, !dbg !1704, !tbaa !1434
  %423 = icmp eq %struct.__sFILE* %422, %333, !dbg !1705
  br i1 %423, label %438, label %424, !dbg !1706

424:                                              ; preds = %419
  %425 = call i32 @fileno(%struct.__sFILE* nonnull %333) #16, !dbg !1707
  call void @llvm.dbg.value(metadata i32 %425, metadata !1609, metadata !DIExpression()) #16, !dbg !1708
  %426 = icmp slt i32 %425, 0, !dbg !1709
  br i1 %426, label %523, label %427, !dbg !1711

427:                                              ; preds = %424
  call void @llvm.dbg.value(metadata i32 %425, metadata !1712, metadata !DIExpression()) #16, !dbg !1716
  %428 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @fileMetaInfo, i32 0, i32 2), align 4, !dbg !1718, !tbaa !1298
  %429 = call i32 @fchmod(i32 %425, i32 %428) #16, !dbg !1719
  call void @llvm.dbg.value(metadata i32 %429, metadata !1715, metadata !DIExpression()) #16, !dbg !1716
  %430 = icmp eq i32 %429, 0, !dbg !1720
  br i1 %430, label %432, label %431, !dbg !1723

431:                                              ; preds = %427
  call fastcc void @ioError() #17, !dbg !1720
  unreachable, !dbg !1720

432:                                              ; preds = %427
  %433 = load i16, i16* getelementptr inbounds (%struct.stat, %struct.stat* @fileMetaInfo, i32 0, i32 4), align 2, !dbg !1724, !tbaa !1725
  %434 = load i16, i16* getelementptr inbounds (%struct.stat, %struct.stat* @fileMetaInfo, i32 0, i32 5), align 4, !dbg !1726, !tbaa !1727
  %435 = call i32 @fchown(i32 %425, i16 zeroext %433, i16 zeroext %434) #16, !dbg !1728
  %436 = call i32 @fclose(%struct.__sFILE* nonnull %333) #16, !dbg !1729
  call void @llvm.dbg.value(metadata i32 %436, metadata !1608, metadata !DIExpression()) #16, !dbg !1631
  store %struct.__sFILE* null, %struct.__sFILE** @outputHandleJustInCase, align 4, !dbg !1730, !tbaa !377
  %437 = icmp eq i32 %436, -1, !dbg !1731
  br i1 %437, label %523, label %438

438:                                              ; preds = %432, %419
  store %struct.__sFILE* null, %struct.__sFILE** @outputHandleJustInCase, align 4, !dbg !1733, !tbaa !377
  %439 = load i16, i16* %369, align 4, !dbg !1734, !tbaa !1640
  %440 = and i16 %439, 64, !dbg !1734
  %441 = icmp eq i16 %440, 0, !dbg !1734
  br i1 %441, label %442, label %523, !dbg !1736

442:                                              ; preds = %438
  %443 = call i32 @fclose(%struct.__sFILE* nonnull %334) #16, !dbg !1737
  call void @llvm.dbg.value(metadata i32 %443, metadata !1608, metadata !DIExpression()) #16, !dbg !1631
  %444 = icmp eq i32 %443, -1, !dbg !1738
  br i1 %444, label %523, label %445, !dbg !1740

445:                                              ; preds = %442
  %446 = load i32, i32* @verbosity, align 4, !dbg !1741, !tbaa !387
  %447 = icmp sgt i32 %446, 0, !dbg !1742
  br i1 %447, label %448, label %525, !dbg !1743

448:                                              ; preds = %445
  %449 = load i32, i32* %4, align 4, !dbg !1744, !tbaa !387
  call void @llvm.dbg.value(metadata i32 %449, metadata !1601, metadata !DIExpression()) #16, !dbg !1631
  %450 = load i32, i32* %5, align 4
  call void @llvm.dbg.value(metadata i32 %450, metadata !1603, metadata !DIExpression()) #16, !dbg !1631
  %451 = or i32 %450, %449, !dbg !1745
  %452 = icmp eq i32 %451, 0, !dbg !1745
  br i1 %452, label %453, label %458, !dbg !1745

453:                                              ; preds = %448
  %454 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1746, !tbaa !377
  %455 = getelementptr inbounds %struct._reent, %struct._reent* %454, i32 0, i32 3, !dbg !1746
  %456 = load %struct.__sFILE*, %struct.__sFILE** %455, align 4, !dbg !1746, !tbaa !422
  %457 = call i32 @fwrite(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.75, i32 0, i32 0), i32 21, i32 1, %struct.__sFILE* %456) #16, !dbg !1748
  br label %525, !dbg !1749

458:                                              ; preds = %448
  %459 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i32 0, i32 0, !dbg !1750
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %459) #16, !dbg !1750
  call void @llvm.dbg.declare(metadata [32 x i8]* %10, metadata !1612, metadata !DIExpression()) #16, !dbg !1751
  %460 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 0, !dbg !1750
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %460) #16, !dbg !1750
  call void @llvm.dbg.declare(metadata [32 x i8]* %11, metadata !1618, metadata !DIExpression()) #16, !dbg !1752
  %461 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %12, i32 0, i32 0, i32 0, !dbg !1753
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %461) #16, !dbg !1753
  call void @llvm.dbg.declare(metadata %struct.UInt64* %12, metadata !1619, metadata !DIExpression()) #16, !dbg !1754
  %462 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %13, i32 0, i32 0, i32 0, !dbg !1753
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %462) #16, !dbg !1753
  call void @llvm.dbg.declare(metadata %struct.UInt64* %13, metadata !1625, metadata !DIExpression()) #16, !dbg !1755
  call void @llvm.dbg.value(metadata i32 %449, metadata !1601, metadata !DIExpression()) #16, !dbg !1631
  call void @llvm.dbg.value(metadata i32 %450, metadata !1603, metadata !DIExpression()) #16, !dbg !1631
  call void @llvm.dbg.value(metadata %struct.UInt64* %12, metadata !1756, metadata !DIExpression()) #16, !dbg !1764
  call void @llvm.dbg.value(metadata i32 %449, metadata !1762, metadata !DIExpression()) #16, !dbg !1764
  call void @llvm.dbg.value(metadata i32 %450, metadata !1763, metadata !DIExpression()) #16, !dbg !1764
  %463 = lshr i32 %450, 24, !dbg !1766
  %464 = trunc i32 %463 to i8, !dbg !1767
  %465 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %12, i32 0, i32 0, i32 7, !dbg !1768
  store i8 %464, i8* %465, align 1, !dbg !1769, !tbaa !382
  %466 = lshr i32 %450, 16, !dbg !1770
  %467 = trunc i32 %466 to i8, !dbg !1771
  %468 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %12, i32 0, i32 0, i32 6, !dbg !1772
  store i8 %467, i8* %468, align 1, !dbg !1773, !tbaa !382
  %469 = lshr i32 %450, 8, !dbg !1774
  %470 = trunc i32 %469 to i8, !dbg !1775
  %471 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %12, i32 0, i32 0, i32 5, !dbg !1776
  store i8 %470, i8* %471, align 1, !dbg !1777, !tbaa !382
  %472 = trunc i32 %450 to i8, !dbg !1778
  %473 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %12, i32 0, i32 0, i32 4, !dbg !1779
  store i8 %472, i8* %473, align 1, !dbg !1780, !tbaa !382
  %474 = lshr i32 %449, 24, !dbg !1781
  %475 = trunc i32 %474 to i8, !dbg !1782
  %476 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %12, i32 0, i32 0, i32 3, !dbg !1783
  store i8 %475, i8* %476, align 1, !dbg !1784, !tbaa !382
  %477 = lshr i32 %449, 16, !dbg !1785
  %478 = trunc i32 %477 to i8, !dbg !1786
  %479 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %12, i32 0, i32 0, i32 2, !dbg !1787
  store i8 %478, i8* %479, align 1, !dbg !1788, !tbaa !382
  %480 = lshr i32 %449, 8, !dbg !1789
  %481 = trunc i32 %480 to i8, !dbg !1790
  %482 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %12, i32 0, i32 0, i32 1, !dbg !1791
  store i8 %481, i8* %482, align 1, !dbg !1792, !tbaa !382
  %483 = trunc i32 %449 to i8, !dbg !1793
  store i8 %483, i8* %461, align 1, !dbg !1794, !tbaa !382
  %484 = load i32, i32* %6, align 4, !dbg !1795, !tbaa !387
  call void @llvm.dbg.value(metadata i32 %484, metadata !1604, metadata !DIExpression()) #16, !dbg !1631
  %485 = load i32, i32* %7, align 4, !dbg !1796, !tbaa !387
  call void @llvm.dbg.value(metadata i32 %485, metadata !1605, metadata !DIExpression()) #16, !dbg !1631
  call void @llvm.dbg.value(metadata %struct.UInt64* %13, metadata !1756, metadata !DIExpression()) #16, !dbg !1797
  call void @llvm.dbg.value(metadata i32 %484, metadata !1762, metadata !DIExpression()) #16, !dbg !1797
  call void @llvm.dbg.value(metadata i32 %485, metadata !1763, metadata !DIExpression()) #16, !dbg !1797
  %486 = lshr i32 %485, 24, !dbg !1799
  %487 = trunc i32 %486 to i8, !dbg !1800
  %488 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %13, i32 0, i32 0, i32 7, !dbg !1801
  store i8 %487, i8* %488, align 1, !dbg !1802, !tbaa !382
  %489 = lshr i32 %485, 16, !dbg !1803
  %490 = trunc i32 %489 to i8, !dbg !1804
  %491 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %13, i32 0, i32 0, i32 6, !dbg !1805
  store i8 %490, i8* %491, align 1, !dbg !1806, !tbaa !382
  %492 = lshr i32 %485, 8, !dbg !1807
  %493 = trunc i32 %492 to i8, !dbg !1808
  %494 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %13, i32 0, i32 0, i32 5, !dbg !1809
  store i8 %493, i8* %494, align 1, !dbg !1810, !tbaa !382
  %495 = trunc i32 %485 to i8, !dbg !1811
  %496 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %13, i32 0, i32 0, i32 4, !dbg !1812
  store i8 %495, i8* %496, align 1, !dbg !1813, !tbaa !382
  %497 = lshr i32 %484, 24, !dbg !1814
  %498 = trunc i32 %497 to i8, !dbg !1815
  %499 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %13, i32 0, i32 0, i32 3, !dbg !1816
  store i8 %498, i8* %499, align 1, !dbg !1817, !tbaa !382
  %500 = lshr i32 %484, 16, !dbg !1818
  %501 = trunc i32 %500 to i8, !dbg !1819
  %502 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %13, i32 0, i32 0, i32 2, !dbg !1820
  store i8 %501, i8* %502, align 1, !dbg !1821, !tbaa !382
  %503 = lshr i32 %484, 8, !dbg !1822
  %504 = trunc i32 %503 to i8, !dbg !1823
  %505 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %13, i32 0, i32 0, i32 1, !dbg !1824
  store i8 %504, i8* %505, align 1, !dbg !1825, !tbaa !382
  %506 = trunc i32 %484 to i8, !dbg !1826
  store i8 %506, i8* %462, align 1, !dbg !1827, !tbaa !382
  %507 = call fastcc double @uInt64_to_double(%struct.UInt64* nonnull %12) #16, !dbg !1828
  call void @llvm.dbg.value(metadata double %507, metadata !1626, metadata !DIExpression()) #16, !dbg !1829
  %508 = call fastcc double @uInt64_to_double(%struct.UInt64* nonnull %13) #16, !dbg !1830
  call void @llvm.dbg.value(metadata double %508, metadata !1627, metadata !DIExpression()) #16, !dbg !1829
  call fastcc void @uInt64_toAscii(i8* nonnull %459, %struct.UInt64* nonnull %12) #16, !dbg !1831
  call fastcc void @uInt64_toAscii(i8* nonnull %460, %struct.UInt64* nonnull %13) #16, !dbg !1832
  %509 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1833, !tbaa !377
  %510 = getelementptr inbounds %struct._reent, %struct._reent* %509, i32 0, i32 3, !dbg !1833
  %511 = load %struct.__sFILE*, %struct.__sFILE** %510, align 4, !dbg !1833, !tbaa !422
  %512 = fdiv double %507, %508, !dbg !1834
  %513 = fmul double %508, 8.000000e+00, !dbg !1835
  %514 = fdiv double %513, %507, !dbg !1836
  %515 = fdiv double %508, %507, !dbg !1837
  %516 = fsub double 1.000000e+00, %515, !dbg !1838
  %517 = fmul double %516, 1.000000e+02, !dbg !1839
  %518 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %511, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.76, i32 0, i32 0), double %512, double %514, double %517, i8* nonnull %459, i8* nonnull %460) #16, !dbg !1840
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %462) #16, !dbg !1841
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %461) #16, !dbg !1841
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %460) #16, !dbg !1841
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %459) #16, !dbg !1841
  br label %525

519:                                              ; preds = %406, %409, %378
  call void @llvm.dbg.label(metadata !1628) #16, !dbg !1842
  call void @llvm.dbg.value(metadata i32* %4, metadata !1601, metadata !DIExpression(DW_OP_deref)) #16, !dbg !1631
  call void @llvm.dbg.value(metadata i32* %5, metadata !1603, metadata !DIExpression(DW_OP_deref)) #16, !dbg !1631
  call void @llvm.dbg.value(metadata i32* %6, metadata !1604, metadata !DIExpression(DW_OP_deref)) #16, !dbg !1631
  call void @llvm.dbg.value(metadata i32* %7, metadata !1605, metadata !DIExpression(DW_OP_deref)) #16, !dbg !1631
  call void @llvm.dbg.value(metadata i32* %9, metadata !1607, metadata !DIExpression(DW_OP_deref)) #16, !dbg !1631
  call void @BZ2_bzWriteClose64(i32* nonnull %9, i8* %382, i32 1, i32* nonnull %4, i32* nonnull %5, i32* nonnull %6, i32* nonnull %7) #16, !dbg !1843
  %520 = load i32, i32* %8, align 4, !dbg !1844, !tbaa !387
  call void @llvm.dbg.value(metadata i32 %520, metadata !1606, metadata !DIExpression()) #16, !dbg !1631
  switch i32 %520, label %524 [
    i32 -9, label %521
    i32 -3, label %522
    i32 -6, label %523
  ], !dbg !1845

521:                                              ; preds = %519
  call fastcc void @configError() #17, !dbg !1846
  unreachable, !dbg !1846

522:                                              ; preds = %519
  call fastcc void @outOfMemory() #17, !dbg !1847
  unreachable, !dbg !1847

523:                                              ; preds = %397, %519, %442, %438, %432, %424, %416, %412, %373, %361
  call void @llvm.dbg.label(metadata !1629) #16, !dbg !1848
  call fastcc void @ioError() #17, !dbg !1849
  unreachable, !dbg !1849

524:                                              ; preds = %519
  call fastcc void @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.77, i32 0, i32 0)) #17, !dbg !1850
  unreachable, !dbg !1850

525:                                              ; preds = %445, %453, %458
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %368) #16, !dbg !1851
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %367) #16, !dbg !1851
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %366) #16, !dbg !1851
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %365) #16, !dbg !1851
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %364) #16, !dbg !1851
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %363) #16, !dbg !1851
  call void @llvm.lifetime.end.p0i8(i64 5000, i8* nonnull %362) #16, !dbg !1851
  store %struct.__sFILE* null, %struct.__sFILE** @outputHandleJustInCase, align 4, !dbg !1852, !tbaa !377
  %526 = load i32, i32* @srcMode, align 4, !dbg !1853, !tbaa !387
  %527 = icmp eq i32 %526, 3, !dbg !1854
  br i1 %527, label %528, label %544, !dbg !1855

528:                                              ; preds = %525
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), metadata !1856, metadata !DIExpression()) #16, !dbg !1866
  %529 = bitcast %struct.utimbuf* %2 to i8*, !dbg !1868
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %529) #16, !dbg !1868
  call void @llvm.dbg.declare(metadata %struct.utimbuf* %2, metadata !1860, metadata !DIExpression()) #16, !dbg !1869
  %530 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @fileMetaInfo, i32 0, i32 8, i32 0), align 8, !dbg !1870, !tbaa !1871
  %531 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %2, i32 0, i32 0, !dbg !1872
  store i64 %530, i64* %531, align 8, !dbg !1873, !tbaa !1874
  %532 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @fileMetaInfo, i32 0, i32 9, i32 0), align 8, !dbg !1876, !tbaa !1877
  %533 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %2, i32 0, i32 1, !dbg !1878
  store i64 %532, i64* %533, align 8, !dbg !1879, !tbaa !1880
  %534 = call i32 bitcast (i32 (...)* @utime to i32 (i8*, %struct.utimbuf*)*)(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), %struct.utimbuf* nonnull %2) #16, !dbg !1881
  call void @llvm.dbg.value(metadata i32 %534, metadata !1859, metadata !DIExpression()) #16, !dbg !1866
  %535 = icmp eq i32 %534, 0, !dbg !1882
  br i1 %535, label %537, label %536, !dbg !1885

536:                                              ; preds = %528
  call fastcc void @ioError() #17, !dbg !1882
  unreachable, !dbg !1882

537:                                              ; preds = %528
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %529) #16, !dbg !1886
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !dbg !1887, !tbaa !382
  %538 = load i8, i8* @keepInputFiles, align 1, !dbg !1888, !tbaa !382
  %539 = icmp eq i8 %538, 0, !dbg !1888
  br i1 %539, label %540, label %544, !dbg !1889

540:                                              ; preds = %537
  %541 = call i32 @remove(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !1890
  call void @llvm.dbg.value(metadata i32 %541, metadata !1142, metadata !DIExpression()), !dbg !1891
  %542 = icmp eq i32 %541, 0, !dbg !1892
  br i1 %542, label %544, label %543, !dbg !1895

543:                                              ; preds = %540
  call fastcc void @ioError() #19, !dbg !1892
  unreachable, !dbg !1892

544:                                              ; preds = %540, %537, %525
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !dbg !1896, !tbaa !382
  br label %545, !dbg !1897

545:                                              ; preds = %330, %318, %315, %312, %290, %279, %276, %273, %250, %237, %214, %204, %187, %179, %164, %161, %136, %128, %115, %112, %90, %79, %544
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %17) #16, !dbg !1897
  ret void, !dbg !1897

546:                                              ; preds = %116
  %547 = sub i32 0, %118, !dbg !1274
  %548 = getelementptr inbounds i8, i8* %93, i32 %547, !dbg !1274
  %549 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %548, i8* nonnull dereferenceable(1) %117) #16, !dbg !1276
  %550 = icmp eq i32 %549, 0, !dbg !1277
  br i1 %550, label %102, label %551, !dbg !1278

551:                                              ; preds = %546, %116
  call void @llvm.dbg.value(metadata i32 2, metadata !1140, metadata !DIExpression()), !dbg !1147
  %552 = load i8*, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @zSuffix, i32 0, i32 2), align 4, !dbg !1255, !tbaa !377
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), metadata !1260, metadata !DIExpression()) #16, !dbg !1268
  call void @llvm.dbg.value(metadata i8* %552, metadata !1265, metadata !DIExpression()) #16, !dbg !1268
  call void @llvm.dbg.value(metadata i32 %92, metadata !1266, metadata !DIExpression()) #16, !dbg !1268
  %553 = tail call i32 @strlen(i8* nonnull dereferenceable(1) %552) #16, !dbg !1270
  call void @llvm.dbg.value(metadata i32 %553, metadata !1267, metadata !DIExpression()) #16, !dbg !1268
  %554 = icmp slt i32 %92, %553, !dbg !1271
  br i1 %554, label %560, label %555, !dbg !1273

555:                                              ; preds = %551
  %556 = sub i32 0, %553, !dbg !1274
  %557 = getelementptr inbounds i8, i8* %93, i32 %556, !dbg !1274
  %558 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %557, i8* nonnull dereferenceable(1) %552) #16, !dbg !1276
  %559 = icmp eq i32 %558, 0, !dbg !1277
  br i1 %559, label %102, label %560, !dbg !1278

560:                                              ; preds = %555, %551
  call void @llvm.dbg.value(metadata i32 3, metadata !1140, metadata !DIExpression()), !dbg !1147
  %561 = load i8*, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @zSuffix, i32 0, i32 3), align 4, !dbg !1255, !tbaa !377
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), metadata !1260, metadata !DIExpression()) #16, !dbg !1268
  call void @llvm.dbg.value(metadata i8* %561, metadata !1265, metadata !DIExpression()) #16, !dbg !1268
  call void @llvm.dbg.value(metadata i32 %92, metadata !1266, metadata !DIExpression()) #16, !dbg !1268
  %562 = tail call i32 @strlen(i8* nonnull dereferenceable(1) %561) #16, !dbg !1270
  call void @llvm.dbg.value(metadata i32 %562, metadata !1267, metadata !DIExpression()) #16, !dbg !1268
  %563 = icmp slt i32 %92, %562, !dbg !1271
  br i1 %563, label %569, label %564, !dbg !1273

564:                                              ; preds = %560
  %565 = sub i32 0, %562, !dbg !1274
  %566 = getelementptr inbounds i8, i8* %93, i32 %565, !dbg !1274
  %567 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %566, i8* nonnull dereferenceable(1) %561) #16, !dbg !1276
  %568 = icmp eq i32 %567, 0, !dbg !1277
  br i1 %568, label %102, label %569, !dbg !1278

569:                                              ; preds = %564, %560
  call void @llvm.dbg.value(metadata i32 4, metadata !1140, metadata !DIExpression()), !dbg !1147
  %570 = load i32, i32* @srcMode, align 4, !dbg !1898, !tbaa !387
  %571 = and i32 %570, -2, !dbg !1899
  %572 = icmp eq i32 %571, 2, !dbg !1899
  br i1 %572, label %120, label %137, !dbg !1899
}

; Function Attrs: nounwind
define internal fastcc void @uncompress(i8* %0) unnamed_addr #0 !dbg !1900 {
  %2 = alloca %struct.utimbuf, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [5000 x i8], align 1
  %6 = alloca [5000 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 4
  %9 = alloca %struct.stat, align 8
  %10 = alloca %struct.stat, align 8
  %11 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1902, metadata !DIExpression()), !dbg !1922
  %12 = bitcast %struct.stat* %11 to i8*, !dbg !1923
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %12) #16, !dbg !1923
  call void @llvm.dbg.declare(metadata %struct.stat* %11, metadata !1909, metadata !DIExpression()), !dbg !1924
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !dbg !1925, !tbaa !382
  %13 = icmp eq i8* %0, null, !dbg !1926
  %14 = load i32, i32* @srcMode, align 4
  %15 = icmp ne i32 %14, 1
  %16 = and i1 %13, %15, !dbg !1928
  br i1 %16, label %17, label %18, !dbg !1928

17:                                               ; preds = %1
  tail call fastcc void @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.80, i32 0, i32 0)) #19, !dbg !1929
  unreachable, !dbg !1929

18:                                               ; preds = %1
  call void @llvm.dbg.value(metadata i8 0, metadata !1908, metadata !DIExpression()), !dbg !1922
  switch i32 %14, label %89 [
    i32 1, label %19
    i32 3, label %22
    i32 2, label %73
  ], !dbg !1930

19:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), metadata !399, metadata !DIExpression()) #16, !dbg !1931
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), metadata !404, metadata !DIExpression()) #16, !dbg !1931
  %20 = tail call i8* @strncpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i32 1024) #16, !dbg !1934
  store i8 0, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 1024), align 1, !dbg !1935, !tbaa !382
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), metadata !399, metadata !DIExpression()) #16, !dbg !1936
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), metadata !404, metadata !DIExpression()) #16, !dbg !1936
  %21 = tail call i8* @strncpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), i32 1024) #16, !dbg !1938
  store i8 0, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 1024), align 1, !dbg !1939, !tbaa !382
  call void @llvm.dbg.value(metadata i8 undef, metadata !1908, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.label(metadata !1921), !dbg !1940
  br label %165, !dbg !1941

22:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), metadata !399, metadata !DIExpression()) #16, !dbg !1943
  call void @llvm.dbg.value(metadata i8* %0, metadata !404, metadata !DIExpression()) #16, !dbg !1943
  %23 = tail call i32 @strlen(i8* nonnull dereferenceable(1) %0) #16, !dbg !1945
  %24 = icmp ugt i32 %23, 1024, !dbg !1946
  br i1 %24, label %25, label %35, !dbg !1947

25:                                               ; preds = %22
  %26 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1948, !tbaa !377
  %27 = getelementptr inbounds %struct._reent, %struct._reent* %26, i32 0, i32 3, !dbg !1948
  %28 = load %struct.__sFILE*, %struct.__sFILE** %27, align 4, !dbg !1948, !tbaa !422
  %29 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %28, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.41, i32 0, i32 0), i8* %0, i32 1024) #16, !dbg !1949
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()) #16, !dbg !1950
  %30 = load i32, i32* @exitValue, align 4, !dbg !1952, !tbaa !387
  %31 = icmp slt i32 %30, 1, !dbg !1953
  br i1 %31, label %32, label %33, !dbg !1954

32:                                               ; preds = %25
  store i32 1, i32* @exitValue, align 4, !dbg !1955, !tbaa !387
  br label %33, !dbg !1956

33:                                               ; preds = %32, %25
  %34 = phi i32 [ %30, %25 ], [ 1, %32 ], !dbg !1957
  tail call void @exit(i32 %34) #17, !dbg !1958
  unreachable, !dbg !1958

35:                                               ; preds = %22
  %36 = tail call i8* @strncpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* nonnull dereferenceable(1) %0, i32 1024) #16, !dbg !1959
  store i8 0, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 1024), align 1, !dbg !1960, !tbaa !382
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), metadata !399, metadata !DIExpression()) #16, !dbg !1961
  call void @llvm.dbg.value(metadata i8* %0, metadata !404, metadata !DIExpression()) #16, !dbg !1961
  %37 = tail call i32 @strlen(i8* nonnull dereferenceable(1) %0) #16, !dbg !1963
  %38 = icmp ugt i32 %37, 1024, !dbg !1964
  br i1 %38, label %39, label %49, !dbg !1965

39:                                               ; preds = %35
  %40 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1966, !tbaa !377
  %41 = getelementptr inbounds %struct._reent, %struct._reent* %40, i32 0, i32 3, !dbg !1966
  %42 = load %struct.__sFILE*, %struct.__sFILE** %41, align 4, !dbg !1966, !tbaa !422
  %43 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %42, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.41, i32 0, i32 0), i8* %0, i32 1024) #16, !dbg !1967
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()) #16, !dbg !1968
  %44 = load i32, i32* @exitValue, align 4, !dbg !1970, !tbaa !387
  %45 = icmp slt i32 %44, 1, !dbg !1971
  br i1 %45, label %46, label %47, !dbg !1972

46:                                               ; preds = %39
  store i32 1, i32* @exitValue, align 4, !dbg !1973, !tbaa !387
  br label %47, !dbg !1974

47:                                               ; preds = %46, %39
  %48 = phi i32 [ %44, %39 ], [ 1, %46 ], !dbg !1975
  tail call void @exit(i32 %48) #17, !dbg !1976
  unreachable, !dbg !1976

49:                                               ; preds = %35
  %50 = tail call i8* @strncpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* nonnull dereferenceable(1) %0, i32 1024) #16, !dbg !1977
  store i8 0, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 1024), align 1, !dbg !1978, !tbaa !382
  call void @llvm.dbg.value(metadata i32 0, metadata !1906, metadata !DIExpression()), !dbg !1922
  %51 = tail call i32 @strlen(i8* nonnull dereferenceable(1) getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0)) #16, !dbg !1922
  %52 = getelementptr inbounds [1034 x i8], [1034 x i8]* @outName, i32 0, i32 %51
  call void @llvm.dbg.value(metadata i32 0, metadata !1906, metadata !DIExpression()), !dbg !1922
  %53 = load i8*, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @zSuffix, i32 0, i32 0), align 4, !dbg !1979, !tbaa !377
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), metadata !1983, metadata !DIExpression()) #16, !dbg !1990
  call void @llvm.dbg.value(metadata i8* %53, metadata !1988, metadata !DIExpression()) #16, !dbg !1990
  call void @llvm.dbg.value(metadata i8* undef, metadata !1989, metadata !DIExpression()) #16, !dbg !1990
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), metadata !1260, metadata !DIExpression()) #16, !dbg !1992
  call void @llvm.dbg.value(metadata i8* %53, metadata !1265, metadata !DIExpression()) #16, !dbg !1992
  call void @llvm.dbg.value(metadata i32 %51, metadata !1266, metadata !DIExpression()) #16, !dbg !1992
  %54 = tail call i32 @strlen(i8* nonnull dereferenceable(1) %53) #16, !dbg !1995
  call void @llvm.dbg.value(metadata i32 %54, metadata !1267, metadata !DIExpression()) #16, !dbg !1992
  %55 = icmp slt i32 %51, %54, !dbg !1996
  br i1 %55, label %69, label %56, !dbg !1997

56:                                               ; preds = %49
  %57 = sub i32 0, %54, !dbg !1998
  %58 = getelementptr inbounds i8, i8* %52, i32 %57, !dbg !1998
  %59 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %58, i8* nonnull dereferenceable(1) %53) #16, !dbg !1999
  %60 = icmp eq i32 %59, 0, !dbg !2000
  br i1 %60, label %61, label %69, !dbg !2001

61:                                               ; preds = %596, %587, %578, %56
  %62 = phi i32 [ 0, %56 ], [ 1, %578 ], [ 2, %587 ], [ 3, %596 ]
  %63 = phi i32 [ %54, %56 ], [ %71, %578 ], [ %585, %587 ], [ %594, %596 ], !dbg !1995
  %64 = getelementptr inbounds [4 x i8*], [4 x i8*]* @unzSuffix, i32 0, i32 %62, !dbg !2002
  %65 = load i8*, i8** %64, align 4, !dbg !2002, !tbaa !377
  %66 = sub i32 %51, %63, !dbg !2003
  %67 = getelementptr inbounds [1034 x i8], [1034 x i8]* @outName, i32 0, i32 %66, !dbg !2004
  store i8 0, i8* %67, align 1, !dbg !2005, !tbaa !382
  %68 = tail call i8* @strcat(i8* nonnull dereferenceable(1) getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* nonnull dereferenceable(1) %65) #16, !dbg !2006
  br label %89, !dbg !2007

69:                                               ; preds = %56, %49
  call void @llvm.dbg.value(metadata i32 1, metadata !1906, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata i32 1, metadata !1906, metadata !DIExpression()), !dbg !1922
  %70 = load i8*, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @zSuffix, i32 0, i32 1), align 4, !dbg !1979, !tbaa !377
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), metadata !1983, metadata !DIExpression()) #16, !dbg !1990
  call void @llvm.dbg.value(metadata i8* %70, metadata !1988, metadata !DIExpression()) #16, !dbg !1990
  call void @llvm.dbg.value(metadata i8* undef, metadata !1989, metadata !DIExpression()) #16, !dbg !1990
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), metadata !1260, metadata !DIExpression()) #16, !dbg !1992
  call void @llvm.dbg.value(metadata i8* %70, metadata !1265, metadata !DIExpression()) #16, !dbg !1992
  call void @llvm.dbg.value(metadata i32 %51, metadata !1266, metadata !DIExpression()) #16, !dbg !1992
  %71 = tail call i32 @strlen(i8* nonnull dereferenceable(1) %70) #16, !dbg !1995
  call void @llvm.dbg.value(metadata i32 %71, metadata !1267, metadata !DIExpression()) #16, !dbg !1992
  %72 = icmp slt i32 %51, %71, !dbg !1996
  br i1 %72, label %583, label %578, !dbg !1997

73:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), metadata !399, metadata !DIExpression()) #16, !dbg !2008
  call void @llvm.dbg.value(metadata i8* %0, metadata !404, metadata !DIExpression()) #16, !dbg !2008
  %74 = tail call i32 @strlen(i8* nonnull dereferenceable(1) %0) #16, !dbg !2010
  %75 = icmp ugt i32 %74, 1024, !dbg !2011
  br i1 %75, label %76, label %86, !dbg !2012

76:                                               ; preds = %73
  %77 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2013, !tbaa !377
  %78 = getelementptr inbounds %struct._reent, %struct._reent* %77, i32 0, i32 3, !dbg !2013
  %79 = load %struct.__sFILE*, %struct.__sFILE** %78, align 4, !dbg !2013, !tbaa !422
  %80 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %79, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.41, i32 0, i32 0), i8* %0, i32 1024) #16, !dbg !2014
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()) #16, !dbg !2015
  %81 = load i32, i32* @exitValue, align 4, !dbg !2017, !tbaa !387
  %82 = icmp slt i32 %81, 1, !dbg !2018
  br i1 %82, label %83, label %84, !dbg !2019

83:                                               ; preds = %76
  store i32 1, i32* @exitValue, align 4, !dbg !2020, !tbaa !387
  br label %84, !dbg !2021

84:                                               ; preds = %83, %76
  %85 = phi i32 [ %81, %76 ], [ 1, %83 ], !dbg !2022
  tail call void @exit(i32 %85) #17, !dbg !2023
  unreachable, !dbg !2023

86:                                               ; preds = %73
  %87 = tail call i8* @strncpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* nonnull dereferenceable(1) %0, i32 1024) #16, !dbg !2024
  store i8 0, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 1024), align 1, !dbg !2025, !tbaa !382
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), metadata !399, metadata !DIExpression()) #16, !dbg !2026
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), metadata !404, metadata !DIExpression()) #16, !dbg !2026
  %88 = tail call i8* @strncpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), i32 1024) #16, !dbg !2028
  store i8 0, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 1024), align 1, !dbg !2029, !tbaa !382
  call void @llvm.dbg.value(metadata i8 undef, metadata !1908, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.label(metadata !1921), !dbg !1940
  br label %89, !dbg !1941

89:                                               ; preds = %18, %601, %61, %86
  %90 = phi i1 [ false, %86 ], [ false, %61 ], [ true, %601 ], [ false, %18 ]
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), metadata !1228, metadata !DIExpression()) #16, !dbg !2030
  %91 = tail call %struct.__sFILE* @fopen(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0)) #16, !dbg !2032
  call void @llvm.dbg.value(metadata %struct.__sFILE* %91, metadata !1233, metadata !DIExpression()) #16, !dbg !2030
  %92 = icmp eq %struct.__sFILE* %91, null, !dbg !2033
  call void @llvm.dbg.value(metadata i1 %92, metadata !1234, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #16, !dbg !2030
  br i1 %92, label %93, label %105, !dbg !2034

93:                                               ; preds = %89
  call void @llvm.dbg.value(metadata i1 %92, metadata !1234, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #16, !dbg !2030
  %94 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2035, !tbaa !377
  %95 = getelementptr inbounds %struct._reent, %struct._reent* %94, i32 0, i32 3, !dbg !2035
  %96 = load %struct.__sFILE*, %struct.__sFILE** %95, align 4, !dbg !2035, !tbaa !422
  %97 = load i8*, i8** @progName, align 4, !dbg !2037, !tbaa !377
  %98 = tail call i32* @__errno() #16, !dbg !2038
  %99 = load i32, i32* %98, align 4, !dbg !2038, !tbaa !387
  %100 = tail call i8* @strerror(i32 %99) #16, !dbg !2039
  %101 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %96, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.59, i32 0, i32 0), i8* %97, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %100), !dbg !2040
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()), !dbg !2041
  %102 = load i32, i32* @exitValue, align 4, !dbg !2043, !tbaa !387
  %103 = icmp slt i32 %102, 1, !dbg !2044
  br i1 %103, label %104, label %577, !dbg !2045

104:                                              ; preds = %93
  store i32 1, i32* @exitValue, align 4, !dbg !2046, !tbaa !387
  br label %577, !dbg !2047

105:                                              ; preds = %89
  %106 = tail call i32 @fclose(%struct.__sFILE* nonnull %91) #16, !dbg !2048
  call void @llvm.dbg.value(metadata i1 %92, metadata !1234, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #16, !dbg !2030
  %107 = load i32, i32* @srcMode, align 4, !dbg !2049, !tbaa !387
  %108 = and i32 %107, -2, !dbg !2051
  %109 = icmp eq i32 %108, 2, !dbg !2051
  br i1 %109, label %110, label %127, !dbg !2051

110:                                              ; preds = %105
  %111 = call i32 @stat(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), %struct.stat* nonnull %11), !dbg !2052
  %112 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 2, !dbg !2054
  %113 = load i32, i32* %112, align 4, !dbg !2054, !tbaa !1298
  %114 = and i32 %113, 61440, !dbg !2054
  %115 = icmp eq i32 %114, 16384, !dbg !2054
  br i1 %115, label %118, label %116, !dbg !2056

116:                                              ; preds = %110
  %117 = load i32, i32* @srcMode, align 4, !dbg !2057, !tbaa !387
  br label %127, !dbg !2056

118:                                              ; preds = %110
  %119 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2059, !tbaa !377
  %120 = getelementptr inbounds %struct._reent, %struct._reent* %119, i32 0, i32 3, !dbg !2059
  %121 = load %struct.__sFILE*, %struct.__sFILE** %120, align 4, !dbg !2059, !tbaa !422
  %122 = load i8*, i8** @progName, align 4, !dbg !2061, !tbaa !377
  %123 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %121, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.61, i32 0, i32 0), i8* %122, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !2062
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()), !dbg !2063
  %124 = load i32, i32* @exitValue, align 4, !dbg !2065, !tbaa !387
  %125 = icmp slt i32 %124, 1, !dbg !2066
  br i1 %125, label %126, label %577, !dbg !2067

126:                                              ; preds = %118
  store i32 1, i32* @exitValue, align 4, !dbg !2068, !tbaa !387
  br label %577, !dbg !2069

127:                                              ; preds = %116, %105
  %128 = phi i32 [ %117, %116 ], [ %107, %105 ], !dbg !2057
  %129 = icmp ne i32 %128, 3, !dbg !2070
  %130 = load i8, i8* @forceOverwrite, align 1
  %131 = icmp ne i8 %130, 0
  %132 = or i1 %129, %131, !dbg !2071
  br i1 %132, label %155, label %133, !dbg !2071

133:                                              ; preds = %127
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), metadata !1319, metadata !DIExpression()) #16, !dbg !2072
  %134 = bitcast %struct.stat* %10 to i8*, !dbg !2074
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %134) #16, !dbg !2074
  call void @llvm.dbg.declare(metadata %struct.stat* %10, metadata !1323, metadata !DIExpression()) #16, !dbg !2075
  %135 = call i32 bitcast (i32 (...)* @lstat to i32 (i8*, %struct.stat*)*)(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), %struct.stat* nonnull %10) #16, !dbg !2076
  call void @llvm.dbg.value(metadata i32 %135, metadata !1322, metadata !DIExpression()) #16, !dbg !2072
  %136 = icmp eq i32 %135, 0, !dbg !2077
  %137 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 2, !dbg !2078
  %138 = load i32, i32* %137, align 4, !dbg !2078
  %139 = and i32 %138, 61440, !dbg !2078
  %140 = icmp eq i32 %139, 32768, !dbg !2078
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %134) #16, !dbg !2079
  %141 = and i1 %136, %140, !dbg !2080
  br i1 %141, label %155, label %142, !dbg !2081

142:                                              ; preds = %133
  %143 = load i8, i8* @noisy, align 1, !dbg !2082, !tbaa !382
  %144 = icmp eq i8 %143, 0, !dbg !2082
  br i1 %144, label %151, label %145, !dbg !2085

145:                                              ; preds = %142
  %146 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2086, !tbaa !377
  %147 = getelementptr inbounds %struct._reent, %struct._reent* %146, i32 0, i32 3, !dbg !2086
  %148 = load %struct.__sFILE*, %struct.__sFILE** %147, align 4, !dbg !2086, !tbaa !422
  %149 = load i8*, i8** @progName, align 4, !dbg !2087, !tbaa !377
  %150 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %148, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.62, i32 0, i32 0), i8* %149, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !2088
  br label %151, !dbg !2088

151:                                              ; preds = %145, %142
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()), !dbg !2089
  %152 = load i32, i32* @exitValue, align 4, !dbg !2091, !tbaa !387
  %153 = icmp slt i32 %152, 1, !dbg !2092
  br i1 %153, label %154, label %577, !dbg !2093

154:                                              ; preds = %151
  store i32 1, i32* @exitValue, align 4, !dbg !2094, !tbaa !387
  br label %577, !dbg !2095

155:                                              ; preds = %133, %127
  %156 = load i8, i8* @noisy, align 1
  %157 = icmp ne i8 %156, 0
  %158 = and i1 %90, %157, !dbg !2096
  br i1 %158, label %159, label %165, !dbg !2096

159:                                              ; preds = %155
  %160 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2097, !tbaa !377
  %161 = getelementptr inbounds %struct._reent, %struct._reent* %160, i32 0, i32 3, !dbg !2097
  %162 = load %struct.__sFILE*, %struct.__sFILE** %161, align 4, !dbg !2097, !tbaa !422
  %163 = load i8*, i8** @progName, align 4, !dbg !2101, !tbaa !377
  %164 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %162, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.82, i32 0, i32 0), i8* %163, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0)), !dbg !2102
  br label %165, !dbg !2102

165:                                              ; preds = %19, %159, %155
  %166 = load i32, i32* @srcMode, align 4, !dbg !2103, !tbaa !387
  %167 = icmp eq i32 %166, 3, !dbg !2105
  br i1 %167, label %168, label %186, !dbg !2106

168:                                              ; preds = %165
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), metadata !1228, metadata !DIExpression()) #16, !dbg !2107
  %169 = call %struct.__sFILE* @fopen(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0)) #16, !dbg !2109
  call void @llvm.dbg.value(metadata %struct.__sFILE* %169, metadata !1233, metadata !DIExpression()) #16, !dbg !2107
  %170 = icmp eq %struct.__sFILE* %169, null, !dbg !2110
  call void @llvm.dbg.value(metadata i1 %170, metadata !1234, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #16, !dbg !2107
  br i1 %170, label %186, label %171, !dbg !2111

171:                                              ; preds = %168
  %172 = call i32 @fclose(%struct.__sFILE* nonnull %169) #16, !dbg !2112
  call void @llvm.dbg.value(metadata i1 %170, metadata !1234, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #16, !dbg !2107
  %173 = load i8, i8* @forceOverwrite, align 1, !dbg !2113, !tbaa !382
  %174 = icmp eq i8 %173, 0, !dbg !2113
  br i1 %174, label %177, label %175, !dbg !2116

175:                                              ; preds = %171
  %176 = call i32 @remove(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0)), !dbg !2117
  br label %186, !dbg !2119

177:                                              ; preds = %171
  %178 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2120, !tbaa !377
  %179 = getelementptr inbounds %struct._reent, %struct._reent* %178, i32 0, i32 3, !dbg !2120
  %180 = load %struct.__sFILE*, %struct.__sFILE** %179, align 4, !dbg !2120, !tbaa !422
  %181 = load i8*, i8** @progName, align 4, !dbg !2122, !tbaa !377
  %182 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %180, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.63, i32 0, i32 0), i8* %181, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0)), !dbg !2123
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()), !dbg !2124
  %183 = load i32, i32* @exitValue, align 4, !dbg !2126, !tbaa !387
  %184 = icmp slt i32 %183, 1, !dbg !2127
  br i1 %184, label %185, label %577, !dbg !2128

185:                                              ; preds = %177
  store i32 1, i32* @exitValue, align 4, !dbg !2129, !tbaa !387
  br label %577, !dbg !2130

186:                                              ; preds = %168, %175, %165
  %187 = load i32, i32* @srcMode, align 4, !dbg !2131, !tbaa !387
  %188 = icmp ne i32 %187, 3, !dbg !2133
  %189 = load i8, i8* @forceOverwrite, align 1
  %190 = icmp ne i8 %189, 0
  %191 = or i1 %188, %190, !dbg !2134
  br i1 %191, label %215, label %192, !dbg !2134

192:                                              ; preds = %186
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), metadata !1381, metadata !DIExpression()) #16, !dbg !2135
  %193 = bitcast %struct.stat* %9 to i8*, !dbg !2137
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %193) #16, !dbg !2137
  call void @llvm.dbg.declare(metadata %struct.stat* %9, metadata !1387, metadata !DIExpression()) #16, !dbg !2138
  %194 = call i32 bitcast (i32 (...)* @lstat to i32 (i8*, %struct.stat*)*)(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), %struct.stat* nonnull %9) #16, !dbg !2139
  call void @llvm.dbg.value(metadata i32 %194, metadata !1386, metadata !DIExpression()) #16, !dbg !2135
  %195 = icmp eq i32 %194, 0, !dbg !2140
  %196 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 3, !dbg !2141
  %197 = load i16, i16* %196, align 8, !dbg !2141
  %198 = zext i16 %197 to i32, !dbg !2141
  %199 = add nsw i32 %198, -1, !dbg !2141
  %200 = select i1 %195, i32 %199, i32 0, !dbg !2141
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %193) #16, !dbg !2142
  call void @llvm.dbg.value(metadata i32 %200, metadata !1905, metadata !DIExpression()), !dbg !1922
  %201 = icmp sgt i32 %200, 0, !dbg !2143
  br i1 %201, label %202, label %213, !dbg !2144

202:                                              ; preds = %192
  %203 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2145, !tbaa !377
  %204 = getelementptr inbounds %struct._reent, %struct._reent* %203, i32 0, i32 3, !dbg !2145
  %205 = load %struct.__sFILE*, %struct.__sFILE** %204, align 4, !dbg !2145, !tbaa !422
  %206 = load i8*, i8** @progName, align 4, !dbg !2147, !tbaa !377
  %207 = icmp eq i32 %200, 1, !dbg !2148
  %208 = select i1 %207, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i32 0, i32 0), !dbg !2149
  %209 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %205, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.64, i32 0, i32 0), i8* %206, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i32 %200, i8* %208), !dbg !2150
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()), !dbg !2151
  %210 = load i32, i32* @exitValue, align 4, !dbg !2153, !tbaa !387
  %211 = icmp slt i32 %210, 1, !dbg !2154
  br i1 %211, label %212, label %577, !dbg !2155

212:                                              ; preds = %202
  store i32 1, i32* @exitValue, align 4, !dbg !2156, !tbaa !387
  br label %577, !dbg !2157

213:                                              ; preds = %192
  %214 = load i32, i32* @srcMode, align 4, !dbg !2158, !tbaa !387
  br label %215, !dbg !2158

215:                                              ; preds = %213, %186
  %216 = phi i32 [ %214, %213 ], [ %187, %186 ], !dbg !2158
  %217 = icmp eq i32 %216, 3, !dbg !2160
  br i1 %217, label %218, label %224, !dbg !2161

218:                                              ; preds = %215
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), metadata !1416, metadata !DIExpression()) #16, !dbg !2162
  %219 = call i32 @stat(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), %struct.stat* nonnull @fileMetaInfo) #16, !dbg !2165
  call void @llvm.dbg.value(metadata i32 %219, metadata !1419, metadata !DIExpression()) #16, !dbg !2162
  %220 = icmp eq i32 %219, 0, !dbg !2166
  br i1 %220, label %221, label %223, !dbg !2167

221:                                              ; preds = %218
  %222 = load i32, i32* @srcMode, align 4, !dbg !2168, !tbaa !387
  br label %224, !dbg !2167

223:                                              ; preds = %218
  call fastcc void @ioError() #17, !dbg !2166
  unreachable, !dbg !2166

224:                                              ; preds = %221, %215
  %225 = phi i32 [ %222, %221 ], [ %216, %215 ], !dbg !2168
  switch i32 %225, label %306 [
    i32 1, label %226
    i32 2, label %249
    i32 3, label %266
  ], !dbg !2169

226:                                              ; preds = %224
  %227 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2170, !tbaa !377
  %228 = getelementptr inbounds %struct._reent, %struct._reent* %227, i32 0, i32 1, !dbg !2170
  %229 = load %struct.__sFILE*, %struct.__sFILE** %228, align 4, !dbg !2170, !tbaa !1432
  call void @llvm.dbg.value(metadata %struct.__sFILE* %229, metadata !1903, metadata !DIExpression()), !dbg !1922
  %230 = getelementptr inbounds %struct._reent, %struct._reent* %227, i32 0, i32 2, !dbg !2172
  %231 = load %struct.__sFILE*, %struct.__sFILE** %230, align 8, !dbg !2172, !tbaa !1434
  call void @llvm.dbg.value(metadata %struct.__sFILE* %231, metadata !1904, metadata !DIExpression()), !dbg !1922
  %232 = call i32 @fileno(%struct.__sFILE* %229), !dbg !2173
  %233 = call i32 @isatty(i32 %232) #16, !dbg !2175
  %234 = icmp eq i32 %233, 0, !dbg !2175
  br i1 %234, label %307, label %235, !dbg !2176

235:                                              ; preds = %226
  %236 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2177, !tbaa !377
  %237 = getelementptr inbounds %struct._reent, %struct._reent* %236, i32 0, i32 3, !dbg !2177
  %238 = load %struct.__sFILE*, %struct.__sFILE** %237, align 4, !dbg !2177, !tbaa !422
  %239 = load i8*, i8** @progName, align 4, !dbg !2179, !tbaa !377
  %240 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %238, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.83, i32 0, i32 0), i8* %239), !dbg !2180
  %241 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2181, !tbaa !377
  %242 = getelementptr inbounds %struct._reent, %struct._reent* %241, i32 0, i32 3, !dbg !2181
  %243 = load %struct.__sFILE*, %struct.__sFILE** %242, align 4, !dbg !2181, !tbaa !422
  %244 = load i8*, i8** @progName, align 4, !dbg !2182, !tbaa !377
  %245 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %243, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.67, i32 0, i32 0), i8* %244, i8* %244), !dbg !2183
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()), !dbg !2184
  %246 = load i32, i32* @exitValue, align 4, !dbg !2186, !tbaa !387
  %247 = icmp slt i32 %246, 1, !dbg !2187
  br i1 %247, label %248, label %577, !dbg !2188

248:                                              ; preds = %235
  store i32 1, i32* @exitValue, align 4, !dbg !2189, !tbaa !387
  br label %577, !dbg !2190

249:                                              ; preds = %224
  %250 = call %struct.__sFILE* @fopen(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0)), !dbg !2191
  call void @llvm.dbg.value(metadata %struct.__sFILE* %250, metadata !1903, metadata !DIExpression()), !dbg !1922
  %251 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2192, !tbaa !377
  %252 = getelementptr inbounds %struct._reent, %struct._reent* %251, i32 0, i32 2, !dbg !2192
  %253 = load %struct.__sFILE*, %struct.__sFILE** %252, align 8, !dbg !2192, !tbaa !1434
  call void @llvm.dbg.value(metadata %struct.__sFILE* %253, metadata !1904, metadata !DIExpression()), !dbg !1922
  %254 = icmp eq %struct.__sFILE* %250, null, !dbg !2193
  br i1 %254, label %255, label %307, !dbg !2195

255:                                              ; preds = %249
  %256 = getelementptr inbounds %struct._reent, %struct._reent* %251, i32 0, i32 3, !dbg !2196
  %257 = load %struct.__sFILE*, %struct.__sFILE** %256, align 4, !dbg !2196, !tbaa !422
  %258 = load i8*, i8** @progName, align 4, !dbg !2198, !tbaa !377
  %259 = call i32* @__errno() #16, !dbg !2199
  %260 = load i32, i32* %259, align 4, !dbg !2199, !tbaa !387
  %261 = call i8* @strerror(i32 %260) #16, !dbg !2200
  %262 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %257, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.84, i32 0, i32 0), i8* %258, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %261), !dbg !2201
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()), !dbg !2202
  %263 = load i32, i32* @exitValue, align 4, !dbg !2204, !tbaa !387
  %264 = icmp slt i32 %263, 1, !dbg !2205
  br i1 %264, label %265, label %577, !dbg !2206

265:                                              ; preds = %255
  store i32 1, i32* @exitValue, align 4, !dbg !2207, !tbaa !387
  br label %577, !dbg !2208

266:                                              ; preds = %224
  %267 = call %struct.__sFILE* @fopen(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0)), !dbg !2209
  call void @llvm.dbg.value(metadata %struct.__sFILE* %267, metadata !1903, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), metadata !1494, metadata !DIExpression()) #16, !dbg !2210
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0), metadata !1499, metadata !DIExpression()) #16, !dbg !2210
  %268 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i32 2561, i32 384) #16, !dbg !2212
  call void @llvm.dbg.value(metadata i32 %268, metadata !1501, metadata !DIExpression()) #16, !dbg !2210
  %269 = icmp eq i32 %268, -1, !dbg !2213
  br i1 %269, label %275, label %270, !dbg !2214

270:                                              ; preds = %266
  %271 = call %struct.__sFILE* @fdopen(i32 %268, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0)) #16, !dbg !2215
  call void @llvm.dbg.value(metadata %struct.__sFILE* %271, metadata !1500, metadata !DIExpression()) #16, !dbg !2210
  %272 = icmp eq %struct.__sFILE* %271, null, !dbg !2216
  br i1 %272, label %273, label %291, !dbg !2217

273:                                              ; preds = %270
  %274 = call i32 @close(i32 %268) #16, !dbg !2218
  br label %275, !dbg !2218

275:                                              ; preds = %266, %273
  call void @llvm.dbg.value(metadata %struct.__sFILE* %271, metadata !1904, metadata !DIExpression()), !dbg !1922
  %276 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2219, !tbaa !377
  %277 = getelementptr inbounds %struct._reent, %struct._reent* %276, i32 0, i32 3, !dbg !2219
  %278 = load %struct.__sFILE*, %struct.__sFILE** %277, align 4, !dbg !2219, !tbaa !422
  %279 = load i8*, i8** @progName, align 4, !dbg !2222, !tbaa !377
  %280 = call i32* @__errno() #16, !dbg !2223
  %281 = load i32, i32* %280, align 4, !dbg !2223, !tbaa !387
  %282 = call i8* @strerror(i32 %281) #16, !dbg !2224
  %283 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %278, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.70, i32 0, i32 0), i8* %279, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* %282), !dbg !2225
  %284 = icmp eq %struct.__sFILE* %267, null, !dbg !2226
  br i1 %284, label %287, label %285, !dbg !2228

285:                                              ; preds = %275
  %286 = call i32 @fclose(%struct.__sFILE* nonnull %267), !dbg !2229
  br label %287, !dbg !2229

287:                                              ; preds = %285, %275
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()), !dbg !2230
  %288 = load i32, i32* @exitValue, align 4, !dbg !2232, !tbaa !387
  %289 = icmp slt i32 %288, 1, !dbg !2233
  br i1 %289, label %290, label %577, !dbg !2234

290:                                              ; preds = %287
  store i32 1, i32* @exitValue, align 4, !dbg !2235, !tbaa !387
  br label %577, !dbg !2236

291:                                              ; preds = %270
  call void @llvm.dbg.value(metadata %struct.__sFILE* %271, metadata !1904, metadata !DIExpression()), !dbg !1922
  %292 = icmp eq %struct.__sFILE* %267, null, !dbg !2237
  br i1 %292, label %293, label %307, !dbg !2239

293:                                              ; preds = %291
  %294 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2240, !tbaa !377
  %295 = getelementptr inbounds %struct._reent, %struct._reent* %294, i32 0, i32 3, !dbg !2240
  %296 = load %struct.__sFILE*, %struct.__sFILE** %295, align 4, !dbg !2240, !tbaa !422
  %297 = load i8*, i8** @progName, align 4, !dbg !2242, !tbaa !377
  %298 = call i32* @__errno() #16, !dbg !2243
  %299 = load i32, i32* %298, align 4, !dbg !2243, !tbaa !387
  %300 = call i8* @strerror(i32 %299) #16, !dbg !2244
  %301 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %296, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.59, i32 0, i32 0), i8* %297, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %300), !dbg !2245
  %302 = call i32 @fclose(%struct.__sFILE* nonnull %271), !dbg !2246
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()), !dbg !2248
  %303 = load i32, i32* @exitValue, align 4, !dbg !2250, !tbaa !387
  %304 = icmp slt i32 %303, 1, !dbg !2251
  br i1 %304, label %305, label %577, !dbg !2252

305:                                              ; preds = %293
  store i32 1, i32* @exitValue, align 4, !dbg !2253, !tbaa !387
  br label %577, !dbg !2254

306:                                              ; preds = %224
  call fastcc void @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.85, i32 0, i32 0)) #19, !dbg !2255
  unreachable, !dbg !2255

307:                                              ; preds = %291, %249, %226
  %308 = phi %struct.__sFILE* [ %271, %291 ], [ %253, %249 ], [ %231, %226 ], !dbg !2256
  %309 = phi %struct.__sFILE* [ %267, %291 ], [ %250, %249 ], [ %229, %226 ], !dbg !2256
  call void @llvm.dbg.value(metadata %struct.__sFILE* %309, metadata !1903, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata %struct.__sFILE* %308, metadata !1904, metadata !DIExpression()), !dbg !1922
  %310 = load i32, i32* @verbosity, align 4, !dbg !2257, !tbaa !387
  %311 = icmp sgt i32 %310, 0, !dbg !2259
  br i1 %311, label %312, label %336, !dbg !2260

312:                                              ; preds = %307
  %313 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2261, !tbaa !377
  %314 = getelementptr inbounds %struct._reent, %struct._reent* %313, i32 0, i32 3, !dbg !2261
  %315 = load %struct.__sFILE*, %struct.__sFILE** %314, align 4, !dbg !2261, !tbaa !422
  %316 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %315, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !2263
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), metadata !1558, metadata !DIExpression()) #16, !dbg !2264
  %317 = call i32 @strlen(i8* nonnull dereferenceable(1) getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)) #16, !dbg !2266
  %318 = load i32, i32* @longestFileName, align 4, !dbg !2267, !tbaa !387
  %319 = icmp slt i32 %317, %318, !dbg !2268
  br i1 %319, label %320, label %331, !dbg !2269

320:                                              ; preds = %312, %320
  %321 = phi i32 [ %326, %320 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i32 %321, metadata !1561, metadata !DIExpression()) #16, !dbg !2264
  %322 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2270, !tbaa !377
  %323 = getelementptr inbounds %struct._reent, %struct._reent* %322, i32 0, i32 3, !dbg !2270
  %324 = load %struct.__sFILE*, %struct.__sFILE** %323, align 4, !dbg !2270, !tbaa !422
  %325 = call i32 @fputc(i32 32, %struct.__sFILE* %324) #16, !dbg !2271
  %326 = add nuw nsw i32 %321, 1, !dbg !2272
  call void @llvm.dbg.value(metadata i32 %326, metadata !1561, metadata !DIExpression()) #16, !dbg !2264
  %327 = load i32, i32* @longestFileName, align 4, !dbg !2273, !tbaa !387
  %328 = call i32 @strlen(i8* nonnull dereferenceable(1) getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)) #16, !dbg !2274
  %329 = sub nsw i32 %327, %328, !dbg !2275
  %330 = icmp slt i32 %321, %329, !dbg !2276
  br i1 %330, label %320, label %331, !dbg !2277, !llvm.loop !2278

331:                                              ; preds = %320, %312
  %332 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2280, !tbaa !377
  %333 = getelementptr inbounds %struct._reent, %struct._reent* %332, i32 0, i32 3, !dbg !2280
  %334 = load %struct.__sFILE*, %struct.__sFILE** %333, align 4, !dbg !2280, !tbaa !422
  %335 = call i32 @fflush(%struct.__sFILE* %334), !dbg !2281
  br label %336, !dbg !2282

336:                                              ; preds = %331, %307
  store %struct.__sFILE* %308, %struct.__sFILE** @outputHandleJustInCase, align 4, !dbg !2283, !tbaa !377
  store i8 1, i8* @deleteOutputOnInterrupt, align 1, !dbg !2284, !tbaa !382
  call void @llvm.dbg.value(metadata %struct.__sFILE* %309, metadata !2285, metadata !DIExpression()) #16, !dbg !2311
  call void @llvm.dbg.value(metadata %struct.__sFILE* %308, metadata !2290, metadata !DIExpression()) #16, !dbg !2311
  call void @llvm.dbg.value(metadata i8* null, metadata !2291, metadata !DIExpression()) #16, !dbg !2311
  %337 = bitcast i32* %3 to i8*, !dbg !2313
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %337) #16, !dbg !2313
  %338 = bitcast i32* %4 to i8*, !dbg !2313
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %338) #16, !dbg !2313
  %339 = getelementptr inbounds [5000 x i8], [5000 x i8]* %5, i32 0, i32 0, !dbg !2314
  call void @llvm.lifetime.start.p0i8(i64 5000, i8* nonnull %339) #16, !dbg !2314
  call void @llvm.dbg.declare(metadata [5000 x i8]* %5, metadata !2298, metadata !DIExpression()) #16, !dbg !2315
  %340 = getelementptr inbounds [5000 x i8], [5000 x i8]* %6, i32 0, i32 0, !dbg !2316
  call void @llvm.lifetime.start.p0i8(i64 5000, i8* nonnull %340) #16, !dbg !2316
  call void @llvm.dbg.declare(metadata [5000 x i8]* %6, metadata !2299, metadata !DIExpression()) #16, !dbg !2317
  %341 = bitcast i32* %7 to i8*, !dbg !2318
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %341) #16, !dbg !2318
  %342 = bitcast i8** %8 to i8*, !dbg !2319
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %342) #16, !dbg !2319
  call void @llvm.dbg.value(metadata i32 0, metadata !2300, metadata !DIExpression()) #16, !dbg !2311
  store i32 0, i32* %7, align 4, !dbg !2320, !tbaa !387
  call void @llvm.dbg.value(metadata i32 0, metadata !2296, metadata !DIExpression()) #16, !dbg !2311
  %343 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %308, i32 0, i32 3, !dbg !2321
  %344 = load i16, i16* %343, align 4, !dbg !2321, !tbaa !1640
  %345 = and i16 %344, 64, !dbg !2321
  %346 = icmp eq i16 %345, 0, !dbg !2321
  br i1 %346, label %347, label %495, !dbg !2323

347:                                              ; preds = %336
  %348 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %309, i32 0, i32 3, !dbg !2324
  %349 = load i16, i16* %348, align 4, !dbg !2324, !tbaa !1640
  %350 = and i16 %349, 64, !dbg !2324
  %351 = icmp eq i16 %350, 0, !dbg !2324
  br i1 %351, label %352, label %495, !dbg !2326

352:                                              ; preds = %347
  call void @llvm.dbg.value(metadata i32 0, metadata !2296, metadata !DIExpression()) #16, !dbg !2311
  %353 = load i32, i32* @verbosity, align 4, !dbg !2327, !tbaa !387
  %354 = load i8, i8* @smallMode, align 1, !dbg !2329, !tbaa !382
  %355 = zext i8 %354 to i32, !dbg !2330
  call void @llvm.dbg.value(metadata i32 0, metadata !2300, metadata !DIExpression()) #16, !dbg !2311
  call void @llvm.dbg.value(metadata i32* %3, metadata !2292, metadata !DIExpression(DW_OP_deref)) #16, !dbg !2311
  %356 = call i8* @BZ2_bzReadOpen(i32* nonnull %3, %struct.__sFILE* nonnull %309, i32 %353, i32 %355, i8* nonnull %340, i32 0) #16, !dbg !2331
  call void @llvm.dbg.value(metadata i8* %356, metadata !2291, metadata !DIExpression()) #16, !dbg !2311
  %357 = icmp eq i8* %356, null, !dbg !2332
  %358 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %358, metadata !2292, metadata !DIExpression()) #16, !dbg !2311
  %359 = icmp ne i32 %358, 0
  %360 = or i1 %357, %359, !dbg !2334
  br i1 %360, label %490, label %361, !dbg !2334

361:                                              ; preds = %352, %412
  %362 = phi i8* [ %417, %412 ], [ %356, %352 ]
  %363 = phi i32 [ %364, %412 ], [ 0, %352 ]
  call void @llvm.dbg.value(metadata i32 %363, metadata !2296, metadata !DIExpression()) #16, !dbg !2311
  %364 = add nuw nsw i32 %363, 1, !dbg !2335
  call void @llvm.dbg.value(metadata i32 %364, metadata !2296, metadata !DIExpression()) #16, !dbg !2311
  br label %367, !dbg !2336

365:                                              ; preds = %380
  %366 = load i32, i32* %3, align 4, !dbg !2337, !tbaa !387
  br label %367, !dbg !2337

367:                                              ; preds = %365, %361
  %368 = phi i32 [ %366, %365 ], [ 0, %361 ], !dbg !2337
  call void @llvm.dbg.value(metadata i32 %368, metadata !2292, metadata !DIExpression()) #16, !dbg !2311
  switch i32 %368, label %490 [
    i32 0, label %369
    i32 4, label %384
  ], !dbg !2336

369:                                              ; preds = %367
  call void @llvm.dbg.value(metadata i32* %3, metadata !2292, metadata !DIExpression(DW_OP_deref)) #16, !dbg !2311
  %370 = call i32 @BZ2_bzRead(i32* nonnull %3, i8* %362, i8* nonnull %339, i32 5000) #16, !dbg !2338
  call void @llvm.dbg.value(metadata i32 %370, metadata !2295, metadata !DIExpression()) #16, !dbg !2311
  %371 = load i32, i32* %3, align 4, !dbg !2340, !tbaa !387
  call void @llvm.dbg.value(metadata i32 %371, metadata !2292, metadata !DIExpression()) #16, !dbg !2311
  %372 = icmp eq i32 %371, -5, !dbg !2342
  br i1 %372, label %469, label %373, !dbg !2343

373:                                              ; preds = %369
  %374 = and i32 %371, -5, !dbg !2344
  %375 = icmp eq i32 %374, 0, !dbg !2344
  %376 = icmp sgt i32 %370, 0
  %377 = and i1 %376, %375, !dbg !2344
  br i1 %377, label %378, label %380, !dbg !2344

378:                                              ; preds = %373
  %379 = call i32 @fwrite(i8* nonnull %339, i32 1, i32 %370, %struct.__sFILE* %308) #16, !dbg !2346
  br label %380, !dbg !2346

380:                                              ; preds = %378, %373
  %381 = load i16, i16* %343, align 4, !dbg !2347, !tbaa !1640
  %382 = and i16 %381, 64, !dbg !2347
  %383 = icmp eq i16 %382, 0, !dbg !2347
  br i1 %383, label %365, label %495, !dbg !2349, !llvm.loop !2350

384:                                              ; preds = %367
  call void @llvm.dbg.value(metadata i32* %3, metadata !2292, metadata !DIExpression(DW_OP_deref)) #16, !dbg !2311
  call void @llvm.dbg.value(metadata i32* %7, metadata !2300, metadata !DIExpression(DW_OP_deref)) #16, !dbg !2311
  call void @llvm.dbg.value(metadata i8** %8, metadata !2301, metadata !DIExpression(DW_OP_deref)) #16, !dbg !2311
  call void @BZ2_bzReadGetUnused(i32* nonnull %3, i8* %362, i8** nonnull %8, i32* nonnull %7) #16, !dbg !2352
  %385 = load i32, i32* %3, align 4, !dbg !2353, !tbaa !387
  call void @llvm.dbg.value(metadata i32 %385, metadata !2292, metadata !DIExpression()) #16, !dbg !2311
  %386 = icmp eq i32 %385, 0, !dbg !2355
  br i1 %386, label %388, label %387, !dbg !2356

387:                                              ; preds = %384
  call fastcc void @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.89, i32 0, i32 0)) #17, !dbg !2357
  unreachable, !dbg !2357

388:                                              ; preds = %384
  %389 = load i8*, i8** %8, align 4, !dbg !2358, !tbaa !377
  call void @llvm.dbg.value(metadata i8* %389, metadata !2301, metadata !DIExpression()) #16, !dbg !2311
  call void @llvm.dbg.value(metadata i8* %389, metadata !2302, metadata !DIExpression()) #16, !dbg !2311
  call void @llvm.dbg.value(metadata i32 0, metadata !2297, metadata !DIExpression()) #16, !dbg !2311
  %390 = load i32, i32* %7, align 4, !dbg !2359, !tbaa !387
  call void @llvm.dbg.value(metadata i32 %390, metadata !2300, metadata !DIExpression()) #16, !dbg !2311
  %391 = icmp sgt i32 %390, 0, !dbg !2362
  br i1 %391, label %392, label %399, !dbg !2363

392:                                              ; preds = %388, %392
  %393 = phi i32 [ %397, %392 ], [ 0, %388 ]
  call void @llvm.dbg.value(metadata i32 %393, metadata !2297, metadata !DIExpression()) #16, !dbg !2311
  %394 = getelementptr inbounds i8, i8* %389, i32 %393, !dbg !2364
  %395 = load i8, i8* %394, align 1, !dbg !2364, !tbaa !382
  %396 = getelementptr inbounds [5000 x i8], [5000 x i8]* %6, i32 0, i32 %393, !dbg !2365
  store i8 %395, i8* %396, align 1, !dbg !2366, !tbaa !382
  %397 = add nuw nsw i32 %393, 1, !dbg !2367
  call void @llvm.dbg.value(metadata i32 %397, metadata !2297, metadata !DIExpression()) #16, !dbg !2311
  call void @llvm.dbg.value(metadata i32 %390, metadata !2300, metadata !DIExpression()) #16, !dbg !2311
  %398 = icmp eq i32 %397, %390, !dbg !2362
  br i1 %398, label %399, label %392, !dbg !2363, !llvm.loop !2368

399:                                              ; preds = %392, %388
  call void @llvm.dbg.value(metadata i32* %3, metadata !2292, metadata !DIExpression(DW_OP_deref)) #16, !dbg !2311
  call void @BZ2_bzReadClose(i32* nonnull %3, i8* %362) #16, !dbg !2370
  %400 = load i32, i32* %3, align 4, !dbg !2371, !tbaa !387
  call void @llvm.dbg.value(metadata i32 %400, metadata !2292, metadata !DIExpression()) #16, !dbg !2311
  %401 = icmp eq i32 %400, 0, !dbg !2373
  br i1 %401, label %403, label %402, !dbg !2374

402:                                              ; preds = %399
  call fastcc void @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.89, i32 0, i32 0)) #17, !dbg !2375
  unreachable, !dbg !2375

403:                                              ; preds = %399
  %404 = load i32, i32* %7, align 4, !dbg !2376, !tbaa !387
  call void @llvm.dbg.value(metadata i32 %404, metadata !2300, metadata !DIExpression()) #16, !dbg !2311
  %405 = icmp eq i32 %404, 0, !dbg !2378
  br i1 %405, label %406, label %412, !dbg !2379

406:                                              ; preds = %403
  call void @llvm.dbg.value(metadata %struct.__sFILE* %309, metadata !1663, metadata !DIExpression()) #16, !dbg !2380
  %407 = call i32 @fgetc(%struct.__sFILE* %309) #16, !dbg !2382
  call void @llvm.dbg.value(metadata i32 %407, metadata !1668, metadata !DIExpression()) #16, !dbg !2380
  %408 = icmp eq i32 %407, -1, !dbg !2383
  br i1 %408, label %422, label %409, !dbg !2384

409:                                              ; preds = %406
  %410 = call i32 @ungetc(i32 %407, %struct.__sFILE* %309) #16, !dbg !2385
  %411 = load i32, i32* %7, align 4, !dbg !2386, !tbaa !387
  br label %412, !dbg !2387

412:                                              ; preds = %409, %403
  %413 = phi i32 [ %411, %409 ], [ %404, %403 ], !dbg !2386
  call void @llvm.dbg.value(metadata i32 %364, metadata !2296, metadata !DIExpression()) #16, !dbg !2311
  %414 = load i32, i32* @verbosity, align 4, !dbg !2327, !tbaa !387
  %415 = load i8, i8* @smallMode, align 1, !dbg !2329, !tbaa !382
  %416 = zext i8 %415 to i32, !dbg !2330
  call void @llvm.dbg.value(metadata i32 %413, metadata !2300, metadata !DIExpression()) #16, !dbg !2311
  call void @llvm.dbg.value(metadata i32* %3, metadata !2292, metadata !DIExpression(DW_OP_deref)) #16, !dbg !2311
  %417 = call i8* @BZ2_bzReadOpen(i32* nonnull %3, %struct.__sFILE* %309, i32 %414, i32 %416, i8* nonnull %340, i32 %413) #16, !dbg !2331
  call void @llvm.dbg.value(metadata i8* %417, metadata !2291, metadata !DIExpression()) #16, !dbg !2311
  %418 = icmp eq i8* %417, null, !dbg !2332
  %419 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %419, metadata !2292, metadata !DIExpression()) #16, !dbg !2311
  %420 = icmp ne i32 %419, 0
  %421 = or i1 %418, %420, !dbg !2334
  br i1 %421, label %490, label %361, !dbg !2334, !llvm.loop !2388

422:                                              ; preds = %406, %473
  call void @llvm.dbg.label(metadata !2306) #16, !dbg !2391
  %423 = load i16, i16* %348, align 4, !dbg !2392, !tbaa !1640
  %424 = and i16 %423, 64, !dbg !2392
  %425 = icmp eq i16 %424, 0, !dbg !2392
  br i1 %425, label %426, label %495, !dbg !2394

426:                                              ; preds = %422
  %427 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2395, !tbaa !377
  %428 = getelementptr inbounds %struct._reent, %struct._reent* %427, i32 0, i32 2, !dbg !2395
  %429 = load %struct.__sFILE*, %struct.__sFILE** %428, align 8, !dbg !2395, !tbaa !1434
  %430 = icmp eq %struct.__sFILE* %429, %308, !dbg !2396
  br i1 %430, label %443, label %431, !dbg !2397

431:                                              ; preds = %426
  %432 = call i32 @fileno(%struct.__sFILE* %308) #16, !dbg !2398
  call void @llvm.dbg.value(metadata i32 %432, metadata !2303, metadata !DIExpression()) #16, !dbg !2399
  %433 = icmp slt i32 %432, 0, !dbg !2400
  br i1 %433, label %495, label %434, !dbg !2402

434:                                              ; preds = %431
  call void @llvm.dbg.value(metadata i32 %432, metadata !1712, metadata !DIExpression()) #16, !dbg !2403
  %435 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @fileMetaInfo, i32 0, i32 2), align 4, !dbg !2405, !tbaa !1298
  %436 = call i32 @fchmod(i32 %432, i32 %435) #16, !dbg !2406
  call void @llvm.dbg.value(metadata i32 %436, metadata !1715, metadata !DIExpression()) #16, !dbg !2403
  %437 = icmp eq i32 %436, 0, !dbg !2407
  br i1 %437, label %439, label %438, !dbg !2408

438:                                              ; preds = %434
  call fastcc void @ioError() #17, !dbg !2407
  unreachable, !dbg !2407

439:                                              ; preds = %434
  %440 = load i16, i16* getelementptr inbounds (%struct.stat, %struct.stat* @fileMetaInfo, i32 0, i32 4), align 2, !dbg !2409, !tbaa !1725
  %441 = load i16, i16* getelementptr inbounds (%struct.stat, %struct.stat* @fileMetaInfo, i32 0, i32 5), align 4, !dbg !2410, !tbaa !1727
  %442 = call i32 @fchown(i32 %432, i16 zeroext %440, i16 zeroext %441) #16, !dbg !2411
  br label %443

443:                                              ; preds = %439, %426
  %444 = call i32 @fclose(%struct.__sFILE* nonnull %309) #16, !dbg !2412
  call void @llvm.dbg.value(metadata i32 %444, metadata !2294, metadata !DIExpression()) #16, !dbg !2311
  %445 = icmp eq i32 %444, -1, !dbg !2413
  br i1 %445, label %495, label %446, !dbg !2415

446:                                              ; preds = %443
  %447 = load i16, i16* %343, align 4, !dbg !2416, !tbaa !1640
  %448 = and i16 %447, 64, !dbg !2416
  %449 = icmp eq i16 %448, 0, !dbg !2416
  br i1 %449, label %450, label %495, !dbg !2418

450:                                              ; preds = %446
  %451 = call i32 @fflush(%struct.__sFILE* nonnull %308) #16, !dbg !2419
  call void @llvm.dbg.value(metadata i32 %451, metadata !2294, metadata !DIExpression()) #16, !dbg !2311
  %452 = icmp eq i32 %451, 0, !dbg !2420
  br i1 %452, label %453, label %495, !dbg !2422

453:                                              ; preds = %450
  %454 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2423, !tbaa !377
  %455 = getelementptr inbounds %struct._reent, %struct._reent* %454, i32 0, i32 2, !dbg !2423
  %456 = load %struct.__sFILE*, %struct.__sFILE** %455, align 8, !dbg !2423, !tbaa !1434
  %457 = icmp eq %struct.__sFILE* %456, %308, !dbg !2425
  br i1 %457, label %461, label %458, !dbg !2426

458:                                              ; preds = %453
  %459 = call i32 @fclose(%struct.__sFILE* nonnull %308) #16, !dbg !2427
  call void @llvm.dbg.value(metadata i32 %459, metadata !2294, metadata !DIExpression()) #16, !dbg !2311
  store %struct.__sFILE* null, %struct.__sFILE** @outputHandleJustInCase, align 4, !dbg !2429, !tbaa !377
  %460 = icmp eq i32 %459, -1, !dbg !2430
  br i1 %460, label %495, label %461, !dbg !2432

461:                                              ; preds = %458, %453
  store %struct.__sFILE* null, %struct.__sFILE** @outputHandleJustInCase, align 4, !dbg !2433, !tbaa !377
  %462 = load i32, i32* @verbosity, align 4, !dbg !2434, !tbaa !387
  %463 = icmp sgt i32 %462, 1, !dbg !2436
  br i1 %463, label %464, label %527, !dbg !2437

464:                                              ; preds = %461
  %465 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2438, !tbaa !377
  %466 = getelementptr inbounds %struct._reent, %struct._reent* %465, i32 0, i32 3, !dbg !2438
  %467 = load %struct.__sFILE*, %struct.__sFILE** %466, align 4, !dbg !2438, !tbaa !422
  %468 = call i32 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i32 0, i32 0), i32 5, i32 1, %struct.__sFILE* %467) #16, !dbg !2439
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %342) #16, !dbg !2440
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %341) #16, !dbg !2440
  call void @llvm.lifetime.end.p0i8(i64 5000, i8* nonnull %340) #16, !dbg !2440
  call void @llvm.lifetime.end.p0i8(i64 5000, i8* nonnull %339) #16, !dbg !2440
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %338) #16, !dbg !2440
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %337) #16, !dbg !2440
  call void @llvm.dbg.value(metadata i8 undef, metadata !1907, metadata !DIExpression()), !dbg !1922
  br label %528, !dbg !2441

469:                                              ; preds = %369
  call void @llvm.dbg.label(metadata !2307) #16, !dbg !2442
  %470 = load i8, i8* @forceOverwrite, align 1, !dbg !2443, !tbaa !382
  %471 = icmp eq i8 %470, 0, !dbg !2443
  br i1 %471, label %490, label %472, !dbg !2445

472:                                              ; preds = %469
  call void @rewind(%struct.__sFILE* %309) #16, !dbg !2446
  br label %473, !dbg !2448

473:                                              ; preds = %486, %472
  call void @llvm.dbg.value(metadata %struct.__sFILE* %309, metadata !1663, metadata !DIExpression()) #16, !dbg !2449
  %474 = call i32 @fgetc(%struct.__sFILE* %309) #16, !dbg !2453
  call void @llvm.dbg.value(metadata i32 %474, metadata !1668, metadata !DIExpression()) #16, !dbg !2449
  %475 = icmp eq i32 %474, -1, !dbg !2454
  br i1 %475, label %422, label %476, !dbg !2455

476:                                              ; preds = %473
  %477 = call i32 @ungetc(i32 %474, %struct.__sFILE* %309) #16, !dbg !2456
  %478 = call i32 @fread(i8* nonnull %339, i32 1, i32 5000, %struct.__sFILE* %309) #16, !dbg !2457
  call void @llvm.dbg.value(metadata i32 %478, metadata !2295, metadata !DIExpression()) #16, !dbg !2311
  %479 = load i16, i16* %348, align 4, !dbg !2458, !tbaa !1640
  %480 = and i16 %479, 64, !dbg !2458
  %481 = icmp eq i16 %480, 0, !dbg !2458
  br i1 %481, label %482, label %495, !dbg !2460

482:                                              ; preds = %476
  %483 = icmp sgt i32 %478, 0, !dbg !2461
  br i1 %483, label %484, label %486, !dbg !2463

484:                                              ; preds = %482
  %485 = call i32 @fwrite(i8* nonnull %339, i32 1, i32 %478, %struct.__sFILE* %308) #16, !dbg !2464
  br label %486, !dbg !2464

486:                                              ; preds = %484, %482
  %487 = load i16, i16* %343, align 4, !dbg !2465, !tbaa !1640
  %488 = and i16 %487, 64, !dbg !2465
  %489 = icmp eq i16 %488, 0, !dbg !2465
  br i1 %489, label %473, label %495, !dbg !2467, !llvm.loop !2468

490:                                              ; preds = %412, %367, %469, %352
  %491 = phi i8* [ %362, %469 ], [ %356, %352 ], [ %362, %367 ], [ %417, %412 ]
  %492 = phi i32 [ %364, %469 ], [ 0, %352 ], [ %364, %367 ], [ %364, %412 ], !dbg !2311
  call void @llvm.dbg.value(metadata i32 %492, metadata !2296, metadata !DIExpression()) #16, !dbg !2311
  call void @llvm.dbg.label(metadata !2308) #16, !dbg !2470
  call void @llvm.dbg.value(metadata i32* %4, metadata !2293, metadata !DIExpression(DW_OP_deref)) #16, !dbg !2311
  call void @BZ2_bzReadClose(i32* nonnull %4, i8* %491) #16, !dbg !2471
  %493 = load i32, i32* %3, align 4, !dbg !2472, !tbaa !387
  call void @llvm.dbg.value(metadata i32 %493, metadata !2292, metadata !DIExpression()) #16, !dbg !2311
  switch i32 %493, label %525 [
    i32 -9, label %494
    i32 -6, label %495
    i32 -4, label %496
    i32 -3, label %497
    i32 -7, label %498
    i32 -5, label %499
  ], !dbg !2473

494:                                              ; preds = %490
  call fastcc void @configError() #17, !dbg !2474
  unreachable, !dbg !2474

495:                                              ; preds = %380, %486, %476, %490, %458, %450, %446, %443, %431, %422, %347, %336
  call void @llvm.dbg.label(metadata !2309) #16, !dbg !2475
  call fastcc void @ioError() #17, !dbg !2476
  unreachable, !dbg !2476

496:                                              ; preds = %490
  call fastcc void @crcError() #17, !dbg !2477
  unreachable, !dbg !2477

497:                                              ; preds = %490
  call fastcc void @outOfMemory() #17, !dbg !2478
  unreachable, !dbg !2478

498:                                              ; preds = %490
  call fastcc void @compressedStreamEOF() #17, !dbg !2479
  unreachable, !dbg !2479

499:                                              ; preds = %490
  %500 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2480, !tbaa !377
  %501 = getelementptr inbounds %struct._reent, %struct._reent* %500, i32 0, i32 1, !dbg !2480
  %502 = load %struct.__sFILE*, %struct.__sFILE** %501, align 4, !dbg !2480, !tbaa !1432
  %503 = icmp eq %struct.__sFILE* %502, %309, !dbg !2482
  br i1 %503, label %507, label %504, !dbg !2483

504:                                              ; preds = %499
  %505 = call i32 @fclose(%struct.__sFILE* %309) #16, !dbg !2484
  %506 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2485, !tbaa !377
  br label %507, !dbg !2484

507:                                              ; preds = %504, %499
  %508 = phi %struct._reent* [ %506, %504 ], [ %500, %499 ], !dbg !2485
  %509 = getelementptr inbounds %struct._reent, %struct._reent* %508, i32 0, i32 2, !dbg !2485
  %510 = load %struct.__sFILE*, %struct.__sFILE** %509, align 8, !dbg !2485, !tbaa !1434
  %511 = icmp eq %struct.__sFILE* %510, %308, !dbg !2487
  br i1 %511, label %514, label %512, !dbg !2488

512:                                              ; preds = %507
  %513 = call i32 @fclose(%struct.__sFILE* %308) #16, !dbg !2489
  br label %514, !dbg !2489

514:                                              ; preds = %512, %507
  %515 = icmp eq i32 %492, 1, !dbg !2490
  br i1 %515, label %547, label %516, !dbg !2492

516:                                              ; preds = %514
  %517 = load i8, i8* @noisy, align 1, !dbg !2493, !tbaa !382
  %518 = icmp eq i8 %517, 0, !dbg !2493
  br i1 %518, label %526, label %519, !dbg !2496

519:                                              ; preds = %516
  %520 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2497, !tbaa !377
  %521 = getelementptr inbounds %struct._reent, %struct._reent* %520, i32 0, i32 3, !dbg !2497
  %522 = load %struct.__sFILE*, %struct.__sFILE** %521, align 4, !dbg !2497, !tbaa !422
  %523 = load i8*, i8** @progName, align 4, !dbg !2498, !tbaa !377
  %524 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %522, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.91, i32 0, i32 0), i8* %523, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)) #16, !dbg !2499
  br label %526, !dbg !2499

525:                                              ; preds = %490
  call fastcc void @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.92, i32 0, i32 0)) #17, !dbg !2500
  unreachable, !dbg !2500

526:                                              ; preds = %516, %519
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %342) #16, !dbg !2440
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %341) #16, !dbg !2440
  call void @llvm.lifetime.end.p0i8(i64 5000, i8* nonnull %340) #16, !dbg !2440
  call void @llvm.lifetime.end.p0i8(i64 5000, i8* nonnull %339) #16, !dbg !2440
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %338) #16, !dbg !2440
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %337) #16, !dbg !2440
  call void @llvm.dbg.value(metadata i8 undef, metadata !1907, metadata !DIExpression()), !dbg !1922
  br label %528, !dbg !2441

527:                                              ; preds = %461
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %342) #16, !dbg !2440
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %341) #16, !dbg !2440
  call void @llvm.lifetime.end.p0i8(i64 5000, i8* nonnull %340) #16, !dbg !2440
  call void @llvm.lifetime.end.p0i8(i64 5000, i8* nonnull %339) #16, !dbg !2440
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %338) #16, !dbg !2440
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %337) #16, !dbg !2440
  call void @llvm.dbg.value(metadata i8 undef, metadata !1907, metadata !DIExpression()), !dbg !1922
  br label %528, !dbg !2441

528:                                              ; preds = %526, %464, %527
  store %struct.__sFILE* null, %struct.__sFILE** @outputHandleJustInCase, align 4, !dbg !2501, !tbaa !377
  %529 = load i32, i32* @srcMode, align 4, !dbg !2502, !tbaa !387
  %530 = icmp eq i32 %529, 3, !dbg !2503
  br i1 %530, label %531, label %554, !dbg !2504

531:                                              ; preds = %528
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), metadata !1856, metadata !DIExpression()) #16, !dbg !2505
  %532 = bitcast %struct.utimbuf* %2 to i8*, !dbg !2507
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %532) #16, !dbg !2507
  call void @llvm.dbg.declare(metadata %struct.utimbuf* %2, metadata !1860, metadata !DIExpression()) #16, !dbg !2508
  %533 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @fileMetaInfo, i32 0, i32 8, i32 0), align 8, !dbg !2509, !tbaa !1871
  %534 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %2, i32 0, i32 0, !dbg !2510
  store i64 %533, i64* %534, align 8, !dbg !2511, !tbaa !1874
  %535 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @fileMetaInfo, i32 0, i32 9, i32 0), align 8, !dbg !2512, !tbaa !1877
  %536 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %2, i32 0, i32 1, !dbg !2513
  store i64 %535, i64* %536, align 8, !dbg !2514, !tbaa !1880
  %537 = call i32 bitcast (i32 (...)* @utime to i32 (i8*, %struct.utimbuf*)*)(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), %struct.utimbuf* nonnull %2) #16, !dbg !2515
  call void @llvm.dbg.value(metadata i32 %537, metadata !1859, metadata !DIExpression()) #16, !dbg !2505
  %538 = icmp eq i32 %537, 0, !dbg !2516
  br i1 %538, label %540, label %539, !dbg !2517

539:                                              ; preds = %531
  call fastcc void @ioError() #17, !dbg !2516
  unreachable, !dbg !2516

540:                                              ; preds = %531
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %532) #16, !dbg !2518
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !dbg !2519, !tbaa !382
  %541 = load i8, i8* @keepInputFiles, align 1, !dbg !2520, !tbaa !382
  %542 = icmp eq i8 %541, 0, !dbg !2520
  br i1 %542, label %543, label %554, !dbg !2521

543:                                              ; preds = %540
  %544 = call i32 @remove(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !2522
  call void @llvm.dbg.value(metadata i32 %544, metadata !1910, metadata !DIExpression()), !dbg !2523
  %545 = icmp eq i32 %544, 0, !dbg !2524
  br i1 %545, label %554, label %546, !dbg !2527

546:                                              ; preds = %543
  call fastcc void @ioError() #19, !dbg !2524
  unreachable, !dbg !2524

547:                                              ; preds = %514
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %342) #16, !dbg !2440
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %341) #16, !dbg !2440
  call void @llvm.lifetime.end.p0i8(i64 5000, i8* nonnull %340) #16, !dbg !2440
  call void @llvm.lifetime.end.p0i8(i64 5000, i8* nonnull %339) #16, !dbg !2440
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %338) #16, !dbg !2440
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %337) #16, !dbg !2440
  call void @llvm.dbg.value(metadata i8 undef, metadata !1907, metadata !DIExpression()), !dbg !1922
  store %struct.__sFILE* null, %struct.__sFILE** @outputHandleJustInCase, align 4, !dbg !2501, !tbaa !377
  store i8 1, i8* @unzFailsExist, align 1, !dbg !2528, !tbaa !382
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !dbg !2529, !tbaa !382
  %548 = load i32, i32* @srcMode, align 4, !dbg !2530, !tbaa !387
  %549 = icmp eq i32 %548, 3, !dbg !2531
  br i1 %549, label %550, label %562, !dbg !2532

550:                                              ; preds = %547
  %551 = call i32 @remove(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0)), !dbg !2533
  call void @llvm.dbg.value(metadata i32 %551, metadata !1917, metadata !DIExpression()), !dbg !2534
  %552 = icmp eq i32 %551, 0, !dbg !2535
  br i1 %552, label %562, label %553, !dbg !2538

553:                                              ; preds = %550
  call fastcc void @ioError() #19, !dbg !2535
  unreachable, !dbg !2535

554:                                              ; preds = %543, %528, %540
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !dbg !2539, !tbaa !382
  %555 = load i32, i32* @verbosity, align 4, !dbg !2540, !tbaa !387
  %556 = icmp sgt i32 %555, 0, !dbg !2544
  br i1 %556, label %557, label %577, !dbg !2545

557:                                              ; preds = %554
  %558 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2546, !tbaa !377
  %559 = getelementptr inbounds %struct._reent, %struct._reent* %558, i32 0, i32 3, !dbg !2546
  %560 = load %struct.__sFILE*, %struct.__sFILE** %559, align 4, !dbg !2546, !tbaa !422
  %561 = call i32 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0), i32 5, i32 1, %struct.__sFILE* %560), !dbg !2547
  br label %577, !dbg !2547

562:                                              ; preds = %547, %550
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !dbg !2539, !tbaa !382
  call void @llvm.dbg.value(metadata i32 2, metadata !429, metadata !DIExpression()), !dbg !2548
  %563 = load i32, i32* @exitValue, align 4, !dbg !2551, !tbaa !387
  %564 = icmp slt i32 %563, 2, !dbg !2552
  br i1 %564, label %565, label %566, !dbg !2553

565:                                              ; preds = %562
  store i32 2, i32* @exitValue, align 4, !dbg !2554, !tbaa !387
  br label %566, !dbg !2555

566:                                              ; preds = %562, %565
  %567 = load i32, i32* @verbosity, align 4, !dbg !2556, !tbaa !387
  %568 = icmp sgt i32 %567, 0, !dbg !2558
  %569 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2559, !tbaa !377
  %570 = getelementptr inbounds %struct._reent, %struct._reent* %569, i32 0, i32 3, !dbg !2559
  %571 = load %struct.__sFILE*, %struct.__sFILE** %570, align 4, !dbg !2559, !tbaa !422
  br i1 %568, label %572, label %574, !dbg !2560

572:                                              ; preds = %566
  %573 = call i32 @fwrite(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.87, i32 0, i32 0), i32 18, i32 1, %struct.__sFILE* %571), !dbg !2561
  br label %577, !dbg !2561

574:                                              ; preds = %566
  %575 = load i8*, i8** @progName, align 4, !dbg !2562, !tbaa !377
  %576 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %571, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.88, i32 0, i32 0), i8* %575, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !2563
  br label %577

577:                                              ; preds = %305, %293, %290, %287, %265, %255, %248, %235, %212, %202, %185, %177, %154, %151, %126, %118, %104, %93, %557, %554, %574, %572
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %12) #16, !dbg !2564
  ret void, !dbg !2564

578:                                              ; preds = %69
  %579 = sub i32 0, %71, !dbg !1998
  %580 = getelementptr inbounds i8, i8* %52, i32 %579, !dbg !1998
  %581 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %580, i8* nonnull dereferenceable(1) %70) #16, !dbg !1999
  %582 = icmp eq i32 %581, 0, !dbg !2000
  br i1 %582, label %61, label %583, !dbg !2001

583:                                              ; preds = %578, %69
  call void @llvm.dbg.value(metadata i32 2, metadata !1906, metadata !DIExpression()), !dbg !1922
  %584 = load i8*, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @zSuffix, i32 0, i32 2), align 4, !dbg !1979, !tbaa !377
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), metadata !1983, metadata !DIExpression()) #16, !dbg !1990
  call void @llvm.dbg.value(metadata i8* %584, metadata !1988, metadata !DIExpression()) #16, !dbg !1990
  call void @llvm.dbg.value(metadata i8* undef, metadata !1989, metadata !DIExpression()) #16, !dbg !1990
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), metadata !1260, metadata !DIExpression()) #16, !dbg !1992
  call void @llvm.dbg.value(metadata i8* %584, metadata !1265, metadata !DIExpression()) #16, !dbg !1992
  call void @llvm.dbg.value(metadata i32 %51, metadata !1266, metadata !DIExpression()) #16, !dbg !1992
  %585 = tail call i32 @strlen(i8* nonnull dereferenceable(1) %584) #16, !dbg !1995
  call void @llvm.dbg.value(metadata i32 %585, metadata !1267, metadata !DIExpression()) #16, !dbg !1992
  %586 = icmp slt i32 %51, %585, !dbg !1996
  br i1 %586, label %592, label %587, !dbg !1997

587:                                              ; preds = %583
  %588 = sub i32 0, %585, !dbg !1998
  %589 = getelementptr inbounds i8, i8* %52, i32 %588, !dbg !1998
  %590 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %589, i8* nonnull dereferenceable(1) %584) #16, !dbg !1999
  %591 = icmp eq i32 %590, 0, !dbg !2000
  br i1 %591, label %61, label %592, !dbg !2001

592:                                              ; preds = %587, %583
  call void @llvm.dbg.value(metadata i32 3, metadata !1906, metadata !DIExpression()), !dbg !1922
  %593 = load i8*, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @zSuffix, i32 0, i32 3), align 4, !dbg !1979, !tbaa !377
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), metadata !1983, metadata !DIExpression()) #16, !dbg !1990
  call void @llvm.dbg.value(metadata i8* %593, metadata !1988, metadata !DIExpression()) #16, !dbg !1990
  call void @llvm.dbg.value(metadata i8* undef, metadata !1989, metadata !DIExpression()) #16, !dbg !1990
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), metadata !1260, metadata !DIExpression()) #16, !dbg !1992
  call void @llvm.dbg.value(metadata i8* %593, metadata !1265, metadata !DIExpression()) #16, !dbg !1992
  call void @llvm.dbg.value(metadata i32 %51, metadata !1266, metadata !DIExpression()) #16, !dbg !1992
  %594 = tail call i32 @strlen(i8* nonnull dereferenceable(1) %593) #16, !dbg !1995
  call void @llvm.dbg.value(metadata i32 %594, metadata !1267, metadata !DIExpression()) #16, !dbg !1992
  %595 = icmp slt i32 %51, %594, !dbg !1996
  br i1 %595, label %601, label %596, !dbg !1997

596:                                              ; preds = %592
  %597 = sub i32 0, %594, !dbg !1998
  %598 = getelementptr inbounds i8, i8* %52, i32 %597, !dbg !1998
  %599 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %598, i8* nonnull dereferenceable(1) %593) #16, !dbg !1999
  %600 = icmp eq i32 %599, 0, !dbg !2000
  br i1 %600, label %61, label %601, !dbg !2001

601:                                              ; preds = %596, %592
  call void @llvm.dbg.value(metadata i32 4, metadata !1906, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata i8 1, metadata !1908, metadata !DIExpression()), !dbg !1922
  %602 = tail call i32 @strlen(i8* nonnull dereferenceable(1) getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0)), !dbg !2565
  %603 = getelementptr [1034 x i8], [1034 x i8]* @outName, i32 0, i32 %602, !dbg !2565
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 dereferenceable(5) %603, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i32 0, i32 0), i32 5, i1 false), !dbg !2565
  br label %89, !dbg !2566
}

; Function Attrs: nounwind
define internal fastcc void @testf(i8* %0) unnamed_addr #0 !dbg !2567 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [5000 x i8], align 1
  %5 = alloca [5000 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 4
  %8 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2569, metadata !DIExpression()), !dbg !2573
  %9 = bitcast %struct.stat* %8 to i8*, !dbg !2574
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %9) #16, !dbg !2574
  call void @llvm.dbg.declare(metadata %struct.stat* %8, metadata !2572, metadata !DIExpression()), !dbg !2575
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !dbg !2576, !tbaa !382
  %10 = icmp eq i8* %0, null, !dbg !2577
  %11 = load i32, i32* @srcMode, align 4
  %12 = icmp ne i32 %11, 1
  %13 = and i1 %10, %12, !dbg !2579
  br i1 %13, label %14, label %15, !dbg !2579

14:                                               ; preds = %1
  tail call fastcc void @panic(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.96, i32 0, i32 0)) #19, !dbg !2580
  unreachable, !dbg !2580

15:                                               ; preds = %1
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), metadata !399, metadata !DIExpression()) #16, !dbg !2581
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), metadata !404, metadata !DIExpression()) #16, !dbg !2581
  %16 = tail call i8* @strncpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 1024) #16, !dbg !2583
  store i8 0, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 1024), align 1, !dbg !2584, !tbaa !382
  switch i32 %11, label %47 [
    i32 1, label %17
    i32 3, label %19
    i32 2, label %32
  ], !dbg !2585

17:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), metadata !399, metadata !DIExpression()) #16, !dbg !2586
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), metadata !404, metadata !DIExpression()) #16, !dbg !2586
  %18 = tail call i8* @strncpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i32 1024) #16, !dbg !2589
  store i8 0, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 1024), align 1, !dbg !2590, !tbaa !382
  br label %83, !dbg !2591

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), metadata !399, metadata !DIExpression()) #16, !dbg !2592
  call void @llvm.dbg.value(metadata i8* %0, metadata !404, metadata !DIExpression()) #16, !dbg !2592
  %20 = tail call i32 @strlen(i8* nonnull dereferenceable(1) %0) #16, !dbg !2594
  %21 = icmp ugt i32 %20, 1024, !dbg !2595
  br i1 %21, label %22, label %45, !dbg !2596

22:                                               ; preds = %19
  %23 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2597, !tbaa !377
  %24 = getelementptr inbounds %struct._reent, %struct._reent* %23, i32 0, i32 3, !dbg !2597
  %25 = load %struct.__sFILE*, %struct.__sFILE** %24, align 4, !dbg !2597, !tbaa !422
  %26 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %25, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.41, i32 0, i32 0), i8* %0, i32 1024) #16, !dbg !2598
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()) #16, !dbg !2599
  %27 = load i32, i32* @exitValue, align 4, !dbg !2601, !tbaa !387
  %28 = icmp slt i32 %27, 1, !dbg !2602
  br i1 %28, label %29, label %30, !dbg !2603

29:                                               ; preds = %22
  store i32 1, i32* @exitValue, align 4, !dbg !2604, !tbaa !387
  br label %30, !dbg !2605

30:                                               ; preds = %29, %22
  %31 = phi i32 [ %27, %22 ], [ 1, %29 ], !dbg !2606
  tail call void @exit(i32 %31) #17, !dbg !2607
  unreachable, !dbg !2607

32:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), metadata !399, metadata !DIExpression()) #16, !dbg !2608
  call void @llvm.dbg.value(metadata i8* %0, metadata !404, metadata !DIExpression()) #16, !dbg !2608
  %33 = tail call i32 @strlen(i8* nonnull dereferenceable(1) %0) #16, !dbg !2610
  %34 = icmp ugt i32 %33, 1024, !dbg !2611
  br i1 %34, label %35, label %45, !dbg !2612

35:                                               ; preds = %32
  %36 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2613, !tbaa !377
  %37 = getelementptr inbounds %struct._reent, %struct._reent* %36, i32 0, i32 3, !dbg !2613
  %38 = load %struct.__sFILE*, %struct.__sFILE** %37, align 4, !dbg !2613, !tbaa !422
  %39 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %38, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.41, i32 0, i32 0), i8* %0, i32 1024) #16, !dbg !2614
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()) #16, !dbg !2615
  %40 = load i32, i32* @exitValue, align 4, !dbg !2617, !tbaa !387
  %41 = icmp slt i32 %40, 1, !dbg !2618
  br i1 %41, label %42, label %43, !dbg !2619

42:                                               ; preds = %35
  store i32 1, i32* @exitValue, align 4, !dbg !2620, !tbaa !387
  br label %43, !dbg !2621

43:                                               ; preds = %42, %35
  %44 = phi i32 [ %40, %35 ], [ 1, %42 ], !dbg !2622
  tail call void @exit(i32 %44) #17, !dbg !2623
  unreachable, !dbg !2623

45:                                               ; preds = %32, %19
  %46 = tail call i8* @strncpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* nonnull dereferenceable(1) %0, i32 1024) #16, !dbg !2624
  store i8 0, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 1024), align 1, !dbg !2624, !tbaa !382
  br label %47, !dbg !2625

47:                                               ; preds = %45, %15
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), metadata !1228, metadata !DIExpression()) #16, !dbg !2628
  %48 = tail call %struct.__sFILE* @fopen(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0)) #16, !dbg !2625
  call void @llvm.dbg.value(metadata %struct.__sFILE* %48, metadata !1233, metadata !DIExpression()) #16, !dbg !2628
  %49 = icmp eq %struct.__sFILE* %48, null, !dbg !2629
  call void @llvm.dbg.value(metadata i1 %49, metadata !1234, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #16, !dbg !2628
  br i1 %49, label %50, label %62, !dbg !2630

50:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i1 %49, metadata !1234, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #16, !dbg !2628
  %51 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2631, !tbaa !377
  %52 = getelementptr inbounds %struct._reent, %struct._reent* %51, i32 0, i32 3, !dbg !2631
  %53 = load %struct.__sFILE*, %struct.__sFILE** %52, align 4, !dbg !2631, !tbaa !422
  %54 = load i8*, i8** @progName, align 4, !dbg !2633, !tbaa !377
  %55 = tail call i32* @__errno() #16, !dbg !2634
  %56 = load i32, i32* %55, align 4, !dbg !2634, !tbaa !387
  %57 = tail call i8* @strerror(i32 %56) #16, !dbg !2635
  %58 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %53, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.97, i32 0, i32 0), i8* %54, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %57), !dbg !2636
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()), !dbg !2637
  %59 = load i32, i32* @exitValue, align 4, !dbg !2639, !tbaa !387
  %60 = icmp slt i32 %59, 1, !dbg !2640
  br i1 %60, label %61, label %296, !dbg !2641

61:                                               ; preds = %50
  store i32 1, i32* @exitValue, align 4, !dbg !2642, !tbaa !387
  br label %296, !dbg !2643

62:                                               ; preds = %47
  %63 = tail call i32 @fclose(%struct.__sFILE* nonnull %48) #16, !dbg !2644
  call void @llvm.dbg.value(metadata i1 %49, metadata !1234, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #16, !dbg !2628
  %64 = load i32, i32* @srcMode, align 4, !dbg !2645, !tbaa !387
  %65 = icmp eq i32 %64, 1, !dbg !2647
  br i1 %65, label %83, label %66, !dbg !2591

66:                                               ; preds = %62
  %67 = call i32 @stat(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), %struct.stat* nonnull %8), !dbg !2648
  %68 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 2, !dbg !2650
  %69 = load i32, i32* %68, align 4, !dbg !2650, !tbaa !1298
  %70 = and i32 %69, 61440, !dbg !2650
  %71 = icmp eq i32 %70, 16384, !dbg !2650
  br i1 %71, label %72, label %81, !dbg !2652

72:                                               ; preds = %66
  %73 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2653, !tbaa !377
  %74 = getelementptr inbounds %struct._reent, %struct._reent* %73, i32 0, i32 3, !dbg !2653
  %75 = load %struct.__sFILE*, %struct.__sFILE** %74, align 4, !dbg !2653, !tbaa !422
  %76 = load i8*, i8** @progName, align 4, !dbg !2655, !tbaa !377
  %77 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %75, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.61, i32 0, i32 0), i8* %76, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !2656
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()), !dbg !2657
  %78 = load i32, i32* @exitValue, align 4, !dbg !2659, !tbaa !387
  %79 = icmp slt i32 %78, 1, !dbg !2660
  br i1 %79, label %80, label %296, !dbg !2661

80:                                               ; preds = %72
  store i32 1, i32* @exitValue, align 4, !dbg !2662, !tbaa !387
  br label %296, !dbg !2663

81:                                               ; preds = %66
  %82 = load i32, i32* @srcMode, align 4, !dbg !2664, !tbaa !387
  switch i32 %82, label %122 [
    i32 1, label %83
    i32 2, label %107
    i32 3, label %107
  ], !dbg !2665

83:                                               ; preds = %17, %62, %81
  %84 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2666, !tbaa !377
  %85 = getelementptr inbounds %struct._reent, %struct._reent* %84, i32 0, i32 1, !dbg !2666
  %86 = load %struct.__sFILE*, %struct.__sFILE** %85, align 4, !dbg !2666, !tbaa !1432
  %87 = tail call i32 @fileno(%struct.__sFILE* %86), !dbg !2669
  %88 = tail call i32 @isatty(i32 %87) #16, !dbg !2670
  %89 = icmp eq i32 %88, 0, !dbg !2670
  %90 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2671, !tbaa !377
  br i1 %89, label %104, label %91, !dbg !2672

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct._reent, %struct._reent* %90, i32 0, i32 3, !dbg !2673
  %93 = load %struct.__sFILE*, %struct.__sFILE** %92, align 4, !dbg !2673, !tbaa !422
  %94 = load i8*, i8** @progName, align 4, !dbg !2675, !tbaa !377
  %95 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %93, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.83, i32 0, i32 0), i8* %94), !dbg !2676
  %96 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2677, !tbaa !377
  %97 = getelementptr inbounds %struct._reent, %struct._reent* %96, i32 0, i32 3, !dbg !2677
  %98 = load %struct.__sFILE*, %struct.__sFILE** %97, align 4, !dbg !2677, !tbaa !422
  %99 = load i8*, i8** @progName, align 4, !dbg !2678, !tbaa !377
  %100 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %98, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.67, i32 0, i32 0), i8* %99, i8* %99), !dbg !2679
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()), !dbg !2680
  %101 = load i32, i32* @exitValue, align 4, !dbg !2682, !tbaa !387
  %102 = icmp slt i32 %101, 1, !dbg !2683
  br i1 %102, label %103, label %296, !dbg !2684

103:                                              ; preds = %91
  store i32 1, i32* @exitValue, align 4, !dbg !2685, !tbaa !387
  br label %296, !dbg !2686

104:                                              ; preds = %83
  %105 = getelementptr inbounds %struct._reent, %struct._reent* %90, i32 0, i32 1, !dbg !2687
  %106 = load %struct.__sFILE*, %struct.__sFILE** %105, align 4, !dbg !2687, !tbaa !1432
  call void @llvm.dbg.value(metadata %struct.__sFILE* %106, metadata !2570, metadata !DIExpression()), !dbg !2573
  br label %123, !dbg !2688

107:                                              ; preds = %81, %81
  %108 = tail call %struct.__sFILE* @fopen(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0)), !dbg !2689
  call void @llvm.dbg.value(metadata %struct.__sFILE* %108, metadata !2570, metadata !DIExpression()), !dbg !2573
  %109 = icmp eq %struct.__sFILE* %108, null, !dbg !2690
  br i1 %109, label %110, label %123, !dbg !2692

110:                                              ; preds = %107
  %111 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2693, !tbaa !377
  %112 = getelementptr inbounds %struct._reent, %struct._reent* %111, i32 0, i32 3, !dbg !2693
  %113 = load %struct.__sFILE*, %struct.__sFILE** %112, align 4, !dbg !2693, !tbaa !422
  %114 = load i8*, i8** @progName, align 4, !dbg !2695, !tbaa !377
  %115 = tail call i32* @__errno() #16, !dbg !2696
  %116 = load i32, i32* %115, align 4, !dbg !2696, !tbaa !387
  %117 = tail call i8* @strerror(i32 %116) #16, !dbg !2697
  %118 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %113, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.84, i32 0, i32 0), i8* %114, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %117), !dbg !2698
  call void @llvm.dbg.value(metadata i32 1, metadata !429, metadata !DIExpression()), !dbg !2699
  %119 = load i32, i32* @exitValue, align 4, !dbg !2701, !tbaa !387
  %120 = icmp slt i32 %119, 1, !dbg !2702
  br i1 %120, label %121, label %296, !dbg !2703

121:                                              ; preds = %110
  store i32 1, i32* @exitValue, align 4, !dbg !2704, !tbaa !387
  br label %296, !dbg !2705

122:                                              ; preds = %81
  tail call fastcc void @panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.98, i32 0, i32 0)) #19, !dbg !2706
  unreachable, !dbg !2706

123:                                              ; preds = %107, %104
  %124 = phi %struct.__sFILE* [ %108, %107 ], [ %106, %104 ], !dbg !2671
  call void @llvm.dbg.value(metadata %struct.__sFILE* %124, metadata !2570, metadata !DIExpression()), !dbg !2573
  %125 = load i32, i32* @verbosity, align 4, !dbg !2707, !tbaa !387
  %126 = icmp sgt i32 %125, 0, !dbg !2709
  br i1 %126, label %127, label %151, !dbg !2710

127:                                              ; preds = %123
  %128 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2711, !tbaa !377
  %129 = getelementptr inbounds %struct._reent, %struct._reent* %128, i32 0, i32 3, !dbg !2711
  %130 = load %struct.__sFILE*, %struct.__sFILE** %129, align 4, !dbg !2711, !tbaa !422
  %131 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %130, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !2713
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), metadata !1558, metadata !DIExpression()) #16, !dbg !2714
  %132 = tail call i32 @strlen(i8* nonnull dereferenceable(1) getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)) #16, !dbg !2716
  %133 = load i32, i32* @longestFileName, align 4, !dbg !2717, !tbaa !387
  %134 = icmp slt i32 %132, %133, !dbg !2718
  br i1 %134, label %135, label %146, !dbg !2719

135:                                              ; preds = %127, %135
  %136 = phi i32 [ %141, %135 ], [ 1, %127 ]
  call void @llvm.dbg.value(metadata i32 %136, metadata !1561, metadata !DIExpression()) #16, !dbg !2714
  %137 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2720, !tbaa !377
  %138 = getelementptr inbounds %struct._reent, %struct._reent* %137, i32 0, i32 3, !dbg !2720
  %139 = load %struct.__sFILE*, %struct.__sFILE** %138, align 4, !dbg !2720, !tbaa !422
  %140 = tail call i32 @fputc(i32 32, %struct.__sFILE* %139) #16, !dbg !2721
  %141 = add nuw nsw i32 %136, 1, !dbg !2722
  call void @llvm.dbg.value(metadata i32 %141, metadata !1561, metadata !DIExpression()) #16, !dbg !2714
  %142 = load i32, i32* @longestFileName, align 4, !dbg !2723, !tbaa !387
  %143 = tail call i32 @strlen(i8* nonnull dereferenceable(1) getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)) #16, !dbg !2724
  %144 = sub nsw i32 %142, %143, !dbg !2725
  %145 = icmp slt i32 %136, %144, !dbg !2726
  br i1 %145, label %135, label %146, !dbg !2727, !llvm.loop !2728

146:                                              ; preds = %135, %127
  %147 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2730, !tbaa !377
  %148 = getelementptr inbounds %struct._reent, %struct._reent* %147, i32 0, i32 3, !dbg !2730
  %149 = load %struct.__sFILE*, %struct.__sFILE** %148, align 4, !dbg !2730, !tbaa !422
  %150 = tail call i32 @fflush(%struct.__sFILE* %149), !dbg !2731
  br label %151, !dbg !2732

151:                                              ; preds = %146, %123
  store %struct.__sFILE* null, %struct.__sFILE** @outputHandleJustInCase, align 4, !dbg !2733, !tbaa !377
  call void @llvm.dbg.value(metadata %struct.__sFILE* %124, metadata !2734, metadata !DIExpression()) #16, !dbg !2751
  call void @llvm.dbg.value(metadata i8* null, metadata !2737, metadata !DIExpression()) #16, !dbg !2751
  %152 = bitcast i32* %2 to i8*, !dbg !2753
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %152) #16, !dbg !2753
  %153 = bitcast i32* %3 to i8*, !dbg !2753
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %153) #16, !dbg !2753
  %154 = getelementptr inbounds [5000 x i8], [5000 x i8]* %4, i32 0, i32 0, !dbg !2754
  call void @llvm.lifetime.start.p0i8(i64 5000, i8* nonnull %154) #16, !dbg !2754
  call void @llvm.dbg.declare(metadata [5000 x i8]* %4, metadata !2743, metadata !DIExpression()) #16, !dbg !2755
  %155 = getelementptr inbounds [5000 x i8], [5000 x i8]* %5, i32 0, i32 0, !dbg !2756
  call void @llvm.lifetime.start.p0i8(i64 5000, i8* nonnull %155) #16, !dbg !2756
  call void @llvm.dbg.declare(metadata [5000 x i8]* %5, metadata !2744, metadata !DIExpression()) #16, !dbg !2757
  %156 = bitcast i32* %6 to i8*, !dbg !2758
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %156) #16, !dbg !2758
  %157 = bitcast i8** %7 to i8*, !dbg !2759
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %157) #16, !dbg !2759
  call void @llvm.dbg.value(metadata i32 0, metadata !2745, metadata !DIExpression()) #16, !dbg !2751
  store i32 0, i32* %6, align 4, !dbg !2760, !tbaa !387
  call void @llvm.dbg.value(metadata i32 0, metadata !2741, metadata !DIExpression()) #16, !dbg !2751
  %158 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %124, i32 0, i32 3, !dbg !2761
  %159 = load i16, i16* %158, align 4, !dbg !2761, !tbaa !1640
  %160 = and i16 %159, 64, !dbg !2761
  %161 = icmp eq i16 %160, 0, !dbg !2761
  br i1 %161, label %162, label %248, !dbg !2763

162:                                              ; preds = %151
  call void @llvm.dbg.value(metadata i32 0, metadata !2741, metadata !DIExpression()) #16, !dbg !2751
  %163 = load i32, i32* @verbosity, align 4, !dbg !2764, !tbaa !387
  %164 = load i8, i8* @smallMode, align 1, !dbg !2766, !tbaa !382
  %165 = zext i8 %164 to i32, !dbg !2767
  call void @llvm.dbg.value(metadata i32 0, metadata !2745, metadata !DIExpression()) #16, !dbg !2751
  call void @llvm.dbg.value(metadata i32* %2, metadata !2738, metadata !DIExpression(DW_OP_deref)) #16, !dbg !2751
  %166 = call i8* @BZ2_bzReadOpen(i32* nonnull %2, %struct.__sFILE* nonnull %124, i32 %163, i32 %165, i8* nonnull %155, i32 0) #16, !dbg !2768
  call void @llvm.dbg.value(metadata i8* %166, metadata !2737, metadata !DIExpression()) #16, !dbg !2751
  %167 = icmp eq i8* %166, null, !dbg !2769
  %168 = load i32, i32* %2, align 4
  call void @llvm.dbg.value(metadata i32 %168, metadata !2738, metadata !DIExpression()) #16, !dbg !2751
  %169 = icmp ne i32 %168, 0
  %170 = or i1 %167, %169, !dbg !2771
  br i1 %170, label %234, label %171, !dbg !2771

171:                                              ; preds = %162, %209
  %172 = phi i8* [ %214, %209 ], [ %166, %162 ]
  %173 = phi i32 [ %174, %209 ], [ 0, %162 ]
  call void @llvm.dbg.value(metadata i32 %173, metadata !2741, metadata !DIExpression()) #16, !dbg !2751
  %174 = add nuw nsw i32 %173, 1, !dbg !2772
  call void @llvm.dbg.value(metadata i32 %174, metadata !2741, metadata !DIExpression()) #16, !dbg !2751
  br label %175, !dbg !2773

175:                                              ; preds = %177, %171
  %176 = phi i32 [ %179, %177 ], [ 0, %171 ], !dbg !2774
  call void @llvm.dbg.value(metadata i32 %176, metadata !2738, metadata !DIExpression()) #16, !dbg !2751
  switch i32 %176, label %234 [
    i32 0, label %177
    i32 4, label %181
  ], !dbg !2773

177:                                              ; preds = %175
  call void @llvm.dbg.value(metadata i32* %2, metadata !2738, metadata !DIExpression(DW_OP_deref)) #16, !dbg !2751
  %178 = call i32 @BZ2_bzRead(i32* nonnull %2, i8* %172, i8* nonnull %154, i32 5000) #16, !dbg !2775
  %179 = load i32, i32* %2, align 4, !dbg !2777, !tbaa !387
  call void @llvm.dbg.value(metadata i32 %179, metadata !2738, metadata !DIExpression()) #16, !dbg !2751
  %180 = icmp eq i32 %179, -5, !dbg !2779
  br i1 %180, label %234, label %175, !dbg !2780, !llvm.loop !2781

181:                                              ; preds = %175
  call void @llvm.dbg.value(metadata i32* %2, metadata !2738, metadata !DIExpression(DW_OP_deref)) #16, !dbg !2751
  call void @llvm.dbg.value(metadata i32* %6, metadata !2745, metadata !DIExpression(DW_OP_deref)) #16, !dbg !2751
  call void @llvm.dbg.value(metadata i8** %7, metadata !2746, metadata !DIExpression(DW_OP_deref)) #16, !dbg !2751
  call void @BZ2_bzReadGetUnused(i32* nonnull %2, i8* %172, i8** nonnull %7, i32* nonnull %6) #16, !dbg !2783
  %182 = load i32, i32* %2, align 4, !dbg !2784, !tbaa !387
  call void @llvm.dbg.value(metadata i32 %182, metadata !2738, metadata !DIExpression()) #16, !dbg !2751
  %183 = icmp eq i32 %182, 0, !dbg !2786
  br i1 %183, label %185, label %184, !dbg !2787

184:                                              ; preds = %181
  call fastcc void @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.100, i32 0, i32 0)) #17, !dbg !2788
  unreachable, !dbg !2788

185:                                              ; preds = %181
  %186 = load i8*, i8** %7, align 4, !dbg !2789, !tbaa !377
  call void @llvm.dbg.value(metadata i8* %186, metadata !2746, metadata !DIExpression()) #16, !dbg !2751
  call void @llvm.dbg.value(metadata i8* %186, metadata !2747, metadata !DIExpression()) #16, !dbg !2751
  call void @llvm.dbg.value(metadata i32 0, metadata !2742, metadata !DIExpression()) #16, !dbg !2751
  %187 = load i32, i32* %6, align 4, !dbg !2790, !tbaa !387
  call void @llvm.dbg.value(metadata i32 %187, metadata !2745, metadata !DIExpression()) #16, !dbg !2751
  %188 = icmp sgt i32 %187, 0, !dbg !2793
  br i1 %188, label %189, label %196, !dbg !2794

189:                                              ; preds = %185, %189
  %190 = phi i32 [ %194, %189 ], [ 0, %185 ]
  call void @llvm.dbg.value(metadata i32 %190, metadata !2742, metadata !DIExpression()) #16, !dbg !2751
  %191 = getelementptr inbounds i8, i8* %186, i32 %190, !dbg !2795
  %192 = load i8, i8* %191, align 1, !dbg !2795, !tbaa !382
  %193 = getelementptr inbounds [5000 x i8], [5000 x i8]* %5, i32 0, i32 %190, !dbg !2796
  store i8 %192, i8* %193, align 1, !dbg !2797, !tbaa !382
  %194 = add nuw nsw i32 %190, 1, !dbg !2798
  call void @llvm.dbg.value(metadata i32 %194, metadata !2742, metadata !DIExpression()) #16, !dbg !2751
  call void @llvm.dbg.value(metadata i32 %187, metadata !2745, metadata !DIExpression()) #16, !dbg !2751
  %195 = icmp eq i32 %194, %187, !dbg !2793
  br i1 %195, label %196, label %189, !dbg !2794, !llvm.loop !2799

196:                                              ; preds = %189, %185
  call void @llvm.dbg.value(metadata i32* %2, metadata !2738, metadata !DIExpression(DW_OP_deref)) #16, !dbg !2751
  call void @BZ2_bzReadClose(i32* nonnull %2, i8* %172) #16, !dbg !2801
  %197 = load i32, i32* %2, align 4, !dbg !2802, !tbaa !387
  call void @llvm.dbg.value(metadata i32 %197, metadata !2738, metadata !DIExpression()) #16, !dbg !2751
  %198 = icmp eq i32 %197, 0, !dbg !2804
  br i1 %198, label %200, label %199, !dbg !2805

199:                                              ; preds = %196
  call fastcc void @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.100, i32 0, i32 0)) #17, !dbg !2806
  unreachable, !dbg !2806

200:                                              ; preds = %196
  %201 = load i32, i32* %6, align 4, !dbg !2807, !tbaa !387
  call void @llvm.dbg.value(metadata i32 %201, metadata !2745, metadata !DIExpression()) #16, !dbg !2751
  %202 = icmp eq i32 %201, 0, !dbg !2809
  br i1 %202, label %203, label %209, !dbg !2810

203:                                              ; preds = %200
  call void @llvm.dbg.value(metadata %struct.__sFILE* %124, metadata !1663, metadata !DIExpression()) #16, !dbg !2811
  %204 = call i32 @fgetc(%struct.__sFILE* %124) #16, !dbg !2813
  call void @llvm.dbg.value(metadata i32 %204, metadata !1668, metadata !DIExpression()) #16, !dbg !2811
  %205 = icmp eq i32 %204, -1, !dbg !2814
  br i1 %205, label %219, label %206, !dbg !2815

206:                                              ; preds = %203
  %207 = call i32 @ungetc(i32 %204, %struct.__sFILE* %124) #16, !dbg !2816
  %208 = load i32, i32* %6, align 4, !dbg !2817, !tbaa !387
  br label %209, !dbg !2818

209:                                              ; preds = %206, %200
  %210 = phi i32 [ %208, %206 ], [ %201, %200 ], !dbg !2817
  call void @llvm.dbg.value(metadata i32 %174, metadata !2741, metadata !DIExpression()) #16, !dbg !2751
  %211 = load i32, i32* @verbosity, align 4, !dbg !2764, !tbaa !387
  %212 = load i8, i8* @smallMode, align 1, !dbg !2766, !tbaa !382
  %213 = zext i8 %212 to i32, !dbg !2767
  call void @llvm.dbg.value(metadata i32 %210, metadata !2745, metadata !DIExpression()) #16, !dbg !2751
  call void @llvm.dbg.value(metadata i32* %2, metadata !2738, metadata !DIExpression(DW_OP_deref)) #16, !dbg !2751
  %214 = call i8* @BZ2_bzReadOpen(i32* nonnull %2, %struct.__sFILE* %124, i32 %211, i32 %213, i8* nonnull %155, i32 %210) #16, !dbg !2768
  call void @llvm.dbg.value(metadata i8* %214, metadata !2737, metadata !DIExpression()) #16, !dbg !2751
  %215 = icmp eq i8* %214, null, !dbg !2769
  %216 = load i32, i32* %2, align 4
  call void @llvm.dbg.value(metadata i32 %216, metadata !2738, metadata !DIExpression()) #16, !dbg !2751
  %217 = icmp ne i32 %216, 0
  %218 = or i1 %215, %217, !dbg !2771
  br i1 %218, label %234, label %171, !dbg !2771, !llvm.loop !2819

219:                                              ; preds = %203
  %220 = load i16, i16* %158, align 4, !dbg !2822, !tbaa !1640
  %221 = and i16 %220, 64, !dbg !2822
  %222 = icmp eq i16 %221, 0, !dbg !2822
  br i1 %222, label %223, label %248, !dbg !2824

223:                                              ; preds = %219
  %224 = call i32 @fclose(%struct.__sFILE* nonnull %124) #16, !dbg !2825
  call void @llvm.dbg.value(metadata i32 %224, metadata !2740, metadata !DIExpression()) #16, !dbg !2751
  %225 = icmp eq i32 %224, -1, !dbg !2826
  br i1 %225, label %248, label %226, !dbg !2828

226:                                              ; preds = %223
  %227 = load i32, i32* @verbosity, align 4, !dbg !2829, !tbaa !387
  %228 = icmp sgt i32 %227, 1, !dbg !2831
  br i1 %228, label %229, label %283, !dbg !2832

229:                                              ; preds = %226
  %230 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2833, !tbaa !377
  %231 = getelementptr inbounds %struct._reent, %struct._reent* %230, i32 0, i32 3, !dbg !2833
  %232 = load %struct.__sFILE*, %struct.__sFILE** %231, align 4, !dbg !2833, !tbaa !422
  %233 = call i32 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i32 0, i32 0), i32 5, i32 1, %struct.__sFILE* %232) #16, !dbg !2834
  br label %283, !dbg !2834

234:                                              ; preds = %209, %177, %175, %162
  %235 = phi i8* [ %166, %162 ], [ %172, %175 ], [ %172, %177 ], [ %214, %209 ]
  %236 = phi i32 [ 0, %162 ], [ %174, %175 ], [ %174, %177 ], [ %174, %209 ], !dbg !2751
  call void @llvm.dbg.value(metadata i32 %236, metadata !2741, metadata !DIExpression()) #16, !dbg !2751
  call void @llvm.dbg.label(metadata !2748) #16, !dbg !2835
  call void @llvm.dbg.value(metadata i32* %3, metadata !2739, metadata !DIExpression(DW_OP_deref)) #16, !dbg !2751
  call void @BZ2_bzReadClose(i32* nonnull %3, i8* %235) #16, !dbg !2836
  %237 = load i32, i32* @verbosity, align 4, !dbg !2837, !tbaa !387
  %238 = icmp eq i32 %237, 0, !dbg !2839
  br i1 %238, label %239, label %245, !dbg !2840

239:                                              ; preds = %234
  %240 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2841, !tbaa !377
  %241 = getelementptr inbounds %struct._reent, %struct._reent* %240, i32 0, i32 3, !dbg !2841
  %242 = load %struct.__sFILE*, %struct.__sFILE** %241, align 4, !dbg !2841, !tbaa !422
  %243 = load i8*, i8** @progName, align 4, !dbg !2842, !tbaa !377
  %244 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %242, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.101, i32 0, i32 0), i8* %243, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)) #16, !dbg !2843
  br label %245, !dbg !2843

245:                                              ; preds = %239, %234
  %246 = load i32, i32* %2, align 4, !dbg !2844, !tbaa !387
  call void @llvm.dbg.value(metadata i32 %246, metadata !2738, metadata !DIExpression()) #16, !dbg !2751
  switch i32 %246, label %282 [
    i32 -9, label %247
    i32 -6, label %248
    i32 -4, label %249
    i32 -3, label %254
    i32 -7, label %255
    i32 -5, label %260
  ], !dbg !2845

247:                                              ; preds = %245
  call fastcc void @configError() #17, !dbg !2846
  unreachable, !dbg !2846

248:                                              ; preds = %245, %223, %219, %151
  call void @llvm.dbg.label(metadata !2749) #16, !dbg !2847
  call fastcc void @ioError() #17, !dbg !2848
  unreachable, !dbg !2848

249:                                              ; preds = %245
  %250 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2849, !tbaa !377
  %251 = getelementptr inbounds %struct._reent, %struct._reent* %250, i32 0, i32 3, !dbg !2849
  %252 = load %struct.__sFILE*, %struct.__sFILE** %251, align 4, !dbg !2849, !tbaa !422
  %253 = call i32 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.102, i32 0, i32 0), i32 35, i32 1, %struct.__sFILE* %252) #16, !dbg !2850
  br label %283, !dbg !2851

254:                                              ; preds = %245
  call fastcc void @outOfMemory() #17, !dbg !2852
  unreachable, !dbg !2852

255:                                              ; preds = %245
  %256 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2853, !tbaa !377
  %257 = getelementptr inbounds %struct._reent, %struct._reent* %256, i32 0, i32 3, !dbg !2853
  %258 = load %struct.__sFILE*, %struct.__sFILE** %257, align 4, !dbg !2853, !tbaa !422
  %259 = call i32 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.103, i32 0, i32 0), i32 23, i32 1, %struct.__sFILE* %258) #16, !dbg !2854
  br label %283, !dbg !2855

260:                                              ; preds = %245
  %261 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2856, !tbaa !377
  %262 = getelementptr inbounds %struct._reent, %struct._reent* %261, i32 0, i32 1, !dbg !2856
  %263 = load %struct.__sFILE*, %struct.__sFILE** %262, align 4, !dbg !2856, !tbaa !1432
  %264 = icmp eq %struct.__sFILE* %263, %124, !dbg !2858
  br i1 %264, label %267, label %265, !dbg !2859

265:                                              ; preds = %260
  %266 = call i32 @fclose(%struct.__sFILE* %124) #16, !dbg !2860
  br label %267, !dbg !2860

267:                                              ; preds = %265, %260
  %268 = icmp eq i32 %236, 1, !dbg !2861
  br i1 %268, label %269, label %274, !dbg !2863

269:                                              ; preds = %267
  %270 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2864, !tbaa !377
  %271 = getelementptr inbounds %struct._reent, %struct._reent* %270, i32 0, i32 3, !dbg !2864
  %272 = load %struct.__sFILE*, %struct.__sFILE** %271, align 4, !dbg !2864, !tbaa !422
  %273 = call i32 @fwrite(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.104, i32 0, i32 0), i32 45, i32 1, %struct.__sFILE* %272) #16, !dbg !2866
  br label %283, !dbg !2867

274:                                              ; preds = %267
  %275 = load i8, i8* @noisy, align 1, !dbg !2868, !tbaa !382
  %276 = icmp eq i8 %275, 0, !dbg !2868
  br i1 %276, label %283, label %277, !dbg !2871

277:                                              ; preds = %274
  %278 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2872, !tbaa !377
  %279 = getelementptr inbounds %struct._reent, %struct._reent* %278, i32 0, i32 3, !dbg !2872
  %280 = load %struct.__sFILE*, %struct.__sFILE** %279, align 4, !dbg !2872, !tbaa !422
  %281 = call i32 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.105, i32 0, i32 0), i32 35, i32 1, %struct.__sFILE* %280) #16, !dbg !2873
  br label %283, !dbg !2873

282:                                              ; preds = %245
  call fastcc void @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.106, i32 0, i32 0)) #17, !dbg !2874
  unreachable, !dbg !2874

283:                                              ; preds = %226, %229, %249, %255, %269, %274, %277
  %284 = phi i1 [ true, %226 ], [ true, %229 ], [ false, %249 ], [ false, %255 ], [ false, %269 ], [ true, %274 ], [ true, %277 ], !dbg !2751
  %285 = phi i1 [ false, %226 ], [ false, %229 ], [ true, %249 ], [ true, %255 ], [ true, %269 ], [ false, %274 ], [ false, %277 ], !dbg !2751
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %157) #16, !dbg !2875
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %156) #16, !dbg !2875
  call void @llvm.lifetime.end.p0i8(i64 5000, i8* nonnull %155) #16, !dbg !2875
  call void @llvm.lifetime.end.p0i8(i64 5000, i8* nonnull %154) #16, !dbg !2875
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %153) #16, !dbg !2875
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %152) #16, !dbg !2875
  call void @llvm.dbg.value(metadata i8 undef, metadata !2571, metadata !DIExpression()), !dbg !2573
  %286 = load i32, i32* @verbosity, align 4
  %287 = icmp sgt i32 %286, 0
  %288 = and i1 %284, %287, !dbg !2876
  br i1 %288, label %289, label %294, !dbg !2876

289:                                              ; preds = %283
  %290 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2878, !tbaa !377
  %291 = getelementptr inbounds %struct._reent, %struct._reent* %290, i32 0, i32 3, !dbg !2878
  %292 = load %struct.__sFILE*, %struct.__sFILE** %291, align 4, !dbg !2878, !tbaa !422
  %293 = call i32 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99, i32 0, i32 0), i32 3, i32 1, %struct.__sFILE* %292), !dbg !2879
  br label %296, !dbg !2880

294:                                              ; preds = %283
  br i1 %285, label %295, label %296, !dbg !2880

295:                                              ; preds = %294
  store i8 1, i8* @testFailsExist, align 1, !dbg !2881, !tbaa !382
  br label %296, !dbg !2883

296:                                              ; preds = %289, %121, %110, %103, %91, %80, %72, %61, %50, %294, %295
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %9) #16, !dbg !2884
  ret void, !dbg !2884
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree
declare !dbg !2885 dso_local noundef i32 @write(i32 noundef, i8* nocapture noundef readonly, i32 noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare dso_local i8* @strncpy(i8* noalias returned writeonly, i8* noalias nocapture readonly, i32) local_unnamed_addr #10

; Function Attrs: nofree nounwind readonly
declare !dbg !2891 dso_local noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #11

; Function Attrs: argmemonly nofree nounwind willreturn
declare dso_local i8* @strcpy(i8* noalias returned writeonly, i8* noalias nocapture readonly) local_unnamed_addr #10

; Function Attrs: inaccessiblememonly nofree nounwind willreturn allocsize(0)
declare dso_local noalias noundef i8* @malloc(i32) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
define internal fastcc void @outOfMemory() unnamed_addr #4 !dbg !2895 {
  %1 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2896, !tbaa !377
  %2 = getelementptr inbounds %struct._reent, %struct._reent* %1, i32 0, i32 3, !dbg !2896
  %3 = load %struct.__sFILE*, %struct.__sFILE** %2, align 4, !dbg !2896, !tbaa !422
  %4 = load i8*, i8** @progName, align 4, !dbg !2897, !tbaa !377
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.42, i32 0, i32 0), i8* %4), !dbg !2898
  tail call fastcc void @showFileNames(), !dbg !2899
  tail call fastcc void @cleanUpAndFail(i32 1) #19, !dbg !2900
  unreachable, !dbg !2900
}

; Function Attrs: nofree nounwind
define internal fastcc void @showFileNames() unnamed_addr #13 !dbg !2901 {
  %1 = load i8, i8* @noisy, align 1, !dbg !2902, !tbaa !382
  %2 = icmp eq i8 %1, 0, !dbg !2902
  br i1 %2, label %8, label %3, !dbg !2904

3:                                                ; preds = %0
  %4 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2905, !tbaa !377
  %5 = getelementptr inbounds %struct._reent, %struct._reent* %4, i32 0, i32 3, !dbg !2905
  %6 = load %struct.__sFILE*, %struct.__sFILE** %5, align 4, !dbg !2905, !tbaa !422
  %7 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0)), !dbg !2906
  br label %8, !dbg !2906

8:                                                ; preds = %3, %0
  ret void, !dbg !2907
}

; Function Attrs: noreturn nounwind
define internal fastcc void @cleanUpAndFail(i32 %0) unnamed_addr #4 !dbg !2908 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2910, metadata !DIExpression()), !dbg !2913
  %3 = bitcast %struct.stat* %2 to i8*, !dbg !2914
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %3) #16, !dbg !2914
  call void @llvm.dbg.declare(metadata %struct.stat* %2, metadata !2912, metadata !DIExpression()), !dbg !2915
  %4 = load i32, i32* @srcMode, align 4, !dbg !2916, !tbaa !387
  %5 = icmp ne i32 %4, 3, !dbg !2918
  %6 = load i32, i32* @opMode, align 4
  %7 = icmp eq i32 %6, 3
  %8 = or i1 %5, %7, !dbg !2919
  %9 = load i8, i8* @deleteOutputOnInterrupt, align 1
  %10 = icmp eq i8 %9, 0
  %11 = or i1 %8, %10, !dbg !2919
  br i1 %11, label %59, label %12, !dbg !2919

12:                                               ; preds = %1
  %13 = call i32 @stat(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), %struct.stat* nonnull %2), !dbg !2920
  call void @llvm.dbg.value(metadata i32 %13, metadata !2911, metadata !DIExpression()), !dbg !2913
  %14 = icmp eq i32 %13, 0, !dbg !2922
  br i1 %14, label %15, label %38, !dbg !2924

15:                                               ; preds = %12
  %16 = load i8, i8* @noisy, align 1, !dbg !2925, !tbaa !382
  %17 = icmp eq i8 %16, 0, !dbg !2925
  br i1 %17, label %24, label %18, !dbg !2928

18:                                               ; preds = %15
  %19 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2929, !tbaa !377
  %20 = getelementptr inbounds %struct._reent, %struct._reent* %19, i32 0, i32 3, !dbg !2929
  %21 = load %struct.__sFILE*, %struct.__sFILE** %20, align 4, !dbg !2929, !tbaa !422
  %22 = load i8*, i8** @progName, align 4, !dbg !2930, !tbaa !377
  %23 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.44, i32 0, i32 0), i8* %22, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0)), !dbg !2931
  br label %24, !dbg !2931

24:                                               ; preds = %18, %15
  %25 = load %struct.__sFILE*, %struct.__sFILE** @outputHandleJustInCase, align 4, !dbg !2932, !tbaa !377
  %26 = icmp eq %struct.__sFILE* %25, null, !dbg !2934
  br i1 %26, label %29, label %27, !dbg !2935

27:                                               ; preds = %24
  %28 = tail call i32 @fclose(%struct.__sFILE* nonnull %25), !dbg !2936
  br label %29, !dbg !2936

29:                                               ; preds = %27, %24
  %30 = tail call i32 @remove(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0)), !dbg !2937
  call void @llvm.dbg.value(metadata i32 %30, metadata !2911, metadata !DIExpression()), !dbg !2913
  %31 = icmp eq i32 %30, 0, !dbg !2938
  br i1 %31, label %59, label %32, !dbg !2940

32:                                               ; preds = %29
  %33 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2941, !tbaa !377
  %34 = getelementptr inbounds %struct._reent, %struct._reent* %33, i32 0, i32 3, !dbg !2941
  %35 = load %struct.__sFILE*, %struct.__sFILE** %34, align 4, !dbg !2941, !tbaa !422
  %36 = load i8*, i8** @progName, align 4, !dbg !2942, !tbaa !377
  %37 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %35, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.45, i32 0, i32 0), i8* %36), !dbg !2943
  br label %59, !dbg !2943

38:                                               ; preds = %12
  %39 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2944, !tbaa !377
  %40 = getelementptr inbounds %struct._reent, %struct._reent* %39, i32 0, i32 3, !dbg !2944
  %41 = load %struct.__sFILE*, %struct.__sFILE** %40, align 4, !dbg !2944, !tbaa !422
  %42 = load i8*, i8** @progName, align 4, !dbg !2946, !tbaa !377
  %43 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %41, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.46, i32 0, i32 0), i8* %42), !dbg !2947
  %44 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2948, !tbaa !377
  %45 = getelementptr inbounds %struct._reent, %struct._reent* %44, i32 0, i32 3, !dbg !2948
  %46 = load %struct.__sFILE*, %struct.__sFILE** %45, align 4, !dbg !2948, !tbaa !422
  %47 = load i8*, i8** @progName, align 4, !dbg !2949, !tbaa !377
  %48 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %46, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.47, i32 0, i32 0), i8* %47), !dbg !2950
  %49 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2951, !tbaa !377
  %50 = getelementptr inbounds %struct._reent, %struct._reent* %49, i32 0, i32 3, !dbg !2951
  %51 = load %struct.__sFILE*, %struct.__sFILE** %50, align 4, !dbg !2951, !tbaa !422
  %52 = load i8*, i8** @progName, align 4, !dbg !2952, !tbaa !377
  %53 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.48, i32 0, i32 0), i8* %52, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0)), !dbg !2953
  %54 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2954, !tbaa !377
  %55 = getelementptr inbounds %struct._reent, %struct._reent* %54, i32 0, i32 3, !dbg !2954
  %56 = load %struct.__sFILE*, %struct.__sFILE** %55, align 4, !dbg !2954, !tbaa !422
  %57 = load i8*, i8** @progName, align 4, !dbg !2955, !tbaa !377
  %58 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %56, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.49, i32 0, i32 0), i8* %57), !dbg !2956
  br label %59

59:                                               ; preds = %38, %32, %29, %1
  %60 = load i8, i8* @noisy, align 1, !dbg !2957, !tbaa !382
  %61 = icmp ne i8 %60, 0, !dbg !2957
  %62 = load i32, i32* @numFileNames, align 4
  %63 = icmp sgt i32 %62, 0
  %64 = and i1 %61, %63, !dbg !2959
  %65 = load i32, i32* @numFilesProcessed, align 4
  %66 = icmp sgt i32 %62, %65
  %67 = and i1 %64, %66, !dbg !2959
  br i1 %67, label %68, label %75, !dbg !2959

68:                                               ; preds = %59
  %69 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2960, !tbaa !377
  %70 = getelementptr inbounds %struct._reent, %struct._reent* %69, i32 0, i32 3, !dbg !2960
  %71 = load %struct.__sFILE*, %struct.__sFILE** %70, align 4, !dbg !2960, !tbaa !422
  %72 = load i8*, i8** @progName, align 4, !dbg !2962, !tbaa !377
  %73 = sub nsw i32 %62, %65, !dbg !2963
  %74 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %71, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.50, i32 0, i32 0), i8* %72, i8* %72, i32 %62, i32 %73), !dbg !2964
  br label %75, !dbg !2965

75:                                               ; preds = %68, %59
  call void @llvm.dbg.value(metadata i32 %0, metadata !429, metadata !DIExpression()), !dbg !2966
  %76 = load i32, i32* @exitValue, align 4, !dbg !2968, !tbaa !387
  %77 = icmp slt i32 %76, %0, !dbg !2969
  br i1 %77, label %78, label %79, !dbg !2970

78:                                               ; preds = %75
  store i32 %0, i32* @exitValue, align 4, !dbg !2971, !tbaa !387
  br label %79, !dbg !2972

79:                                               ; preds = %75, %78
  %80 = phi i32 [ %76, %75 ], [ %0, %78 ], !dbg !2973
  tail call void @exit(i32 %80) #17, !dbg !2974
  unreachable, !dbg !2974
}

; Function Attrs: nofree nounwind
declare !dbg !2975 dso_local noundef i32 @stat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !2979 dso_local noundef i32 @fclose(%struct.__sFILE* nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !2983 dso_local noundef i32 @remove(i8* nocapture noundef readonly) local_unnamed_addr #7

declare !dbg !2986 dso_local i8* @BZ2_bzlibVersion() local_unnamed_addr #3

; Function Attrs: noreturn nounwind
define internal fastcc void @panic(i8* %0) unnamed_addr #4 !dbg !2989 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2993, metadata !DIExpression()), !dbg !2994
  %2 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2995, !tbaa !377
  %3 = getelementptr inbounds %struct._reent, %struct._reent* %2, i32 0, i32 3, !dbg !2995
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !2995, !tbaa !422
  %5 = load i8*, i8** @progName, align 4, !dbg !2996, !tbaa !377
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.73, i32 0, i32 0), i8* %5, i8* %0), !dbg !2997
  tail call fastcc void @showFileNames(), !dbg !2998
  tail call fastcc void @cleanUpAndFail(i32 3) #19, !dbg !2999
  unreachable, !dbg !2999
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare dso_local i8* @strcat(i8* noalias returned writeonly, i8* noalias nocapture readonly) local_unnamed_addr #10

declare dso_local i8* @strerror(i32) local_unnamed_addr #3

declare dso_local i32* @__errno() local_unnamed_addr #3

declare !dbg !3000 dso_local i32 @isatty(i32) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !3003 dso_local noundef i32 @fileno(%struct.__sFILE* nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare dso_local noalias noundef %struct.__sFILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !3004 dso_local noundef i32 @fflush(%struct.__sFILE* nocapture noundef) local_unnamed_addr #7

; Function Attrs: noreturn nounwind
define internal fastcc void @ioError() unnamed_addr #4 !dbg !3005 {
  %1 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !3006, !tbaa !377
  %2 = getelementptr inbounds %struct._reent, %struct._reent* %1, i32 0, i32 3, !dbg !3006
  %3 = load %struct.__sFILE*, %struct.__sFILE** %2, align 4, !dbg !3006, !tbaa !422
  %4 = load i8*, i8** @progName, align 4, !dbg !3007, !tbaa !377
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.79, i32 0, i32 0), i8* %4), !dbg !3008
  %6 = load i8*, i8** @progName, align 4, !dbg !3009, !tbaa !377
  tail call void @perror(i8* %6) #20, !dbg !3010
  tail call fastcc void @showFileNames(), !dbg !3011
  tail call fastcc void @cleanUpAndFail(i32 1) #19, !dbg !3012
  unreachable, !dbg !3012
}

declare dso_local i32 @lstat(...) local_unnamed_addr #3

; Function Attrs: nofree
declare !dbg !3013 dso_local noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare !dbg !3017 dso_local noalias noundef %struct.__sFILE* @fdopen(i32 noundef, i8* nocapture noundef readonly) local_unnamed_addr #7

declare !dbg !3020 dso_local i32 @close(i32) local_unnamed_addr #3

declare !dbg !3021 dso_local i8* @BZ2_bzWriteOpen(i32*, %struct.__sFILE*, i32, i32, i32) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fread(i8* nocapture noundef, i32 noundef, i32 noundef, %struct.__sFILE* nocapture noundef) local_unnamed_addr #7

declare !dbg !3025 dso_local void @BZ2_bzWrite(i32*, i8*, i8*, i32) local_unnamed_addr #3

declare !dbg !3028 dso_local void @BZ2_bzWriteClose64(i32*, i8*, i32, i32*, i32*, i32*, i32*) local_unnamed_addr #3

; Function Attrs: norecurse nounwind readonly
define internal fastcc double @uInt64_to_double(%struct.UInt64* nocapture readonly %0) unnamed_addr #14 !dbg !3032 {
  call void @llvm.dbg.value(metadata %struct.UInt64* %0, metadata !3036, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !3038, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !3039, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i32 0, metadata !3037, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !3039, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !3038, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i32 0, metadata !3037, metadata !DIExpression()), !dbg !3040
  %2 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %0, i32 0, i32 0, i32 0, !dbg !3041
  %3 = load i8, i8* %2, align 1, !dbg !3041, !tbaa !382
  %4 = uitofp i8 %3 to double, !dbg !3045
  call void @llvm.dbg.value(metadata double %4, metadata !3039, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata double 2.560000e+02, metadata !3038, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i32 1, metadata !3037, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata double %4, metadata !3039, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata double 2.560000e+02, metadata !3038, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i32 1, metadata !3037, metadata !DIExpression()), !dbg !3040
  %5 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %0, i32 0, i32 0, i32 1, !dbg !3041
  %6 = load i8, i8* %5, align 1, !dbg !3041, !tbaa !382
  %7 = uitofp i8 %6 to double, !dbg !3045
  %8 = fmul double %7, 2.560000e+02, !dbg !3046
  %9 = fadd double %8, %4, !dbg !3047
  call void @llvm.dbg.value(metadata double %9, metadata !3039, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata double 6.553600e+04, metadata !3038, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i32 2, metadata !3037, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata double %9, metadata !3039, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata double 6.553600e+04, metadata !3038, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i32 2, metadata !3037, metadata !DIExpression()), !dbg !3040
  %10 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %0, i32 0, i32 0, i32 2, !dbg !3041
  %11 = load i8, i8* %10, align 1, !dbg !3041, !tbaa !382
  %12 = uitofp i8 %11 to double, !dbg !3045
  %13 = fmul double %12, 6.553600e+04, !dbg !3046
  %14 = fadd double %9, %13, !dbg !3047
  call void @llvm.dbg.value(metadata double %14, metadata !3039, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata double 0x4170000000000000, metadata !3038, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i32 3, metadata !3037, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata double %14, metadata !3039, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata double 0x4170000000000000, metadata !3038, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i32 3, metadata !3037, metadata !DIExpression()), !dbg !3040
  %15 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %0, i32 0, i32 0, i32 3, !dbg !3041
  %16 = load i8, i8* %15, align 1, !dbg !3041, !tbaa !382
  %17 = uitofp i8 %16 to double, !dbg !3045
  %18 = fmul double %17, 0x4170000000000000, !dbg !3046
  %19 = fadd double %14, %18, !dbg !3047
  call void @llvm.dbg.value(metadata double %19, metadata !3039, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata double 0x41F0000000000000, metadata !3038, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i32 4, metadata !3037, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata double %19, metadata !3039, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata double 0x41F0000000000000, metadata !3038, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i32 4, metadata !3037, metadata !DIExpression()), !dbg !3040
  %20 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %0, i32 0, i32 0, i32 4, !dbg !3041
  %21 = load i8, i8* %20, align 1, !dbg !3041, !tbaa !382
  %22 = uitofp i8 %21 to double, !dbg !3045
  %23 = fmul double %22, 0x41F0000000000000, !dbg !3046
  %24 = fadd double %19, %23, !dbg !3047
  call void @llvm.dbg.value(metadata double %24, metadata !3039, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata double 0x4270000000000000, metadata !3038, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i32 5, metadata !3037, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata double %24, metadata !3039, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata double 0x4270000000000000, metadata !3038, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i32 5, metadata !3037, metadata !DIExpression()), !dbg !3040
  %25 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %0, i32 0, i32 0, i32 5, !dbg !3041
  %26 = load i8, i8* %25, align 1, !dbg !3041, !tbaa !382
  %27 = uitofp i8 %26 to double, !dbg !3045
  %28 = fmul double %27, 0x4270000000000000, !dbg !3046
  %29 = fadd double %24, %28, !dbg !3047
  call void @llvm.dbg.value(metadata double %29, metadata !3039, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata double 0x42F0000000000000, metadata !3038, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i32 6, metadata !3037, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata double %29, metadata !3039, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata double 0x42F0000000000000, metadata !3038, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i32 6, metadata !3037, metadata !DIExpression()), !dbg !3040
  %30 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %0, i32 0, i32 0, i32 6, !dbg !3041
  %31 = load i8, i8* %30, align 1, !dbg !3041, !tbaa !382
  %32 = uitofp i8 %31 to double, !dbg !3045
  %33 = fmul double %32, 0x42F0000000000000, !dbg !3046
  %34 = fadd double %29, %33, !dbg !3047
  call void @llvm.dbg.value(metadata double %34, metadata !3039, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata double 0x4370000000000000, metadata !3038, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i32 7, metadata !3037, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata double %34, metadata !3039, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata double 0x4370000000000000, metadata !3038, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i32 7, metadata !3037, metadata !DIExpression()), !dbg !3040
  %35 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %0, i32 0, i32 0, i32 7, !dbg !3041
  %36 = load i8, i8* %35, align 1, !dbg !3041, !tbaa !382
  %37 = uitofp i8 %36 to double, !dbg !3045
  %38 = fmul double %37, 0x4370000000000000, !dbg !3046
  %39 = fadd double %34, %38, !dbg !3047
  call void @llvm.dbg.value(metadata double %39, metadata !3039, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata double 0x43F0000000000000, metadata !3038, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i32 8, metadata !3037, metadata !DIExpression()), !dbg !3040
  ret double %39, !dbg !3048
}

; Function Attrs: nofree nounwind
define internal fastcc void @uInt64_toAscii(i8* nocapture %0, %struct.UInt64* nocapture readonly %1) unnamed_addr #13 !dbg !3049 {
  %3 = alloca [32 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !3053, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata %struct.UInt64* %1, metadata !3054, metadata !DIExpression()), !dbg !3061
  %4 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0, !dbg !3062
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #16, !dbg !3062
  call void @llvm.dbg.declare(metadata [32 x i8]* %3, metadata !3057, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i32 0, metadata !3059, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.declare(metadata %struct.UInt64* undef, metadata !3060, metadata !DIExpression()), !dbg !3064
  %5 = bitcast %struct.UInt64* %1 to i64*, !dbg !3065
  %6 = load i64, i64* %5, align 1, !dbg !3065, !tbaa !382
  %7 = trunc i64 %6 to i32, !dbg !3065
  %8 = lshr i64 %6, 8, !dbg !3065
  %9 = trunc i64 %8 to i32, !dbg !3065
  %10 = lshr i64 %6, 16, !dbg !3065
  %11 = trunc i64 %10 to i32, !dbg !3065
  %12 = lshr i64 %6, 24, !dbg !3065
  %13 = trunc i64 %12 to i32, !dbg !3065
  %14 = lshr i64 %6, 32, !dbg !3065
  %15 = trunc i64 %14 to i32, !dbg !3065
  %16 = lshr i64 %6, 40, !dbg !3065
  %17 = trunc i64 %16 to i32, !dbg !3065
  %18 = lshr i64 %6, 48, !dbg !3065
  %19 = trunc i64 %18 to i32, !dbg !3065
  %20 = lshr i64 %6, 56, !dbg !3065
  %21 = trunc i64 %20 to i8, !dbg !3065
  br label %22, !dbg !3066

22:                                               ; preds = %22, %2
  %23 = phi i8 [ %21, %2 ], [ %33, %22 ], !dbg !3061
  %24 = phi i32 [ %19, %2 ], [ %41, %22 ], !dbg !3061
  %25 = phi i32 [ %17, %2 ], [ %48, %22 ], !dbg !3061
  %26 = phi i32 [ %15, %2 ], [ %55, %22 ], !dbg !3061
  %27 = phi i32 [ %13, %2 ], [ %62, %22 ], !dbg !3061
  %28 = phi i32 [ %11, %2 ], [ %69, %22 ], !dbg !3061
  %29 = phi i32 [ %9, %2 ], [ %76, %22 ], !dbg !3061
  %30 = phi i32 [ %7, %2 ], [ %83, %22 ], !dbg !3061
  %31 = phi i32 [ 0, %2 ], [ %89, %22 ], !dbg !3061
  call void @llvm.dbg.value(metadata i32 %31, metadata !3059, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata %struct.UInt64* undef, metadata !3067, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 0, metadata !3072, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 7, metadata !3074, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 7, metadata !3074, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 0, metadata !3072, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i8 %23, metadata !3073, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3075
  %32 = freeze i8 %23
  %33 = udiv i8 %32, 10, !dbg !3078
  %34 = mul i8 %33, 10
  %35 = sub i8 %32, %34
  %36 = zext i8 %35 to i32, !dbg !3082
  call void @llvm.dbg.value(metadata i32 %36, metadata !3072, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 6, metadata !3074, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 6, metadata !3074, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 %36, metadata !3072, metadata !DIExpression()), !dbg !3075
  %37 = shl nuw nsw i32 %36, 8, !dbg !3083
  %38 = and i32 %24, 255, !dbg !3084
  %39 = or i32 %37, %38, !dbg !3085
  call void @llvm.dbg.value(metadata i32 %39, metadata !3073, metadata !DIExpression()), !dbg !3075
  %40 = freeze i32 %39
  %41 = udiv i32 %40, 10, !dbg !3078
  %42 = mul i32 %41, 10
  %43 = sub i32 %40, %42
  call void @llvm.dbg.value(metadata i32 %43, metadata !3072, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 5, metadata !3074, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 5, metadata !3074, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 %43, metadata !3072, metadata !DIExpression()), !dbg !3075
  %44 = shl nuw nsw i32 %43, 8, !dbg !3083
  %45 = and i32 %25, 255, !dbg !3084
  %46 = or i32 %44, %45, !dbg !3085
  call void @llvm.dbg.value(metadata i32 %46, metadata !3073, metadata !DIExpression()), !dbg !3075
  %47 = freeze i32 %46
  %48 = udiv i32 %47, 10, !dbg !3078
  %49 = mul i32 %48, 10
  %50 = sub i32 %47, %49
  call void @llvm.dbg.value(metadata i32 %50, metadata !3072, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 4, metadata !3074, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 4, metadata !3074, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 %50, metadata !3072, metadata !DIExpression()), !dbg !3075
  %51 = shl nuw nsw i32 %50, 8, !dbg !3083
  %52 = and i32 %26, 255, !dbg !3084
  %53 = or i32 %51, %52, !dbg !3085
  call void @llvm.dbg.value(metadata i32 %53, metadata !3073, metadata !DIExpression()), !dbg !3075
  %54 = freeze i32 %53
  %55 = udiv i32 %54, 10, !dbg !3078
  %56 = mul i32 %55, 10
  %57 = sub i32 %54, %56
  call void @llvm.dbg.value(metadata i32 %57, metadata !3072, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 3, metadata !3074, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 3, metadata !3074, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 %57, metadata !3072, metadata !DIExpression()), !dbg !3075
  %58 = shl nuw nsw i32 %57, 8, !dbg !3083
  %59 = and i32 %27, 255, !dbg !3084
  %60 = or i32 %58, %59, !dbg !3085
  call void @llvm.dbg.value(metadata i32 %60, metadata !3073, metadata !DIExpression()), !dbg !3075
  %61 = freeze i32 %60
  %62 = udiv i32 %61, 10, !dbg !3078
  %63 = mul i32 %62, 10
  %64 = sub i32 %61, %63
  call void @llvm.dbg.value(metadata i32 %64, metadata !3072, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 2, metadata !3074, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 2, metadata !3074, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 %64, metadata !3072, metadata !DIExpression()), !dbg !3075
  %65 = shl nuw nsw i32 %64, 8, !dbg !3083
  %66 = and i32 %28, 255, !dbg !3084
  %67 = or i32 %65, %66, !dbg !3085
  call void @llvm.dbg.value(metadata i32 %67, metadata !3073, metadata !DIExpression()), !dbg !3075
  %68 = freeze i32 %67
  %69 = udiv i32 %68, 10, !dbg !3078
  %70 = mul i32 %69, 10
  %71 = sub i32 %68, %70
  call void @llvm.dbg.value(metadata i32 %71, metadata !3072, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 1, metadata !3074, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 1, metadata !3074, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 %71, metadata !3072, metadata !DIExpression()), !dbg !3075
  %72 = shl nuw nsw i32 %71, 8, !dbg !3083
  %73 = and i32 %29, 255, !dbg !3084
  %74 = or i32 %72, %73, !dbg !3085
  call void @llvm.dbg.value(metadata i32 %74, metadata !3073, metadata !DIExpression()), !dbg !3075
  %75 = freeze i32 %74
  %76 = udiv i32 %75, 10, !dbg !3078
  %77 = mul i32 %76, 10
  %78 = sub i32 %75, %77
  call void @llvm.dbg.value(metadata i32 %78, metadata !3072, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 0, metadata !3074, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 0, metadata !3074, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 %78, metadata !3072, metadata !DIExpression()), !dbg !3075
  %79 = shl nuw nsw i32 %78, 8, !dbg !3083
  %80 = and i32 %30, 255, !dbg !3084
  %81 = or i32 %79, %80, !dbg !3085
  call void @llvm.dbg.value(metadata i32 %81, metadata !3073, metadata !DIExpression()), !dbg !3075
  %82 = freeze i32 %81
  %83 = udiv i32 %82, 10, !dbg !3078
  %84 = mul i32 %83, 10
  %85 = sub i32 %82, %84
  call void @llvm.dbg.value(metadata i32 %85, metadata !3072, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 -1, metadata !3074, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 %85, metadata !3056, metadata !DIExpression()), !dbg !3061
  %86 = trunc i32 %85 to i8, !dbg !3086
  %87 = or i8 %86, 48, !dbg !3086
  %88 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 %31, !dbg !3087
  store i8 %87, i8* %88, align 1, !dbg !3088, !tbaa !382
  %89 = add nuw i32 %31, 1, !dbg !3089
  call void @llvm.dbg.value(metadata i32 %89, metadata !3059, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata %struct.UInt64* undef, metadata !3090, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i32 0, metadata !3095, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i32 0, metadata !3095, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i32 0, metadata !3095, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3096
  call void @llvm.dbg.value(metadata i32 1, metadata !3095, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i32 0, metadata !3095, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3096
  call void @llvm.dbg.value(metadata i32 1, metadata !3095, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i32 1, metadata !3095, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3096
  call void @llvm.dbg.value(metadata i32 2, metadata !3095, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i32 2, metadata !3095, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3096
  call void @llvm.dbg.value(metadata i32 3, metadata !3095, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i32 3, metadata !3095, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3096
  call void @llvm.dbg.value(metadata i32 4, metadata !3095, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i32 4, metadata !3095, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3096
  call void @llvm.dbg.value(metadata i32 5, metadata !3095, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i32 5, metadata !3095, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3096
  %90 = or i32 %48, %41, !dbg !3098
  %91 = or i32 %90, %55, !dbg !3098
  %92 = or i32 %91, %62, !dbg !3098
  %93 = or i32 %92, %69, !dbg !3098
  %94 = or i32 %93, %76, !dbg !3098
  %95 = or i32 %94, %83, !dbg !3098
  %96 = trunc i32 %95 to i8, !dbg !3098
  %97 = icmp ne i8 %96, 0, !dbg !3098
  call void @llvm.dbg.value(metadata i32 6, metadata !3095, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i32 6, metadata !3095, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3096
  %98 = icmp ugt i8 %23, 9, !dbg !3098
  %99 = or i1 %98, %97, !dbg !3101
  br i1 %99, label %22, label %100, !dbg !3102, !llvm.loop !3103

100:                                              ; preds = %22
  %101 = getelementptr inbounds i8, i8* %0, i32 %89, !dbg !3105
  store i8 0, i8* %101, align 1, !dbg !3106, !tbaa !382
  call void @llvm.dbg.value(metadata i32 0, metadata !3055, metadata !DIExpression()), !dbg !3061
  br label %102, !dbg !3107

102:                                              ; preds = %100, %102
  %103 = phi i32 [ 0, %100 ], [ %108, %102 ]
  call void @llvm.dbg.value(metadata i32 %103, metadata !3055, metadata !DIExpression()), !dbg !3061
  %104 = sub nsw i32 %31, %103, !dbg !3109
  %105 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 %104, !dbg !3111
  %106 = load i8, i8* %105, align 1, !dbg !3111, !tbaa !382
  %107 = getelementptr inbounds i8, i8* %0, i32 %103, !dbg !3112
  store i8 %106, i8* %107, align 1, !dbg !3113, !tbaa !382
  %108 = add nuw i32 %103, 1, !dbg !3114
  call void @llvm.dbg.value(metadata i32 %108, metadata !3055, metadata !DIExpression()), !dbg !3061
  %109 = icmp eq i32 %31, %103, !dbg !3115
  br i1 %109, label %110, label %102, !dbg !3107, !llvm.loop !3116

110:                                              ; preds = %102
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #16, !dbg !3118
  ret void, !dbg !3118
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noreturn nounwind
define internal fastcc void @configError() unnamed_addr #4 !dbg !3119 {
  %1 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !3120, !tbaa !377
  %2 = getelementptr inbounds %struct._reent, %struct._reent* %1, i32 0, i32 3, !dbg !3120
  %3 = load %struct.__sFILE*, %struct.__sFILE** %2, align 4, !dbg !3120, !tbaa !422
  %4 = tail call i32 @fwrite(i8* getelementptr inbounds ([236 x i8], [236 x i8]* @.str.78, i32 0, i32 0), i32 235, i32 1, %struct.__sFILE* %3), !dbg !3121
  call void @llvm.dbg.value(metadata i32 3, metadata !429, metadata !DIExpression()), !dbg !3122
  %5 = load i32, i32* @exitValue, align 4, !dbg !3124, !tbaa !387
  %6 = icmp slt i32 %5, 3, !dbg !3125
  br i1 %6, label %7, label %8, !dbg !3126

7:                                                ; preds = %0
  store i32 3, i32* @exitValue, align 4, !dbg !3127, !tbaa !387
  br label %8, !dbg !3128

8:                                                ; preds = %0, %7
  %9 = phi i32 [ %5, %0 ], [ 3, %7 ], !dbg !3129
  tail call void @exit(i32 %9) #17, !dbg !3130
  unreachable, !dbg !3130
}

; Function Attrs: nofree nounwind
declare !dbg !3131 dso_local noundef i32 @fgetc(%struct.__sFILE* nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !3132 dso_local noundef i32 @ungetc(i32 noundef, %struct.__sFILE* nocapture noundef) local_unnamed_addr #7

declare !dbg !3135 dso_local i32 @fchmod(i32, i32) local_unnamed_addr #3

declare !dbg !3138 dso_local i32 @fchown(i32, i16 zeroext, i16 zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

declare dso_local i32 @utime(...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !3141 dso_local void @perror(i8* nocapture noundef readonly) local_unnamed_addr #7

declare !dbg !3144 dso_local i8* @BZ2_bzReadOpen(i32*, %struct.__sFILE*, i32, i32, i8*, i32) local_unnamed_addr #3

declare !dbg !3147 dso_local i32 @BZ2_bzRead(i32*, i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fwrite(i8* nocapture noundef, i32 noundef, i32 noundef, %struct.__sFILE* nocapture noundef) local_unnamed_addr #7

declare !dbg !3150 dso_local void @BZ2_bzReadGetUnused(i32*, i8*, i8**, i32*) local_unnamed_addr #3

declare !dbg !3154 dso_local void @BZ2_bzReadClose(i32*, i8*) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !3157 dso_local void @rewind(%struct.__sFILE* nocapture noundef) local_unnamed_addr #7

; Function Attrs: noreturn nounwind
define internal fastcc void @crcError() unnamed_addr #4 !dbg !3160 {
  %1 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !3161, !tbaa !377
  %2 = getelementptr inbounds %struct._reent, %struct._reent* %1, i32 0, i32 3, !dbg !3161
  %3 = load %struct.__sFILE*, %struct.__sFILE** %2, align 4, !dbg !3161, !tbaa !422
  %4 = load i8*, i8** @progName, align 4, !dbg !3162, !tbaa !377
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.93, i32 0, i32 0), i8* %4), !dbg !3163
  tail call fastcc void @showFileNames(), !dbg !3164
  tail call fastcc void @cadvise(), !dbg !3165
  tail call fastcc void @cleanUpAndFail(i32 2) #19, !dbg !3166
  unreachable, !dbg !3166
}

; Function Attrs: noreturn nounwind
define internal fastcc void @compressedStreamEOF() unnamed_addr #4 !dbg !3167 {
  %1 = load i8, i8* @noisy, align 1, !dbg !3168, !tbaa !382
  %2 = icmp eq i8 %1, 0, !dbg !3168
  br i1 %2, label %24, label %3, !dbg !3170

3:                                                ; preds = %0
  %4 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !3171, !tbaa !377
  %5 = getelementptr inbounds %struct._reent, %struct._reent* %4, i32 0, i32 3, !dbg !3171
  %6 = load %struct.__sFILE*, %struct.__sFILE** %5, align 4, !dbg !3171, !tbaa !422
  %7 = load i8*, i8** @progName, align 4, !dbg !3173, !tbaa !377
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %6, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.95, i32 0, i32 0), i8* %7), !dbg !3174
  %9 = load i8*, i8** @progName, align 4, !dbg !3175, !tbaa !377
  tail call void @perror(i8* %9) #20, !dbg !3176
  %10 = load i8, i8* @noisy, align 1, !dbg !3177, !tbaa !382
  %11 = icmp eq i8 %10, 0, !dbg !3177
  br i1 %11, label %24, label %12, !dbg !3179

12:                                               ; preds = %3
  %13 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !3180, !tbaa !377
  %14 = getelementptr inbounds %struct._reent, %struct._reent* %13, i32 0, i32 3, !dbg !3180
  %15 = load %struct.__sFILE*, %struct.__sFILE** %14, align 4, !dbg !3180, !tbaa !422
  %16 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0)) #16, !dbg !3181
  %17 = load i8, i8* @noisy, align 1, !dbg !3182, !tbaa !382
  %18 = icmp eq i8 %17, 0, !dbg !3182
  br i1 %18, label %24, label %19, !dbg !3186

19:                                               ; preds = %12
  %20 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !3187, !tbaa !377
  %21 = getelementptr inbounds %struct._reent, %struct._reent* %20, i32 0, i32 3, !dbg !3187
  %22 = load %struct.__sFILE*, %struct.__sFILE** %21, align 4, !dbg !3187, !tbaa !422
  %23 = tail call i32 @fwrite(i8* getelementptr inbounds ([241 x i8], [241 x i8]* @.str.94, i32 0, i32 0), i32 240, i32 1, %struct.__sFILE* %22) #16, !dbg !3188
  br label %24, !dbg !3188

24:                                               ; preds = %3, %19, %12, %0
  tail call fastcc void @cleanUpAndFail(i32 2) #19, !dbg !3189
  unreachable, !dbg !3189
}

; Function Attrs: nofree nounwind
define internal fastcc void @cadvise() unnamed_addr #13 !dbg !3184 {
  %1 = load i8, i8* @noisy, align 1, !dbg !3190, !tbaa !382
  %2 = icmp eq i8 %1, 0, !dbg !3190
  br i1 %2, label %8, label %3, !dbg !3191

3:                                                ; preds = %0
  %4 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !3192, !tbaa !377
  %5 = getelementptr inbounds %struct._reent, %struct._reent* %4, i32 0, i32 3, !dbg !3192
  %6 = load %struct.__sFILE*, %struct.__sFILE** %5, align 4, !dbg !3192, !tbaa !422
  %7 = tail call i32 @fwrite(i8* getelementptr inbounds ([241 x i8], [241 x i8]* @.str.94, i32 0, i32 0), i32 240, i32 1, %struct.__sFILE* %6), !dbg !3193
  br label %8, !dbg !3193

8:                                                ; preds = %3, %0
  ret void, !dbg !3194
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct.__sFILE* nocapture noundef) local_unnamed_addr #15

attributes #0 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+relax,-save-restore" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+relax,-save-restore" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+relax,-save-restore" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+relax,-save-restore" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+relax,-save-restore" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nofree nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+relax,-save-restore" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+relax,-save-restore" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nofree "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+relax,-save-restore" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { argmemonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+relax,-save-restore" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree nounwind readonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+relax,-save-restore" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { inaccessiblememonly nofree nounwind willreturn allocsize(0) "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+relax,-save-restore" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+relax,-save-restore" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { norecurse nounwind readonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+relax,-save-restore" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree nounwind }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { noreturn }
attributes #20 = { cold }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!352, !353, !354, !355, !356}
!llvm.ident = !{!357}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "zSuffix", scope: !2, file: !3, line: 1112, type: !32, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !29, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "bzip2.c", directory: "/home/wenhongbo/code/opt-searcher/llvm_runner/data/bzip2")
!4 = !{}
!5 = !{!6, !8, !11, !12, !13, !14, !21, !26, !27, !28}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !3, line: 162, baseType: !7)
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "Char", file: !3, line: 161, baseType: !10)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "Int32", file: !3, line: 164, baseType: !13)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 32)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "Cell", file: !3, line: 1707, baseType: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zzzz", file: !3, line: 1703, size: 64, elements: !17)
!17 = !{!18, !19}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !16, file: !3, line: 1704, baseType: !8, size: 32)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !16, file: !3, line: 1705, baseType: !20, size: 32, offset: 32)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 32)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !22, line: 40, baseType: !23)
!22 = !DIFile(filename: "/opt/riscv/riscv32-unknown-elf/include/strings.h", directory: "")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !24, line: 131, baseType: !25)
!24 = !DIFile(filename: "/opt/riscv/riscv32-unknown-elf/include/sys/_types.h", directory: "")
!25 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "UChar", file: !3, line: 163, baseType: !7)
!27 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 32)
!29 = !{!0, !30, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !72, !74, !76, !78, !80, !298, !300}
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "unzSuffix", scope: !2, file: !3, line: 1114, type: !32, isLocal: false, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 128, elements: !35)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 32)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!35 = !{!36}
!36 = !DISubrange(count: 4)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "verbosity", scope: !2, file: !3, line: 183, type: !12, isLocal: false, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "keepInputFiles", scope: !2, file: !3, line: 184, type: !6, isLocal: false, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "smallMode", scope: !2, file: !3, line: 184, type: !6, isLocal: false, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "deleteOutputOnInterrupt", scope: !2, file: !3, line: 184, type: !6, isLocal: false, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "forceOverwrite", scope: !2, file: !3, line: 185, type: !6, isLocal: false, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "testFailsExist", scope: !2, file: !3, line: 185, type: !6, isLocal: false, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "unzFailsExist", scope: !2, file: !3, line: 185, type: !6, isLocal: false, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "noisy", scope: !2, file: !3, line: 185, type: !6, isLocal: false, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "numFileNames", scope: !2, file: !3, line: 186, type: !12, isLocal: false, isDefinition: true)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "numFilesProcessed", scope: !2, file: !3, line: 186, type: !12, isLocal: false, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "blockSize100k", scope: !2, file: !3, line: 186, type: !12, isLocal: false, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "exitValue", scope: !2, file: !3, line: 187, type: !12, isLocal: false, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "opMode", scope: !2, file: !3, line: 199, type: !12, isLocal: false, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "srcMode", scope: !2, file: !3, line: 200, type: !12, isLocal: false, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "longestFileName", scope: !2, file: !3, line: 204, type: !12, isLocal: false, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "inName", scope: !2, file: !3, line: 205, type: !69, isLocal: false, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8272, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 1034)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "outName", scope: !2, file: !3, line: 206, type: !69, isLocal: false, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "tmpName", scope: !2, file: !3, line: 207, type: !69, isLocal: false, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "progName", scope: !2, file: !3, line: 208, type: !8, isLocal: false, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "progNameReally", scope: !2, file: !3, line: 209, type: !69, isLocal: false, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "outputHandleJustInCase", scope: !2, file: !3, line: 210, type: !82, isLocal: false, isDefinition: true)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 32)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !84, line: 66, baseType: !85)
!84 = !DIFile(filename: "/opt/riscv/riscv32-unknown-elf/include/stdio.h", directory: "")
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !86, line: 292, baseType: !87)
!86 = !DIFile(filename: "/opt/riscv/riscv32-unknown-elf/include/sys/reent.h", directory: "")
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !86, line: 186, size: 832, elements: !88)
!88 = !{!89, !91, !92, !93, !95, !96, !101, !102, !103, !264, !270, !276, !280, !281, !282, !283, !285, !287, !288, !289, !291, !292, !296, !297}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !87, file: !86, line: 187, baseType: !90, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !87, file: !86, line: 188, baseType: !13, size: 32, offset: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !87, file: !86, line: 189, baseType: !13, size: 32, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !87, file: !86, line: 190, baseType: !94, size: 16, offset: 96)
!94 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !87, file: !86, line: 191, baseType: !94, size: 16, offset: 112)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !87, file: !86, line: 192, baseType: !97, size: 64, offset: 128)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !86, line: 122, size: 64, elements: !98)
!98 = !{!99, !100}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !97, file: !86, line: 123, baseType: !90, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !97, file: !86, line: 124, baseType: !13, size: 32, offset: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !87, file: !86, line: 193, baseType: !13, size: 32, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !87, file: !86, line: 200, baseType: !11, size: 32, offset: 224)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !87, file: !86, line: 202, baseType: !104, size: 32, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 32)
!105 = !DISubroutineType(types: !106)
!106 = !{!107, !108, !11, !151, !13}
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !24, line: 147, baseType: !13)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 32)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !86, line: 613, size: 8512, elements: !110)
!110 = !{!111, !112, !114, !115, !116, !117, !121, !122, !125, !126, !130, !145, !146, !147, !149, !150, !152, !228, !249, !250, !255, !262}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !109, file: !86, line: 615, baseType: !13, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !109, file: !86, line: 620, baseType: !113, size: 32, offset: 32)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 32)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !109, file: !86, line: 620, baseType: !113, size: 32, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !109, file: !86, line: 620, baseType: !113, size: 32, offset: 96)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !109, file: !86, line: 622, baseType: !13, size: 32, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !109, file: !86, line: 623, baseType: !118, size: 200, offset: 160)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 200, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 25)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !109, file: !86, line: 626, baseType: !13, size: 32, offset: 384)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !109, file: !86, line: 627, baseType: !123, size: 32, offset: 416)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 32)
!124 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !86, line: 45, flags: DIFlagFwdDecl)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !109, file: !86, line: 629, baseType: !13, size: 32, offset: 448)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !109, file: !86, line: 631, baseType: !127, size: 32, offset: 480)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 32)
!128 = !DISubroutineType(types: !129)
!129 = !{null, !108}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !109, file: !86, line: 634, baseType: !131, size: 32, offset: 512)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 32)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !86, line: 52, size: 192, elements: !133)
!133 = !{!134, !135, !136, !137, !138, !139}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !132, file: !86, line: 54, baseType: !131, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !132, file: !86, line: 55, baseType: !13, size: 32, offset: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !132, file: !86, line: 55, baseType: !13, size: 32, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !132, file: !86, line: 55, baseType: !13, size: 32, offset: 96)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !132, file: !86, line: 55, baseType: !13, size: 32, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !132, file: !86, line: 56, baseType: !140, size: 32, offset: 160)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 32, elements: !143)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !86, line: 22, baseType: !142)
!142 = !DIBasicType(name: "long unsigned int", size: 32, encoding: DW_ATE_unsigned)
!143 = !{!144}
!144 = !DISubrange(count: 1)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !109, file: !86, line: 635, baseType: !13, size: 32, offset: 544)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !109, file: !86, line: 636, baseType: !131, size: 32, offset: 576)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !109, file: !86, line: 637, baseType: !148, size: 32, offset: 608)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !109, file: !86, line: 640, baseType: !13, size: 32, offset: 640)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !109, file: !86, line: 641, baseType: !151, size: 32, offset: 672)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !109, file: !86, line: 676, baseType: !153, size: 1920, offset: 704)
!153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !109, file: !86, line: 643, size: 1920, elements: !154)
!154 = !{!155, !219}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !153, file: !86, line: 666, baseType: !156, size: 1664)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !153, file: !86, line: 645, size: 1664, elements: !157)
!157 = !{!158, !159, !160, !164, !176, !177, !179, !189, !202, !203, !204, !208, !212, !213, !214, !215, !216, !217, !218}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !156, file: !86, line: 647, baseType: !25, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !156, file: !86, line: 648, baseType: !151, size: 32, offset: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !156, file: !86, line: 649, baseType: !161, size: 208, offset: 64)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 208, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 26)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !156, file: !86, line: 650, baseType: !165, size: 288, offset: 288)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !86, line: 60, size: 288, elements: !166)
!166 = !{!167, !168, !169, !170, !171, !172, !173, !174, !175}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !165, file: !86, line: 62, baseType: !13, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !165, file: !86, line: 63, baseType: !13, size: 32, offset: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !165, file: !86, line: 64, baseType: !13, size: 32, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !165, file: !86, line: 65, baseType: !13, size: 32, offset: 96)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !165, file: !86, line: 66, baseType: !13, size: 32, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !165, file: !86, line: 67, baseType: !13, size: 32, offset: 160)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !165, file: !86, line: 68, baseType: !13, size: 32, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !165, file: !86, line: 69, baseType: !13, size: 32, offset: 224)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !165, file: !86, line: 70, baseType: !13, size: 32, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !156, file: !86, line: 651, baseType: !13, size: 32, offset: 576)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !156, file: !86, line: 652, baseType: !178, size: 64, offset: 640)
!178 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !156, file: !86, line: 653, baseType: !180, size: 112, offset: 704)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !86, line: 324, size: 112, elements: !181)
!181 = !{!182, !187, !188}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !180, file: !86, line: 325, baseType: !183, size: 48)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 48, elements: !185)
!184 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!185 = !{!186}
!186 = !DISubrange(count: 3)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !180, file: !86, line: 326, baseType: !183, size: 48, offset: 48)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !180, file: !86, line: 327, baseType: !184, size: 16, offset: 96)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !156, file: !86, line: 654, baseType: !190, size: 64, offset: 832)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !24, line: 170, baseType: !191)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 162, size: 64, elements: !192)
!192 = !{!193, !194}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !191, file: !24, line: 164, baseType: !13, size: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !191, file: !24, line: 169, baseType: !195, size: 32, offset: 32)
!195 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !191, file: !24, line: 165, size: 32, elements: !196)
!196 = !{!197, !200}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !195, file: !24, line: 167, baseType: !198, size: 32)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !199, line: 116, baseType: !25)
!199 = !DIFile(filename: "clang+llvm-12.0.0-x86_64-linux-gnu-ubuntu-16.04/lib/clang/12.0.0/include/stddef.h", directory: "/home/wenhongbo/code")
!200 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !195, file: !24, line: 168, baseType: !201, size: 32)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !35)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !156, file: !86, line: 655, baseType: !190, size: 64, offset: 896)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !156, file: !86, line: 656, baseType: !190, size: 64, offset: 960)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !156, file: !86, line: 657, baseType: !205, size: 64, offset: 1024)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 64, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 8)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !156, file: !86, line: 658, baseType: !209, size: 192, offset: 1088)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 192, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 24)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !156, file: !86, line: 659, baseType: !13, size: 32, offset: 1280)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !156, file: !86, line: 660, baseType: !190, size: 64, offset: 1312)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !156, file: !86, line: 661, baseType: !190, size: 64, offset: 1376)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !156, file: !86, line: 662, baseType: !190, size: 64, offset: 1440)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !156, file: !86, line: 663, baseType: !190, size: 64, offset: 1504)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !156, file: !86, line: 664, baseType: !190, size: 64, offset: 1568)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !156, file: !86, line: 665, baseType: !13, size: 32, offset: 1632)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !153, file: !86, line: 675, baseType: !220, size: 1920)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !153, file: !86, line: 670, size: 1920, elements: !221)
!221 = !{!222, !226}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !220, file: !86, line: 673, baseType: !223, size: 960)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 960, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 30)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !220, file: !86, line: 674, baseType: !227, size: 960, offset: 960)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 960, elements: !224)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !109, file: !86, line: 680, baseType: !229, size: 32, offset: 2624)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 32)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !86, line: 98, size: 3200, elements: !231)
!231 = !{!232, !233, !234, !241}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !230, file: !86, line: 99, baseType: !229, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !230, file: !86, line: 100, baseType: !13, size: 32, offset: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !230, file: !86, line: 102, baseType: !235, size: 1024, offset: 64)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 1024, elements: !239)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 32)
!237 = !DISubroutineType(types: !238)
!238 = !{null}
!239 = !{!240}
!240 = !DISubrange(count: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !230, file: !86, line: 103, baseType: !242, size: 2112, offset: 1088)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !86, line: 79, size: 2112, elements: !243)
!243 = !{!244, !246, !247, !248}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !242, file: !86, line: 80, baseType: !245, size: 1024)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1024, elements: !239)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !242, file: !86, line: 81, baseType: !245, size: 1024, offset: 1024)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !242, file: !86, line: 83, baseType: !141, size: 32, offset: 2048)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !242, file: !86, line: 86, baseType: !141, size: 32, offset: 2080)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !109, file: !86, line: 681, baseType: !230, size: 3200, offset: 2656)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !109, file: !86, line: 685, baseType: !251, size: 32, offset: 5856)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 32)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 32)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !13}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !109, file: !86, line: 690, baseType: !256, size: 96, offset: 5888)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !86, line: 296, size: 96, elements: !257)
!257 = !{!258, !260, !261}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !256, file: !86, line: 298, baseType: !259, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !256, file: !86, line: 299, baseType: !13, size: 32, offset: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !256, file: !86, line: 300, baseType: !113, size: 32, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !109, file: !86, line: 692, baseType: !263, size: 2496, offset: 5984)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 2496, elements: !185)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !87, file: !86, line: 204, baseType: !265, size: 32, offset: 288)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 32)
!266 = !DISubroutineType(types: !267)
!267 = !{!107, !108, !11, !268, !13}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 32)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !87, file: !86, line: 207, baseType: !271, size: 32, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 32)
!272 = !DISubroutineType(types: !273)
!273 = !{!274, !108, !11, !274, !13}
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !24, line: 116, baseType: !275)
!275 = !DIBasicType(name: "long int", size: 32, encoding: DW_ATE_signed)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !87, file: !86, line: 208, baseType: !277, size: 32, offset: 352)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 32)
!278 = !DISubroutineType(types: !279)
!279 = !{!13, !108, !11}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !87, file: !86, line: 211, baseType: !97, size: 64, offset: 384)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !87, file: !86, line: 212, baseType: !90, size: 32, offset: 448)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !87, file: !86, line: 213, baseType: !13, size: 32, offset: 480)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !87, file: !86, line: 216, baseType: !284, size: 24, offset: 512)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 24, elements: !185)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !87, file: !86, line: 217, baseType: !286, size: 8, offset: 536)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !143)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !87, file: !86, line: 220, baseType: !97, size: 64, offset: 544)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !87, file: !86, line: 223, baseType: !13, size: 32, offset: 608)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !87, file: !86, line: 224, baseType: !290, size: 32, offset: 640)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !24, line: 46, baseType: !275)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !87, file: !86, line: 227, baseType: !108, size: 32, offset: 672)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !87, file: !86, line: 231, baseType: !293, size: 32, offset: 704)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !86, line: 35, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !295, line: 12, baseType: !13)
!295 = !DIFile(filename: "/opt/riscv/riscv32-unknown-elf/include/sys/lock.h", directory: "")
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !87, file: !86, line: 233, baseType: !190, size: 64, offset: 736)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !87, file: !86, line: 234, baseType: !13, size: 32, offset: 800)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(name: "workFactor", scope: !2, file: !3, line: 211, type: !12, isLocal: false, isDefinition: true)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(name: "fileMetaInfo", scope: !2, file: !3, line: 1042, type: !302, isLocal: true, isDefinition: true)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !303, line: 27, size: 704, elements: !304)
!303 = !DIFile(filename: "/opt/riscv/riscv32-unknown-elf/include/sys/stat.h", directory: "")
!304 = !{!305, !309, !312, !317, !320, !323, !326, !327, !330, !340, !341, !342, !345, !348}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !302, file: !303, line: 29, baseType: !306, size: 16)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !307, line: 161, baseType: !308)
!307 = !DIFile(filename: "/opt/riscv/riscv32-unknown-elf/include/sys/types.h", directory: "")
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !24, line: 56, baseType: !94)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !302, file: !303, line: 30, baseType: !310, size: 16, offset: 16)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !307, line: 139, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !24, line: 75, baseType: !184)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !302, file: !303, line: 31, baseType: !313, size: 32, offset: 32)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !307, line: 189, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !24, line: 90, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !316, line: 79, baseType: !25)
!316 = !DIFile(filename: "/opt/riscv/riscv32-unknown-elf/include/machine/_default_types.h", directory: "")
!317 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !302, file: !303, line: 32, baseType: !318, size: 16, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !307, line: 194, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !24, line: 209, baseType: !184)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !302, file: !303, line: 33, baseType: !321, size: 16, offset: 80)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !307, line: 165, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !24, line: 60, baseType: !184)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !302, file: !303, line: 34, baseType: !324, size: 16, offset: 96)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !307, line: 169, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !24, line: 63, baseType: !184)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !302, file: !303, line: 35, baseType: !306, size: 16, offset: 112)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !302, file: !303, line: 36, baseType: !328, size: 32, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !307, line: 157, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !24, line: 102, baseType: !290)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !302, file: !303, line: 42, baseType: !331, size: 128, offset: 192)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !332, line: 47, size: 128, elements: !333)
!332 = !DIFile(filename: "/opt/riscv/riscv32-unknown-elf/include/sys/_timespec.h", directory: "")
!333 = !{!334, !339}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !331, file: !332, line: 48, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !336, line: 42, baseType: !337)
!336 = !DIFile(filename: "/opt/riscv/riscv32-unknown-elf/include/sys/_timeval.h", directory: "")
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !316, line: 200, baseType: !338)
!338 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !331, file: !332, line: 49, baseType: !275, size: 32, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !302, file: !303, line: 43, baseType: !331, size: 128, offset: 320)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !302, file: !303, line: 44, baseType: !331, size: 128, offset: 448)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !302, file: !303, line: 45, baseType: !343, size: 32, offset: 576)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !307, line: 102, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !24, line: 34, baseType: !275)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !302, file: !303, line: 46, baseType: !346, size: 32, offset: 608)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !307, line: 97, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !24, line: 30, baseType: !275)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "st_spare4", scope: !302, file: !303, line: 48, baseType: !349, size: 64, offset: 640)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 64, elements: !350)
!350 = !{!351}
!351 = !DISubrange(count: 2)
!352 = !{i32 7, !"Dwarf Version", i32 4}
!353 = !{i32 2, !"Debug Info Version", i32 3}
!354 = !{i32 1, !"wchar_size", i32 4}
!355 = !{i32 1, !"target-abi", !"ilp32"}
!356 = !{i32 1, !"SmallDataLimit", i32 8}
!357 = !{!"clang version 12.0.0"}
!358 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 1784, type: !359, scopeLine: 1785, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !363)
!359 = !DISubroutineType(types: !360)
!360 = !{!361, !361, !362}
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "IntNative", file: !3, line: 176, baseType: !13)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 32)
!363 = !{!364, !365, !366, !367, !368, !369, !370, !371, !372}
!364 = !DILocalVariable(name: "argc", arg: 1, scope: !358, file: !3, line: 1784, type: !361)
!365 = !DILocalVariable(name: "argv", arg: 2, scope: !358, file: !3, line: 1784, type: !362)
!366 = !DILocalVariable(name: "i", scope: !358, file: !3, line: 1786, type: !12)
!367 = !DILocalVariable(name: "j", scope: !358, file: !3, line: 1786, type: !12)
!368 = !DILocalVariable(name: "tmp", scope: !358, file: !3, line: 1787, type: !8)
!369 = !DILocalVariable(name: "argList", scope: !358, file: !3, line: 1788, type: !14)
!370 = !DILocalVariable(name: "aa", scope: !358, file: !3, line: 1789, type: !14)
!371 = !DILocalVariable(name: "decode", scope: !358, file: !3, line: 1790, type: !6)
!372 = !DILocalVariable(name: "aa2", scope: !373, file: !3, line: 2032, type: !14)
!373 = distinct !DILexicalBlock(scope: !358, file: !3, line: 2031, column: 23)
!374 = !DILocation(line: 0, scope: !358)
!375 = !DILocation(line: 1788, column: 4, scope: !358)
!376 = !DILocation(line: 1799, column: 28, scope: !358)
!377 = !{!378, !378, i64 0}
!378 = !{!"any pointer", !379, i64 0}
!379 = !{!"omnipotent char", !380, i64 0}
!380 = !{!"Simple C/C++ TBAA"}
!381 = !DILocation(line: 1800, column: 28, scope: !358)
!382 = !{!379, !379, i64 0}
!383 = !DILocation(line: 1801, column: 28, scope: !358)
!384 = !DILocation(line: 1802, column: 28, scope: !358)
!385 = !DILocation(line: 1803, column: 28, scope: !358)
!386 = !DILocation(line: 1804, column: 28, scope: !358)
!387 = !{!388, !388, i64 0}
!388 = !{!"int", !379, i64 0}
!389 = !DILocation(line: 1805, column: 28, scope: !358)
!390 = !DILocation(line: 1806, column: 28, scope: !358)
!391 = !DILocation(line: 1807, column: 28, scope: !358)
!392 = !DILocation(line: 1808, column: 28, scope: !358)
!393 = !DILocation(line: 1809, column: 28, scope: !358)
!394 = !DILocation(line: 1810, column: 28, scope: !358)
!395 = !DILocation(line: 1811, column: 28, scope: !358)
!396 = !DILocation(line: 1812, column: 28, scope: !358)
!397 = !DILocation(line: 1816, column: 4, scope: !358)
!398 = !DILocation(line: 1819, column: 4, scope: !358)
!399 = !DILocalVariable(name: "to", arg: 1, scope: !400, file: !3, line: 927, type: !8)
!400 = distinct !DISubprogram(name: "copyFileName", scope: !3, file: !3, line: 927, type: !401, scopeLine: 928, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !403)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !8, !8}
!403 = !{!399, !404}
!404 = !DILocalVariable(name: "from", arg: 2, scope: !400, file: !3, line: 927, type: !8)
!405 = !DILocation(line: 0, scope: !400, inlinedAt: !406)
!406 = distinct !DILocation(line: 1823, column: 4, scope: !358)
!407 = !DILocation(line: 941, column: 3, scope: !400, inlinedAt: !406)
!408 = !DILocation(line: 942, column: 23, scope: !400, inlinedAt: !406)
!409 = !DILocation(line: 0, scope: !400, inlinedAt: !410)
!410 = distinct !DILocation(line: 1824, column: 4, scope: !358)
!411 = !DILocation(line: 941, column: 3, scope: !400, inlinedAt: !410)
!412 = !DILocation(line: 942, column: 23, scope: !400, inlinedAt: !410)
!413 = !DILocation(line: 1826, column: 35, scope: !358)
!414 = !DILocation(line: 0, scope: !400, inlinedAt: !415)
!415 = distinct !DILocation(line: 1826, column: 4, scope: !358)
!416 = !DILocation(line: 929, column: 9, scope: !417, inlinedAt: !415)
!417 = distinct !DILexicalBlock(scope: !400, file: !3, line: 929, column: 9)
!418 = !DILocation(line: 929, column: 22, scope: !417, inlinedAt: !415)
!419 = !DILocation(line: 929, column: 9, scope: !400, inlinedAt: !415)
!420 = !DILocation(line: 931, column: 10, scope: !421, inlinedAt: !415)
!421 = distinct !DILexicalBlock(scope: !417, file: !3, line: 929, column: 44)
!422 = !{!423, !378, i64 12}
!423 = !{!"_reent", !388, i64 0, !378, i64 4, !378, i64 8, !378, i64 12, !388, i64 16, !379, i64 20, !388, i64 48, !378, i64 52, !388, i64 56, !378, i64 60, !378, i64 64, !388, i64 68, !378, i64 72, !378, i64 76, !388, i64 80, !378, i64 84, !379, i64 88, !378, i64 328, !424, i64 332, !378, i64 732, !427, i64 736, !379, i64 748}
!424 = !{!"_atexit", !378, i64 0, !388, i64 4, !379, i64 8, !425, i64 136}
!425 = !{!"_on_exit_args", !379, i64 0, !379, i64 128, !426, i64 256, !426, i64 260}
!426 = !{!"long", !379, i64 0}
!427 = !{!"_glue", !378, i64 0, !388, i64 4, !378, i64 8}
!428 = !DILocation(line: 930, column: 7, scope: !421, inlinedAt: !415)
!429 = !DILocalVariable(name: "v", arg: 1, scope: !430, file: !3, line: 651, type: !12)
!430 = distinct !DISubprogram(name: "setExit", scope: !3, file: !3, line: 651, type: !431, scopeLine: 652, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !433)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !12}
!433 = !{!429}
!434 = !DILocation(line: 0, scope: !430, inlinedAt: !435)
!435 = distinct !DILocation(line: 937, column: 7, scope: !421, inlinedAt: !415)
!436 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !435)
!437 = distinct !DILexicalBlock(scope: !430, file: !3, line: 653, column: 8)
!438 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !435)
!439 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !435)
!440 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !435)
!441 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !435)
!442 = !DILocation(line: 938, column: 12, scope: !421, inlinedAt: !415)
!443 = !DILocation(line: 938, column: 7, scope: !421, inlinedAt: !415)
!444 = !DILocation(line: 941, column: 3, scope: !400, inlinedAt: !415)
!445 = !DILocation(line: 942, column: 23, scope: !400, inlinedAt: !415)
!446 = !DILocation(line: 1827, column: 13, scope: !358)
!447 = !DILocation(line: 1828, column: 9, scope: !448)
!448 = distinct !DILexicalBlock(scope: !358, file: !3, line: 1828, column: 4)
!449 = !DILocation(line: 0, scope: !448)
!450 = !DILocation(line: 1828, column: 35, scope: !451)
!451 = distinct !DILexicalBlock(scope: !448, file: !3, line: 1828, column: 4)
!452 = !DILocation(line: 1828, column: 4, scope: !448)
!453 = !DILocation(line: 1829, column: 44, scope: !454)
!454 = distinct !DILexicalBlock(scope: !451, file: !3, line: 1829, column: 11)
!455 = !DILocation(line: 1829, column: 38, scope: !454)
!456 = !DILocation(line: 1829, column: 29, scope: !454)
!457 = !DILocation(line: 1828, column: 52, scope: !451)
!458 = !DILocation(line: 1828, column: 4, scope: !451)
!459 = distinct !{!459, !452, !460, !461}
!460 = !DILocation(line: 1829, column: 46, scope: !448)
!461 = !{!"llvm.loop.mustprogress"}
!462 = !DILocation(line: 1835, column: 12, scope: !358)
!463 = !DILocation(line: 1836, column: 4, scope: !358)
!464 = !DILocation(line: 1837, column: 4, scope: !358)
!465 = !DILocation(line: 1838, column: 18, scope: !466)
!466 = distinct !DILexicalBlock(scope: !467, file: !3, line: 1838, column: 4)
!467 = distinct !DILexicalBlock(scope: !358, file: !3, line: 1838, column: 4)
!468 = !DILocation(line: 1838, column: 4, scope: !467)
!469 = !DILocation(line: 1839, column: 7, scope: !466)
!470 = !DILocation(line: 1838, column: 30, scope: !466)
!471 = distinct !{!471, !468, !472, !461}
!472 = !DILocation(line: 1839, column: 7, scope: !467)
!473 = !DILocation(line: 0, scope: !474)
!474 = distinct !DILexicalBlock(scope: !358, file: !3, line: 1846, column: 4)
!475 = !DILocation(line: 1843, column: 20, scope: !358)
!476 = !DILocation(line: 1844, column: 20, scope: !358)
!477 = !DILocation(line: 1846, column: 26, scope: !478)
!478 = distinct !DILexicalBlock(scope: !474, file: !3, line: 1846, column: 4)
!479 = !DILocation(line: 1846, column: 4, scope: !474)
!480 = !DILocation(line: 1847, column: 11, scope: !481)
!481 = distinct !DILexicalBlock(scope: !482, file: !3, line: 1847, column: 11)
!482 = distinct !DILexicalBlock(scope: !478, file: !3, line: 1846, column: 50)
!483 = !{!484, !378, i64 0}
!484 = !{!"zzzz", !378, i64 0, !378, i64 4}
!485 = !DILocation(line: 1847, column: 11, scope: !482)
!486 = !DILocation(line: 1848, column: 11, scope: !487)
!487 = distinct !DILexicalBlock(scope: !482, file: !3, line: 1848, column: 11)
!488 = !DILocation(line: 1848, column: 23, scope: !487)
!489 = !DILocation(line: 1848, column: 30, scope: !487)
!490 = !DILocation(line: 1849, column: 19, scope: !482)
!491 = !DILocation(line: 1850, column: 36, scope: !492)
!492 = distinct !DILexicalBlock(scope: !482, file: !3, line: 1850, column: 11)
!493 = !DILocation(line: 1850, column: 27, scope: !492)
!494 = !DILocation(line: 1850, column: 11, scope: !482)
!495 = !DILocation(line: 1851, column: 26, scope: !492)
!496 = !DILocation(line: 1851, column: 10, scope: !492)
!497 = !DILocation(line: 1846, column: 44, scope: !478)
!498 = distinct !{!498, !479, !499, !461}
!499 = !DILocation(line: 1852, column: 4, scope: !474)
!500 = !DILocation(line: 1856, column: 8, scope: !501)
!501 = distinct !DILexicalBlock(scope: !358, file: !3, line: 1856, column: 8)
!502 = !DILocation(line: 1856, column: 21, scope: !501)
!503 = !DILocation(line: 1856, column: 8, scope: !358)
!504 = !DILocation(line: 0, scope: !501)
!505 = !DILocation(line: 1862, column: 11, scope: !358)
!506 = !DILocation(line: 1864, column: 19, scope: !507)
!507 = distinct !DILexicalBlock(scope: !358, file: !3, line: 1864, column: 9)
!508 = !DILocation(line: 1864, column: 10, scope: !507)
!509 = !DILocation(line: 1864, column: 39, scope: !507)
!510 = !DILocation(line: 1864, column: 45, scope: !507)
!511 = !DILocation(line: 1865, column: 10, scope: !507)
!512 = !DILocation(line: 1865, column: 39, scope: !507)
!513 = !DILocation(line: 1864, column: 9, scope: !358)
!514 = !DILocation(line: 1866, column: 14, scope: !507)
!515 = !DILocation(line: 1866, column: 7, scope: !507)
!516 = !DILocation(line: 1868, column: 10, scope: !517)
!517 = distinct !DILexicalBlock(scope: !358, file: !3, line: 1868, column: 9)
!518 = !DILocation(line: 1868, column: 39, scope: !517)
!519 = !DILocation(line: 1868, column: 45, scope: !517)
!520 = !DILocation(line: 1869, column: 10, scope: !517)
!521 = !DILocation(line: 1869, column: 39, scope: !517)
!522 = !DILocation(line: 1869, column: 45, scope: !517)
!523 = !DILocation(line: 1870, column: 10, scope: !517)
!524 = !DILocation(line: 1870, column: 38, scope: !517)
!525 = !DILocation(line: 1870, column: 45, scope: !517)
!526 = !DILocation(line: 1871, column: 10, scope: !517)
!527 = !DILocation(line: 1871, column: 38, scope: !517)
!528 = !DILocation(line: 1868, column: 9, scope: !358)
!529 = !DILocation(line: 1872, column: 14, scope: !530)
!530 = distinct !DILexicalBlock(scope: !517, file: !3, line: 1871, column: 47)
!531 = !DILocation(line: 1873, column: 17, scope: !530)
!532 = !DILocation(line: 1873, column: 15, scope: !530)
!533 = !DILocation(line: 1874, column: 4, scope: !530)
!534 = !DILocation(line: 1878, column: 4, scope: !535)
!535 = distinct !DILexicalBlock(scope: !358, file: !3, line: 1878, column: 4)
!536 = !DILocation(line: 1879, column: 11, scope: !537)
!537 = distinct !DILexicalBlock(scope: !538, file: !3, line: 1879, column: 11)
!538 = distinct !DILexicalBlock(scope: !539, file: !3, line: 1878, column: 50)
!539 = distinct !DILexicalBlock(scope: !535, file: !3, line: 1878, column: 4)
!540 = !DILocation(line: 1879, column: 11, scope: !538)
!541 = !DILocation(line: 1880, column: 11, scope: !542)
!542 = distinct !DILexicalBlock(scope: !538, file: !3, line: 1880, column: 11)
!543 = !DILocation(line: 1880, column: 23, scope: !542)
!544 = !DILocation(line: 1880, column: 30, scope: !542)
!545 = !DILocation(line: 1880, column: 33, scope: !542)
!546 = !DILocation(line: 1880, column: 45, scope: !542)
!547 = !DILocation(line: 1880, column: 11, scope: !538)
!548 = !DILocation(line: 1881, column: 22, scope: !549)
!549 = distinct !DILexicalBlock(scope: !550, file: !3, line: 1881, column: 10)
!550 = distinct !DILexicalBlock(scope: !551, file: !3, line: 1881, column: 10)
!551 = distinct !DILexicalBlock(scope: !542, file: !3, line: 1880, column: 53)
!552 = !DILocation(line: 1881, column: 26, scope: !549)
!553 = !DILocation(line: 0, scope: !550)
!554 = !DILocation(line: 1881, column: 10, scope: !550)
!555 = !DILocation(line: 1883, column: 43, scope: !556)
!556 = distinct !DILexicalBlock(scope: !557, file: !3, line: 1882, column: 34)
!557 = distinct !DILexicalBlock(scope: !549, file: !3, line: 1881, column: 48)
!558 = !DILocation(line: 1883, column: 53, scope: !556)
!559 = !DILocation(line: 1884, column: 43, scope: !556)
!560 = !DILocation(line: 1884, column: 53, scope: !556)
!561 = !DILocation(line: 1885, column: 43, scope: !556)
!562 = !DILocation(line: 1885, column: 51, scope: !556)
!563 = !DILocation(line: 1886, column: 43, scope: !556)
!564 = !DILocation(line: 1886, column: 51, scope: !556)
!565 = !DILocation(line: 1887, column: 43, scope: !556)
!566 = !DILocation(line: 1887, column: 54, scope: !556)
!567 = !DILocation(line: 1888, column: 43, scope: !556)
!568 = !DILocation(line: 1888, column: 51, scope: !556)
!569 = !DILocation(line: 1889, column: 43, scope: !556)
!570 = !DILocation(line: 1889, column: 51, scope: !556)
!571 = !DILocation(line: 1890, column: 43, scope: !556)
!572 = !DILocation(line: 1890, column: 52, scope: !556)
!573 = !DILocation(line: 1891, column: 43, scope: !556)
!574 = !DILocation(line: 1891, column: 48, scope: !556)
!575 = !DILocation(line: 1892, column: 43, scope: !556)
!576 = !DILocation(line: 1892, column: 48, scope: !556)
!577 = !DILocation(line: 1893, column: 43, scope: !556)
!578 = !DILocation(line: 1893, column: 48, scope: !556)
!579 = !DILocation(line: 1894, column: 43, scope: !556)
!580 = !DILocation(line: 1894, column: 48, scope: !556)
!581 = !DILocation(line: 1895, column: 43, scope: !556)
!582 = !DILocation(line: 1895, column: 48, scope: !556)
!583 = !DILocation(line: 1896, column: 43, scope: !556)
!584 = !DILocation(line: 1896, column: 48, scope: !556)
!585 = !DILocation(line: 1897, column: 43, scope: !556)
!586 = !DILocation(line: 1897, column: 48, scope: !556)
!587 = !DILocation(line: 1898, column: 43, scope: !556)
!588 = !DILocation(line: 1898, column: 48, scope: !556)
!589 = !DILocation(line: 1899, column: 43, scope: !556)
!590 = !DILocation(line: 1899, column: 48, scope: !556)
!591 = !DILocation(line: 1611, column: 14, scope: !592, inlinedAt: !593)
!592 = distinct !DISubprogram(name: "license", scope: !3, file: !3, line: 1609, type: !237, scopeLine: 1610, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!593 = distinct !DILocation(line: 1901, column: 26, scope: !556)
!594 = !DILocation(line: 1627, column: 5, scope: !592, inlinedAt: !593)
!595 = !DILocation(line: 1611, column: 4, scope: !592, inlinedAt: !593)
!596 = !DILocation(line: 1901, column: 48, scope: !556)
!597 = !DILocation(line: 1902, column: 35, scope: !556)
!598 = !DILocation(line: 1902, column: 39, scope: !556)
!599 = !DILocation(line: 1903, column: 34, scope: !556)
!600 = !DILocation(line: 1903, column: 26, scope: !556)
!601 = !DILocation(line: 1904, column: 26, scope: !556)
!602 = !DILocation(line: 1906, column: 36, scope: !556)
!603 = !DILocation(line: 1907, column: 36, scope: !556)
!604 = !DILocation(line: 1906, column: 26, scope: !556)
!605 = !DILocation(line: 1908, column: 34, scope: !556)
!606 = !DILocation(line: 1908, column: 26, scope: !556)
!607 = !DILocation(line: 1909, column: 26, scope: !556)
!608 = !DILocation(line: 1881, column: 44, scope: !549)
!609 = !DILocation(line: 1881, column: 10, scope: !549)
!610 = distinct !{!610, !554, !611, !461}
!611 = !DILocation(line: 1912, column: 10, scope: !550)
!612 = !DILocation(line: 1878, column: 44, scope: !539)
!613 = !DILocation(line: 0, scope: !535)
!614 = !DILocation(line: 1878, column: 26, scope: !539)
!615 = distinct !{!615, !534, !616, !461}
!616 = !DILocation(line: 1914, column: 4, scope: !535)
!617 = !DILocation(line: 1917, column: 4, scope: !618)
!618 = distinct !DILexicalBlock(scope: !358, file: !3, line: 1917, column: 4)
!619 = !DILocation(line: 1918, column: 11, scope: !620)
!620 = distinct !DILexicalBlock(scope: !621, file: !3, line: 1918, column: 11)
!621 = distinct !DILexicalBlock(scope: !622, file: !3, line: 1917, column: 50)
!622 = distinct !DILexicalBlock(scope: !618, file: !3, line: 1917, column: 4)
!623 = !DILocation(line: 1918, column: 11, scope: !621)
!624 = !DILocation(line: 1919, column: 11, scope: !625)
!625 = distinct !DILexicalBlock(scope: !621, file: !3, line: 1919, column: 11)
!626 = !DILocation(line: 1919, column: 11, scope: !621)
!627 = !DILocation(line: 1919, column: 59, scope: !625)
!628 = !DILocation(line: 1919, column: 42, scope: !625)
!629 = !DILocation(line: 1920, column: 11, scope: !630)
!630 = distinct !DILexicalBlock(scope: !625, file: !3, line: 1920, column: 11)
!631 = !DILocation(line: 1920, column: 11, scope: !625)
!632 = !DILocation(line: 1920, column: 59, scope: !630)
!633 = !DILocation(line: 1920, column: 42, scope: !630)
!634 = !DILocation(line: 1921, column: 11, scope: !635)
!635 = distinct !DILexicalBlock(scope: !630, file: !3, line: 1921, column: 11)
!636 = !DILocation(line: 1921, column: 11, scope: !630)
!637 = !DILocation(line: 1921, column: 59, scope: !635)
!638 = !DILocation(line: 1921, column: 42, scope: !635)
!639 = !DILocation(line: 1922, column: 11, scope: !640)
!640 = distinct !DILexicalBlock(scope: !635, file: !3, line: 1922, column: 11)
!641 = !DILocation(line: 1922, column: 11, scope: !635)
!642 = !DILocation(line: 1922, column: 59, scope: !640)
!643 = !DILocation(line: 1922, column: 42, scope: !640)
!644 = !DILocation(line: 1923, column: 11, scope: !645)
!645 = distinct !DILexicalBlock(scope: !640, file: !3, line: 1923, column: 11)
!646 = !DILocation(line: 1923, column: 11, scope: !640)
!647 = !DILocation(line: 1923, column: 59, scope: !645)
!648 = !DILocation(line: 1923, column: 42, scope: !645)
!649 = !DILocation(line: 1924, column: 11, scope: !650)
!650 = distinct !DILexicalBlock(scope: !645, file: !3, line: 1924, column: 11)
!651 = !DILocation(line: 1924, column: 11, scope: !645)
!652 = !DILocation(line: 1924, column: 59, scope: !650)
!653 = !DILocation(line: 1924, column: 42, scope: !650)
!654 = !DILocation(line: 1925, column: 11, scope: !655)
!655 = distinct !DILexicalBlock(scope: !650, file: !3, line: 1925, column: 11)
!656 = !DILocation(line: 1925, column: 11, scope: !650)
!657 = !DILocation(line: 1925, column: 59, scope: !655)
!658 = !DILocation(line: 1925, column: 42, scope: !655)
!659 = !DILocation(line: 1926, column: 11, scope: !660)
!660 = distinct !DILexicalBlock(scope: !655, file: !3, line: 1926, column: 11)
!661 = !DILocation(line: 1926, column: 11, scope: !655)
!662 = !DILocation(line: 1926, column: 59, scope: !660)
!663 = !DILocation(line: 1926, column: 42, scope: !660)
!664 = !DILocation(line: 1927, column: 11, scope: !665)
!665 = distinct !DILexicalBlock(scope: !660, file: !3, line: 1927, column: 11)
!666 = !DILocation(line: 1927, column: 11, scope: !660)
!667 = !DILocation(line: 1611, column: 14, scope: !592, inlinedAt: !668)
!668 = distinct !DILocation(line: 1927, column: 42, scope: !665)
!669 = !DILocation(line: 1627, column: 5, scope: !592, inlinedAt: !668)
!670 = !DILocation(line: 1611, column: 4, scope: !592, inlinedAt: !668)
!671 = !DILocation(line: 1927, column: 42, scope: !665)
!672 = !DILocation(line: 1928, column: 11, scope: !673)
!673 = distinct !DILexicalBlock(scope: !665, file: !3, line: 1928, column: 11)
!674 = !DILocation(line: 1928, column: 11, scope: !665)
!675 = !DILocation(line: 1611, column: 14, scope: !592, inlinedAt: !676)
!676 = distinct !DILocation(line: 1928, column: 42, scope: !673)
!677 = !DILocation(line: 1627, column: 5, scope: !592, inlinedAt: !676)
!678 = !DILocation(line: 1611, column: 4, scope: !592, inlinedAt: !676)
!679 = !DILocation(line: 1928, column: 42, scope: !673)
!680 = !DILocation(line: 1929, column: 11, scope: !681)
!681 = distinct !DILexicalBlock(scope: !673, file: !3, line: 1929, column: 11)
!682 = !DILocation(line: 1929, column: 11, scope: !673)
!683 = !DILocation(line: 1929, column: 53, scope: !681)
!684 = !DILocation(line: 1929, column: 42, scope: !681)
!685 = !DILocation(line: 1930, column: 11, scope: !686)
!686 = distinct !DILexicalBlock(scope: !681, file: !3, line: 1930, column: 11)
!687 = !DILocation(line: 1930, column: 11, scope: !681)
!688 = !DILocalVariable(name: "flag", arg: 1, scope: !689, file: !3, line: 1678, type: !8)
!689 = distinct !DISubprogram(name: "redundant", scope: !3, file: !3, line: 1678, type: !690, scopeLine: 1679, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !692)
!690 = !DISubroutineType(types: !691)
!691 = !{null, !8}
!692 = !{!688}
!693 = !DILocation(line: 0, scope: !689, inlinedAt: !694)
!694 = distinct !DILocation(line: 1930, column: 42, scope: !686)
!695 = !DILocation(line: 1681, column: 7, scope: !689, inlinedAt: !694)
!696 = !DILocation(line: 1683, column: 7, scope: !689, inlinedAt: !694)
!697 = !DILocation(line: 1680, column: 4, scope: !689, inlinedAt: !694)
!698 = !DILocation(line: 1930, column: 42, scope: !686)
!699 = !DILocation(line: 1931, column: 11, scope: !700)
!700 = distinct !DILexicalBlock(scope: !686, file: !3, line: 1931, column: 11)
!701 = !DILocation(line: 1931, column: 11, scope: !686)
!702 = !DILocation(line: 0, scope: !689, inlinedAt: !703)
!703 = distinct !DILocation(line: 1931, column: 42, scope: !700)
!704 = !DILocation(line: 1681, column: 7, scope: !689, inlinedAt: !703)
!705 = !DILocation(line: 1683, column: 7, scope: !689, inlinedAt: !703)
!706 = !DILocation(line: 1680, column: 4, scope: !689, inlinedAt: !703)
!707 = !DILocation(line: 1931, column: 42, scope: !700)
!708 = !DILocation(line: 1932, column: 11, scope: !709)
!709 = distinct !DILexicalBlock(scope: !700, file: !3, line: 1932, column: 11)
!710 = !DILocation(line: 1932, column: 11, scope: !700)
!711 = !DILocation(line: 1932, column: 56, scope: !709)
!712 = !DILocation(line: 1932, column: 42, scope: !709)
!713 = !DILocation(line: 1933, column: 11, scope: !714)
!714 = distinct !DILexicalBlock(scope: !709, file: !3, line: 1933, column: 11)
!715 = !DILocation(line: 1933, column: 11, scope: !709)
!716 = !DILocation(line: 1933, column: 56, scope: !714)
!717 = !DILocation(line: 1933, column: 42, scope: !714)
!718 = !DILocation(line: 1934, column: 11, scope: !719)
!719 = distinct !DILexicalBlock(scope: !714, file: !3, line: 1934, column: 11)
!720 = !DILocation(line: 1934, column: 11, scope: !714)
!721 = !DILocation(line: 1934, column: 51, scope: !719)
!722 = !DILocation(line: 1934, column: 42, scope: !719)
!723 = !DILocation(line: 1935, column: 11, scope: !724)
!724 = distinct !DILexicalBlock(scope: !719, file: !3, line: 1935, column: 11)
!725 = !DILocation(line: 1935, column: 11, scope: !719)
!726 = !DILocation(line: 1935, column: 52, scope: !727)
!727 = distinct !DILexicalBlock(scope: !724, file: !3, line: 1935, column: 42)
!728 = !DILocation(line: 1935, column: 44, scope: !727)
!729 = !DILocation(line: 1935, column: 64, scope: !727)
!730 = !DILocation(line: 1937, column: 14, scope: !731)
!731 = distinct !DILexicalBlock(scope: !724, file: !3, line: 1937, column: 14)
!732 = !DILocation(line: 1937, column: 43, scope: !731)
!733 = !DILocation(line: 1937, column: 14, scope: !724)
!734 = !DILocation(line: 1938, column: 23, scope: !735)
!735 = distinct !DILexicalBlock(scope: !731, file: !3, line: 1937, column: 49)
!736 = !DILocation(line: 1938, column: 54, scope: !735)
!737 = !DILocation(line: 1938, column: 13, scope: !735)
!738 = !DILocation(line: 1939, column: 21, scope: !735)
!739 = !DILocation(line: 1939, column: 13, scope: !735)
!740 = !DILocation(line: 1940, column: 13, scope: !735)
!741 = !DILocation(line: 1917, column: 44, scope: !622)
!742 = !DILocation(line: 0, scope: !618)
!743 = !DILocation(line: 1917, column: 26, scope: !622)
!744 = distinct !{!744, !617, !745, !461}
!745 = !DILocation(line: 1942, column: 4, scope: !618)
!746 = !DILocation(line: 1944, column: 8, scope: !747)
!747 = distinct !DILexicalBlock(scope: !358, file: !3, line: 1944, column: 8)
!748 = !DILocation(line: 1944, column: 18, scope: !747)
!749 = !DILocation(line: 1944, column: 8, scope: !358)
!750 = !DILocation(line: 1944, column: 33, scope: !747)
!751 = !DILocation(line: 1944, column: 23, scope: !747)
!752 = !DILocation(line: 1945, column: 8, scope: !753)
!753 = distinct !DILexicalBlock(scope: !358, file: !3, line: 1945, column: 8)
!754 = !DILocation(line: 1945, column: 15, scope: !753)
!755 = !DILocation(line: 1945, column: 23, scope: !753)
!756 = !DILocation(line: 1945, column: 26, scope: !753)
!757 = !DILocation(line: 1945, column: 36, scope: !753)
!758 = !DILocation(line: 1946, column: 21, scope: !753)
!759 = !DILocation(line: 1946, column: 7, scope: !753)
!760 = !DILocation(line: 1948, column: 26, scope: !761)
!761 = distinct !DILexicalBlock(scope: !358, file: !3, line: 1948, column: 8)
!762 = !DILocation(line: 1948, column: 15, scope: !761)
!763 = !DILocation(line: 1949, column: 17, scope: !764)
!764 = distinct !DILexicalBlock(scope: !761, file: !3, line: 1948, column: 48)
!765 = !DILocation(line: 1950, column: 17, scope: !764)
!766 = !DILocation(line: 1949, column: 7, scope: !764)
!767 = !DILocation(line: 1951, column: 7, scope: !764)
!768 = !DILocation(line: 1954, column: 26, scope: !769)
!769 = distinct !DILexicalBlock(scope: !358, file: !3, line: 1954, column: 8)
!770 = !DILocation(line: 1955, column: 15, scope: !769)
!771 = !DILocation(line: 1955, column: 7, scope: !769)
!772 = !DILocation(line: 1957, column: 8, scope: !358)
!773 = !DILocation(line: 1957, column: 38, scope: !774)
!774 = distinct !DILexicalBlock(scope: !358, file: !3, line: 1957, column: 8)
!775 = !DILocation(line: 1957, column: 24, scope: !774)
!776 = !DILocation(line: 1959, column: 16, scope: !777)
!777 = distinct !DILexicalBlock(scope: !358, file: !3, line: 1959, column: 8)
!778 = !DILocation(line: 1959, column: 8, scope: !358)
!779 = !DILocation(line: 1960, column: 7, scope: !780)
!780 = distinct !DILexicalBlock(scope: !777, file: !3, line: 1959, column: 27)
!781 = !DILocation(line: 1961, column: 7, scope: !780)
!782 = !DILocation(line: 1963, column: 7, scope: !780)
!783 = !DILocation(line: 1967, column: 8, scope: !784)
!784 = distinct !DILexicalBlock(scope: !358, file: !3, line: 1967, column: 8)
!785 = !DILocation(line: 1965, column: 4, scope: !780)
!786 = !DILocation(line: 1967, column: 8, scope: !358)
!787 = !DILocation(line: 1968, column: 10, scope: !788)
!788 = distinct !DILexicalBlock(scope: !789, file: !3, line: 1968, column: 10)
!789 = distinct !DILexicalBlock(scope: !784, file: !3, line: 1967, column: 24)
!790 = !DILocation(line: 1968, column: 18, scope: !788)
!791 = !DILocation(line: 1968, column: 10, scope: !789)
!792 = !DILocation(line: 1972, column: 9, scope: !793)
!793 = distinct !DILexicalBlock(scope: !794, file: !3, line: 1972, column: 9)
!794 = distinct !DILexicalBlock(scope: !788, file: !3, line: 1970, column: 13)
!795 = !DILocation(line: 1969, column: 9, scope: !796)
!796 = distinct !DILexicalBlock(scope: !788, file: !3, line: 1968, column: 29)
!797 = !DILocation(line: 1970, column: 6, scope: !796)
!798 = !DILocation(line: 1973, column: 16, scope: !799)
!799 = distinct !DILexicalBlock(scope: !800, file: !3, line: 1973, column: 16)
!800 = distinct !DILexicalBlock(scope: !801, file: !3, line: 1972, column: 55)
!801 = distinct !DILexicalBlock(scope: !793, file: !3, line: 1972, column: 9)
!802 = !DILocation(line: 1973, column: 16, scope: !800)
!803 = !DILocation(line: 1974, column: 16, scope: !804)
!804 = distinct !DILexicalBlock(scope: !800, file: !3, line: 1974, column: 16)
!805 = !DILocation(line: 1974, column: 28, scope: !804)
!806 = !DILocation(line: 1974, column: 35, scope: !804)
!807 = !DILocation(line: 1975, column: 29, scope: !800)
!808 = !DILocation(line: 1976, column: 12, scope: !800)
!809 = !DILocation(line: 1977, column: 9, scope: !800)
!810 = !DILocation(line: 0, scope: !794)
!811 = !DILocation(line: 1972, column: 49, scope: !801)
!812 = !DILocation(line: 0, scope: !793)
!813 = !DILocation(line: 1972, column: 31, scope: !801)
!814 = distinct !{!814, !792, !815, !461}
!815 = !DILocation(line: 1977, column: 9, scope: !793)
!816 = !DILocation(line: 1983, column: 21, scope: !817)
!817 = distinct !DILexicalBlock(scope: !818, file: !3, line: 1982, column: 26)
!818 = distinct !DILexicalBlock(scope: !784, file: !3, line: 1982, column: 8)
!819 = !DILocation(line: 1984, column: 11, scope: !820)
!820 = distinct !DILexicalBlock(scope: !817, file: !3, line: 1984, column: 11)
!821 = !DILocation(line: 1984, column: 19, scope: !820)
!822 = !DILocation(line: 1984, column: 11, scope: !817)
!823 = !DILocation(line: 1988, column: 10, scope: !824)
!824 = distinct !DILexicalBlock(scope: !825, file: !3, line: 1988, column: 10)
!825 = distinct !DILexicalBlock(scope: !820, file: !3, line: 1986, column: 14)
!826 = !DILocation(line: 1985, column: 10, scope: !827)
!827 = distinct !DILexicalBlock(scope: !820, file: !3, line: 1984, column: 30)
!828 = !DILocation(line: 1986, column: 7, scope: !827)
!829 = !DILocation(line: 1989, column: 17, scope: !830)
!830 = distinct !DILexicalBlock(scope: !831, file: !3, line: 1989, column: 17)
!831 = distinct !DILexicalBlock(scope: !832, file: !3, line: 1988, column: 56)
!832 = distinct !DILexicalBlock(scope: !824, file: !3, line: 1988, column: 10)
!833 = !DILocation(line: 1989, column: 17, scope: !831)
!834 = !DILocation(line: 1990, column: 17, scope: !835)
!835 = distinct !DILexicalBlock(scope: !831, file: !3, line: 1990, column: 17)
!836 = !DILocation(line: 1990, column: 29, scope: !835)
!837 = !DILocation(line: 1990, column: 36, scope: !835)
!838 = !DILocation(line: 1991, column: 30, scope: !831)
!839 = !DILocation(line: 1992, column: 13, scope: !831)
!840 = !DILocation(line: 1993, column: 10, scope: !831)
!841 = !DILocation(line: 0, scope: !825)
!842 = !DILocation(line: 1988, column: 50, scope: !832)
!843 = !DILocation(line: 0, scope: !824)
!844 = !DILocation(line: 1988, column: 32, scope: !832)
!845 = distinct !{!845, !823, !846, !461}
!846 = !DILocation(line: 1993, column: 10, scope: !824)
!847 = !DILocation(line: 1995, column: 11, scope: !848)
!848 = distinct !DILexicalBlock(scope: !817, file: !3, line: 1995, column: 11)
!849 = !DILocation(line: 1995, column: 11, scope: !817)
!850 = !DILocation(line: 0, scope: !430, inlinedAt: !851)
!851 = distinct !DILocation(line: 1996, column: 10, scope: !852)
!852 = distinct !DILexicalBlock(scope: !848, file: !3, line: 1995, column: 26)
!853 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !851)
!854 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !851)
!855 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !851)
!856 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !851)
!857 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !851)
!858 = !DILocation(line: 1997, column: 15, scope: !852)
!859 = !DILocation(line: 1997, column: 10, scope: !852)
!860 = !DILocation(line: 2002, column: 22, scope: !861)
!861 = distinct !DILexicalBlock(scope: !818, file: !3, line: 2001, column: 9)
!862 = !DILocation(line: 2003, column: 11, scope: !863)
!863 = distinct !DILexicalBlock(scope: !861, file: !3, line: 2003, column: 11)
!864 = !DILocation(line: 2003, column: 19, scope: !863)
!865 = !DILocation(line: 2003, column: 11, scope: !861)
!866 = !DILocation(line: 2007, column: 10, scope: !867)
!867 = distinct !DILexicalBlock(scope: !868, file: !3, line: 2007, column: 10)
!868 = distinct !DILexicalBlock(scope: !863, file: !3, line: 2005, column: 14)
!869 = !DILocation(line: 2004, column: 10, scope: !870)
!870 = distinct !DILexicalBlock(scope: !863, file: !3, line: 2003, column: 30)
!871 = !DILocation(line: 2005, column: 7, scope: !870)
!872 = !DILocation(line: 2008, column: 10, scope: !873)
!873 = distinct !DILexicalBlock(scope: !874, file: !3, line: 2008, column: 10)
!874 = distinct !DILexicalBlock(scope: !875, file: !3, line: 2007, column: 56)
!875 = distinct !DILexicalBlock(scope: !867, file: !3, line: 2007, column: 10)
!876 = !DILocation(line: 2008, column: 10, scope: !874)
!877 = !DILocation(line: 2009, column: 17, scope: !878)
!878 = distinct !DILexicalBlock(scope: !874, file: !3, line: 2009, column: 17)
!879 = !DILocation(line: 2009, column: 29, scope: !878)
!880 = !DILocation(line: 2009, column: 36, scope: !878)
!881 = !DILocation(line: 2010, column: 30, scope: !874)
!882 = !DILocation(line: 2011, column: 13, scope: !874)
!883 = !DILocation(line: 2012, column: 3, scope: !874)
!884 = !DILocation(line: 0, scope: !868)
!885 = !DILocation(line: 2007, column: 50, scope: !875)
!886 = !DILocation(line: 0, scope: !867)
!887 = !DILocation(line: 2007, column: 32, scope: !875)
!888 = distinct !{!888, !866, !889, !461}
!889 = !DILocation(line: 2012, column: 3, scope: !867)
!890 = !DILocation(line: 2014, column: 11, scope: !891)
!891 = distinct !DILexicalBlock(scope: !861, file: !3, line: 2014, column: 11)
!892 = !DILocation(line: 2014, column: 11, scope: !861)
!893 = !DILocation(line: 2015, column: 7, scope: !894)
!894 = distinct !DILexicalBlock(scope: !895, file: !3, line: 2015, column: 7)
!895 = distinct !DILexicalBlock(scope: !891, file: !3, line: 2014, column: 27)
!896 = !DILocation(line: 2015, column: 7, scope: !895)
!897 = !DILocation(line: 2016, column: 23, scope: !898)
!898 = distinct !DILexicalBlock(scope: !894, file: !3, line: 2015, column: 14)
!899 = !DILocation(line: 2016, column: 13, scope: !898)
!900 = !DILocation(line: 2021, column: 3, scope: !898)
!901 = !DILocation(line: 0, scope: !430, inlinedAt: !902)
!902 = distinct !DILocation(line: 2022, column: 10, scope: !895)
!903 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !902)
!904 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !902)
!905 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !902)
!906 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !902)
!907 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !902)
!908 = !DILocation(line: 2023, column: 15, scope: !895)
!909 = !DILocation(line: 2023, column: 10, scope: !895)
!910 = !DILocation(line: 2031, column: 4, scope: !358)
!911 = !DILocation(line: 2032, column: 23, scope: !373)
!912 = !{!484, !378, i64 4}
!913 = !DILocation(line: 0, scope: !373)
!914 = !DILocation(line: 2033, column: 15, scope: !915)
!915 = distinct !DILexicalBlock(scope: !373, file: !3, line: 2033, column: 11)
!916 = !DILocation(line: 2033, column: 20, scope: !915)
!917 = !DILocation(line: 2033, column: 11, scope: !373)
!918 = !DILocation(line: 2033, column: 29, scope: !915)
!919 = !DILocation(line: 2034, column: 12, scope: !373)
!920 = !DILocation(line: 2034, column: 7, scope: !373)
!921 = !DILocation(line: 2031, column: 14, scope: !358)
!922 = distinct !{!922, !910, !923, !461}
!923 = !DILocation(line: 2036, column: 4, scope: !358)
!924 = !DILocation(line: 2038, column: 11, scope: !358)
!925 = !DILocation(line: 2039, column: 1, scope: !358)
!926 = !DILocation(line: 2038, column: 4, scope: !358)
!927 = !DISubprogram(name: "signal", scope: !928, file: !928, line: 28, type: !929, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!928 = !DIFile(filename: "/opt/riscv/riscv32-unknown-elf/include/signal.h", directory: "")
!929 = !DISubroutineType(types: !930)
!930 = !{!252, !13, !252}
!931 = distinct !DISubprogram(name: "mySIGSEGVorSIGBUScatcher", scope: !3, file: !3, line: 816, type: !932, scopeLine: 817, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !934)
!932 = !DISubroutineType(types: !933)
!933 = !{null, !361}
!934 = !{!935, !936}
!935 = !DILocalVariable(name: "n", arg: 1, scope: !931, file: !3, line: 816, type: !361)
!936 = !DILocalVariable(name: "msg", scope: !931, file: !3, line: 818, type: !268)
!937 = !DILocation(line: 0, scope: !931)
!938 = !DILocation(line: 819, column: 8, scope: !939)
!939 = distinct !DILexicalBlock(scope: !931, file: !3, line: 819, column: 8)
!940 = !DILocation(line: 819, column: 15, scope: !939)
!941 = !DILocation(line: 819, column: 8, scope: !931)
!942 = !DILocation(line: 857, column: 4, scope: !931)
!943 = !DILocation(line: 858, column: 27, scope: !931)
!944 = !DILocation(line: 858, column: 37, scope: !931)
!945 = !DILocation(line: 858, column: 4, scope: !931)
!946 = !DILocation(line: 859, column: 32, scope: !931)
!947 = !DILocation(line: 859, column: 4, scope: !931)
!948 = !DILocation(line: 862, column: 4, scope: !931)
!949 = !DILocation(line: 863, column: 35, scope: !931)
!950 = !DILocation(line: 863, column: 4, scope: !931)
!951 = !DILocation(line: 864, column: 4, scope: !931)
!952 = !DILocation(line: 866, column: 4, scope: !931)
!953 = !DILocation(line: 867, column: 36, scope: !931)
!954 = !DILocation(line: 867, column: 4, scope: !931)
!955 = !DILocation(line: 868, column: 4, scope: !931)
!956 = !DILocation(line: 873, column: 8, scope: !957)
!957 = distinct !DILexicalBlock(scope: !931, file: !3, line: 873, column: 8)
!958 = !DILocation(line: 873, column: 15, scope: !957)
!959 = !DILocation(line: 0, scope: !957)
!960 = !DILocation(line: 873, column: 8, scope: !931)
!961 = !DILocation(line: 0, scope: !430, inlinedAt: !962)
!962 = distinct !DILocation(line: 873, column: 24, scope: !957)
!963 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !962)
!964 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !962)
!965 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !962)
!966 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !962)
!967 = !DILocation(line: 0, scope: !430, inlinedAt: !968)
!968 = distinct !DILocation(line: 873, column: 41, scope: !957)
!969 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !968)
!970 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !968)
!971 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !968)
!972 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !968)
!973 = !DILocation(line: 874, column: 10, scope: !931)
!974 = !DILocation(line: 874, column: 4, scope: !931)
!975 = distinct !DISubprogram(name: "addFlagsFromEnvVar", scope: !3, file: !3, line: 1755, type: !976, scopeLine: 1756, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !979)
!976 = !DISubroutineType(types: !977)
!977 = !{null, !978, !8}
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 32)
!979 = !{!980, !981, !982, !983, !984, !985, !986}
!980 = !DILocalVariable(name: "argList", arg: 1, scope: !975, file: !3, line: 1755, type: !978)
!981 = !DILocalVariable(name: "varName", arg: 2, scope: !975, file: !3, line: 1755, type: !8)
!982 = !DILocalVariable(name: "i", scope: !975, file: !3, line: 1757, type: !12)
!983 = !DILocalVariable(name: "j", scope: !975, file: !3, line: 1757, type: !12)
!984 = !DILocalVariable(name: "k", scope: !975, file: !3, line: 1757, type: !12)
!985 = !DILocalVariable(name: "envbase", scope: !975, file: !3, line: 1758, type: !8)
!986 = !DILocalVariable(name: "p", scope: !975, file: !3, line: 1758, type: !8)
!987 = !DILocation(line: 0, scope: !975)
!988 = !DILocation(line: 1760, column: 14, scope: !975)
!989 = !DILocation(line: 1761, column: 16, scope: !990)
!990 = distinct !DILexicalBlock(scope: !975, file: !3, line: 1761, column: 8)
!991 = !DILocation(line: 1761, column: 8, scope: !975)
!992 = !DILocation(line: 1765, column: 14, scope: !993)
!993 = distinct !DILexicalBlock(scope: !994, file: !3, line: 1765, column: 14)
!994 = distinct !DILexicalBlock(scope: !995, file: !3, line: 1764, column: 20)
!995 = distinct !DILexicalBlock(scope: !990, file: !3, line: 1761, column: 25)
!996 = !DILocation(line: 1765, column: 19, scope: !993)
!997 = !DILocation(line: 1765, column: 14, scope: !994)
!998 = !DILocation(line: 1768, column: 17, scope: !994)
!999 = !DILocation(line: 1768, column: 10, scope: !994)
!1000 = distinct !{!1000, !999, !1001, !461}
!1001 = !DILocation(line: 1768, column: 42, scope: !994)
!1002 = !DILocation(line: 0, scope: !994)
!1003 = !DILocation(line: 1769, column: 22, scope: !994)
!1004 = !DILocation(line: 1769, column: 27, scope: !994)
!1005 = !DILocation(line: 1769, column: 31, scope: !994)
!1006 = !DILocation(line: 1769, column: 30, scope: !994)
!1007 = !DILocation(line: 1769, column: 10, scope: !994)
!1008 = !DILocation(line: 1769, column: 56, scope: !994)
!1009 = !DILocation(line: 1769, column: 17, scope: !994)
!1010 = distinct !{!1010, !1007, !1008, !461}
!1011 = !DILocation(line: 1770, column: 16, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !994, file: !3, line: 1770, column: 14)
!1013 = !DILocation(line: 1770, column: 14, scope: !994)
!1014 = !DILocation(line: 1771, column: 24, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 1770, column: 21)
!1016 = !DILocation(line: 1772, column: 13, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 1772, column: 13)
!1018 = !DILocation(line: 1772, column: 48, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 1772, column: 13)
!1020 = distinct !{!1020, !1016, !1021, !461}
!1021 = !DILocation(line: 1772, column: 53, scope: !1017)
!1022 = !DILocation(line: 1772, column: 50, scope: !1019)
!1023 = !DILocation(line: 1772, column: 37, scope: !1019)
!1024 = !DILocation(line: 1772, column: 33, scope: !1019)
!1025 = !DILocation(line: 1772, column: 27, scope: !1019)
!1026 = !DILocation(line: 1773, column: 13, scope: !1015)
!1027 = !DILocation(line: 1773, column: 24, scope: !1015)
!1028 = !DILocation(line: 1774, column: 13, scope: !1015)
!1029 = !DILocation(line: 1775, column: 10, scope: !1015)
!1030 = distinct !{!1030, !1031, !1032}
!1031 = !DILocation(line: 1764, column: 7, scope: !995)
!1032 = !DILocation(line: 1776, column: 7, scope: !995)
!1033 = !DILocation(line: 1778, column: 1, scope: !975)
!1034 = distinct !DISubprogram(name: "snocString", scope: !3, file: !3, line: 1737, type: !1035, scopeLine: 1738, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1037)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!14, !14, !8}
!1037 = !{!1038, !1039, !1040, !1043}
!1038 = !DILocalVariable(name: "root", arg: 1, scope: !1034, file: !3, line: 1737, type: !14)
!1039 = !DILocalVariable(name: "name", arg: 2, scope: !1034, file: !3, line: 1737, type: !8)
!1040 = !DILocalVariable(name: "tmp", scope: !1041, file: !3, line: 1740, type: !14)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 1739, column: 22)
!1042 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 1739, column: 8)
!1043 = !DILocalVariable(name: "tmp", scope: !1044, file: !3, line: 1745, type: !14)
!1044 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 1744, column: 11)
!1045 = !DILocation(line: 0, scope: !1034)
!1046 = !DILocation(line: 1739, column: 13, scope: !1042)
!1047 = !DILocation(line: 1739, column: 8, scope: !1034)
!1048 = !DILocalVariable(name: "n", arg: 1, scope: !1049, file: !3, line: 1712, type: !12)
!1049 = distinct !DISubprogram(name: "myMalloc", scope: !3, file: !3, line: 1712, type: !1050, scopeLine: 1713, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1052)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!11, !12}
!1052 = !{!1048, !1053}
!1053 = !DILocalVariable(name: "p", scope: !1049, file: !3, line: 1714, type: !11)
!1054 = !DILocation(line: 0, scope: !1049, inlinedAt: !1055)
!1055 = distinct !DILocation(line: 1728, column: 16, scope: !1056, inlinedAt: !1061)
!1056 = distinct !DISubprogram(name: "mkCell", scope: !3, file: !3, line: 1724, type: !1057, scopeLine: 1725, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1059)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!14}
!1059 = !{!1060}
!1060 = !DILocalVariable(name: "c", scope: !1056, file: !3, line: 1726, type: !14)
!1061 = distinct !DILocation(line: 1740, column: 19, scope: !1041)
!1062 = !DILocation(line: 1716, column: 8, scope: !1049, inlinedAt: !1055)
!1063 = !DILocation(line: 1717, column: 10, scope: !1064, inlinedAt: !1055)
!1064 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 1717, column: 8)
!1065 = !DILocation(line: 1717, column: 8, scope: !1049, inlinedAt: !1055)
!1066 = !DILocation(line: 1717, column: 19, scope: !1064, inlinedAt: !1055)
!1067 = !DILocation(line: 0, scope: !1056, inlinedAt: !1061)
!1068 = !DILocation(line: 1729, column: 7, scope: !1056, inlinedAt: !1061)
!1069 = !DILocation(line: 1729, column: 12, scope: !1056, inlinedAt: !1061)
!1070 = !DILocation(line: 1730, column: 7, scope: !1056, inlinedAt: !1061)
!1071 = !DILocation(line: 1730, column: 12, scope: !1056, inlinedAt: !1061)
!1072 = !DILocation(line: 0, scope: !1041)
!1073 = !DILocation(line: 1741, column: 42, scope: !1041)
!1074 = !DILocation(line: 1741, column: 40, scope: !1041)
!1075 = !DILocation(line: 0, scope: !1049, inlinedAt: !1076)
!1076 = distinct !DILocation(line: 1741, column: 27, scope: !1041)
!1077 = !DILocation(line: 1716, column: 8, scope: !1049, inlinedAt: !1076)
!1078 = !DILocation(line: 1717, column: 10, scope: !1064, inlinedAt: !1076)
!1079 = !DILocation(line: 1717, column: 8, scope: !1049, inlinedAt: !1076)
!1080 = !DILocation(line: 1717, column: 19, scope: !1064, inlinedAt: !1076)
!1081 = !DILocation(line: 1728, column: 8, scope: !1056, inlinedAt: !1061)
!1082 = !DILocation(line: 1741, column: 17, scope: !1041)
!1083 = !DILocation(line: 1742, column: 7, scope: !1041)
!1084 = !DILocation(line: 0, scope: !1044)
!1085 = !DILocation(line: 1746, column: 19, scope: !1044)
!1086 = !DILocation(line: 1746, column: 24, scope: !1044)
!1087 = !DILocation(line: 1746, column: 7, scope: !1044)
!1088 = distinct !{!1088, !1087, !1089, !461}
!1089 = !DILocation(line: 1746, column: 44, scope: !1044)
!1090 = !DILocation(line: 0, scope: !1034, inlinedAt: !1091)
!1091 = distinct !DILocation(line: 1747, column: 19, scope: !1044)
!1092 = !DILocation(line: 0, scope: !1049, inlinedAt: !1093)
!1093 = distinct !DILocation(line: 1728, column: 16, scope: !1056, inlinedAt: !1094)
!1094 = distinct !DILocation(line: 1740, column: 19, scope: !1041, inlinedAt: !1091)
!1095 = !DILocation(line: 1716, column: 8, scope: !1049, inlinedAt: !1093)
!1096 = !DILocation(line: 1717, column: 10, scope: !1064, inlinedAt: !1093)
!1097 = !DILocation(line: 1717, column: 8, scope: !1049, inlinedAt: !1093)
!1098 = !DILocation(line: 1717, column: 19, scope: !1064, inlinedAt: !1093)
!1099 = !DILocation(line: 0, scope: !1056, inlinedAt: !1094)
!1100 = !DILocation(line: 1729, column: 7, scope: !1056, inlinedAt: !1094)
!1101 = !DILocation(line: 1729, column: 12, scope: !1056, inlinedAt: !1094)
!1102 = !DILocation(line: 1730, column: 7, scope: !1056, inlinedAt: !1094)
!1103 = !DILocation(line: 1730, column: 12, scope: !1056, inlinedAt: !1094)
!1104 = !DILocation(line: 0, scope: !1041, inlinedAt: !1091)
!1105 = !DILocation(line: 1741, column: 42, scope: !1041, inlinedAt: !1091)
!1106 = !DILocation(line: 1741, column: 40, scope: !1041, inlinedAt: !1091)
!1107 = !DILocation(line: 0, scope: !1049, inlinedAt: !1108)
!1108 = distinct !DILocation(line: 1741, column: 27, scope: !1041, inlinedAt: !1091)
!1109 = !DILocation(line: 1716, column: 8, scope: !1049, inlinedAt: !1108)
!1110 = !DILocation(line: 1717, column: 10, scope: !1064, inlinedAt: !1108)
!1111 = !DILocation(line: 1717, column: 8, scope: !1049, inlinedAt: !1108)
!1112 = !DILocation(line: 1717, column: 19, scope: !1064, inlinedAt: !1108)
!1113 = !DILocation(line: 1741, column: 17, scope: !1041, inlinedAt: !1091)
!1114 = !DILocation(line: 1742, column: 7, scope: !1041, inlinedAt: !1091)
!1115 = !DILocation(line: 1747, column: 17, scope: !1044)
!1116 = !DILocation(line: 0, scope: !1042)
!1117 = !DILocation(line: 1750, column: 1, scope: !1034)
!1118 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 1634, type: !690, scopeLine: 1635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1119)
!1119 = !{!1120}
!1120 = !DILocalVariable(name: "fullProgName", arg: 1, scope: !1118, file: !3, line: 1634, type: !8)
!1121 = !DILocation(line: 0, scope: !1118)
!1122 = !DILocation(line: 1637, column: 7, scope: !1118)
!1123 = !DILocation(line: 1670, column: 7, scope: !1118)
!1124 = !DILocation(line: 1636, column: 4, scope: !1118)
!1125 = !DILocation(line: 1673, column: 1, scope: !1118)
!1126 = distinct !DISubprogram(name: "mySignalCatcher", scope: !3, file: !3, line: 805, type: !932, scopeLine: 806, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1127)
!1127 = !{!1128}
!1128 = !DILocalVariable(name: "n", arg: 1, scope: !1126, file: !3, line: 805, type: !361)
!1129 = !DILocation(line: 0, scope: !1126)
!1130 = !DILocation(line: 807, column: 14, scope: !1126)
!1131 = !DILocation(line: 809, column: 14, scope: !1126)
!1132 = !DILocation(line: 807, column: 4, scope: !1126)
!1133 = !DILocation(line: 810, column: 4, scope: !1126)
!1134 = distinct !DISubprogram(name: "compress", scope: !3, file: !3, line: 1141, type: !690, scopeLine: 1142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1135)
!1135 = !{!1136, !1137, !1138, !1139, !1140, !1141, !1142}
!1136 = !DILocalVariable(name: "name", arg: 1, scope: !1134, file: !3, line: 1141, type: !8)
!1137 = !DILocalVariable(name: "inStr", scope: !1134, file: !3, line: 1143, type: !82)
!1138 = !DILocalVariable(name: "outStr", scope: !1134, file: !3, line: 1144, type: !82)
!1139 = !DILocalVariable(name: "n", scope: !1134, file: !3, line: 1145, type: !12)
!1140 = !DILocalVariable(name: "i", scope: !1134, file: !3, line: 1145, type: !12)
!1141 = !DILocalVariable(name: "statBuf", scope: !1134, file: !3, line: 1146, type: !302)
!1142 = !DILocalVariable(name: "retVal", scope: !1143, file: !3, line: 1311, type: !361)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 1310, column: 30)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 1310, column: 12)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 1307, column: 29)
!1146 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 1307, column: 9)
!1147 = !DILocation(line: 0, scope: !1134)
!1148 = !DILocation(line: 1146, column: 4, scope: !1134)
!1149 = !DILocation(line: 1146, column: 19, scope: !1134)
!1150 = !DILocation(line: 1148, column: 28, scope: !1134)
!1151 = !DILocation(line: 1150, column: 13, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 1150, column: 8)
!1153 = !DILocation(line: 1150, column: 21, scope: !1152)
!1154 = !DILocation(line: 1151, column: 7, scope: !1152)
!1155 = !DILocation(line: 1153, column: 4, scope: !1134)
!1156 = !DILocation(line: 0, scope: !400, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 1155, column: 10, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 1153, column: 21)
!1159 = !DILocation(line: 941, column: 3, scope: !400, inlinedAt: !1157)
!1160 = !DILocation(line: 942, column: 23, scope: !400, inlinedAt: !1157)
!1161 = !DILocation(line: 0, scope: !400, inlinedAt: !1162)
!1162 = distinct !DILocation(line: 1156, column: 10, scope: !1158)
!1163 = !DILocation(line: 941, column: 3, scope: !400, inlinedAt: !1162)
!1164 = !DILocation(line: 942, column: 23, scope: !400, inlinedAt: !1162)
!1165 = !DILocation(line: 1176, column: 27, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 1176, column: 9)
!1167 = !DILocation(line: 0, scope: !400, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 1159, column: 10, scope: !1158)
!1169 = !DILocation(line: 929, column: 9, scope: !417, inlinedAt: !1168)
!1170 = !DILocation(line: 929, column: 22, scope: !417, inlinedAt: !1168)
!1171 = !DILocation(line: 929, column: 9, scope: !400, inlinedAt: !1168)
!1172 = !DILocation(line: 931, column: 10, scope: !421, inlinedAt: !1168)
!1173 = !DILocation(line: 930, column: 7, scope: !421, inlinedAt: !1168)
!1174 = !DILocation(line: 0, scope: !430, inlinedAt: !1175)
!1175 = distinct !DILocation(line: 937, column: 7, scope: !421, inlinedAt: !1168)
!1176 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !1175)
!1177 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !1175)
!1178 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !1175)
!1179 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !1175)
!1180 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !1175)
!1181 = !DILocation(line: 938, column: 12, scope: !421, inlinedAt: !1168)
!1182 = !DILocation(line: 938, column: 7, scope: !421, inlinedAt: !1168)
!1183 = !DILocation(line: 941, column: 3, scope: !400, inlinedAt: !1168)
!1184 = !DILocation(line: 942, column: 23, scope: !400, inlinedAt: !1168)
!1185 = !DILocation(line: 0, scope: !400, inlinedAt: !1186)
!1186 = distinct !DILocation(line: 1160, column: 10, scope: !1158)
!1187 = !DILocation(line: 929, column: 9, scope: !417, inlinedAt: !1186)
!1188 = !DILocation(line: 929, column: 22, scope: !417, inlinedAt: !1186)
!1189 = !DILocation(line: 929, column: 9, scope: !400, inlinedAt: !1186)
!1190 = !DILocation(line: 931, column: 10, scope: !421, inlinedAt: !1186)
!1191 = !DILocation(line: 930, column: 7, scope: !421, inlinedAt: !1186)
!1192 = !DILocation(line: 0, scope: !430, inlinedAt: !1193)
!1193 = distinct !DILocation(line: 937, column: 7, scope: !421, inlinedAt: !1186)
!1194 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !1193)
!1195 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !1193)
!1196 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !1193)
!1197 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !1193)
!1198 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !1193)
!1199 = !DILocation(line: 938, column: 12, scope: !421, inlinedAt: !1186)
!1200 = !DILocation(line: 938, column: 7, scope: !421, inlinedAt: !1186)
!1201 = !DILocation(line: 941, column: 3, scope: !400, inlinedAt: !1186)
!1202 = !DILocation(line: 942, column: 23, scope: !400, inlinedAt: !1186)
!1203 = !DILocation(line: 1161, column: 10, scope: !1158)
!1204 = !DILocation(line: 1162, column: 10, scope: !1158)
!1205 = !DILocation(line: 0, scope: !400, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 1164, column: 10, scope: !1158)
!1207 = !DILocation(line: 929, column: 9, scope: !417, inlinedAt: !1206)
!1208 = !DILocation(line: 929, column: 22, scope: !417, inlinedAt: !1206)
!1209 = !DILocation(line: 929, column: 9, scope: !400, inlinedAt: !1206)
!1210 = !DILocation(line: 931, column: 10, scope: !421, inlinedAt: !1206)
!1211 = !DILocation(line: 930, column: 7, scope: !421, inlinedAt: !1206)
!1212 = !DILocation(line: 0, scope: !430, inlinedAt: !1213)
!1213 = distinct !DILocation(line: 937, column: 7, scope: !421, inlinedAt: !1206)
!1214 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !1213)
!1215 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !1213)
!1216 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !1213)
!1217 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !1213)
!1218 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !1213)
!1219 = !DILocation(line: 938, column: 12, scope: !421, inlinedAt: !1206)
!1220 = !DILocation(line: 938, column: 7, scope: !421, inlinedAt: !1206)
!1221 = !DILocation(line: 941, column: 3, scope: !400, inlinedAt: !1206)
!1222 = !DILocation(line: 942, column: 23, scope: !400, inlinedAt: !1206)
!1223 = !DILocation(line: 0, scope: !400, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 1165, column: 10, scope: !1158)
!1225 = !DILocation(line: 941, column: 3, scope: !400, inlinedAt: !1224)
!1226 = !DILocation(line: 942, column: 23, scope: !400, inlinedAt: !1224)
!1227 = !DILocation(line: 1166, column: 10, scope: !1158)
!1228 = !DILocalVariable(name: "name", arg: 1, scope: !1229, file: !3, line: 948, type: !8)
!1229 = distinct !DISubprogram(name: "fileExists", scope: !3, file: !3, line: 948, type: !1230, scopeLine: 949, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1232)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!6, !8}
!1232 = !{!1228, !1233, !1234}
!1233 = !DILocalVariable(name: "tmp", scope: !1229, file: !3, line: 950, type: !82)
!1234 = !DILocalVariable(name: "exists", scope: !1229, file: !3, line: 951, type: !6)
!1235 = !DILocation(line: 0, scope: !1229, inlinedAt: !1236)
!1236 = distinct !DILocation(line: 1176, column: 31, scope: !1166)
!1237 = !DILocation(line: 950, column: 18, scope: !1229, inlinedAt: !1236)
!1238 = !DILocation(line: 951, column: 23, scope: !1229, inlinedAt: !1236)
!1239 = !DILocation(line: 952, column: 8, scope: !1229, inlinedAt: !1236)
!1240 = !DILocation(line: 952, column: 21, scope: !1241, inlinedAt: !1236)
!1241 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 952, column: 8)
!1242 = !DILocation(line: 1177, column: 17, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 1176, column: 55)
!1244 = !DILocation(line: 1178, column: 17, scope: !1243)
!1245 = !DILocation(line: 1178, column: 44, scope: !1243)
!1246 = !DILocation(line: 1178, column: 35, scope: !1243)
!1247 = !DILocation(line: 1177, column: 7, scope: !1243)
!1248 = !DILocation(line: 0, scope: !430, inlinedAt: !1249)
!1249 = distinct !DILocation(line: 1179, column: 7, scope: !1243)
!1250 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !1249)
!1251 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !1249)
!1252 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !1249)
!1253 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !1249)
!1254 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !1249)
!1255 = !DILocation(line: 1183, column: 29, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 1183, column: 11)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 1182, column: 44)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 1182, column: 4)
!1259 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 1182, column: 4)
!1260 = !DILocalVariable(name: "s", arg: 1, scope: !1261, file: !3, line: 1118, type: !8)
!1261 = distinct !DISubprogram(name: "hasSuffix", scope: !3, file: !3, line: 1118, type: !1262, scopeLine: 1119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1264)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!6, !8, !33}
!1264 = !{!1260, !1265, !1266, !1267}
!1265 = !DILocalVariable(name: "suffix", arg: 2, scope: !1261, file: !3, line: 1118, type: !33)
!1266 = !DILocalVariable(name: "ns", scope: !1261, file: !3, line: 1120, type: !12)
!1267 = !DILocalVariable(name: "nx", scope: !1261, file: !3, line: 1121, type: !12)
!1268 = !DILocation(line: 0, scope: !1261, inlinedAt: !1269)
!1269 = distinct !DILocation(line: 1183, column: 11, scope: !1256)
!1270 = !DILocation(line: 1121, column: 15, scope: !1261, inlinedAt: !1269)
!1271 = !DILocation(line: 1122, column: 11, scope: !1272, inlinedAt: !1269)
!1272 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 1122, column: 8)
!1273 = !DILocation(line: 1122, column: 8, scope: !1261, inlinedAt: !1269)
!1274 = !DILocation(line: 1123, column: 22, scope: !1275, inlinedAt: !1269)
!1275 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 1123, column: 8)
!1276 = !DILocation(line: 1123, column: 8, scope: !1275, inlinedAt: !1269)
!1277 = !DILocation(line: 1123, column: 36, scope: !1275, inlinedAt: !1269)
!1278 = !DILocation(line: 1183, column: 11, scope: !1257)
!1279 = !DILocation(line: 1184, column: 14, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 1184, column: 14)
!1281 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 1183, column: 42)
!1282 = !DILocation(line: 1184, column: 14, scope: !1281)
!1283 = !DILocation(line: 1185, column: 20, scope: !1280)
!1284 = !DILocation(line: 1187, column: 20, scope: !1280)
!1285 = !DILocation(line: 1185, column: 10, scope: !1280)
!1286 = !DILocation(line: 0, scope: !430, inlinedAt: !1287)
!1287 = distinct !DILocation(line: 1188, column: 10, scope: !1281)
!1288 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !1287)
!1289 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !1287)
!1290 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !1287)
!1291 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !1287)
!1292 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !1287)
!1293 = !DILocation(line: 1193, column: 7, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 1192, column: 50)
!1295 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 1192, column: 9)
!1296 = !DILocation(line: 1194, column: 12, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 1194, column: 12)
!1298 = !{!1299, !388, i64 4}
!1299 = !{!"stat", !1300, i64 0, !1300, i64 2, !388, i64 4, !1300, i64 8, !1300, i64 10, !1300, i64 12, !1300, i64 14, !426, i64 16, !1301, i64 24, !1301, i64 40, !1301, i64 56, !426, i64 72, !426, i64 76, !379, i64 80}
!1300 = !{!"short", !379, i64 0}
!1301 = !{!"timespec", !1302, i64 0, !426, i64 8}
!1302 = !{!"long long", !379, i64 0}
!1303 = !DILocation(line: 1194, column: 12, scope: !1294)
!1304 = !DILocation(line: 1202, column: 9, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 1202, column: 9)
!1306 = !DILocation(line: 1195, column: 19, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 1194, column: 42)
!1308 = !DILocation(line: 1197, column: 19, scope: !1307)
!1309 = !DILocation(line: 1195, column: 10, scope: !1307)
!1310 = !DILocation(line: 0, scope: !430, inlinedAt: !1311)
!1311 = distinct !DILocation(line: 1198, column: 10, scope: !1307)
!1312 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !1311)
!1313 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !1311)
!1314 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !1311)
!1315 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !1311)
!1316 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !1311)
!1317 = !DILocation(line: 1202, column: 17, scope: !1305)
!1318 = !DILocation(line: 1202, column: 27, scope: !1305)
!1319 = !DILocalVariable(name: "name", arg: 1, scope: !1320, file: !3, line: 989, type: !8)
!1320 = distinct !DISubprogram(name: "notAStandardFile", scope: !3, file: !3, line: 989, type: !1230, scopeLine: 990, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1321)
!1321 = !{!1319, !1322, !1323}
!1322 = !DILocalVariable(name: "i", scope: !1320, file: !3, line: 991, type: !361)
!1323 = !DILocalVariable(name: "statBuf", scope: !1320, file: !3, line: 992, type: !302)
!1324 = !DILocation(line: 0, scope: !1320, inlinedAt: !1325)
!1325 = distinct !DILocation(line: 1202, column: 49, scope: !1305)
!1326 = !DILocation(line: 992, column: 4, scope: !1320, inlinedAt: !1325)
!1327 = !DILocation(line: 992, column: 19, scope: !1320, inlinedAt: !1325)
!1328 = !DILocation(line: 994, column: 8, scope: !1320, inlinedAt: !1325)
!1329 = !DILocation(line: 995, column: 10, scope: !1330, inlinedAt: !1325)
!1330 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 995, column: 8)
!1331 = !DILocation(line: 995, column: 8, scope: !1320, inlinedAt: !1325)
!1332 = !DILocation(line: 998, column: 1, scope: !1320, inlinedAt: !1325)
!1333 = !DILocation(line: 1202, column: 49, scope: !1305)
!1334 = !DILocation(line: 1202, column: 9, scope: !1134)
!1335 = !DILocation(line: 1203, column: 11, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 1203, column: 11)
!1337 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 1202, column: 78)
!1338 = !DILocation(line: 1203, column: 11, scope: !1337)
!1339 = !DILocation(line: 1204, column: 17, scope: !1336)
!1340 = !DILocation(line: 1205, column: 17, scope: !1336)
!1341 = !DILocation(line: 1204, column: 7, scope: !1336)
!1342 = !DILocation(line: 0, scope: !430, inlinedAt: !1343)
!1343 = distinct !DILocation(line: 1206, column: 7, scope: !1337)
!1344 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !1343)
!1345 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !1343)
!1346 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !1343)
!1347 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !1343)
!1348 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !1343)
!1349 = !DILocation(line: 1209, column: 9, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 1209, column: 9)
!1351 = !DILocation(line: 1209, column: 17, scope: !1350)
!1352 = !DILocation(line: 1209, column: 27, scope: !1350)
!1353 = !DILocation(line: 0, scope: !1229, inlinedAt: !1354)
!1354 = distinct !DILocation(line: 1209, column: 30, scope: !1350)
!1355 = !DILocation(line: 950, column: 18, scope: !1229, inlinedAt: !1354)
!1356 = !DILocation(line: 951, column: 23, scope: !1229, inlinedAt: !1354)
!1357 = !DILocation(line: 952, column: 8, scope: !1229, inlinedAt: !1354)
!1358 = !DILocation(line: 952, column: 21, scope: !1241, inlinedAt: !1354)
!1359 = !DILocation(line: 1210, column: 11, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 1210, column: 11)
!1361 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 1209, column: 55)
!1362 = !DILocation(line: 1210, column: 11, scope: !1361)
!1363 = !DILocation(line: 1211, column: 3, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 1210, column: 27)
!1365 = !DILocation(line: 1218, column: 4, scope: !1361)
!1366 = !DILocation(line: 1213, column: 13, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 1212, column: 14)
!1368 = !DILocation(line: 1214, column: 6, scope: !1367)
!1369 = !DILocation(line: 1213, column: 3, scope: !1367)
!1370 = !DILocation(line: 0, scope: !430, inlinedAt: !1371)
!1371 = distinct !DILocation(line: 1215, column: 3, scope: !1367)
!1372 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !1371)
!1373 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !1371)
!1374 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !1371)
!1375 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !1371)
!1376 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !1371)
!1377 = !DILocation(line: 1219, column: 9, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 1219, column: 9)
!1379 = !DILocation(line: 1219, column: 17, scope: !1378)
!1380 = !DILocation(line: 1219, column: 27, scope: !1378)
!1381 = !DILocalVariable(name: "name", arg: 1, scope: !1382, file: !3, line: 1006, type: !8)
!1382 = distinct !DISubprogram(name: "countHardLinks", scope: !3, file: !3, line: 1006, type: !1383, scopeLine: 1007, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1385)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!12, !8}
!1385 = !{!1381, !1386, !1387}
!1386 = !DILocalVariable(name: "i", scope: !1382, file: !3, line: 1008, type: !361)
!1387 = !DILocalVariable(name: "statBuf", scope: !1382, file: !3, line: 1009, type: !302)
!1388 = !DILocation(line: 0, scope: !1382, inlinedAt: !1389)
!1389 = distinct !DILocation(line: 1220, column: 12, scope: !1378)
!1390 = !DILocation(line: 1009, column: 4, scope: !1382, inlinedAt: !1389)
!1391 = !DILocation(line: 1009, column: 19, scope: !1382, inlinedAt: !1389)
!1392 = !DILocation(line: 1011, column: 8, scope: !1382, inlinedAt: !1389)
!1393 = !DILocation(line: 1012, column: 10, scope: !1394, inlinedAt: !1389)
!1394 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 1012, column: 8)
!1395 = !DILocation(line: 1012, column: 8, scope: !1382, inlinedAt: !1389)
!1396 = !DILocation(line: 1014, column: 1, scope: !1382, inlinedAt: !1389)
!1397 = !DILocation(line: 1220, column: 39, scope: !1378)
!1398 = !DILocation(line: 1219, column: 9, scope: !1134)
!1399 = !DILocation(line: 1221, column: 17, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 1220, column: 44)
!1401 = !DILocation(line: 1222, column: 17, scope: !1400)
!1402 = !DILocation(line: 1222, column: 40, scope: !1400)
!1403 = !DILocation(line: 1222, column: 38, scope: !1400)
!1404 = !DILocation(line: 1221, column: 7, scope: !1400)
!1405 = !DILocation(line: 0, scope: !430, inlinedAt: !1406)
!1406 = distinct !DILocation(line: 1223, column: 7, scope: !1400)
!1407 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !1406)
!1408 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !1406)
!1409 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !1406)
!1410 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !1406)
!1411 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !1406)
!1412 = !DILocation(line: 1227, column: 9, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 1227, column: 9)
!1414 = !DILocation(line: 1227, column: 17, scope: !1413)
!1415 = !DILocation(line: 1227, column: 9, scope: !1134)
!1416 = !DILocalVariable(name: "srcName", arg: 1, scope: !1417, file: !3, line: 1046, type: !8)
!1417 = distinct !DISubprogram(name: "saveInputFileMetaInfo", scope: !3, file: !3, line: 1046, type: !690, scopeLine: 1047, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1418)
!1418 = !{!1416, !1419}
!1419 = !DILocalVariable(name: "retVal", scope: !1417, file: !3, line: 1049, type: !361)
!1420 = !DILocation(line: 0, scope: !1417, inlinedAt: !1421)
!1421 = distinct !DILocation(line: 1230, column: 7, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 1227, column: 29)
!1423 = !DILocation(line: 1051, column: 13, scope: !1417, inlinedAt: !1421)
!1424 = !DILocation(line: 1052, column: 4, scope: !1425, inlinedAt: !1421)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 1052, column: 4)
!1426 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 1052, column: 4)
!1427 = !DILocation(line: 1052, column: 4, scope: !1426, inlinedAt: !1421)
!1428 = !DILocation(line: 1233, column: 13, scope: !1134)
!1429 = !DILocation(line: 1233, column: 4, scope: !1134)
!1430 = !DILocation(line: 1236, column: 18, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 1233, column: 23)
!1432 = !{!423, !378, i64 4}
!1433 = !DILocation(line: 1237, column: 19, scope: !1431)
!1434 = !{!423, !378, i64 8}
!1435 = !DILocation(line: 1238, column: 24, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 1238, column: 15)
!1437 = !DILocation(line: 1238, column: 15, scope: !1436)
!1438 = !DILocation(line: 1238, column: 15, scope: !1431)
!1439 = !DILocation(line: 1239, column: 23, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 1238, column: 46)
!1441 = !DILocation(line: 1241, column: 23, scope: !1440)
!1442 = !DILocation(line: 1239, column: 13, scope: !1440)
!1443 = !DILocation(line: 1242, column: 23, scope: !1440)
!1444 = !DILocation(line: 1243, column: 31, scope: !1440)
!1445 = !DILocation(line: 1242, column: 13, scope: !1440)
!1446 = !DILocation(line: 0, scope: !430, inlinedAt: !1447)
!1447 = distinct !DILocation(line: 1244, column: 13, scope: !1440)
!1448 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !1447)
!1449 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !1447)
!1450 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !1447)
!1451 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !1447)
!1452 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !1447)
!1453 = !DILocation(line: 1250, column: 18, scope: !1431)
!1454 = !DILocation(line: 1251, column: 19, scope: !1431)
!1455 = !DILocation(line: 1252, column: 24, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 1252, column: 15)
!1457 = !DILocation(line: 1252, column: 15, scope: !1456)
!1458 = !DILocation(line: 1252, column: 15, scope: !1431)
!1459 = !DILocation(line: 1253, column: 23, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 1252, column: 46)
!1461 = !DILocation(line: 1255, column: 23, scope: !1460)
!1462 = !DILocation(line: 1253, column: 13, scope: !1460)
!1463 = !DILocation(line: 1256, column: 23, scope: !1460)
!1464 = !DILocation(line: 1257, column: 31, scope: !1460)
!1465 = !DILocation(line: 1256, column: 13, scope: !1460)
!1466 = !DILocation(line: 1258, column: 24, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 1258, column: 18)
!1468 = !DILocation(line: 1258, column: 18, scope: !1460)
!1469 = !DILocation(line: 1258, column: 34, scope: !1467)
!1470 = !DILocation(line: 0, scope: !430, inlinedAt: !1471)
!1471 = distinct !DILocation(line: 1259, column: 13, scope: !1460)
!1472 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !1471)
!1473 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !1471)
!1474 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !1471)
!1475 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !1471)
!1476 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !1471)
!1477 = !DILocation(line: 1262, column: 21, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 1262, column: 15)
!1479 = !DILocation(line: 1262, column: 15, scope: !1431)
!1480 = !DILocation(line: 1263, column: 23, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 1262, column: 31)
!1482 = !DILocation(line: 1264, column: 23, scope: !1481)
!1483 = !DILocation(line: 1264, column: 50, scope: !1481)
!1484 = !DILocation(line: 1264, column: 41, scope: !1481)
!1485 = !DILocation(line: 1263, column: 13, scope: !1481)
!1486 = !DILocation(line: 0, scope: !430, inlinedAt: !1487)
!1487 = distinct !DILocation(line: 1265, column: 13, scope: !1481)
!1488 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !1487)
!1489 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !1487)
!1490 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !1487)
!1491 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !1487)
!1492 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !1487)
!1493 = !DILocation(line: 1271, column: 18, scope: !1431)
!1494 = !DILocalVariable(name: "name", arg: 1, scope: !1495, file: !3, line: 968, type: !8)
!1495 = distinct !DISubprogram(name: "fopen_output_safely", scope: !3, file: !3, line: 968, type: !1496, scopeLine: 969, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1498)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!82, !8, !268}
!1498 = !{!1494, !1499, !1500, !1501}
!1499 = !DILocalVariable(name: "mode", arg: 2, scope: !1495, file: !3, line: 968, type: !268)
!1500 = !DILocalVariable(name: "fp", scope: !1495, file: !3, line: 971, type: !82)
!1501 = !DILocalVariable(name: "fh", scope: !1495, file: !3, line: 972, type: !361)
!1502 = !DILocation(line: 0, scope: !1495, inlinedAt: !1503)
!1503 = distinct !DILocation(line: 1272, column: 19, scope: !1431)
!1504 = !DILocation(line: 973, column: 9, scope: !1495, inlinedAt: !1503)
!1505 = !DILocation(line: 974, column: 11, scope: !1506, inlinedAt: !1503)
!1506 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 974, column: 8)
!1507 = !DILocation(line: 974, column: 8, scope: !1495, inlinedAt: !1503)
!1508 = !DILocation(line: 975, column: 9, scope: !1495, inlinedAt: !1503)
!1509 = !DILocation(line: 976, column: 11, scope: !1510, inlinedAt: !1503)
!1510 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 976, column: 8)
!1511 = !DILocation(line: 976, column: 8, scope: !1495, inlinedAt: !1503)
!1512 = !DILocation(line: 976, column: 20, scope: !1510, inlinedAt: !1503)
!1513 = !DILocation(line: 1274, column: 23, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 1273, column: 31)
!1515 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 1273, column: 15)
!1516 = !DILocation(line: 1275, column: 23, scope: !1514)
!1517 = !DILocation(line: 1275, column: 51, scope: !1514)
!1518 = !DILocation(line: 1275, column: 42, scope: !1514)
!1519 = !DILocation(line: 1274, column: 13, scope: !1514)
!1520 = !DILocation(line: 1276, column: 24, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 1276, column: 18)
!1522 = !DILocation(line: 1276, column: 18, scope: !1514)
!1523 = !DILocation(line: 1276, column: 34, scope: !1521)
!1524 = !DILocation(line: 0, scope: !430, inlinedAt: !1525)
!1525 = distinct !DILocation(line: 1277, column: 13, scope: !1514)
!1526 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !1525)
!1527 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !1525)
!1528 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !1525)
!1529 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !1525)
!1530 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !1525)
!1531 = !DILocation(line: 1280, column: 21, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 1280, column: 15)
!1533 = !DILocation(line: 1280, column: 15, scope: !1431)
!1534 = !DILocation(line: 1281, column: 23, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 1280, column: 31)
!1536 = !DILocation(line: 1282, column: 23, scope: !1535)
!1537 = !DILocation(line: 1282, column: 50, scope: !1535)
!1538 = !DILocation(line: 1282, column: 41, scope: !1535)
!1539 = !DILocation(line: 1281, column: 13, scope: !1535)
!1540 = !DILocation(line: 1283, column: 35, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 1283, column: 18)
!1542 = !DILocation(line: 0, scope: !430, inlinedAt: !1543)
!1543 = distinct !DILocation(line: 1284, column: 13, scope: !1535)
!1544 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !1543)
!1545 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !1543)
!1546 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !1543)
!1547 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !1543)
!1548 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !1543)
!1549 = !DILocation(line: 1290, column: 10, scope: !1431)
!1550 = !DILocation(line: 0, scope: !1431)
!1551 = !DILocation(line: 1294, column: 8, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 1294, column: 8)
!1553 = !DILocation(line: 1294, column: 18, scope: !1552)
!1554 = !DILocation(line: 1294, column: 8, scope: !1134)
!1555 = !DILocation(line: 1295, column: 17, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 1294, column: 24)
!1557 = !DILocation(line: 1295, column: 7, scope: !1556)
!1558 = !DILocalVariable(name: "s", arg: 1, scope: !1559, file: !3, line: 916, type: !8)
!1559 = distinct !DISubprogram(name: "pad", scope: !3, file: !3, line: 916, type: !690, scopeLine: 917, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1560)
!1560 = !{!1558, !1561}
!1561 = !DILocalVariable(name: "i", scope: !1559, file: !3, line: 918, type: !12)
!1562 = !DILocation(line: 0, scope: !1559, inlinedAt: !1563)
!1563 = distinct !DILocation(line: 1296, column: 7, scope: !1556)
!1564 = !DILocation(line: 919, column: 16, scope: !1565, inlinedAt: !1563)
!1565 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 919, column: 9)
!1566 = !DILocation(line: 919, column: 29, scope: !1565, inlinedAt: !1563)
!1567 = !DILocation(line: 919, column: 26, scope: !1565, inlinedAt: !1563)
!1568 = !DILocation(line: 919, column: 9, scope: !1559, inlinedAt: !1563)
!1569 = !DILocation(line: 921, column: 17, scope: !1570, inlinedAt: !1563)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 920, column: 4)
!1571 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 920, column: 4)
!1572 = !DILocation(line: 921, column: 7, scope: !1570, inlinedAt: !1563)
!1573 = !DILocation(line: 920, column: 58, scope: !1570, inlinedAt: !1563)
!1574 = !DILocation(line: 920, column: 21, scope: !1570, inlinedAt: !1563)
!1575 = !DILocation(line: 920, column: 46, scope: !1570, inlinedAt: !1563)
!1576 = !DILocation(line: 920, column: 37, scope: !1570, inlinedAt: !1563)
!1577 = !DILocation(line: 920, column: 18, scope: !1570, inlinedAt: !1563)
!1578 = !DILocation(line: 920, column: 4, scope: !1571, inlinedAt: !1563)
!1579 = distinct !{!1579, !1578, !1580, !461}
!1580 = !DILocation(line: 921, column: 29, scope: !1571, inlinedAt: !1563)
!1581 = !DILocation(line: 1297, column: 16, scope: !1556)
!1582 = !DILocation(line: 1297, column: 7, scope: !1556)
!1583 = !DILocation(line: 1298, column: 4, scope: !1556)
!1584 = !DILocation(line: 1301, column: 27, scope: !1134)
!1585 = !DILocation(line: 1302, column: 28, scope: !1134)
!1586 = !DILocalVariable(name: "stream", arg: 1, scope: !1587, file: !3, line: 329, type: !82)
!1587 = distinct !DISubprogram(name: "compressStream", scope: !3, file: !3, line: 329, type: !1588, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1590)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{null, !82, !82}
!1590 = !{!1586, !1591, !1592, !1596, !1600, !1601, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1612, !1618, !1619, !1625, !1626, !1627, !1628, !1629}
!1591 = !DILocalVariable(name: "zStream", arg: 2, scope: !1587, file: !3, line: 329, type: !82)
!1592 = !DILocalVariable(name: "bzf", scope: !1587, file: !3, line: 331, type: !1593)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 32)
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "BZFILE", file: !1595, line: 137, baseType: null)
!1595 = !DIFile(filename: "./bzlib.h", directory: "/home/wenhongbo/code/opt-searcher/llvm_runner/data/bzip2")
!1596 = !DILocalVariable(name: "ibuf", scope: !1587, file: !3, line: 332, type: !1597)
!1597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 40000, elements: !1598)
!1598 = !{!1599}
!1599 = !DISubrange(count: 5000)
!1600 = !DILocalVariable(name: "nIbuf", scope: !1587, file: !3, line: 333, type: !12)
!1601 = !DILocalVariable(name: "nbytes_in_lo32", scope: !1587, file: !3, line: 334, type: !1602)
!1602 = !DIDerivedType(tag: DW_TAG_typedef, name: "UInt32", file: !3, line: 165, baseType: !25)
!1603 = !DILocalVariable(name: "nbytes_in_hi32", scope: !1587, file: !3, line: 334, type: !1602)
!1604 = !DILocalVariable(name: "nbytes_out_lo32", scope: !1587, file: !3, line: 335, type: !1602)
!1605 = !DILocalVariable(name: "nbytes_out_hi32", scope: !1587, file: !3, line: 335, type: !1602)
!1606 = !DILocalVariable(name: "bzerr", scope: !1587, file: !3, line: 336, type: !12)
!1607 = !DILocalVariable(name: "bzerr_dummy", scope: !1587, file: !3, line: 336, type: !12)
!1608 = !DILocalVariable(name: "ret", scope: !1587, file: !3, line: 336, type: !12)
!1609 = !DILocalVariable(name: "fd", scope: !1610, file: !3, line: 369, type: !12)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 368, column: 27)
!1611 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 368, column: 8)
!1612 = !DILocalVariable(name: "buf_nin", scope: !1613, file: !3, line: 385, type: !1617)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 384, column: 14)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 382, column: 11)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 381, column: 24)
!1616 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 381, column: 8)
!1617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 256, elements: !239)
!1618 = !DILocalVariable(name: "buf_nout", scope: !1613, file: !3, line: 385, type: !1617)
!1619 = !DILocalVariable(name: "nbytes_in", scope: !1613, file: !3, line: 386, type: !1620)
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "UInt64", file: !3, line: 234, baseType: !1621)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 233, size: 64, elements: !1622)
!1622 = !{!1623}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1621, file: !3, line: 233, baseType: !1624, size: 64)
!1624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 64, elements: !206)
!1625 = !DILocalVariable(name: "nbytes_out", scope: !1613, file: !3, line: 386, type: !1620)
!1626 = !DILocalVariable(name: "nbytes_in_d", scope: !1613, file: !3, line: 387, type: !27)
!1627 = !DILocalVariable(name: "nbytes_out_d", scope: !1613, file: !3, line: 387, type: !27)
!1628 = !DILabel(scope: !1587, name: "errhandler", file: !3, line: 409)
!1629 = !DILabel(scope: !1630, name: "errhandler_io", file: !3, line: 419)
!1630 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 413, column: 19)
!1631 = !DILocation(line: 0, scope: !1587, inlinedAt: !1632)
!1632 = distinct !DILocation(line: 1303, column: 4, scope: !1134)
!1633 = !DILocation(line: 332, column: 4, scope: !1587, inlinedAt: !1632)
!1634 = !DILocation(line: 332, column: 12, scope: !1587, inlinedAt: !1632)
!1635 = !DILocation(line: 334, column: 4, scope: !1587, inlinedAt: !1632)
!1636 = !DILocation(line: 335, column: 4, scope: !1587, inlinedAt: !1632)
!1637 = !DILocation(line: 336, column: 4, scope: !1587, inlinedAt: !1632)
!1638 = !DILocation(line: 341, column: 8, scope: !1639, inlinedAt: !1632)
!1639 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 341, column: 8)
!1640 = !{!1641, !1300, i64 12}
!1641 = !{!"__sFILE", !378, i64 0, !388, i64 4, !388, i64 8, !1300, i64 12, !1300, i64 14, !1642, i64 16, !388, i64 24, !378, i64 28, !378, i64 32, !378, i64 36, !378, i64 40, !378, i64 44, !1642, i64 48, !378, i64 56, !388, i64 60, !379, i64 64, !379, i64 67, !1642, i64 68, !388, i64 76, !426, i64 80, !378, i64 84, !388, i64 88, !1643, i64 92, !388, i64 100}
!1642 = !{!"__sbuf", !378, i64 0, !388, i64 4}
!1643 = !{!"", !388, i64 0, !379, i64 4}
!1644 = !DILocation(line: 341, column: 8, scope: !1587, inlinedAt: !1632)
!1645 = !DILocation(line: 342, column: 8, scope: !1646, inlinedAt: !1632)
!1646 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 342, column: 8)
!1647 = !DILocation(line: 342, column: 8, scope: !1587, inlinedAt: !1632)
!1648 = !DILocation(line: 345, column: 28, scope: !1587, inlinedAt: !1632)
!1649 = !DILocation(line: 345, column: 43, scope: !1587, inlinedAt: !1632)
!1650 = !DILocation(line: 345, column: 54, scope: !1587, inlinedAt: !1632)
!1651 = !DILocation(line: 344, column: 10, scope: !1587, inlinedAt: !1632)
!1652 = !DILocation(line: 346, column: 8, scope: !1653, inlinedAt: !1632)
!1653 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 346, column: 8)
!1654 = !DILocation(line: 346, column: 14, scope: !1653, inlinedAt: !1632)
!1655 = !DILocation(line: 346, column: 8, scope: !1587, inlinedAt: !1632)
!1656 = !DILocation(line: 348, column: 8, scope: !1657, inlinedAt: !1632)
!1657 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 348, column: 8)
!1658 = !DILocation(line: 348, column: 18, scope: !1657, inlinedAt: !1632)
!1659 = !DILocation(line: 348, column: 8, scope: !1587, inlinedAt: !1632)
!1660 = !DILocation(line: 348, column: 34, scope: !1657, inlinedAt: !1632)
!1661 = !DILocation(line: 348, column: 24, scope: !1657, inlinedAt: !1632)
!1662 = !DILocation(line: 350, column: 4, scope: !1587, inlinedAt: !1632)
!1663 = !DILocalVariable(name: "f", arg: 1, scope: !1664, file: !3, line: 318, type: !82)
!1664 = distinct !DISubprogram(name: "myfeof", scope: !3, file: !3, line: 318, type: !1665, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1667)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!6, !82}
!1667 = !{!1663, !1668}
!1668 = !DILocalVariable(name: "c", scope: !1664, file: !3, line: 320, type: !12)
!1669 = !DILocation(line: 0, scope: !1664, inlinedAt: !1670)
!1670 = distinct !DILocation(line: 352, column: 11, scope: !1671, inlinedAt: !1632)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 352, column: 11)
!1672 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 350, column: 17)
!1673 = !DILocation(line: 320, column: 14, scope: !1664, inlinedAt: !1670)
!1674 = !DILocation(line: 321, column: 10, scope: !1675, inlinedAt: !1670)
!1675 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 321, column: 8)
!1676 = !DILocation(line: 321, column: 8, scope: !1664, inlinedAt: !1670)
!1677 = !DILocation(line: 322, column: 4, scope: !1664, inlinedAt: !1670)
!1678 = !DILocation(line: 353, column: 15, scope: !1672, inlinedAt: !1632)
!1679 = !DILocation(line: 354, column: 11, scope: !1680, inlinedAt: !1632)
!1680 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 354, column: 11)
!1681 = !DILocation(line: 354, column: 11, scope: !1672, inlinedAt: !1632)
!1682 = !DILocation(line: 355, column: 17, scope: !1683, inlinedAt: !1632)
!1683 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 355, column: 11)
!1684 = !DILocation(line: 355, column: 11, scope: !1672, inlinedAt: !1632)
!1685 = !DILocation(line: 355, column: 22, scope: !1683, inlinedAt: !1632)
!1686 = !DILocation(line: 356, column: 11, scope: !1687, inlinedAt: !1632)
!1687 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 356, column: 11)
!1688 = !DILocation(line: 356, column: 17, scope: !1687, inlinedAt: !1632)
!1689 = !DILocation(line: 356, column: 11, scope: !1672, inlinedAt: !1632)
!1690 = distinct !{!1690, !1662, !1691}
!1691 = !DILocation(line: 358, column: 4, scope: !1587, inlinedAt: !1632)
!1692 = !DILocation(line: 360, column: 4, scope: !1587, inlinedAt: !1632)
!1693 = !DILocation(line: 363, column: 8, scope: !1694, inlinedAt: !1632)
!1694 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 363, column: 8)
!1695 = !DILocation(line: 363, column: 14, scope: !1694, inlinedAt: !1632)
!1696 = !DILocation(line: 363, column: 8, scope: !1587, inlinedAt: !1632)
!1697 = !DILocation(line: 365, column: 8, scope: !1698, inlinedAt: !1632)
!1698 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 365, column: 8)
!1699 = !DILocation(line: 365, column: 8, scope: !1587, inlinedAt: !1632)
!1700 = !DILocation(line: 366, column: 10, scope: !1587, inlinedAt: !1632)
!1701 = !DILocation(line: 367, column: 12, scope: !1702, inlinedAt: !1632)
!1702 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 367, column: 8)
!1703 = !DILocation(line: 367, column: 8, scope: !1587, inlinedAt: !1632)
!1704 = !DILocation(line: 368, column: 19, scope: !1611, inlinedAt: !1632)
!1705 = !DILocation(line: 368, column: 16, scope: !1611, inlinedAt: !1632)
!1706 = !DILocation(line: 368, column: 8, scope: !1587, inlinedAt: !1632)
!1707 = !DILocation(line: 369, column: 18, scope: !1610, inlinedAt: !1632)
!1708 = !DILocation(line: 0, scope: !1610, inlinedAt: !1632)
!1709 = !DILocation(line: 370, column: 14, scope: !1710, inlinedAt: !1632)
!1710 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 370, column: 11)
!1711 = !DILocation(line: 370, column: 11, scope: !1610, inlinedAt: !1632)
!1712 = !DILocalVariable(name: "fd", arg: 1, scope: !1713, file: !3, line: 1073, type: !361)
!1713 = distinct !DISubprogram(name: "applySavedFileAttrToOutputFile", scope: !3, file: !3, line: 1073, type: !932, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1714)
!1714 = !{!1712, !1715}
!1715 = !DILocalVariable(name: "retVal", scope: !1713, file: !3, line: 1076, type: !361)
!1716 = !DILocation(line: 0, scope: !1713, inlinedAt: !1717)
!1717 = distinct !DILocation(line: 371, column: 7, scope: !1610, inlinedAt: !1632)
!1718 = !DILocation(line: 1078, column: 39, scope: !1713, inlinedAt: !1717)
!1719 = !DILocation(line: 1078, column: 13, scope: !1713, inlinedAt: !1717)
!1720 = !DILocation(line: 1079, column: 4, scope: !1721, inlinedAt: !1717)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 1079, column: 4)
!1722 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 1079, column: 4)
!1723 = !DILocation(line: 1079, column: 4, scope: !1722, inlinedAt: !1717)
!1724 = !DILocation(line: 1081, column: 37, scope: !1713, inlinedAt: !1717)
!1725 = !{!1299, !1300, i64 10}
!1726 = !DILocation(line: 1081, column: 58, scope: !1713, inlinedAt: !1717)
!1727 = !{!1299, !1300, i64 12}
!1728 = !DILocation(line: 1081, column: 11, scope: !1713, inlinedAt: !1717)
!1729 = !DILocation(line: 372, column: 13, scope: !1610, inlinedAt: !1632)
!1730 = !DILocation(line: 373, column: 30, scope: !1610, inlinedAt: !1632)
!1731 = !DILocation(line: 374, column: 15, scope: !1732, inlinedAt: !1632)
!1732 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 374, column: 11)
!1733 = !DILocation(line: 376, column: 27, scope: !1587, inlinedAt: !1632)
!1734 = !DILocation(line: 377, column: 8, scope: !1735, inlinedAt: !1632)
!1735 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 377, column: 8)
!1736 = !DILocation(line: 377, column: 8, scope: !1587, inlinedAt: !1632)
!1737 = !DILocation(line: 378, column: 10, scope: !1587, inlinedAt: !1632)
!1738 = !DILocation(line: 379, column: 12, scope: !1739, inlinedAt: !1632)
!1739 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 379, column: 8)
!1740 = !DILocation(line: 379, column: 8, scope: !1587, inlinedAt: !1632)
!1741 = !DILocation(line: 381, column: 8, scope: !1616, inlinedAt: !1632)
!1742 = !DILocation(line: 381, column: 18, scope: !1616, inlinedAt: !1632)
!1743 = !DILocation(line: 381, column: 8, scope: !1587, inlinedAt: !1632)
!1744 = !DILocation(line: 382, column: 11, scope: !1614, inlinedAt: !1632)
!1745 = !DILocation(line: 382, column: 31, scope: !1614, inlinedAt: !1632)
!1746 = !DILocation(line: 383, column: 13, scope: !1747, inlinedAt: !1632)
!1747 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 382, column: 55)
!1748 = !DILocation(line: 383, column: 3, scope: !1747, inlinedAt: !1632)
!1749 = !DILocation(line: 384, column: 7, scope: !1747, inlinedAt: !1632)
!1750 = !DILocation(line: 385, column: 3, scope: !1613, inlinedAt: !1632)
!1751 = !DILocation(line: 385, column: 10, scope: !1613, inlinedAt: !1632)
!1752 = !DILocation(line: 385, column: 23, scope: !1613, inlinedAt: !1632)
!1753 = !DILocation(line: 386, column: 3, scope: !1613, inlinedAt: !1632)
!1754 = !DILocation(line: 386, column: 10, scope: !1613, inlinedAt: !1632)
!1755 = !DILocation(line: 386, column: 23, scope: !1613, inlinedAt: !1632)
!1756 = !DILocalVariable(name: "n", arg: 1, scope: !1757, file: !3, line: 238, type: !1760)
!1757 = distinct !DISubprogram(name: "uInt64_from_UInt32s", scope: !3, file: !3, line: 238, type: !1758, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1761)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{null, !1760, !1602, !1602}
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 32)
!1761 = !{!1756, !1762, !1763}
!1762 = !DILocalVariable(name: "lo32", arg: 2, scope: !1757, file: !3, line: 238, type: !1602)
!1763 = !DILocalVariable(name: "hi32", arg: 3, scope: !1757, file: !3, line: 238, type: !1602)
!1764 = !DILocation(line: 0, scope: !1757, inlinedAt: !1765)
!1765 = distinct !DILocation(line: 388, column: 3, scope: !1613, inlinedAt: !1632)
!1766 = !DILocation(line: 240, column: 28, scope: !1757, inlinedAt: !1765)
!1767 = !DILocation(line: 240, column: 14, scope: !1757, inlinedAt: !1765)
!1768 = !DILocation(line: 240, column: 4, scope: !1757, inlinedAt: !1765)
!1769 = !DILocation(line: 240, column: 12, scope: !1757, inlinedAt: !1765)
!1770 = !DILocation(line: 241, column: 28, scope: !1757, inlinedAt: !1765)
!1771 = !DILocation(line: 241, column: 14, scope: !1757, inlinedAt: !1765)
!1772 = !DILocation(line: 241, column: 4, scope: !1757, inlinedAt: !1765)
!1773 = !DILocation(line: 241, column: 12, scope: !1757, inlinedAt: !1765)
!1774 = !DILocation(line: 242, column: 28, scope: !1757, inlinedAt: !1765)
!1775 = !DILocation(line: 242, column: 14, scope: !1757, inlinedAt: !1765)
!1776 = !DILocation(line: 242, column: 4, scope: !1757, inlinedAt: !1765)
!1777 = !DILocation(line: 242, column: 12, scope: !1757, inlinedAt: !1765)
!1778 = !DILocation(line: 243, column: 14, scope: !1757, inlinedAt: !1765)
!1779 = !DILocation(line: 243, column: 4, scope: !1757, inlinedAt: !1765)
!1780 = !DILocation(line: 243, column: 12, scope: !1757, inlinedAt: !1765)
!1781 = !DILocation(line: 244, column: 28, scope: !1757, inlinedAt: !1765)
!1782 = !DILocation(line: 244, column: 14, scope: !1757, inlinedAt: !1765)
!1783 = !DILocation(line: 244, column: 4, scope: !1757, inlinedAt: !1765)
!1784 = !DILocation(line: 244, column: 12, scope: !1757, inlinedAt: !1765)
!1785 = !DILocation(line: 245, column: 28, scope: !1757, inlinedAt: !1765)
!1786 = !DILocation(line: 245, column: 14, scope: !1757, inlinedAt: !1765)
!1787 = !DILocation(line: 245, column: 4, scope: !1757, inlinedAt: !1765)
!1788 = !DILocation(line: 245, column: 12, scope: !1757, inlinedAt: !1765)
!1789 = !DILocation(line: 246, column: 28, scope: !1757, inlinedAt: !1765)
!1790 = !DILocation(line: 246, column: 14, scope: !1757, inlinedAt: !1765)
!1791 = !DILocation(line: 246, column: 4, scope: !1757, inlinedAt: !1765)
!1792 = !DILocation(line: 246, column: 12, scope: !1757, inlinedAt: !1765)
!1793 = !DILocation(line: 247, column: 14, scope: !1757, inlinedAt: !1765)
!1794 = !DILocation(line: 247, column: 12, scope: !1757, inlinedAt: !1765)
!1795 = !DILocation(line: 391, column: 11, scope: !1613, inlinedAt: !1632)
!1796 = !DILocation(line: 391, column: 28, scope: !1613, inlinedAt: !1632)
!1797 = !DILocation(line: 0, scope: !1757, inlinedAt: !1798)
!1798 = distinct !DILocation(line: 390, column: 3, scope: !1613, inlinedAt: !1632)
!1799 = !DILocation(line: 240, column: 28, scope: !1757, inlinedAt: !1798)
!1800 = !DILocation(line: 240, column: 14, scope: !1757, inlinedAt: !1798)
!1801 = !DILocation(line: 240, column: 4, scope: !1757, inlinedAt: !1798)
!1802 = !DILocation(line: 240, column: 12, scope: !1757, inlinedAt: !1798)
!1803 = !DILocation(line: 241, column: 28, scope: !1757, inlinedAt: !1798)
!1804 = !DILocation(line: 241, column: 14, scope: !1757, inlinedAt: !1798)
!1805 = !DILocation(line: 241, column: 4, scope: !1757, inlinedAt: !1798)
!1806 = !DILocation(line: 241, column: 12, scope: !1757, inlinedAt: !1798)
!1807 = !DILocation(line: 242, column: 28, scope: !1757, inlinedAt: !1798)
!1808 = !DILocation(line: 242, column: 14, scope: !1757, inlinedAt: !1798)
!1809 = !DILocation(line: 242, column: 4, scope: !1757, inlinedAt: !1798)
!1810 = !DILocation(line: 242, column: 12, scope: !1757, inlinedAt: !1798)
!1811 = !DILocation(line: 243, column: 14, scope: !1757, inlinedAt: !1798)
!1812 = !DILocation(line: 243, column: 4, scope: !1757, inlinedAt: !1798)
!1813 = !DILocation(line: 243, column: 12, scope: !1757, inlinedAt: !1798)
!1814 = !DILocation(line: 244, column: 28, scope: !1757, inlinedAt: !1798)
!1815 = !DILocation(line: 244, column: 14, scope: !1757, inlinedAt: !1798)
!1816 = !DILocation(line: 244, column: 4, scope: !1757, inlinedAt: !1798)
!1817 = !DILocation(line: 244, column: 12, scope: !1757, inlinedAt: !1798)
!1818 = !DILocation(line: 245, column: 28, scope: !1757, inlinedAt: !1798)
!1819 = !DILocation(line: 245, column: 14, scope: !1757, inlinedAt: !1798)
!1820 = !DILocation(line: 245, column: 4, scope: !1757, inlinedAt: !1798)
!1821 = !DILocation(line: 245, column: 12, scope: !1757, inlinedAt: !1798)
!1822 = !DILocation(line: 246, column: 28, scope: !1757, inlinedAt: !1798)
!1823 = !DILocation(line: 246, column: 14, scope: !1757, inlinedAt: !1798)
!1824 = !DILocation(line: 246, column: 4, scope: !1757, inlinedAt: !1798)
!1825 = !DILocation(line: 246, column: 12, scope: !1757, inlinedAt: !1798)
!1826 = !DILocation(line: 247, column: 14, scope: !1757, inlinedAt: !1798)
!1827 = !DILocation(line: 247, column: 12, scope: !1757, inlinedAt: !1798)
!1828 = !DILocation(line: 392, column: 18, scope: !1613, inlinedAt: !1632)
!1829 = !DILocation(line: 0, scope: !1613, inlinedAt: !1632)
!1830 = !DILocation(line: 393, column: 18, scope: !1613, inlinedAt: !1632)
!1831 = !DILocation(line: 394, column: 3, scope: !1613, inlinedAt: !1632)
!1832 = !DILocation(line: 395, column: 3, scope: !1613, inlinedAt: !1632)
!1833 = !DILocation(line: 396, column: 13, scope: !1613, inlinedAt: !1632)
!1834 = !DILocation(line: 398, column: 18, scope: !1613, inlinedAt: !1632)
!1835 = !DILocation(line: 399, column: 11, scope: !1613, inlinedAt: !1632)
!1836 = !DILocation(line: 399, column: 27, scope: !1613, inlinedAt: !1632)
!1837 = !DILocation(line: 400, column: 34, scope: !1613, inlinedAt: !1632)
!1838 = !DILocation(line: 400, column: 19, scope: !1613, inlinedAt: !1632)
!1839 = !DILocation(line: 400, column: 12, scope: !1613, inlinedAt: !1632)
!1840 = !DILocation(line: 396, column: 3, scope: !1613, inlinedAt: !1632)
!1841 = !DILocation(line: 404, column: 7, scope: !1614, inlinedAt: !1632)
!1842 = !DILocation(line: 409, column: 4, scope: !1587, inlinedAt: !1632)
!1843 = !DILocation(line: 410, column: 4, scope: !1587, inlinedAt: !1632)
!1844 = !DILocation(line: 413, column: 12, scope: !1587, inlinedAt: !1632)
!1845 = !DILocation(line: 413, column: 4, scope: !1587, inlinedAt: !1632)
!1846 = !DILocation(line: 415, column: 10, scope: !1630, inlinedAt: !1632)
!1847 = !DILocation(line: 417, column: 10, scope: !1630, inlinedAt: !1632)
!1848 = !DILocation(line: 419, column: 10, scope: !1630, inlinedAt: !1632)
!1849 = !DILocation(line: 420, column: 10, scope: !1630, inlinedAt: !1632)
!1850 = !DILocation(line: 422, column: 10, scope: !1630, inlinedAt: !1632)
!1851 = !DILocation(line: 427, column: 1, scope: !1587, inlinedAt: !1632)
!1852 = !DILocation(line: 1304, column: 27, scope: !1134)
!1853 = !DILocation(line: 1307, column: 9, scope: !1146)
!1854 = !DILocation(line: 1307, column: 17, scope: !1146)
!1855 = !DILocation(line: 1307, column: 9, scope: !1134)
!1856 = !DILocalVariable(name: "dstName", arg: 1, scope: !1857, file: !3, line: 1058, type: !8)
!1857 = distinct !DISubprogram(name: "applySavedTimeInfoToOutputFile", scope: !3, file: !3, line: 1058, type: !690, scopeLine: 1059, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1858)
!1858 = !{!1856, !1859, !1860}
!1859 = !DILocalVariable(name: "retVal", scope: !1857, file: !3, line: 1061, type: !361)
!1860 = !DILocalVariable(name: "uTimBuf", scope: !1857, file: !3, line: 1062, type: !1861)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utimbuf", file: !1862, line: 12, size: 128, elements: !1863)
!1862 = !DIFile(filename: "/opt/riscv/riscv32-unknown-elf/include/sys/utime.h", directory: "")
!1863 = !{!1864, !1865}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "actime", scope: !1861, file: !1862, line: 14, baseType: !335, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "modtime", scope: !1861, file: !1862, line: 15, baseType: !335, size: 64, offset: 64)
!1866 = !DILocation(line: 0, scope: !1857, inlinedAt: !1867)
!1867 = distinct !DILocation(line: 1308, column: 7, scope: !1145)
!1868 = !DILocation(line: 1062, column: 4, scope: !1857, inlinedAt: !1867)
!1869 = !DILocation(line: 1062, column: 19, scope: !1857, inlinedAt: !1867)
!1870 = !DILocation(line: 1064, column: 34, scope: !1857, inlinedAt: !1867)
!1871 = !{!1299, !1302, i64 24}
!1872 = !DILocation(line: 1064, column: 12, scope: !1857, inlinedAt: !1867)
!1873 = !DILocation(line: 1064, column: 19, scope: !1857, inlinedAt: !1867)
!1874 = !{!1875, !1302, i64 0}
!1875 = !{!"utimbuf", !1302, i64 0, !1302, i64 8}
!1876 = !DILocation(line: 1065, column: 35, scope: !1857, inlinedAt: !1867)
!1877 = !{!1299, !1302, i64 40}
!1878 = !DILocation(line: 1065, column: 12, scope: !1857, inlinedAt: !1867)
!1879 = !DILocation(line: 1065, column: 20, scope: !1857, inlinedAt: !1867)
!1880 = !{!1875, !1302, i64 8}
!1881 = !DILocation(line: 1067, column: 13, scope: !1857, inlinedAt: !1867)
!1882 = !DILocation(line: 1068, column: 4, scope: !1883, inlinedAt: !1867)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !3, line: 1068, column: 4)
!1884 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 1068, column: 4)
!1885 = !DILocation(line: 1068, column: 4, scope: !1884, inlinedAt: !1867)
!1886 = !DILocation(line: 1070, column: 1, scope: !1857, inlinedAt: !1867)
!1887 = !DILocation(line: 1309, column: 31, scope: !1145)
!1888 = !DILocation(line: 1310, column: 13, scope: !1144)
!1889 = !DILocation(line: 1310, column: 12, scope: !1145)
!1890 = !DILocation(line: 1311, column: 29, scope: !1143)
!1891 = !DILocation(line: 0, scope: !1143)
!1892 = !DILocation(line: 1312, column: 10, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !3, line: 1312, column: 10)
!1894 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 1312, column: 10)
!1895 = !DILocation(line: 1312, column: 10, scope: !1894)
!1896 = !DILocation(line: 1316, column: 28, scope: !1134)
!1897 = !DILocation(line: 1317, column: 1, scope: !1134)
!1898 = !DILocation(line: 1192, column: 9, scope: !1295)
!1899 = !DILocation(line: 1192, column: 27, scope: !1295)
!1900 = distinct !DISubprogram(name: "uncompress", scope: !3, file: !3, line: 1322, type: !690, scopeLine: 1323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1901)
!1901 = !{!1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1917, !1921}
!1902 = !DILocalVariable(name: "name", arg: 1, scope: !1900, file: !3, line: 1322, type: !8)
!1903 = !DILocalVariable(name: "inStr", scope: !1900, file: !3, line: 1324, type: !82)
!1904 = !DILocalVariable(name: "outStr", scope: !1900, file: !3, line: 1325, type: !82)
!1905 = !DILocalVariable(name: "n", scope: !1900, file: !3, line: 1326, type: !12)
!1906 = !DILocalVariable(name: "i", scope: !1900, file: !3, line: 1326, type: !12)
!1907 = !DILocalVariable(name: "magicNumberOK", scope: !1900, file: !3, line: 1327, type: !6)
!1908 = !DILocalVariable(name: "cantGuess", scope: !1900, file: !3, line: 1328, type: !6)
!1909 = !DILocalVariable(name: "statBuf", scope: !1900, file: !3, line: 1329, type: !302)
!1910 = !DILocalVariable(name: "retVal", scope: !1911, file: !3, line: 1489, type: !361)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !3, line: 1488, column: 33)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !3, line: 1488, column: 15)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !3, line: 1485, column: 32)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !3, line: 1485, column: 12)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !3, line: 1484, column: 25)
!1916 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 1484, column: 9)
!1917 = !DILocalVariable(name: "retVal", scope: !1918, file: !3, line: 1497, type: !361)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !3, line: 1496, column: 32)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 1496, column: 12)
!1920 = distinct !DILexicalBlock(scope: !1916, file: !3, line: 1493, column: 11)
!1921 = !DILabel(scope: !1900, name: "zzz", file: !3, line: 1357)
!1922 = !DILocation(line: 0, scope: !1900)
!1923 = !DILocation(line: 1329, column: 4, scope: !1900)
!1924 = !DILocation(line: 1329, column: 19, scope: !1900)
!1925 = !DILocation(line: 1331, column: 28, scope: !1900)
!1926 = !DILocation(line: 1333, column: 13, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 1333, column: 8)
!1928 = !DILocation(line: 1333, column: 21, scope: !1927)
!1929 = !DILocation(line: 1334, column: 7, scope: !1927)
!1930 = !DILocation(line: 1337, column: 4, scope: !1900)
!1931 = !DILocation(line: 0, scope: !400, inlinedAt: !1932)
!1932 = distinct !DILocation(line: 1339, column: 10, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 1337, column: 21)
!1934 = !DILocation(line: 941, column: 3, scope: !400, inlinedAt: !1932)
!1935 = !DILocation(line: 942, column: 23, scope: !400, inlinedAt: !1932)
!1936 = !DILocation(line: 0, scope: !400, inlinedAt: !1937)
!1937 = distinct !DILocation(line: 1340, column: 10, scope: !1933)
!1938 = !DILocation(line: 941, column: 3, scope: !400, inlinedAt: !1937)
!1939 = !DILocation(line: 942, column: 23, scope: !400, inlinedAt: !1937)
!1940 = !DILocation(line: 1357, column: 4, scope: !1900)
!1941 = !DILocation(line: 1365, column: 27, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 1365, column: 9)
!1943 = !DILocation(line: 0, scope: !400, inlinedAt: !1944)
!1944 = distinct !DILocation(line: 1343, column: 10, scope: !1933)
!1945 = !DILocation(line: 929, column: 9, scope: !417, inlinedAt: !1944)
!1946 = !DILocation(line: 929, column: 22, scope: !417, inlinedAt: !1944)
!1947 = !DILocation(line: 929, column: 9, scope: !400, inlinedAt: !1944)
!1948 = !DILocation(line: 931, column: 10, scope: !421, inlinedAt: !1944)
!1949 = !DILocation(line: 930, column: 7, scope: !421, inlinedAt: !1944)
!1950 = !DILocation(line: 0, scope: !430, inlinedAt: !1951)
!1951 = distinct !DILocation(line: 937, column: 7, scope: !421, inlinedAt: !1944)
!1952 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !1951)
!1953 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !1951)
!1954 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !1951)
!1955 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !1951)
!1956 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !1951)
!1957 = !DILocation(line: 938, column: 12, scope: !421, inlinedAt: !1944)
!1958 = !DILocation(line: 938, column: 7, scope: !421, inlinedAt: !1944)
!1959 = !DILocation(line: 941, column: 3, scope: !400, inlinedAt: !1944)
!1960 = !DILocation(line: 942, column: 23, scope: !400, inlinedAt: !1944)
!1961 = !DILocation(line: 0, scope: !400, inlinedAt: !1962)
!1962 = distinct !DILocation(line: 1344, column: 10, scope: !1933)
!1963 = !DILocation(line: 929, column: 9, scope: !417, inlinedAt: !1962)
!1964 = !DILocation(line: 929, column: 22, scope: !417, inlinedAt: !1962)
!1965 = !DILocation(line: 929, column: 9, scope: !400, inlinedAt: !1962)
!1966 = !DILocation(line: 931, column: 10, scope: !421, inlinedAt: !1962)
!1967 = !DILocation(line: 930, column: 7, scope: !421, inlinedAt: !1962)
!1968 = !DILocation(line: 0, scope: !430, inlinedAt: !1969)
!1969 = distinct !DILocation(line: 937, column: 7, scope: !421, inlinedAt: !1962)
!1970 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !1969)
!1971 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !1969)
!1972 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !1969)
!1973 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !1969)
!1974 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !1969)
!1975 = !DILocation(line: 938, column: 12, scope: !421, inlinedAt: !1962)
!1976 = !DILocation(line: 938, column: 7, scope: !421, inlinedAt: !1962)
!1977 = !DILocation(line: 941, column: 3, scope: !400, inlinedAt: !1962)
!1978 = !DILocation(line: 942, column: 23, scope: !400, inlinedAt: !1962)
!1979 = !DILocation(line: 1346, column: 35, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !3, line: 1346, column: 17)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !3, line: 1345, column: 10)
!1982 = distinct !DILexicalBlock(scope: !1933, file: !3, line: 1345, column: 10)
!1983 = !DILocalVariable(name: "name", arg: 1, scope: !1984, file: !3, line: 1128, type: !8)
!1984 = distinct !DISubprogram(name: "mapSuffix", scope: !3, file: !3, line: 1128, type: !1985, scopeLine: 1131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1987)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!6, !8, !33, !33}
!1987 = !{!1983, !1988, !1989}
!1988 = !DILocalVariable(name: "oldSuffix", arg: 2, scope: !1984, file: !3, line: 1129, type: !33)
!1989 = !DILocalVariable(name: "newSuffix", arg: 3, scope: !1984, file: !3, line: 1130, type: !33)
!1990 = !DILocation(line: 0, scope: !1984, inlinedAt: !1991)
!1991 = distinct !DILocation(line: 1346, column: 17, scope: !1980)
!1992 = !DILocation(line: 0, scope: !1261, inlinedAt: !1993)
!1993 = distinct !DILocation(line: 1132, column: 9, scope: !1994, inlinedAt: !1991)
!1994 = distinct !DILexicalBlock(scope: !1984, file: !3, line: 1132, column: 8)
!1995 = !DILocation(line: 1121, column: 15, scope: !1261, inlinedAt: !1993)
!1996 = !DILocation(line: 1122, column: 11, scope: !1272, inlinedAt: !1993)
!1997 = !DILocation(line: 1122, column: 8, scope: !1261, inlinedAt: !1993)
!1998 = !DILocation(line: 1123, column: 22, scope: !1275, inlinedAt: !1993)
!1999 = !DILocation(line: 1123, column: 8, scope: !1275, inlinedAt: !1993)
!2000 = !DILocation(line: 1123, column: 36, scope: !1275, inlinedAt: !1993)
!2001 = !DILocation(line: 1132, column: 8, scope: !1984, inlinedAt: !1991)
!2002 = !DILocation(line: 1346, column: 46, scope: !1980)
!2003 = !DILocation(line: 1133, column: 21, scope: !1984, inlinedAt: !1991)
!2004 = !DILocation(line: 1133, column: 4, scope: !1984, inlinedAt: !1991)
!2005 = !DILocation(line: 1133, column: 41, scope: !1984, inlinedAt: !1991)
!2006 = !DILocation(line: 1134, column: 4, scope: !1984, inlinedAt: !1991)
!2007 = !DILocation(line: 1346, column: 17, scope: !1981)
!2008 = !DILocation(line: 0, scope: !400, inlinedAt: !2009)
!2009 = distinct !DILocation(line: 1352, column: 10, scope: !1933)
!2010 = !DILocation(line: 929, column: 9, scope: !417, inlinedAt: !2009)
!2011 = !DILocation(line: 929, column: 22, scope: !417, inlinedAt: !2009)
!2012 = !DILocation(line: 929, column: 9, scope: !400, inlinedAt: !2009)
!2013 = !DILocation(line: 931, column: 10, scope: !421, inlinedAt: !2009)
!2014 = !DILocation(line: 930, column: 7, scope: !421, inlinedAt: !2009)
!2015 = !DILocation(line: 0, scope: !430, inlinedAt: !2016)
!2016 = distinct !DILocation(line: 937, column: 7, scope: !421, inlinedAt: !2009)
!2017 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !2016)
!2018 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !2016)
!2019 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !2016)
!2020 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !2016)
!2021 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !2016)
!2022 = !DILocation(line: 938, column: 12, scope: !421, inlinedAt: !2009)
!2023 = !DILocation(line: 938, column: 7, scope: !421, inlinedAt: !2009)
!2024 = !DILocation(line: 941, column: 3, scope: !400, inlinedAt: !2009)
!2025 = !DILocation(line: 942, column: 23, scope: !400, inlinedAt: !2009)
!2026 = !DILocation(line: 0, scope: !400, inlinedAt: !2027)
!2027 = distinct !DILocation(line: 1353, column: 10, scope: !1933)
!2028 = !DILocation(line: 941, column: 3, scope: !400, inlinedAt: !2027)
!2029 = !DILocation(line: 942, column: 23, scope: !400, inlinedAt: !2027)
!2030 = !DILocation(line: 0, scope: !1229, inlinedAt: !2031)
!2031 = distinct !DILocation(line: 1365, column: 31, scope: !1942)
!2032 = !DILocation(line: 950, column: 18, scope: !1229, inlinedAt: !2031)
!2033 = !DILocation(line: 951, column: 23, scope: !1229, inlinedAt: !2031)
!2034 = !DILocation(line: 952, column: 8, scope: !1229, inlinedAt: !2031)
!2035 = !DILocation(line: 1366, column: 17, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !1942, file: !3, line: 1365, column: 55)
!2037 = !DILocation(line: 1367, column: 17, scope: !2036)
!2038 = !DILocation(line: 1367, column: 44, scope: !2036)
!2039 = !DILocation(line: 1367, column: 35, scope: !2036)
!2040 = !DILocation(line: 1366, column: 7, scope: !2036)
!2041 = !DILocation(line: 0, scope: !430, inlinedAt: !2042)
!2042 = distinct !DILocation(line: 1368, column: 7, scope: !2036)
!2043 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !2042)
!2044 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !2042)
!2045 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !2042)
!2046 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !2042)
!2047 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !2042)
!2048 = !DILocation(line: 952, column: 21, scope: !1241, inlinedAt: !2031)
!2049 = !DILocation(line: 1371, column: 9, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 1371, column: 9)
!2051 = !DILocation(line: 1371, column: 27, scope: !2050)
!2052 = !DILocation(line: 1372, column: 7, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 1371, column: 50)
!2054 = !DILocation(line: 1373, column: 12, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2053, file: !3, line: 1373, column: 12)
!2056 = !DILocation(line: 1373, column: 12, scope: !2053)
!2057 = !DILocation(line: 1381, column: 9, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 1381, column: 9)
!2059 = !DILocation(line: 1374, column: 19, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 1373, column: 42)
!2061 = !DILocation(line: 1376, column: 19, scope: !2060)
!2062 = !DILocation(line: 1374, column: 10, scope: !2060)
!2063 = !DILocation(line: 0, scope: !430, inlinedAt: !2064)
!2064 = distinct !DILocation(line: 1377, column: 10, scope: !2060)
!2065 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !2064)
!2066 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !2064)
!2067 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !2064)
!2068 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !2064)
!2069 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !2064)
!2070 = !DILocation(line: 1381, column: 17, scope: !2058)
!2071 = !DILocation(line: 1381, column: 27, scope: !2058)
!2072 = !DILocation(line: 0, scope: !1320, inlinedAt: !2073)
!2073 = distinct !DILocation(line: 1381, column: 49, scope: !2058)
!2074 = !DILocation(line: 992, column: 4, scope: !1320, inlinedAt: !2073)
!2075 = !DILocation(line: 992, column: 19, scope: !1320, inlinedAt: !2073)
!2076 = !DILocation(line: 994, column: 8, scope: !1320, inlinedAt: !2073)
!2077 = !DILocation(line: 995, column: 10, scope: !1330, inlinedAt: !2073)
!2078 = !DILocation(line: 995, column: 8, scope: !1320, inlinedAt: !2073)
!2079 = !DILocation(line: 998, column: 1, scope: !1320, inlinedAt: !2073)
!2080 = !DILocation(line: 1381, column: 49, scope: !2058)
!2081 = !DILocation(line: 1381, column: 9, scope: !1900)
!2082 = !DILocation(line: 1382, column: 11, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !3, line: 1382, column: 11)
!2084 = distinct !DILexicalBlock(scope: !2058, file: !3, line: 1381, column: 78)
!2085 = !DILocation(line: 1382, column: 11, scope: !2084)
!2086 = !DILocation(line: 1383, column: 17, scope: !2083)
!2087 = !DILocation(line: 1384, column: 17, scope: !2083)
!2088 = !DILocation(line: 1383, column: 7, scope: !2083)
!2089 = !DILocation(line: 0, scope: !430, inlinedAt: !2090)
!2090 = distinct !DILocation(line: 1385, column: 7, scope: !2084)
!2091 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !2090)
!2092 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !2090)
!2093 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !2090)
!2094 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !2090)
!2095 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !2090)
!2096 = !DILocation(line: 1388, column: 44, scope: !1900)
!2097 = !DILocation(line: 1390, column: 17, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 1389, column: 11)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 1388, column: 56)
!2100 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 1388, column: 44)
!2101 = !DILocation(line: 1392, column: 17, scope: !2098)
!2102 = !DILocation(line: 1390, column: 7, scope: !2098)
!2103 = !DILocation(line: 1395, column: 9, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 1395, column: 9)
!2105 = !DILocation(line: 1395, column: 17, scope: !2104)
!2106 = !DILocation(line: 1395, column: 27, scope: !2104)
!2107 = !DILocation(line: 0, scope: !1229, inlinedAt: !2108)
!2108 = distinct !DILocation(line: 1395, column: 30, scope: !2104)
!2109 = !DILocation(line: 950, column: 18, scope: !1229, inlinedAt: !2108)
!2110 = !DILocation(line: 951, column: 23, scope: !1229, inlinedAt: !2108)
!2111 = !DILocation(line: 952, column: 8, scope: !1229, inlinedAt: !2108)
!2112 = !DILocation(line: 952, column: 21, scope: !1241, inlinedAt: !2108)
!2113 = !DILocation(line: 1396, column: 11, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !3, line: 1396, column: 11)
!2115 = distinct !DILexicalBlock(scope: !2104, file: !3, line: 1395, column: 55)
!2116 = !DILocation(line: 1396, column: 11, scope: !2115)
!2117 = !DILocation(line: 1397, column: 2, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2114, file: !3, line: 1396, column: 27)
!2119 = !DILocation(line: 1404, column: 4, scope: !2115)
!2120 = !DILocation(line: 1399, column: 19, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2114, file: !3, line: 1398, column: 14)
!2122 = !DILocation(line: 1400, column: 19, scope: !2121)
!2123 = !DILocation(line: 1399, column: 9, scope: !2121)
!2124 = !DILocation(line: 0, scope: !430, inlinedAt: !2125)
!2125 = distinct !DILocation(line: 1401, column: 9, scope: !2121)
!2126 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !2125)
!2127 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !2125)
!2128 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !2125)
!2129 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !2125)
!2130 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !2125)
!2131 = !DILocation(line: 1405, column: 9, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 1405, column: 9)
!2133 = !DILocation(line: 1405, column: 17, scope: !2132)
!2134 = !DILocation(line: 1405, column: 27, scope: !2132)
!2135 = !DILocation(line: 0, scope: !1382, inlinedAt: !2136)
!2136 = distinct !DILocation(line: 1406, column: 12, scope: !2132)
!2137 = !DILocation(line: 1009, column: 4, scope: !1382, inlinedAt: !2136)
!2138 = !DILocation(line: 1009, column: 19, scope: !1382, inlinedAt: !2136)
!2139 = !DILocation(line: 1011, column: 8, scope: !1382, inlinedAt: !2136)
!2140 = !DILocation(line: 1012, column: 10, scope: !1394, inlinedAt: !2136)
!2141 = !DILocation(line: 1012, column: 8, scope: !1382, inlinedAt: !2136)
!2142 = !DILocation(line: 1014, column: 1, scope: !1382, inlinedAt: !2136)
!2143 = !DILocation(line: 1406, column: 40, scope: !2132)
!2144 = !DILocation(line: 1405, column: 9, scope: !1900)
!2145 = !DILocation(line: 1407, column: 17, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2132, file: !3, line: 1406, column: 45)
!2147 = !DILocation(line: 1408, column: 17, scope: !2146)
!2148 = !DILocation(line: 1408, column: 40, scope: !2146)
!2149 = !DILocation(line: 1408, column: 38, scope: !2146)
!2150 = !DILocation(line: 1407, column: 7, scope: !2146)
!2151 = !DILocation(line: 0, scope: !430, inlinedAt: !2152)
!2152 = distinct !DILocation(line: 1409, column: 7, scope: !2146)
!2153 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !2152)
!2154 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !2152)
!2155 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !2152)
!2156 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !2152)
!2157 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !2152)
!2158 = !DILocation(line: 1413, column: 9, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 1413, column: 9)
!2160 = !DILocation(line: 1413, column: 17, scope: !2159)
!2161 = !DILocation(line: 1413, column: 9, scope: !1900)
!2162 = !DILocation(line: 0, scope: !1417, inlinedAt: !2163)
!2163 = distinct !DILocation(line: 1416, column: 7, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2159, file: !3, line: 1413, column: 29)
!2165 = !DILocation(line: 1051, column: 13, scope: !1417, inlinedAt: !2163)
!2166 = !DILocation(line: 1052, column: 4, scope: !1425, inlinedAt: !2163)
!2167 = !DILocation(line: 1052, column: 4, scope: !1426, inlinedAt: !2163)
!2168 = !DILocation(line: 1419, column: 13, scope: !1900)
!2169 = !DILocation(line: 1419, column: 4, scope: !1900)
!2170 = !DILocation(line: 1422, column: 18, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 1419, column: 23)
!2172 = !DILocation(line: 1423, column: 19, scope: !2171)
!2173 = !DILocation(line: 1424, column: 24, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 1424, column: 15)
!2175 = !DILocation(line: 1424, column: 15, scope: !2174)
!2176 = !DILocation(line: 1424, column: 15, scope: !2171)
!2177 = !DILocation(line: 1425, column: 23, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 1424, column: 45)
!2179 = !DILocation(line: 1427, column: 23, scope: !2178)
!2180 = !DILocation(line: 1425, column: 13, scope: !2178)
!2181 = !DILocation(line: 1428, column: 23, scope: !2178)
!2182 = !DILocation(line: 1429, column: 31, scope: !2178)
!2183 = !DILocation(line: 1428, column: 13, scope: !2178)
!2184 = !DILocation(line: 0, scope: !430, inlinedAt: !2185)
!2185 = distinct !DILocation(line: 1430, column: 13, scope: !2178)
!2186 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !2185)
!2187 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !2185)
!2188 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !2185)
!2189 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !2185)
!2190 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !2185)
!2191 = !DILocation(line: 1436, column: 18, scope: !2171)
!2192 = !DILocation(line: 1437, column: 19, scope: !2171)
!2193 = !DILocation(line: 1438, column: 21, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 1438, column: 15)
!2195 = !DILocation(line: 1438, column: 15, scope: !2171)
!2196 = !DILocation(line: 1439, column: 23, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2194, file: !3, line: 1438, column: 31)
!2198 = !DILocation(line: 1440, column: 23, scope: !2197)
!2199 = !DILocation(line: 1440, column: 50, scope: !2197)
!2200 = !DILocation(line: 1440, column: 41, scope: !2197)
!2201 = !DILocation(line: 1439, column: 13, scope: !2197)
!2202 = !DILocation(line: 0, scope: !430, inlinedAt: !2203)
!2203 = distinct !DILocation(line: 1442, column: 13, scope: !2197)
!2204 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !2203)
!2205 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !2203)
!2206 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !2203)
!2207 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !2203)
!2208 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !2203)
!2209 = !DILocation(line: 1448, column: 18, scope: !2171)
!2210 = !DILocation(line: 0, scope: !1495, inlinedAt: !2211)
!2211 = distinct !DILocation(line: 1449, column: 19, scope: !2171)
!2212 = !DILocation(line: 973, column: 9, scope: !1495, inlinedAt: !2211)
!2213 = !DILocation(line: 974, column: 11, scope: !1506, inlinedAt: !2211)
!2214 = !DILocation(line: 974, column: 8, scope: !1495, inlinedAt: !2211)
!2215 = !DILocation(line: 975, column: 9, scope: !1495, inlinedAt: !2211)
!2216 = !DILocation(line: 976, column: 11, scope: !1510, inlinedAt: !2211)
!2217 = !DILocation(line: 976, column: 8, scope: !1495, inlinedAt: !2211)
!2218 = !DILocation(line: 976, column: 20, scope: !1510, inlinedAt: !2211)
!2219 = !DILocation(line: 1451, column: 23, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !3, line: 1450, column: 31)
!2221 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 1450, column: 15)
!2222 = !DILocation(line: 1452, column: 23, scope: !2220)
!2223 = !DILocation(line: 1452, column: 51, scope: !2220)
!2224 = !DILocation(line: 1452, column: 42, scope: !2220)
!2225 = !DILocation(line: 1451, column: 13, scope: !2220)
!2226 = !DILocation(line: 1453, column: 24, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2220, file: !3, line: 1453, column: 18)
!2228 = !DILocation(line: 1453, column: 18, scope: !2220)
!2229 = !DILocation(line: 1453, column: 34, scope: !2227)
!2230 = !DILocation(line: 0, scope: !430, inlinedAt: !2231)
!2231 = distinct !DILocation(line: 1454, column: 13, scope: !2220)
!2232 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !2231)
!2233 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !2231)
!2234 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !2231)
!2235 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !2231)
!2236 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !2231)
!2237 = !DILocation(line: 1457, column: 21, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 1457, column: 15)
!2239 = !DILocation(line: 1457, column: 15, scope: !2171)
!2240 = !DILocation(line: 1458, column: 23, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2238, file: !3, line: 1457, column: 31)
!2242 = !DILocation(line: 1459, column: 23, scope: !2241)
!2243 = !DILocation(line: 1459, column: 50, scope: !2241)
!2244 = !DILocation(line: 1459, column: 41, scope: !2241)
!2245 = !DILocation(line: 1458, column: 13, scope: !2241)
!2246 = !DILocation(line: 1460, column: 35, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 1460, column: 18)
!2248 = !DILocation(line: 0, scope: !430, inlinedAt: !2249)
!2249 = distinct !DILocation(line: 1461, column: 13, scope: !2241)
!2250 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !2249)
!2251 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !2249)
!2252 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !2249)
!2253 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !2249)
!2254 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !2249)
!2255 = !DILocation(line: 1467, column: 10, scope: !2171)
!2256 = !DILocation(line: 0, scope: !2171)
!2257 = !DILocation(line: 1471, column: 8, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 1471, column: 8)
!2259 = !DILocation(line: 1471, column: 18, scope: !2258)
!2260 = !DILocation(line: 1471, column: 8, scope: !1900)
!2261 = !DILocation(line: 1472, column: 17, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2258, file: !3, line: 1471, column: 24)
!2263 = !DILocation(line: 1472, column: 7, scope: !2262)
!2264 = !DILocation(line: 0, scope: !1559, inlinedAt: !2265)
!2265 = distinct !DILocation(line: 1473, column: 7, scope: !2262)
!2266 = !DILocation(line: 919, column: 16, scope: !1565, inlinedAt: !2265)
!2267 = !DILocation(line: 919, column: 29, scope: !1565, inlinedAt: !2265)
!2268 = !DILocation(line: 919, column: 26, scope: !1565, inlinedAt: !2265)
!2269 = !DILocation(line: 919, column: 9, scope: !1559, inlinedAt: !2265)
!2270 = !DILocation(line: 921, column: 17, scope: !1570, inlinedAt: !2265)
!2271 = !DILocation(line: 921, column: 7, scope: !1570, inlinedAt: !2265)
!2272 = !DILocation(line: 920, column: 58, scope: !1570, inlinedAt: !2265)
!2273 = !DILocation(line: 920, column: 21, scope: !1570, inlinedAt: !2265)
!2274 = !DILocation(line: 920, column: 46, scope: !1570, inlinedAt: !2265)
!2275 = !DILocation(line: 920, column: 37, scope: !1570, inlinedAt: !2265)
!2276 = !DILocation(line: 920, column: 18, scope: !1570, inlinedAt: !2265)
!2277 = !DILocation(line: 920, column: 4, scope: !1571, inlinedAt: !2265)
!2278 = distinct !{!2278, !2277, !2279, !461}
!2279 = !DILocation(line: 921, column: 29, scope: !1571, inlinedAt: !2265)
!2280 = !DILocation(line: 1474, column: 16, scope: !2262)
!2281 = !DILocation(line: 1474, column: 7, scope: !2262)
!2282 = !DILocation(line: 1475, column: 4, scope: !2262)
!2283 = !DILocation(line: 1478, column: 27, scope: !1900)
!2284 = !DILocation(line: 1479, column: 28, scope: !1900)
!2285 = !DILocalVariable(name: "zStream", arg: 1, scope: !2286, file: !3, line: 433, type: !82)
!2286 = distinct !DISubprogram(name: "uncompressStream", scope: !3, file: !3, line: 433, type: !2287, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2289)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!6, !82, !82}
!2289 = !{!2285, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2306, !2307, !2308, !2309}
!2290 = !DILocalVariable(name: "stream", arg: 2, scope: !2286, file: !3, line: 433, type: !82)
!2291 = !DILocalVariable(name: "bzf", scope: !2286, file: !3, line: 435, type: !1593)
!2292 = !DILocalVariable(name: "bzerr", scope: !2286, file: !3, line: 436, type: !12)
!2293 = !DILocalVariable(name: "bzerr_dummy", scope: !2286, file: !3, line: 436, type: !12)
!2294 = !DILocalVariable(name: "ret", scope: !2286, file: !3, line: 436, type: !12)
!2295 = !DILocalVariable(name: "nread", scope: !2286, file: !3, line: 436, type: !12)
!2296 = !DILocalVariable(name: "streamNo", scope: !2286, file: !3, line: 436, type: !12)
!2297 = !DILocalVariable(name: "i", scope: !2286, file: !3, line: 436, type: !12)
!2298 = !DILocalVariable(name: "obuf", scope: !2286, file: !3, line: 437, type: !1597)
!2299 = !DILocalVariable(name: "unused", scope: !2286, file: !3, line: 438, type: !1597)
!2300 = !DILocalVariable(name: "nUnused", scope: !2286, file: !3, line: 439, type: !12)
!2301 = !DILocalVariable(name: "unusedTmpV", scope: !2286, file: !3, line: 440, type: !11)
!2302 = !DILocalVariable(name: "unusedTmp", scope: !2286, file: !3, line: 441, type: !28)
!2303 = !DILocalVariable(name: "fd", scope: !2304, file: !3, line: 485, type: !12)
!2304 = distinct !DILexicalBlock(scope: !2305, file: !3, line: 484, column: 26)
!2305 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 484, column: 8)
!2306 = !DILabel(scope: !2286, name: "closeok", file: !3, line: 482)
!2307 = !DILabel(scope: !2286, name: "trycat", file: !3, line: 504)
!2308 = !DILabel(scope: !2286, name: "errhandler", file: !3, line: 517)
!2309 = !DILabel(scope: !2310, name: "errhandler_io", file: !3, line: 523)
!2310 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 519, column: 19)
!2311 = !DILocation(line: 0, scope: !2286, inlinedAt: !2312)
!2312 = distinct !DILocation(line: 1480, column: 20, scope: !1900)
!2313 = !DILocation(line: 436, column: 4, scope: !2286, inlinedAt: !2312)
!2314 = !DILocation(line: 437, column: 4, scope: !2286, inlinedAt: !2312)
!2315 = !DILocation(line: 437, column: 12, scope: !2286, inlinedAt: !2312)
!2316 = !DILocation(line: 438, column: 4, scope: !2286, inlinedAt: !2312)
!2317 = !DILocation(line: 438, column: 12, scope: !2286, inlinedAt: !2312)
!2318 = !DILocation(line: 439, column: 4, scope: !2286, inlinedAt: !2312)
!2319 = !DILocation(line: 440, column: 4, scope: !2286, inlinedAt: !2312)
!2320 = !DILocation(line: 443, column: 12, scope: !2286, inlinedAt: !2312)
!2321 = !DILocation(line: 449, column: 8, scope: !2322, inlinedAt: !2312)
!2322 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 449, column: 8)
!2323 = !DILocation(line: 449, column: 8, scope: !2286, inlinedAt: !2312)
!2324 = !DILocation(line: 450, column: 8, scope: !2325, inlinedAt: !2312)
!2325 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 450, column: 8)
!2326 = !DILocation(line: 450, column: 8, scope: !2286, inlinedAt: !2312)
!2327 = !DILocation(line: 455, column: 33, scope: !2328, inlinedAt: !2312)
!2328 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 452, column: 17)
!2329 = !DILocation(line: 456, column: 21, scope: !2328, inlinedAt: !2312)
!2330 = !DILocation(line: 456, column: 16, scope: !2328, inlinedAt: !2312)
!2331 = !DILocation(line: 454, column: 13, scope: !2328, inlinedAt: !2312)
!2332 = !DILocation(line: 458, column: 15, scope: !2333, inlinedAt: !2312)
!2333 = distinct !DILexicalBlock(scope: !2328, file: !3, line: 458, column: 11)
!2334 = !DILocation(line: 458, column: 23, scope: !2333, inlinedAt: !2312)
!2335 = !DILocation(line: 459, column: 15, scope: !2328, inlinedAt: !2312)
!2336 = !DILocation(line: 461, column: 7, scope: !2328, inlinedAt: !2312)
!2337 = !DILocation(line: 461, column: 14, scope: !2328, inlinedAt: !2312)
!2338 = !DILocation(line: 462, column: 18, scope: !2339, inlinedAt: !2312)
!2339 = distinct !DILexicalBlock(scope: !2328, file: !3, line: 461, column: 30)
!2340 = !DILocation(line: 463, column: 14, scope: !2341, inlinedAt: !2312)
!2341 = distinct !DILexicalBlock(scope: !2339, file: !3, line: 463, column: 14)
!2342 = !DILocation(line: 463, column: 20, scope: !2341, inlinedAt: !2312)
!2343 = !DILocation(line: 463, column: 14, scope: !2339, inlinedAt: !2312)
!2344 = !DILocation(line: 464, column: 30, scope: !2345, inlinedAt: !2312)
!2345 = distinct !DILexicalBlock(scope: !2339, file: !3, line: 464, column: 14)
!2346 = !DILocation(line: 465, column: 13, scope: !2345, inlinedAt: !2312)
!2347 = !DILocation(line: 466, column: 14, scope: !2348, inlinedAt: !2312)
!2348 = distinct !DILexicalBlock(scope: !2339, file: !3, line: 466, column: 14)
!2349 = !DILocation(line: 466, column: 14, scope: !2339, inlinedAt: !2312)
!2350 = distinct !{!2350, !2336, !2351, !461}
!2351 = !DILocation(line: 467, column: 7, scope: !2328, inlinedAt: !2312)
!2352 = !DILocation(line: 470, column: 7, scope: !2328, inlinedAt: !2312)
!2353 = !DILocation(line: 471, column: 11, scope: !2354, inlinedAt: !2312)
!2354 = distinct !DILexicalBlock(scope: !2328, file: !3, line: 471, column: 11)
!2355 = !DILocation(line: 471, column: 17, scope: !2354, inlinedAt: !2312)
!2356 = !DILocation(line: 471, column: 11, scope: !2328, inlinedAt: !2312)
!2357 = !DILocation(line: 471, column: 27, scope: !2354, inlinedAt: !2312)
!2358 = !DILocation(line: 473, column: 27, scope: !2328, inlinedAt: !2312)
!2359 = !DILocation(line: 474, column: 23, scope: !2360, inlinedAt: !2312)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !3, line: 474, column: 7)
!2361 = distinct !DILexicalBlock(scope: !2328, file: !3, line: 474, column: 7)
!2362 = !DILocation(line: 474, column: 21, scope: !2360, inlinedAt: !2312)
!2363 = !DILocation(line: 474, column: 7, scope: !2361, inlinedAt: !2312)
!2364 = !DILocation(line: 474, column: 49, scope: !2360, inlinedAt: !2312)
!2365 = !DILocation(line: 474, column: 37, scope: !2360, inlinedAt: !2312)
!2366 = !DILocation(line: 474, column: 47, scope: !2360, inlinedAt: !2312)
!2367 = !DILocation(line: 474, column: 33, scope: !2360, inlinedAt: !2312)
!2368 = distinct !{!2368, !2363, !2369, !461}
!2369 = !DILocation(line: 474, column: 60, scope: !2361, inlinedAt: !2312)
!2370 = !DILocation(line: 476, column: 7, scope: !2328, inlinedAt: !2312)
!2371 = !DILocation(line: 477, column: 11, scope: !2372, inlinedAt: !2312)
!2372 = distinct !DILexicalBlock(scope: !2328, file: !3, line: 477, column: 11)
!2373 = !DILocation(line: 477, column: 17, scope: !2372, inlinedAt: !2312)
!2374 = !DILocation(line: 477, column: 11, scope: !2328, inlinedAt: !2312)
!2375 = !DILocation(line: 477, column: 27, scope: !2372, inlinedAt: !2312)
!2376 = !DILocation(line: 479, column: 11, scope: !2377, inlinedAt: !2312)
!2377 = distinct !DILexicalBlock(scope: !2328, file: !3, line: 479, column: 11)
!2378 = !DILocation(line: 479, column: 19, scope: !2377, inlinedAt: !2312)
!2379 = !DILocation(line: 479, column: 24, scope: !2377, inlinedAt: !2312)
!2380 = !DILocation(line: 0, scope: !1664, inlinedAt: !2381)
!2381 = distinct !DILocation(line: 479, column: 27, scope: !2377, inlinedAt: !2312)
!2382 = !DILocation(line: 320, column: 14, scope: !1664, inlinedAt: !2381)
!2383 = !DILocation(line: 321, column: 10, scope: !1675, inlinedAt: !2381)
!2384 = !DILocation(line: 321, column: 8, scope: !1664, inlinedAt: !2381)
!2385 = !DILocation(line: 322, column: 4, scope: !1664, inlinedAt: !2381)
!2386 = !DILocation(line: 456, column: 40, scope: !2328, inlinedAt: !2312)
!2387 = !DILocation(line: 479, column: 11, scope: !2328, inlinedAt: !2312)
!2388 = distinct !{!2388, !2389, !2390}
!2389 = !DILocation(line: 452, column: 4, scope: !2286, inlinedAt: !2312)
!2390 = !DILocation(line: 480, column: 4, scope: !2286, inlinedAt: !2312)
!2391 = !DILocation(line: 482, column: 4, scope: !2286, inlinedAt: !2312)
!2392 = !DILocation(line: 483, column: 8, scope: !2393, inlinedAt: !2312)
!2393 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 483, column: 8)
!2394 = !DILocation(line: 483, column: 8, scope: !2286, inlinedAt: !2312)
!2395 = !DILocation(line: 484, column: 18, scope: !2305, inlinedAt: !2312)
!2396 = !DILocation(line: 484, column: 15, scope: !2305, inlinedAt: !2312)
!2397 = !DILocation(line: 484, column: 8, scope: !2286, inlinedAt: !2312)
!2398 = !DILocation(line: 485, column: 18, scope: !2304, inlinedAt: !2312)
!2399 = !DILocation(line: 0, scope: !2304, inlinedAt: !2312)
!2400 = !DILocation(line: 486, column: 14, scope: !2401, inlinedAt: !2312)
!2401 = distinct !DILexicalBlock(scope: !2304, file: !3, line: 486, column: 11)
!2402 = !DILocation(line: 486, column: 11, scope: !2304, inlinedAt: !2312)
!2403 = !DILocation(line: 0, scope: !1713, inlinedAt: !2404)
!2404 = distinct !DILocation(line: 487, column: 7, scope: !2304, inlinedAt: !2312)
!2405 = !DILocation(line: 1078, column: 39, scope: !1713, inlinedAt: !2404)
!2406 = !DILocation(line: 1078, column: 13, scope: !1713, inlinedAt: !2404)
!2407 = !DILocation(line: 1079, column: 4, scope: !1721, inlinedAt: !2404)
!2408 = !DILocation(line: 1079, column: 4, scope: !1722, inlinedAt: !2404)
!2409 = !DILocation(line: 1081, column: 37, scope: !1713, inlinedAt: !2404)
!2410 = !DILocation(line: 1081, column: 58, scope: !1713, inlinedAt: !2404)
!2411 = !DILocation(line: 1081, column: 11, scope: !1713, inlinedAt: !2404)
!2412 = !DILocation(line: 489, column: 10, scope: !2286, inlinedAt: !2312)
!2413 = !DILocation(line: 490, column: 12, scope: !2414, inlinedAt: !2312)
!2414 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 490, column: 8)
!2415 = !DILocation(line: 490, column: 8, scope: !2286, inlinedAt: !2312)
!2416 = !DILocation(line: 492, column: 8, scope: !2417, inlinedAt: !2312)
!2417 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 492, column: 8)
!2418 = !DILocation(line: 492, column: 8, scope: !2286, inlinedAt: !2312)
!2419 = !DILocation(line: 493, column: 10, scope: !2286, inlinedAt: !2312)
!2420 = !DILocation(line: 494, column: 12, scope: !2421, inlinedAt: !2312)
!2421 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 494, column: 8)
!2422 = !DILocation(line: 494, column: 8, scope: !2286, inlinedAt: !2312)
!2423 = !DILocation(line: 495, column: 18, scope: !2424, inlinedAt: !2312)
!2424 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 495, column: 8)
!2425 = !DILocation(line: 495, column: 15, scope: !2424, inlinedAt: !2312)
!2426 = !DILocation(line: 495, column: 8, scope: !2286, inlinedAt: !2312)
!2427 = !DILocation(line: 496, column: 13, scope: !2428, inlinedAt: !2312)
!2428 = distinct !DILexicalBlock(scope: !2424, file: !3, line: 495, column: 26)
!2429 = !DILocation(line: 497, column: 30, scope: !2428, inlinedAt: !2312)
!2430 = !DILocation(line: 498, column: 15, scope: !2431, inlinedAt: !2312)
!2431 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 498, column: 11)
!2432 = !DILocation(line: 498, column: 11, scope: !2428, inlinedAt: !2312)
!2433 = !DILocation(line: 500, column: 27, scope: !2286, inlinedAt: !2312)
!2434 = !DILocation(line: 501, column: 8, scope: !2435, inlinedAt: !2312)
!2435 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 501, column: 8)
!2436 = !DILocation(line: 501, column: 18, scope: !2435, inlinedAt: !2312)
!2437 = !DILocation(line: 501, column: 8, scope: !2286, inlinedAt: !2312)
!2438 = !DILocation(line: 501, column: 34, scope: !2435, inlinedAt: !2312)
!2439 = !DILocation(line: 501, column: 24, scope: !2435, inlinedAt: !2312)
!2440 = !DILocation(line: 549, column: 1, scope: !2286, inlinedAt: !2312)
!2441 = !DILocation(line: 1484, column: 9, scope: !1900)
!2442 = !DILocation(line: 504, column: 4, scope: !2286, inlinedAt: !2312)
!2443 = !DILocation(line: 505, column: 8, scope: !2444, inlinedAt: !2312)
!2444 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 505, column: 8)
!2445 = !DILocation(line: 505, column: 8, scope: !2286, inlinedAt: !2312)
!2446 = !DILocation(line: 506, column: 7, scope: !2447, inlinedAt: !2312)
!2447 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 505, column: 24)
!2448 = !DILocation(line: 507, column: 7, scope: !2447, inlinedAt: !2312)
!2449 = !DILocation(line: 0, scope: !1664, inlinedAt: !2450)
!2450 = distinct !DILocation(line: 508, column: 13, scope: !2451, inlinedAt: !2312)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 508, column: 13)
!2452 = distinct !DILexicalBlock(scope: !2447, file: !3, line: 507, column: 20)
!2453 = !DILocation(line: 320, column: 14, scope: !1664, inlinedAt: !2450)
!2454 = !DILocation(line: 321, column: 10, scope: !1675, inlinedAt: !2450)
!2455 = !DILocation(line: 321, column: 8, scope: !1664, inlinedAt: !2450)
!2456 = !DILocation(line: 322, column: 4, scope: !1664, inlinedAt: !2450)
!2457 = !DILocation(line: 509, column: 17, scope: !2452, inlinedAt: !2312)
!2458 = !DILocation(line: 510, column: 13, scope: !2459, inlinedAt: !2312)
!2459 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 510, column: 13)
!2460 = !DILocation(line: 510, column: 13, scope: !2452, inlinedAt: !2312)
!2461 = !DILocation(line: 511, column: 19, scope: !2462, inlinedAt: !2312)
!2462 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 511, column: 13)
!2463 = !DILocation(line: 511, column: 13, scope: !2452, inlinedAt: !2312)
!2464 = !DILocation(line: 511, column: 24, scope: !2462, inlinedAt: !2312)
!2465 = !DILocation(line: 512, column: 13, scope: !2466, inlinedAt: !2312)
!2466 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 512, column: 13)
!2467 = !DILocation(line: 512, column: 13, scope: !2452, inlinedAt: !2312)
!2468 = distinct !{!2468, !2448, !2469}
!2469 = !DILocation(line: 513, column: 7, scope: !2447, inlinedAt: !2312)
!2470 = !DILocation(line: 517, column: 4, scope: !2286, inlinedAt: !2312)
!2471 = !DILocation(line: 518, column: 4, scope: !2286, inlinedAt: !2312)
!2472 = !DILocation(line: 519, column: 12, scope: !2286, inlinedAt: !2312)
!2473 = !DILocation(line: 519, column: 4, scope: !2286, inlinedAt: !2312)
!2474 = !DILocation(line: 521, column: 10, scope: !2310, inlinedAt: !2312)
!2475 = !DILocation(line: 523, column: 10, scope: !2310, inlinedAt: !2312)
!2476 = !DILocation(line: 524, column: 10, scope: !2310, inlinedAt: !2312)
!2477 = !DILocation(line: 526, column: 10, scope: !2310, inlinedAt: !2312)
!2478 = !DILocation(line: 528, column: 10, scope: !2310, inlinedAt: !2312)
!2479 = !DILocation(line: 530, column: 10, scope: !2310, inlinedAt: !2312)
!2480 = !DILocation(line: 532, column: 25, scope: !2481, inlinedAt: !2312)
!2481 = distinct !DILexicalBlock(scope: !2310, file: !3, line: 532, column: 14)
!2482 = !DILocation(line: 532, column: 22, scope: !2481, inlinedAt: !2312)
!2483 = !DILocation(line: 532, column: 14, scope: !2310, inlinedAt: !2312)
!2484 = !DILocation(line: 532, column: 32, scope: !2481, inlinedAt: !2312)
!2485 = !DILocation(line: 533, column: 24, scope: !2486, inlinedAt: !2312)
!2486 = distinct !DILexicalBlock(scope: !2310, file: !3, line: 533, column: 14)
!2487 = !DILocation(line: 533, column: 21, scope: !2486, inlinedAt: !2312)
!2488 = !DILocation(line: 533, column: 14, scope: !2310, inlinedAt: !2312)
!2489 = !DILocation(line: 533, column: 32, scope: !2486, inlinedAt: !2312)
!2490 = !DILocation(line: 534, column: 23, scope: !2491, inlinedAt: !2312)
!2491 = distinct !DILexicalBlock(scope: !2310, file: !3, line: 534, column: 14)
!2492 = !DILocation(line: 534, column: 14, scope: !2310, inlinedAt: !2312)
!2493 = !DILocation(line: 537, column: 17, scope: !2494, inlinedAt: !2312)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 537, column: 17)
!2495 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 536, column: 17)
!2496 = !DILocation(line: 537, column: 17, scope: !2495, inlinedAt: !2312)
!2497 = !DILocation(line: 538, column: 23, scope: !2494, inlinedAt: !2312)
!2498 = !DILocation(line: 540, column: 23, scope: !2494, inlinedAt: !2312)
!2499 = !DILocation(line: 538, column: 13, scope: !2494, inlinedAt: !2312)
!2500 = !DILocation(line: 544, column: 10, scope: !2310, inlinedAt: !2312)
!2501 = !DILocation(line: 1481, column: 27, scope: !1900)
!2502 = !DILocation(line: 1485, column: 12, scope: !1914)
!2503 = !DILocation(line: 1485, column: 20, scope: !1914)
!2504 = !DILocation(line: 1485, column: 12, scope: !1915)
!2505 = !DILocation(line: 0, scope: !1857, inlinedAt: !2506)
!2506 = distinct !DILocation(line: 1486, column: 10, scope: !1913)
!2507 = !DILocation(line: 1062, column: 4, scope: !1857, inlinedAt: !2506)
!2508 = !DILocation(line: 1062, column: 19, scope: !1857, inlinedAt: !2506)
!2509 = !DILocation(line: 1064, column: 34, scope: !1857, inlinedAt: !2506)
!2510 = !DILocation(line: 1064, column: 12, scope: !1857, inlinedAt: !2506)
!2511 = !DILocation(line: 1064, column: 19, scope: !1857, inlinedAt: !2506)
!2512 = !DILocation(line: 1065, column: 35, scope: !1857, inlinedAt: !2506)
!2513 = !DILocation(line: 1065, column: 12, scope: !1857, inlinedAt: !2506)
!2514 = !DILocation(line: 1065, column: 20, scope: !1857, inlinedAt: !2506)
!2515 = !DILocation(line: 1067, column: 13, scope: !1857, inlinedAt: !2506)
!2516 = !DILocation(line: 1068, column: 4, scope: !1883, inlinedAt: !2506)
!2517 = !DILocation(line: 1068, column: 4, scope: !1884, inlinedAt: !2506)
!2518 = !DILocation(line: 1070, column: 1, scope: !1857, inlinedAt: !2506)
!2519 = !DILocation(line: 1487, column: 34, scope: !1913)
!2520 = !DILocation(line: 1488, column: 16, scope: !1912)
!2521 = !DILocation(line: 1488, column: 15, scope: !1913)
!2522 = !DILocation(line: 1489, column: 32, scope: !1911)
!2523 = !DILocation(line: 0, scope: !1911)
!2524 = !DILocation(line: 1490, column: 13, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !3, line: 1490, column: 13)
!2526 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 1490, column: 13)
!2527 = !DILocation(line: 1490, column: 13, scope: !2526)
!2528 = !DILocation(line: 1494, column: 21, scope: !1920)
!2529 = !DILocation(line: 1495, column: 31, scope: !1920)
!2530 = !DILocation(line: 1496, column: 12, scope: !1919)
!2531 = !DILocation(line: 1496, column: 20, scope: !1919)
!2532 = !DILocation(line: 1496, column: 12, scope: !1920)
!2533 = !DILocation(line: 1497, column: 29, scope: !1918)
!2534 = !DILocation(line: 0, scope: !1918)
!2535 = !DILocation(line: 1498, column: 10, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2537, file: !3, line: 1498, column: 10)
!2537 = distinct !DILexicalBlock(scope: !1918, file: !3, line: 1498, column: 10)
!2538 = !DILocation(line: 1498, column: 10, scope: !2537)
!2539 = !DILocation(line: 1501, column: 28, scope: !1900)
!2540 = !DILocation(line: 1504, column: 11, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !3, line: 1504, column: 11)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 1503, column: 25)
!2543 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 1503, column: 9)
!2544 = !DILocation(line: 1504, column: 21, scope: !2541)
!2545 = !DILocation(line: 1504, column: 11, scope: !2542)
!2546 = !DILocation(line: 1505, column: 20, scope: !2541)
!2547 = !DILocation(line: 1505, column: 10, scope: !2541)
!2548 = !DILocation(line: 0, scope: !430, inlinedAt: !2549)
!2549 = distinct !DILocation(line: 1507, column: 7, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 1506, column: 11)
!2551 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !2549)
!2552 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !2549)
!2553 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !2549)
!2554 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !2549)
!2555 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !2549)
!2556 = !DILocation(line: 1508, column: 11, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 1508, column: 11)
!2558 = !DILocation(line: 1508, column: 21, scope: !2557)
!2559 = !DILocation(line: 0, scope: !2557)
!2560 = !DILocation(line: 1508, column: 11, scope: !2550)
!2561 = !DILocation(line: 1509, column: 10, scope: !2557)
!2562 = !DILocation(line: 1512, column: 20, scope: !2557)
!2563 = !DILocation(line: 1510, column: 10, scope: !2557)
!2564 = !DILocation(line: 1515, column: 1, scope: !1900)
!2565 = !DILocation(line: 1349, column: 10, scope: !1933)
!2566 = !DILocation(line: 1350, column: 10, scope: !1933)
!2567 = distinct !DISubprogram(name: "testf", scope: !3, file: !3, line: 1520, type: !690, scopeLine: 1521, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2568)
!2568 = !{!2569, !2570, !2571, !2572}
!2569 = !DILocalVariable(name: "name", arg: 1, scope: !2567, file: !3, line: 1520, type: !8)
!2570 = !DILocalVariable(name: "inStr", scope: !2567, file: !3, line: 1522, type: !82)
!2571 = !DILocalVariable(name: "allOK", scope: !2567, file: !3, line: 1523, type: !6)
!2572 = !DILocalVariable(name: "statBuf", scope: !2567, file: !3, line: 1524, type: !302)
!2573 = !DILocation(line: 0, scope: !2567)
!2574 = !DILocation(line: 1524, column: 4, scope: !2567)
!2575 = !DILocation(line: 1524, column: 19, scope: !2567)
!2576 = !DILocation(line: 1526, column: 28, scope: !2567)
!2577 = !DILocation(line: 1528, column: 13, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 1528, column: 8)
!2579 = !DILocation(line: 1528, column: 21, scope: !2578)
!2580 = !DILocation(line: 1529, column: 7, scope: !2578)
!2581 = !DILocation(line: 0, scope: !400, inlinedAt: !2582)
!2582 = distinct !DILocation(line: 1531, column: 4, scope: !2567)
!2583 = !DILocation(line: 941, column: 3, scope: !400, inlinedAt: !2582)
!2584 = !DILocation(line: 942, column: 23, scope: !400, inlinedAt: !2582)
!2585 = !DILocation(line: 1532, column: 4, scope: !2567)
!2586 = !DILocation(line: 0, scope: !400, inlinedAt: !2587)
!2587 = distinct !DILocation(line: 1533, column: 20, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 1532, column: 21)
!2589 = !DILocation(line: 941, column: 3, scope: !400, inlinedAt: !2587)
!2590 = !DILocation(line: 942, column: 23, scope: !400, inlinedAt: !2587)
!2591 = !DILocation(line: 1551, column: 9, scope: !2567)
!2592 = !DILocation(line: 0, scope: !400, inlinedAt: !2593)
!2593 = distinct !DILocation(line: 1534, column: 20, scope: !2588)
!2594 = !DILocation(line: 929, column: 9, scope: !417, inlinedAt: !2593)
!2595 = !DILocation(line: 929, column: 22, scope: !417, inlinedAt: !2593)
!2596 = !DILocation(line: 929, column: 9, scope: !400, inlinedAt: !2593)
!2597 = !DILocation(line: 931, column: 10, scope: !421, inlinedAt: !2593)
!2598 = !DILocation(line: 930, column: 7, scope: !421, inlinedAt: !2593)
!2599 = !DILocation(line: 0, scope: !430, inlinedAt: !2600)
!2600 = distinct !DILocation(line: 937, column: 7, scope: !421, inlinedAt: !2593)
!2601 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !2600)
!2602 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !2600)
!2603 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !2600)
!2604 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !2600)
!2605 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !2600)
!2606 = !DILocation(line: 938, column: 12, scope: !421, inlinedAt: !2593)
!2607 = !DILocation(line: 938, column: 7, scope: !421, inlinedAt: !2593)
!2608 = !DILocation(line: 0, scope: !400, inlinedAt: !2609)
!2609 = distinct !DILocation(line: 1535, column: 20, scope: !2588)
!2610 = !DILocation(line: 929, column: 9, scope: !417, inlinedAt: !2609)
!2611 = !DILocation(line: 929, column: 22, scope: !417, inlinedAt: !2609)
!2612 = !DILocation(line: 929, column: 9, scope: !400, inlinedAt: !2609)
!2613 = !DILocation(line: 931, column: 10, scope: !421, inlinedAt: !2609)
!2614 = !DILocation(line: 930, column: 7, scope: !421, inlinedAt: !2609)
!2615 = !DILocation(line: 0, scope: !430, inlinedAt: !2616)
!2616 = distinct !DILocation(line: 937, column: 7, scope: !421, inlinedAt: !2609)
!2617 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !2616)
!2618 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !2616)
!2619 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !2616)
!2620 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !2616)
!2621 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !2616)
!2622 = !DILocation(line: 938, column: 12, scope: !421, inlinedAt: !2609)
!2623 = !DILocation(line: 938, column: 7, scope: !421, inlinedAt: !2609)
!2624 = !DILocation(line: 0, scope: !2588)
!2625 = !DILocation(line: 950, column: 18, scope: !1229, inlinedAt: !2626)
!2626 = distinct !DILocation(line: 1545, column: 31, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 1545, column: 9)
!2628 = !DILocation(line: 0, scope: !1229, inlinedAt: !2626)
!2629 = !DILocation(line: 951, column: 23, scope: !1229, inlinedAt: !2626)
!2630 = !DILocation(line: 952, column: 8, scope: !1229, inlinedAt: !2626)
!2631 = !DILocation(line: 1546, column: 17, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2627, file: !3, line: 1545, column: 55)
!2633 = !DILocation(line: 1547, column: 17, scope: !2632)
!2634 = !DILocation(line: 1547, column: 44, scope: !2632)
!2635 = !DILocation(line: 1547, column: 35, scope: !2632)
!2636 = !DILocation(line: 1546, column: 7, scope: !2632)
!2637 = !DILocation(line: 0, scope: !430, inlinedAt: !2638)
!2638 = distinct !DILocation(line: 1548, column: 7, scope: !2632)
!2639 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !2638)
!2640 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !2638)
!2641 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !2638)
!2642 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !2638)
!2643 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !2638)
!2644 = !DILocation(line: 952, column: 21, scope: !1241, inlinedAt: !2626)
!2645 = !DILocation(line: 1551, column: 9, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 1551, column: 9)
!2647 = !DILocation(line: 1551, column: 17, scope: !2646)
!2648 = !DILocation(line: 1552, column: 7, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 1551, column: 29)
!2650 = !DILocation(line: 1553, column: 12, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 1553, column: 12)
!2652 = !DILocation(line: 1553, column: 12, scope: !2649)
!2653 = !DILocation(line: 1554, column: 19, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 1553, column: 42)
!2655 = !DILocation(line: 1556, column: 19, scope: !2654)
!2656 = !DILocation(line: 1554, column: 10, scope: !2654)
!2657 = !DILocation(line: 0, scope: !430, inlinedAt: !2658)
!2658 = distinct !DILocation(line: 1557, column: 10, scope: !2654)
!2659 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !2658)
!2660 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !2658)
!2661 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !2658)
!2662 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !2658)
!2663 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !2658)
!2664 = !DILocation(line: 1562, column: 13, scope: !2567)
!2665 = !DILocation(line: 1562, column: 4, scope: !2567)
!2666 = !DILocation(line: 1565, column: 33, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !3, line: 1565, column: 15)
!2668 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 1562, column: 23)
!2669 = !DILocation(line: 1565, column: 24, scope: !2667)
!2670 = !DILocation(line: 1565, column: 15, scope: !2667)
!2671 = !DILocation(line: 0, scope: !2668)
!2672 = !DILocation(line: 1565, column: 15, scope: !2668)
!2673 = !DILocation(line: 1566, column: 23, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 1565, column: 45)
!2675 = !DILocation(line: 1568, column: 23, scope: !2674)
!2676 = !DILocation(line: 1566, column: 13, scope: !2674)
!2677 = !DILocation(line: 1569, column: 23, scope: !2674)
!2678 = !DILocation(line: 1570, column: 31, scope: !2674)
!2679 = !DILocation(line: 1569, column: 13, scope: !2674)
!2680 = !DILocation(line: 0, scope: !430, inlinedAt: !2681)
!2681 = distinct !DILocation(line: 1571, column: 13, scope: !2674)
!2682 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !2681)
!2683 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !2681)
!2684 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !2681)
!2685 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !2681)
!2686 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !2681)
!2687 = !DILocation(line: 1574, column: 18, scope: !2668)
!2688 = !DILocation(line: 1575, column: 10, scope: !2668)
!2689 = !DILocation(line: 1578, column: 18, scope: !2668)
!2690 = !DILocation(line: 1579, column: 21, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2668, file: !3, line: 1579, column: 15)
!2692 = !DILocation(line: 1579, column: 15, scope: !2668)
!2693 = !DILocation(line: 1580, column: 23, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2691, file: !3, line: 1579, column: 31)
!2695 = !DILocation(line: 1581, column: 23, scope: !2694)
!2696 = !DILocation(line: 1581, column: 50, scope: !2694)
!2697 = !DILocation(line: 1581, column: 41, scope: !2694)
!2698 = !DILocation(line: 1580, column: 13, scope: !2694)
!2699 = !DILocation(line: 0, scope: !430, inlinedAt: !2700)
!2700 = distinct !DILocation(line: 1582, column: 13, scope: !2694)
!2701 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !2700)
!2702 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !2700)
!2703 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !2700)
!2704 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !2700)
!2705 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !2700)
!2706 = !DILocation(line: 1588, column: 10, scope: !2668)
!2707 = !DILocation(line: 1592, column: 8, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 1592, column: 8)
!2709 = !DILocation(line: 1592, column: 18, scope: !2708)
!2710 = !DILocation(line: 1592, column: 8, scope: !2567)
!2711 = !DILocation(line: 1593, column: 17, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2708, file: !3, line: 1592, column: 24)
!2713 = !DILocation(line: 1593, column: 7, scope: !2712)
!2714 = !DILocation(line: 0, scope: !1559, inlinedAt: !2715)
!2715 = distinct !DILocation(line: 1594, column: 7, scope: !2712)
!2716 = !DILocation(line: 919, column: 16, scope: !1565, inlinedAt: !2715)
!2717 = !DILocation(line: 919, column: 29, scope: !1565, inlinedAt: !2715)
!2718 = !DILocation(line: 919, column: 26, scope: !1565, inlinedAt: !2715)
!2719 = !DILocation(line: 919, column: 9, scope: !1559, inlinedAt: !2715)
!2720 = !DILocation(line: 921, column: 17, scope: !1570, inlinedAt: !2715)
!2721 = !DILocation(line: 921, column: 7, scope: !1570, inlinedAt: !2715)
!2722 = !DILocation(line: 920, column: 58, scope: !1570, inlinedAt: !2715)
!2723 = !DILocation(line: 920, column: 21, scope: !1570, inlinedAt: !2715)
!2724 = !DILocation(line: 920, column: 46, scope: !1570, inlinedAt: !2715)
!2725 = !DILocation(line: 920, column: 37, scope: !1570, inlinedAt: !2715)
!2726 = !DILocation(line: 920, column: 18, scope: !1570, inlinedAt: !2715)
!2727 = !DILocation(line: 920, column: 4, scope: !1571, inlinedAt: !2715)
!2728 = distinct !{!2728, !2727, !2729, !461}
!2729 = !DILocation(line: 921, column: 29, scope: !1571, inlinedAt: !2715)
!2730 = !DILocation(line: 1595, column: 16, scope: !2712)
!2731 = !DILocation(line: 1595, column: 7, scope: !2712)
!2732 = !DILocation(line: 1596, column: 4, scope: !2712)
!2733 = !DILocation(line: 1599, column: 27, scope: !2567)
!2734 = !DILocalVariable(name: "zStream", arg: 1, scope: !2735, file: !3, line: 554, type: !82)
!2735 = distinct !DISubprogram(name: "testStream", scope: !3, file: !3, line: 554, type: !1665, scopeLine: 555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2736)
!2736 = !{!2734, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749}
!2737 = !DILocalVariable(name: "bzf", scope: !2735, file: !3, line: 556, type: !1593)
!2738 = !DILocalVariable(name: "bzerr", scope: !2735, file: !3, line: 557, type: !12)
!2739 = !DILocalVariable(name: "bzerr_dummy", scope: !2735, file: !3, line: 557, type: !12)
!2740 = !DILocalVariable(name: "ret", scope: !2735, file: !3, line: 557, type: !12)
!2741 = !DILocalVariable(name: "streamNo", scope: !2735, file: !3, line: 557, type: !12)
!2742 = !DILocalVariable(name: "i", scope: !2735, file: !3, line: 557, type: !12)
!2743 = !DILocalVariable(name: "obuf", scope: !2735, file: !3, line: 558, type: !1597)
!2744 = !DILocalVariable(name: "unused", scope: !2735, file: !3, line: 559, type: !1597)
!2745 = !DILocalVariable(name: "nUnused", scope: !2735, file: !3, line: 560, type: !12)
!2746 = !DILocalVariable(name: "unusedTmpV", scope: !2735, file: !3, line: 561, type: !11)
!2747 = !DILocalVariable(name: "unusedTmp", scope: !2735, file: !3, line: 562, type: !28)
!2748 = !DILabel(scope: !2735, name: "errhandler", file: !3, line: 604)
!2749 = !DILabel(scope: !2750, name: "errhandler_io", file: !3, line: 612)
!2750 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 608, column: 19)
!2751 = !DILocation(line: 0, scope: !2735, inlinedAt: !2752)
!2752 = distinct !DILocation(line: 1600, column: 12, scope: !2567)
!2753 = !DILocation(line: 557, column: 4, scope: !2735, inlinedAt: !2752)
!2754 = !DILocation(line: 558, column: 4, scope: !2735, inlinedAt: !2752)
!2755 = !DILocation(line: 558, column: 12, scope: !2735, inlinedAt: !2752)
!2756 = !DILocation(line: 559, column: 4, scope: !2735, inlinedAt: !2752)
!2757 = !DILocation(line: 559, column: 12, scope: !2735, inlinedAt: !2752)
!2758 = !DILocation(line: 560, column: 4, scope: !2735, inlinedAt: !2752)
!2759 = !DILocation(line: 561, column: 4, scope: !2735, inlinedAt: !2752)
!2760 = !DILocation(line: 564, column: 12, scope: !2735, inlinedAt: !2752)
!2761 = !DILocation(line: 568, column: 8, scope: !2762, inlinedAt: !2752)
!2762 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 568, column: 8)
!2763 = !DILocation(line: 568, column: 8, scope: !2735, inlinedAt: !2752)
!2764 = !DILocation(line: 573, column: 33, scope: !2765, inlinedAt: !2752)
!2765 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 570, column: 17)
!2766 = !DILocation(line: 574, column: 21, scope: !2765, inlinedAt: !2752)
!2767 = !DILocation(line: 574, column: 16, scope: !2765, inlinedAt: !2752)
!2768 = !DILocation(line: 572, column: 13, scope: !2765, inlinedAt: !2752)
!2769 = !DILocation(line: 576, column: 15, scope: !2770, inlinedAt: !2752)
!2770 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 576, column: 11)
!2771 = !DILocation(line: 576, column: 23, scope: !2770, inlinedAt: !2752)
!2772 = !DILocation(line: 577, column: 15, scope: !2765, inlinedAt: !2752)
!2773 = !DILocation(line: 579, column: 7, scope: !2765, inlinedAt: !2752)
!2774 = !DILocation(line: 579, column: 14, scope: !2765, inlinedAt: !2752)
!2775 = !DILocation(line: 580, column: 10, scope: !2776, inlinedAt: !2752)
!2776 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 579, column: 30)
!2777 = !DILocation(line: 581, column: 14, scope: !2778, inlinedAt: !2752)
!2778 = distinct !DILexicalBlock(scope: !2776, file: !3, line: 581, column: 14)
!2779 = !DILocation(line: 581, column: 20, scope: !2778, inlinedAt: !2752)
!2780 = !DILocation(line: 581, column: 14, scope: !2776, inlinedAt: !2752)
!2781 = distinct !{!2781, !2773, !2782, !461}
!2782 = !DILocation(line: 582, column: 7, scope: !2765, inlinedAt: !2752)
!2783 = !DILocation(line: 585, column: 7, scope: !2765, inlinedAt: !2752)
!2784 = !DILocation(line: 586, column: 11, scope: !2785, inlinedAt: !2752)
!2785 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 586, column: 11)
!2786 = !DILocation(line: 586, column: 17, scope: !2785, inlinedAt: !2752)
!2787 = !DILocation(line: 586, column: 11, scope: !2765, inlinedAt: !2752)
!2788 = !DILocation(line: 586, column: 27, scope: !2785, inlinedAt: !2752)
!2789 = !DILocation(line: 588, column: 27, scope: !2765, inlinedAt: !2752)
!2790 = !DILocation(line: 589, column: 23, scope: !2791, inlinedAt: !2752)
!2791 = distinct !DILexicalBlock(scope: !2792, file: !3, line: 589, column: 7)
!2792 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 589, column: 7)
!2793 = !DILocation(line: 589, column: 21, scope: !2791, inlinedAt: !2752)
!2794 = !DILocation(line: 589, column: 7, scope: !2792, inlinedAt: !2752)
!2795 = !DILocation(line: 589, column: 49, scope: !2791, inlinedAt: !2752)
!2796 = !DILocation(line: 589, column: 37, scope: !2791, inlinedAt: !2752)
!2797 = !DILocation(line: 589, column: 47, scope: !2791, inlinedAt: !2752)
!2798 = !DILocation(line: 589, column: 33, scope: !2791, inlinedAt: !2752)
!2799 = distinct !{!2799, !2794, !2800, !461}
!2800 = !DILocation(line: 589, column: 60, scope: !2792, inlinedAt: !2752)
!2801 = !DILocation(line: 591, column: 7, scope: !2765, inlinedAt: !2752)
!2802 = !DILocation(line: 592, column: 11, scope: !2803, inlinedAt: !2752)
!2803 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 592, column: 11)
!2804 = !DILocation(line: 592, column: 17, scope: !2803, inlinedAt: !2752)
!2805 = !DILocation(line: 592, column: 11, scope: !2765, inlinedAt: !2752)
!2806 = !DILocation(line: 592, column: 27, scope: !2803, inlinedAt: !2752)
!2807 = !DILocation(line: 593, column: 11, scope: !2808, inlinedAt: !2752)
!2808 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 593, column: 11)
!2809 = !DILocation(line: 593, column: 19, scope: !2808, inlinedAt: !2752)
!2810 = !DILocation(line: 593, column: 24, scope: !2808, inlinedAt: !2752)
!2811 = !DILocation(line: 0, scope: !1664, inlinedAt: !2812)
!2812 = distinct !DILocation(line: 593, column: 27, scope: !2808, inlinedAt: !2752)
!2813 = !DILocation(line: 320, column: 14, scope: !1664, inlinedAt: !2812)
!2814 = !DILocation(line: 321, column: 10, scope: !1675, inlinedAt: !2812)
!2815 = !DILocation(line: 321, column: 8, scope: !1664, inlinedAt: !2812)
!2816 = !DILocation(line: 322, column: 4, scope: !1664, inlinedAt: !2812)
!2817 = !DILocation(line: 574, column: 40, scope: !2765, inlinedAt: !2752)
!2818 = !DILocation(line: 593, column: 11, scope: !2765, inlinedAt: !2752)
!2819 = distinct !{!2819, !2820, !2821}
!2820 = !DILocation(line: 570, column: 4, scope: !2735, inlinedAt: !2752)
!2821 = !DILocation(line: 595, column: 4, scope: !2735, inlinedAt: !2752)
!2822 = !DILocation(line: 597, column: 8, scope: !2823, inlinedAt: !2752)
!2823 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 597, column: 8)
!2824 = !DILocation(line: 597, column: 8, scope: !2735, inlinedAt: !2752)
!2825 = !DILocation(line: 598, column: 10, scope: !2735, inlinedAt: !2752)
!2826 = !DILocation(line: 599, column: 12, scope: !2827, inlinedAt: !2752)
!2827 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 599, column: 8)
!2828 = !DILocation(line: 599, column: 8, scope: !2735, inlinedAt: !2752)
!2829 = !DILocation(line: 601, column: 8, scope: !2830, inlinedAt: !2752)
!2830 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 601, column: 8)
!2831 = !DILocation(line: 601, column: 18, scope: !2830, inlinedAt: !2752)
!2832 = !DILocation(line: 601, column: 8, scope: !2735, inlinedAt: !2752)
!2833 = !DILocation(line: 601, column: 34, scope: !2830, inlinedAt: !2752)
!2834 = !DILocation(line: 601, column: 24, scope: !2830, inlinedAt: !2752)
!2835 = !DILocation(line: 604, column: 4, scope: !2735, inlinedAt: !2752)
!2836 = !DILocation(line: 605, column: 4, scope: !2735, inlinedAt: !2752)
!2837 = !DILocation(line: 606, column: 8, scope: !2838, inlinedAt: !2752)
!2838 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 606, column: 8)
!2839 = !DILocation(line: 606, column: 18, scope: !2838, inlinedAt: !2752)
!2840 = !DILocation(line: 606, column: 8, scope: !2735, inlinedAt: !2752)
!2841 = !DILocation(line: 607, column: 17, scope: !2838, inlinedAt: !2752)
!2842 = !DILocation(line: 607, column: 37, scope: !2838, inlinedAt: !2752)
!2843 = !DILocation(line: 607, column: 7, scope: !2838, inlinedAt: !2752)
!2844 = !DILocation(line: 608, column: 12, scope: !2735, inlinedAt: !2752)
!2845 = !DILocation(line: 608, column: 4, scope: !2735, inlinedAt: !2752)
!2846 = !DILocation(line: 610, column: 10, scope: !2750, inlinedAt: !2752)
!2847 = !DILocation(line: 612, column: 10, scope: !2750, inlinedAt: !2752)
!2848 = !DILocation(line: 613, column: 10, scope: !2750, inlinedAt: !2752)
!2849 = !DILocation(line: 615, column: 20, scope: !2750, inlinedAt: !2752)
!2850 = !DILocation(line: 615, column: 10, scope: !2750, inlinedAt: !2752)
!2851 = !DILocation(line: 617, column: 10, scope: !2750, inlinedAt: !2752)
!2852 = !DILocation(line: 619, column: 10, scope: !2750, inlinedAt: !2752)
!2853 = !DILocation(line: 621, column: 20, scope: !2750, inlinedAt: !2752)
!2854 = !DILocation(line: 621, column: 10, scope: !2750, inlinedAt: !2752)
!2855 = !DILocation(line: 623, column: 10, scope: !2750, inlinedAt: !2752)
!2856 = !DILocation(line: 625, column: 25, scope: !2857, inlinedAt: !2752)
!2857 = distinct !DILexicalBlock(scope: !2750, file: !3, line: 625, column: 14)
!2858 = !DILocation(line: 625, column: 22, scope: !2857, inlinedAt: !2752)
!2859 = !DILocation(line: 625, column: 14, scope: !2750, inlinedAt: !2752)
!2860 = !DILocation(line: 625, column: 32, scope: !2857, inlinedAt: !2752)
!2861 = !DILocation(line: 626, column: 23, scope: !2862, inlinedAt: !2752)
!2862 = distinct !DILexicalBlock(scope: !2750, file: !3, line: 626, column: 14)
!2863 = !DILocation(line: 626, column: 14, scope: !2750, inlinedAt: !2752)
!2864 = !DILocation(line: 627, column: 21, scope: !2865, inlinedAt: !2752)
!2865 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 626, column: 29)
!2866 = !DILocation(line: 627, column: 11, scope: !2865, inlinedAt: !2752)
!2867 = !DILocation(line: 629, column: 13, scope: !2865, inlinedAt: !2752)
!2868 = !DILocation(line: 631, column: 17, scope: !2869, inlinedAt: !2752)
!2869 = distinct !DILexicalBlock(scope: !2870, file: !3, line: 631, column: 17)
!2870 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 630, column: 17)
!2871 = !DILocation(line: 631, column: 17, scope: !2870, inlinedAt: !2752)
!2872 = !DILocation(line: 632, column: 23, scope: !2869, inlinedAt: !2752)
!2873 = !DILocation(line: 632, column: 13, scope: !2869, inlinedAt: !2752)
!2874 = !DILocation(line: 637, column: 10, scope: !2750, inlinedAt: !2752)
!2875 = !DILocation(line: 642, column: 1, scope: !2735, inlinedAt: !2752)
!2876 = !DILocation(line: 1602, column: 14, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 1602, column: 8)
!2878 = !DILocation(line: 1602, column: 43, scope: !2877)
!2879 = !DILocation(line: 1602, column: 33, scope: !2877)
!2880 = !DILocation(line: 1603, column: 8, scope: !2567)
!2881 = !DILocation(line: 1603, column: 31, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 1603, column: 8)
!2883 = !DILocation(line: 1603, column: 16, scope: !2882)
!2884 = !DILocation(line: 1604, column: 1, scope: !2567)
!2885 = !DISubprogram(name: "write", scope: !2886, file: !2886, line: 245, type: !2887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2886 = !DIFile(filename: "/opt/riscv/riscv32-unknown-elf/include/sys/unistd.h", directory: "")
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!13, !13, !2889, !25}
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 32)
!2890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2891 = !DISubprogram(name: "getenv", scope: !2892, file: !2892, line: 95, type: !2893, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2892 = !DIFile(filename: "/opt/riscv/riscv32-unknown-elf/include/stdlib.h", directory: "")
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!151, !268}
!2895 = distinct !DISubprogram(name: "outOfMemory", scope: !3, file: !3, line: 880, type: !237, scopeLine: 881, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!2896 = !DILocation(line: 882, column: 14, scope: !2895)
!2897 = !DILocation(line: 884, column: 14, scope: !2895)
!2898 = !DILocation(line: 882, column: 4, scope: !2895)
!2899 = !DILocation(line: 885, column: 4, scope: !2895)
!2900 = !DILocation(line: 886, column: 4, scope: !2895)
!2901 = distinct !DISubprogram(name: "showFileNames", scope: !3, file: !3, line: 674, type: !237, scopeLine: 675, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!2902 = !DILocation(line: 676, column: 8, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2901, file: !3, line: 676, column: 8)
!2904 = !DILocation(line: 676, column: 8, scope: !2901)
!2905 = !DILocation(line: 678, column: 7, scope: !2903)
!2906 = !DILocation(line: 677, column: 4, scope: !2903)
!2907 = !DILocation(line: 682, column: 1, scope: !2901)
!2908 = distinct !DISubprogram(name: "cleanUpAndFail", scope: !3, file: !3, line: 687, type: !431, scopeLine: 688, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2909)
!2909 = !{!2910, !2911, !2912}
!2910 = !DILocalVariable(name: "ec", arg: 1, scope: !2908, file: !3, line: 687, type: !12)
!2911 = !DILocalVariable(name: "retVal", scope: !2908, file: !3, line: 689, type: !361)
!2912 = !DILocalVariable(name: "statBuf", scope: !2908, file: !3, line: 690, type: !302)
!2913 = !DILocation(line: 0, scope: !2908)
!2914 = !DILocation(line: 690, column: 4, scope: !2908)
!2915 = !DILocation(line: 690, column: 19, scope: !2908)
!2916 = !DILocation(line: 692, column: 9, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2908, file: !3, line: 692, column: 9)
!2918 = !DILocation(line: 692, column: 17, scope: !2917)
!2919 = !DILocation(line: 693, column: 9, scope: !2917)
!2920 = !DILocation(line: 701, column: 16, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2917, file: !3, line: 694, column: 38)
!2922 = !DILocation(line: 702, column: 18, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2921, file: !3, line: 702, column: 11)
!2924 = !DILocation(line: 702, column: 11, scope: !2921)
!2925 = !DILocation(line: 703, column: 14, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 703, column: 14)
!2927 = distinct !DILexicalBlock(scope: !2923, file: !3, line: 702, column: 24)
!2928 = !DILocation(line: 703, column: 14, scope: !2927)
!2929 = !DILocation(line: 704, column: 23, scope: !2926)
!2930 = !DILocation(line: 706, column: 23, scope: !2926)
!2931 = !DILocation(line: 704, column: 13, scope: !2926)
!2932 = !DILocation(line: 707, column: 14, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 707, column: 14)
!2934 = !DILocation(line: 707, column: 37, scope: !2933)
!2935 = !DILocation(line: 707, column: 14, scope: !2927)
!2936 = !DILocation(line: 708, column: 13, scope: !2933)
!2937 = !DILocation(line: 709, column: 19, scope: !2927)
!2938 = !DILocation(line: 710, column: 21, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 710, column: 14)
!2940 = !DILocation(line: 710, column: 14, scope: !2927)
!2941 = !DILocation(line: 711, column: 23, scope: !2939)
!2942 = !DILocation(line: 714, column: 23, scope: !2939)
!2943 = !DILocation(line: 711, column: 13, scope: !2939)
!2944 = !DILocation(line: 716, column: 20, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2923, file: !3, line: 715, column: 14)
!2946 = !DILocation(line: 718, column: 21, scope: !2945)
!2947 = !DILocation(line: 716, column: 10, scope: !2945)
!2948 = !DILocation(line: 719, column: 20, scope: !2945)
!2949 = !DILocation(line: 721, column: 20, scope: !2945)
!2950 = !DILocation(line: 719, column: 10, scope: !2945)
!2951 = !DILocation(line: 722, column: 20, scope: !2945)
!2952 = !DILocation(line: 724, column: 20, scope: !2945)
!2953 = !DILocation(line: 722, column: 10, scope: !2945)
!2954 = !DILocation(line: 725, column: 20, scope: !2945)
!2955 = !DILocation(line: 728, column: 20, scope: !2945)
!2956 = !DILocation(line: 725, column: 10, scope: !2945)
!2957 = !DILocation(line: 732, column: 8, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2908, file: !3, line: 732, column: 8)
!2959 = !DILocation(line: 732, column: 14, scope: !2958)
!2960 = !DILocation(line: 733, column: 17, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2958, file: !3, line: 732, column: 71)
!2962 = !DILocation(line: 736, column: 17, scope: !2961)
!2963 = !DILocation(line: 737, column: 44, scope: !2961)
!2964 = !DILocation(line: 733, column: 7, scope: !2961)
!2965 = !DILocation(line: 738, column: 4, scope: !2961)
!2966 = !DILocation(line: 0, scope: !430, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 739, column: 4, scope: !2908)
!2968 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !2967)
!2969 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !2967)
!2970 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !2967)
!2971 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !2967)
!2972 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !2967)
!2973 = !DILocation(line: 740, column: 9, scope: !2908)
!2974 = !DILocation(line: 740, column: 4, scope: !2908)
!2975 = !DISubprogram(name: "stat", scope: !303, file: !303, line: 142, type: !2976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!13, !268, !2978}
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 32)
!2979 = !DISubprogram(name: "fclose", scope: !84, file: !84, line: 191, type: !2980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!13, !2982}
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 32)
!2983 = !DISubprogram(name: "remove", scope: !84, file: !84, line: 246, type: !2984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!13, !268}
!2986 = !DISubprogram(name: "BZ2_bzlibVersion", scope: !1595, file: !1595, line: 233, type: !2987, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!268}
!2989 = distinct !DISubprogram(name: "panic", scope: !3, file: !3, line: 746, type: !2990, scopeLine: 747, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2992)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{null, !33}
!2992 = !{!2993}
!2993 = !DILocalVariable(name: "s", arg: 1, scope: !2989, file: !3, line: 746, type: !33)
!2994 = !DILocation(line: 0, scope: !2989)
!2995 = !DILocation(line: 748, column: 14, scope: !2989)
!2996 = !DILocation(line: 753, column: 14, scope: !2989)
!2997 = !DILocation(line: 748, column: 4, scope: !2989)
!2998 = !DILocation(line: 754, column: 4, scope: !2989)
!2999 = !DILocation(line: 755, column: 4, scope: !2989)
!3000 = !DISubprogram(name: "isatty", scope: !2886, file: !2886, line: 150, type: !3001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!13, !13}
!3003 = !DISubprogram(name: "fileno", scope: !84, file: !84, line: 341, type: !2980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3004 = !DISubprogram(name: "fflush", scope: !84, file: !84, line: 192, type: !2980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3005 = distinct !DISubprogram(name: "ioError", scope: !3, file: !3, line: 791, type: !237, scopeLine: 792, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!3006 = !DILocation(line: 793, column: 14, scope: !3005)
!3007 = !DILocation(line: 796, column: 14, scope: !3005)
!3008 = !DILocation(line: 793, column: 4, scope: !3005)
!3009 = !DILocation(line: 797, column: 13, scope: !3005)
!3010 = !DILocation(line: 797, column: 4, scope: !3005)
!3011 = !DILocation(line: 798, column: 4, scope: !3005)
!3012 = !DILocation(line: 799, column: 4, scope: !3005)
!3013 = !DISubprogram(name: "open", scope: !3014, file: !3014, line: 213, type: !3015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3014 = !DIFile(filename: "/opt/riscv/riscv32-unknown-elf/include/sys/_default_fcntl.h", directory: "")
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!13, !268, !13, null}
!3017 = !DISubprogram(name: "fdopen", scope: !84, file: !84, line: 339, type: !3018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!2982, !13, !268}
!3020 = !DISubprogram(name: "close", scope: !2886, file: !2886, line: 30, type: !3001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3021 = !DISubprogram(name: "BZ2_bzWriteOpen", scope: !1595, file: !1595, line: 167, type: !3022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!11, !3024, !2982, !13, !13, !13}
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 32)
!3025 = !DISubprogram(name: "BZ2_bzWrite", scope: !1595, file: !1595, line: 175, type: !3026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{null, !3024, !11, !11, !13}
!3028 = !DISubprogram(name: "BZ2_bzWriteClose64", scope: !1595, file: !1595, line: 190, type: !3029, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{null, !3024, !11, !13, !3031, !3031, !3031, !3031}
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 32)
!3032 = distinct !DISubprogram(name: "uInt64_to_double", scope: !3, file: !3, line: 252, type: !3033, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3035)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!27, !1760}
!3035 = !{!3036, !3037, !3038, !3039}
!3036 = !DILocalVariable(name: "n", arg: 1, scope: !3032, file: !3, line: 252, type: !1760)
!3037 = !DILocalVariable(name: "i", scope: !3032, file: !3, line: 254, type: !12)
!3038 = !DILocalVariable(name: "base", scope: !3032, file: !3, line: 255, type: !27)
!3039 = !DILocalVariable(name: "sum", scope: !3032, file: !3, line: 256, type: !27)
!3040 = !DILocation(line: 0, scope: !3032)
!3041 = !DILocation(line: 258, column: 31, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !3, line: 257, column: 28)
!3043 = distinct !DILexicalBlock(scope: !3044, file: !3, line: 257, column: 4)
!3044 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 257, column: 4)
!3045 = !DILocation(line: 258, column: 22, scope: !3042)
!3046 = !DILocation(line: 258, column: 20, scope: !3042)
!3047 = !DILocation(line: 258, column: 12, scope: !3042)
!3048 = !DILocation(line: 261, column: 4, scope: !3032)
!3049 = distinct !DISubprogram(name: "uInt64_toAscii", scope: !3, file: !3, line: 295, type: !3050, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3052)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{null, !151, !1760}
!3052 = !{!3053, !3054, !3055, !3056, !3057, !3059, !3060}
!3053 = !DILocalVariable(name: "outbuf", arg: 1, scope: !3049, file: !3, line: 295, type: !151)
!3054 = !DILocalVariable(name: "n", arg: 2, scope: !3049, file: !3, line: 295, type: !1760)
!3055 = !DILocalVariable(name: "i", scope: !3049, file: !3, line: 297, type: !12)
!3056 = !DILocalVariable(name: "q", scope: !3049, file: !3, line: 297, type: !12)
!3057 = !DILocalVariable(name: "buf", scope: !3049, file: !3, line: 298, type: !3058)
!3058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 256, elements: !239)
!3059 = !DILocalVariable(name: "nBuf", scope: !3049, file: !3, line: 299, type: !12)
!3060 = !DILocalVariable(name: "n_copy", scope: !3049, file: !3, line: 300, type: !1620)
!3061 = !DILocation(line: 0, scope: !3049)
!3062 = !DILocation(line: 298, column: 4, scope: !3049)
!3063 = !DILocation(line: 298, column: 11, scope: !3049)
!3064 = !DILocation(line: 300, column: 11, scope: !3049)
!3065 = !DILocation(line: 300, column: 20, scope: !3049)
!3066 = !DILocation(line: 301, column: 4, scope: !3049)
!3067 = !DILocalVariable(name: "n", arg: 1, scope: !3068, file: !3, line: 277, type: !1760)
!3068 = distinct !DISubprogram(name: "uInt64_qrm10", scope: !3, file: !3, line: 277, type: !3069, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3071)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!12, !1760}
!3071 = !{!3067, !3072, !3073, !3074}
!3072 = !DILocalVariable(name: "rem", scope: !3068, file: !3, line: 279, type: !1602)
!3073 = !DILocalVariable(name: "tmp", scope: !3068, file: !3, line: 279, type: !1602)
!3074 = !DILocalVariable(name: "i", scope: !3068, file: !3, line: 280, type: !12)
!3075 = !DILocation(line: 0, scope: !3068, inlinedAt: !3076)
!3076 = distinct !DILocation(line: 302, column: 11, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3049, file: !3, line: 301, column: 7)
!3078 = !DILocation(line: 284, column: 21, scope: !3079, inlinedAt: !3076)
!3079 = distinct !DILexicalBlock(scope: !3080, file: !3, line: 282, column: 29)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !3, line: 282, column: 4)
!3081 = distinct !DILexicalBlock(scope: !3068, file: !3, line: 282, column: 4)
!3082 = !DILocation(line: 285, column: 17, scope: !3079, inlinedAt: !3076)
!3083 = !DILocation(line: 283, column: 17, scope: !3079, inlinedAt: !3076)
!3084 = !DILocation(line: 283, column: 25, scope: !3079, inlinedAt: !3076)
!3085 = !DILocation(line: 283, column: 23, scope: !3079, inlinedAt: !3076)
!3086 = !DILocation(line: 303, column: 19, scope: !3077)
!3087 = !DILocation(line: 303, column: 7, scope: !3077)
!3088 = !DILocation(line: 303, column: 17, scope: !3077)
!3089 = !DILocation(line: 304, column: 11, scope: !3077)
!3090 = !DILocalVariable(name: "n", arg: 1, scope: !3091, file: !3, line: 266, type: !1760)
!3091 = distinct !DISubprogram(name: "uInt64_isZero", scope: !3, file: !3, line: 266, type: !3092, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3094)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!6, !1760}
!3094 = !{!3090, !3095}
!3095 = !DILocalVariable(name: "i", scope: !3091, file: !3, line: 268, type: !12)
!3096 = !DILocation(line: 0, scope: !3091, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 305, column: 14, scope: !3049)
!3098 = !DILocation(line: 270, column: 11, scope: !3099, inlinedAt: !3097)
!3099 = distinct !DILexicalBlock(scope: !3100, file: !3, line: 269, column: 4)
!3100 = distinct !DILexicalBlock(scope: !3091, file: !3, line: 269, column: 4)
!3101 = !DILocation(line: 305, column: 13, scope: !3049)
!3102 = !DILocation(line: 305, column: 4, scope: !3077)
!3103 = distinct !{!3103, !3066, !3104, !461}
!3104 = !DILocation(line: 305, column: 36, scope: !3049)
!3105 = !DILocation(line: 306, column: 4, scope: !3049)
!3106 = !DILocation(line: 306, column: 17, scope: !3049)
!3107 = !DILocation(line: 307, column: 4, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3049, file: !3, line: 307, column: 4)
!3109 = !DILocation(line: 308, column: 29, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 307, column: 4)
!3111 = !DILocation(line: 308, column: 19, scope: !3110)
!3112 = !DILocation(line: 308, column: 7, scope: !3110)
!3113 = !DILocation(line: 308, column: 17, scope: !3110)
!3114 = !DILocation(line: 307, column: 27, scope: !3110)
!3115 = !DILocation(line: 307, column: 18, scope: !3110)
!3116 = distinct !{!3116, !3107, !3117, !461}
!3117 = !DILocation(line: 308, column: 31, scope: !3108)
!3118 = !DILocation(line: 309, column: 1, scope: !3049)
!3119 = distinct !DISubprogram(name: "configError", scope: !3, file: !3, line: 892, type: !237, scopeLine: 893, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!3120 = !DILocation(line: 894, column: 14, scope: !3119)
!3121 = !DILocation(line: 894, column: 4, scope: !3119)
!3122 = !DILocation(line: 0, scope: !430, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 900, column: 4, scope: !3119)
!3124 = !DILocation(line: 653, column: 12, scope: !437, inlinedAt: !3123)
!3125 = !DILocation(line: 653, column: 10, scope: !437, inlinedAt: !3123)
!3126 = !DILocation(line: 653, column: 8, scope: !430, inlinedAt: !3123)
!3127 = !DILocation(line: 653, column: 33, scope: !437, inlinedAt: !3123)
!3128 = !DILocation(line: 653, column: 23, scope: !437, inlinedAt: !3123)
!3129 = !DILocation(line: 901, column: 9, scope: !3119)
!3130 = !DILocation(line: 901, column: 4, scope: !3119)
!3131 = !DISubprogram(name: "fgetc", scope: !84, file: !84, line: 212, type: !2980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3132 = !DISubprogram(name: "ungetc", scope: !84, file: !84, line: 222, type: !3133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{!13, !13, !2982}
!3135 = !DISubprogram(name: "fchmod", scope: !2886, file: !2886, line: 80, type: !3136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!13, !13, !25}
!3138 = !DISubprogram(name: "fchown", scope: !2886, file: !2886, line: 84, type: !3139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!13, !13, !184, !184}
!3141 = !DISubprogram(name: "perror", scope: !84, file: !84, line: 241, type: !3142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{null, !268}
!3144 = !DISubprogram(name: "BZ2_bzReadOpen", scope: !1595, file: !1595, line: 139, type: !3145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!11, !3024, !2982, !13, !13, !11, !13}
!3147 = !DISubprogram(name: "BZ2_bzRead", scope: !1595, file: !1595, line: 160, type: !3148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!13, !3024, !11, !11, !13}
!3150 = !DISubprogram(name: "BZ2_bzReadGetUnused", scope: !1595, file: !1595, line: 153, type: !3151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{null, !3024, !11, !3153, !3024}
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 32)
!3154 = !DISubprogram(name: "BZ2_bzReadClose", scope: !1595, file: !1595, line: 148, type: !3155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{null, !3024, !11}
!3157 = !DISubprogram(name: "rewind", scope: !84, file: !84, line: 237, type: !3158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{null, !2982}
!3160 = distinct !DISubprogram(name: "crcError", scope: !3, file: !3, line: 761, type: !237, scopeLine: 762, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!3161 = !DILocation(line: 763, column: 14, scope: !3160)
!3162 = !DILocation(line: 765, column: 14, scope: !3160)
!3163 = !DILocation(line: 763, column: 4, scope: !3160)
!3164 = !DILocation(line: 766, column: 4, scope: !3160)
!3165 = !DILocation(line: 767, column: 4, scope: !3160)
!3166 = !DILocation(line: 768, column: 4, scope: !3160)
!3167 = distinct !DISubprogram(name: "compressedStreamEOF", scope: !3, file: !3, line: 774, type: !237, scopeLine: 775, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!3168 = !DILocation(line: 776, column: 7, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 776, column: 7)
!3170 = !DILocation(line: 776, column: 7, scope: !3167)
!3171 = !DILocation(line: 777, column: 15, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3169, file: !3, line: 776, column: 14)
!3173 = !DILocation(line: 780, column: 8, scope: !3172)
!3174 = !DILocation(line: 777, column: 5, scope: !3172)
!3175 = !DILocation(line: 781, column: 14, scope: !3172)
!3176 = !DILocation(line: 781, column: 5, scope: !3172)
!3177 = !DILocation(line: 676, column: 8, scope: !2903, inlinedAt: !3178)
!3178 = distinct !DILocation(line: 782, column: 5, scope: !3172)
!3179 = !DILocation(line: 676, column: 8, scope: !2901, inlinedAt: !3178)
!3180 = !DILocation(line: 678, column: 7, scope: !2903, inlinedAt: !3178)
!3181 = !DILocation(line: 677, column: 4, scope: !2903, inlinedAt: !3178)
!3182 = !DILocation(line: 661, column: 8, scope: !3183, inlinedAt: !3185)
!3183 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 661, column: 8)
!3184 = distinct !DISubprogram(name: "cadvise", scope: !3, file: !3, line: 659, type: !237, scopeLine: 660, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!3185 = distinct !DILocation(line: 783, column: 5, scope: !3172)
!3186 = !DILocation(line: 661, column: 8, scope: !3184, inlinedAt: !3185)
!3187 = !DILocation(line: 663, column: 7, scope: !3183, inlinedAt: !3185)
!3188 = !DILocation(line: 662, column: 4, scope: !3183, inlinedAt: !3185)
!3189 = !DILocation(line: 785, column: 3, scope: !3167)
!3190 = !DILocation(line: 661, column: 8, scope: !3183)
!3191 = !DILocation(line: 661, column: 8, scope: !3184)
!3192 = !DILocation(line: 663, column: 7, scope: !3183)
!3193 = !DILocation(line: 662, column: 4, scope: !3183)
!3194 = !DILocation(line: 669, column: 1, scope: !3184)
