
array_gen_comparison:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 c1 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fc1]        # 3fd0 <__gmon_start__@Base>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <puts@plt-0x10>:
    1020:	ff 35 ca 2f 00 00    	push   QWORD PTR [rip+0x2fca]        # 3ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 2f 00 00    	jmp    QWORD PTR [rip+0x2fcc]        # 3ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001030 <puts@plt>:
    1030:	ff 25 ca 2f 00 00    	jmp    QWORD PTR [rip+0x2fca]        # 4000 <puts@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <GOMP_barrier@plt>:
    1040:	ff 25 c2 2f 00 00    	jmp    QWORD PTR [rip+0x2fc2]        # 4008 <GOMP_barrier@GOMP_1.0>
    1046:	68 01 00 00 00       	push   0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <omp_get_wtime@plt>:
    1050:	ff 25 ba 2f 00 00    	jmp    QWORD PTR [rip+0x2fba]        # 4010 <omp_get_wtime@OMP_2.0>
    1056:	68 02 00 00 00       	push   0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001060 <omp_get_thread_num@plt>:
    1060:	ff 25 b2 2f 00 00    	jmp    QWORD PTR [rip+0x2fb2]        # 4018 <omp_get_thread_num@OMP_1.0>
    1066:	68 03 00 00 00       	push   0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001070 <__stack_chk_fail@plt>:
    1070:	ff 25 aa 2f 00 00    	jmp    QWORD PTR [rip+0x2faa]        # 4020 <__stack_chk_fail@GLIBC_2.4>
    1076:	68 04 00 00 00       	push   0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001080 <printf@plt>:
    1080:	ff 25 a2 2f 00 00    	jmp    QWORD PTR [rip+0x2fa2]        # 4028 <printf@GLIBC_2.2.5>
    1086:	68 05 00 00 00       	push   0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001090 <omp_get_num_threads@plt>:
    1090:	ff 25 9a 2f 00 00    	jmp    QWORD PTR [rip+0x2f9a]        # 4030 <omp_get_num_threads@OMP_1.0>
    1096:	68 06 00 00 00       	push   0x6
    109b:	e9 80 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010a0 <__isoc99_scanf@plt>:
    10a0:	ff 25 92 2f 00 00    	jmp    QWORD PTR [rip+0x2f92]        # 4038 <__isoc99_scanf@GLIBC_2.7>
    10a6:	68 07 00 00 00       	push   0x7
    10ab:	e9 70 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010b0 <GOMP_parallel@plt>:
    10b0:	ff 25 8a 2f 00 00    	jmp    QWORD PTR [rip+0x2f8a]        # 4040 <GOMP_parallel@GOMP_4.0>
    10b6:	68 08 00 00 00       	push   0x8
    10bb:	e9 60 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .text:

00000000000010c0 <_start>:
    10c0:	f3 0f 1e fa          	endbr64
    10c4:	31 ed                	xor    ebp,ebp
    10c6:	49 89 d1             	mov    r9,rdx
    10c9:	5e                   	pop    rsi
    10ca:	48 89 e2             	mov    rdx,rsp
    10cd:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    10d1:	50                   	push   rax
    10d2:	54                   	push   rsp
    10d3:	45 31 c0             	xor    r8d,r8d
    10d6:	31 c9                	xor    ecx,ecx
    10d8:	48 8d 3d da 00 00 00 	lea    rdi,[rip+0xda]        # 11b9 <main>
    10df:	ff 15 db 2e 00 00    	call   QWORD PTR [rip+0x2edb]        # 3fc0 <__libc_start_main@GLIBC_2.34>
    10e5:	f4                   	hlt
    10e6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    10ed:	00 00 00 
    10f0:	48 8d 3d 61 2f 00 00 	lea    rdi,[rip+0x2f61]        # 4058 <__TMC_END__>
    10f7:	48 8d 05 5a 2f 00 00 	lea    rax,[rip+0x2f5a]        # 4058 <__TMC_END__>
    10fe:	48 39 f8             	cmp    rax,rdi
    1101:	74 15                	je     1118 <_start+0x58>
    1103:	48 8b 05 be 2e 00 00 	mov    rax,QWORD PTR [rip+0x2ebe]        # 3fc8 <_ITM_deregisterTMCloneTable@Base>
    110a:	48 85 c0             	test   rax,rax
    110d:	74 09                	je     1118 <_start+0x58>
    110f:	ff e0                	jmp    rax
    1111:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1118:	c3                   	ret
    1119:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1120:	48 8d 3d 31 2f 00 00 	lea    rdi,[rip+0x2f31]        # 4058 <__TMC_END__>
    1127:	48 8d 35 2a 2f 00 00 	lea    rsi,[rip+0x2f2a]        # 4058 <__TMC_END__>
    112e:	48 29 fe             	sub    rsi,rdi
    1131:	48 89 f0             	mov    rax,rsi
    1134:	48 c1 ee 3f          	shr    rsi,0x3f
    1138:	48 c1 f8 03          	sar    rax,0x3
    113c:	48 01 c6             	add    rsi,rax
    113f:	48 d1 fe             	sar    rsi,1
    1142:	74 14                	je     1158 <_start+0x98>
    1144:	48 8b 05 8d 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e8d]        # 3fd8 <_ITM_registerTMCloneTable@Base>
    114b:	48 85 c0             	test   rax,rax
    114e:	74 08                	je     1158 <_start+0x98>
    1150:	ff e0                	jmp    rax
    1152:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    1158:	c3                   	ret
    1159:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1160:	f3 0f 1e fa          	endbr64
    1164:	80 3d ed 2e 00 00 00 	cmp    BYTE PTR [rip+0x2eed],0x0        # 4058 <__TMC_END__>
    116b:	75 33                	jne    11a0 <_start+0xe0>
    116d:	55                   	push   rbp
    116e:	48 83 3d 6a 2e 00 00 	cmp    QWORD PTR [rip+0x2e6a],0x0        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1175:	00 
    1176:	48 89 e5             	mov    rbp,rsp
    1179:	74 0d                	je     1188 <_start+0xc8>
    117b:	48 8b 3d ce 2e 00 00 	mov    rdi,QWORD PTR [rip+0x2ece]        # 4050 <__dso_handle>
    1182:	ff 15 58 2e 00 00    	call   QWORD PTR [rip+0x2e58]        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1188:	e8 63 ff ff ff       	call   10f0 <_start+0x30>
    118d:	c6 05 c4 2e 00 00 01 	mov    BYTE PTR [rip+0x2ec4],0x1        # 4058 <__TMC_END__>
    1194:	5d                   	pop    rbp
    1195:	c3                   	ret
    1196:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    119d:	00 00 00 
    11a0:	c3                   	ret
    11a1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    11a8:	00 00 00 00 
    11ac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    11b0:	f3 0f 1e fa          	endbr64
    11b4:	e9 67 ff ff ff       	jmp    1120 <_start+0x60>

00000000000011b9 <main>:
    11b9:	55                   	push   rbp
    11ba:	48 89 e5             	mov    rbp,rsp
    11bd:	53                   	push   rbx
    11be:	48 83 ec 58          	sub    rsp,0x58
    11c2:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    11c9:	00 00 
    11cb:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    11cf:	31 c0                	xor    eax,eax
    11d1:	48 89 e0             	mov    rax,rsp
    11d4:	48 89 c3             	mov    rbx,rax
    11d7:	48 8d 05 2a 0e 00 00 	lea    rax,[rip+0xe2a]        # 2008 <_IO_stdin_used+0x8>
    11de:	48 89 c7             	mov    rdi,rax
    11e1:	b8 00 00 00 00       	mov    eax,0x0
    11e6:	e8 95 fe ff ff       	call   1080 <printf@plt>
    11eb:	48 8d 45 a4          	lea    rax,[rbp-0x5c]
    11ef:	48 89 c6             	mov    rsi,rax
    11f2:	48 8d 05 2d 0e 00 00 	lea    rax,[rip+0xe2d]        # 2026 <_IO_stdin_used+0x26>
    11f9:	48 89 c7             	mov    rdi,rax
    11fc:	b8 00 00 00 00       	mov    eax,0x0
    1201:	e8 9a fe ff ff       	call   10a0 <__isoc99_scanf@plt>
    1206:	8b 45 a4             	mov    eax,DWORD PTR [rbp-0x5c]
    1209:	85 c0                	test   eax,eax
    120b:	7f 0f                	jg     121c <main+0x63>
    120d:	48 8d 05 1c 0e 00 00 	lea    rax,[rip+0xe1c]        # 2030 <_IO_stdin_used+0x30>
    1214:	48 89 c7             	mov    rdi,rax
    1217:	e8 14 fe ff ff       	call   1030 <puts@plt>
    121c:	8b 45 a4             	mov    eax,DWORD PTR [rbp-0x5c]
    121f:	85 c0                	test   eax,eax
    1221:	7e b4                	jle    11d7 <main+0x1e>
    1223:	48 8d 05 36 0e 00 00 	lea    rax,[rip+0xe36]        # 2060 <_IO_stdin_used+0x60>
    122a:	48 89 c7             	mov    rdi,rax
    122d:	b8 00 00 00 00       	mov    eax,0x0
    1232:	e8 49 fe ff ff       	call   1080 <printf@plt>
    1237:	48 8d 45 a8          	lea    rax,[rbp-0x58]
    123b:	48 89 c6             	mov    rsi,rax
    123e:	48 8d 05 e1 0d 00 00 	lea    rax,[rip+0xde1]        # 2026 <_IO_stdin_used+0x26>
    1245:	48 89 c7             	mov    rdi,rax
    1248:	b8 00 00 00 00       	mov    eax,0x0
    124d:	e8 4e fe ff ff       	call   10a0 <__isoc99_scanf@plt>
    1252:	8b 45 a8             	mov    eax,DWORD PTR [rbp-0x58]
    1255:	85 c0                	test   eax,eax
    1257:	7f 0f                	jg     1268 <main+0xaf>
    1259:	48 8d 05 30 0e 00 00 	lea    rax,[rip+0xe30]        # 2090 <_IO_stdin_used+0x90>
    1260:	48 89 c7             	mov    rdi,rax
    1263:	e8 c8 fd ff ff       	call   1030 <puts@plt>
    1268:	8b 45 a8             	mov    eax,DWORD PTR [rbp-0x58]
    126b:	85 c0                	test   eax,eax
    126d:	7e b4                	jle    1223 <main+0x6a>
    126f:	8b 45 a8             	mov    eax,DWORD PTR [rbp-0x58]
    1272:	48 63 d0             	movsxd rdx,eax
    1275:	48 83 ea 01          	sub    rdx,0x1
    1279:	48 89 55 b0          	mov    QWORD PTR [rbp-0x50],rdx
    127d:	48 98                	cdqe
    127f:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    1286:	00 
    1287:	b8 10 00 00 00       	mov    eax,0x10
    128c:	48 83 e8 01          	sub    rax,0x1
    1290:	48 01 d0             	add    rax,rdx
    1293:	b9 10 00 00 00       	mov    ecx,0x10
    1298:	ba 00 00 00 00       	mov    edx,0x0
    129d:	48 f7 f1             	div    rcx
    12a0:	48 6b c0 10          	imul   rax,rax,0x10
    12a4:	48 29 c4             	sub    rsp,rax
    12a7:	48 89 e0             	mov    rax,rsp
    12aa:	48 83 c0 03          	add    rax,0x3
    12ae:	48 c1 e8 02          	shr    rax,0x2
    12b2:	48 c1 e0 02          	shl    rax,0x2
    12b6:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
    12ba:	e8 91 fd ff ff       	call   1050 <omp_get_wtime@plt>
    12bf:	66 48 0f 7e c0       	movq   rax,xmm0
    12c4:	48 89 45 c0          	mov    QWORD PTR [rbp-0x40],rax
    12c8:	c7 45 ac 00 00 00 00 	mov    DWORD PTR [rbp-0x54],0x0
    12cf:	eb 19                	jmp    12ea <main+0x131>
    12d1:	8b 45 ac             	mov    eax,DWORD PTR [rbp-0x54]
    12d4:	0f af c0             	imul   eax,eax
    12d7:	89 c1                	mov    ecx,eax
    12d9:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
    12dd:	8b 55 ac             	mov    edx,DWORD PTR [rbp-0x54]
    12e0:	48 63 d2             	movsxd rdx,edx
    12e3:	89 0c 90             	mov    DWORD PTR [rax+rdx*4],ecx
    12e6:	83 45 ac 01          	add    DWORD PTR [rbp-0x54],0x1
    12ea:	8b 45 a8             	mov    eax,DWORD PTR [rbp-0x58]
    12ed:	39 45 ac             	cmp    DWORD PTR [rbp-0x54],eax
    12f0:	7c df                	jl     12d1 <main+0x118>
    12f2:	e8 59 fd ff ff       	call   1050 <omp_get_wtime@plt>
    12f7:	66 48 0f 7e c0       	movq   rax,xmm0
    12fc:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
    1300:	f2 0f 10 45 c8       	movsd  xmm0,QWORD PTR [rbp-0x38]
    1305:	f2 0f 5c 45 c0       	subsd  xmm0,QWORD PTR [rbp-0x40]
    130a:	66 48 0f 7e c0       	movq   rax,xmm0
    130f:	66 48 0f 6e c0       	movq   xmm0,rax
    1314:	48 8d 05 a5 0d 00 00 	lea    rax,[rip+0xda5]        # 20c0 <_IO_stdin_used+0xc0>
    131b:	48 89 c7             	mov    rdi,rax
    131e:	b8 01 00 00 00       	mov    eax,0x1
    1323:	e8 58 fd ff ff       	call   1080 <printf@plt>
    1328:	e8 23 fd ff ff       	call   1050 <omp_get_wtime@plt>
    132d:	66 48 0f 7e c0       	movq   rax,xmm0
    1332:	48 89 45 c0          	mov    QWORD PTR [rbp-0x40],rax
    1336:	8b 55 a4             	mov    edx,DWORD PTR [rbp-0x5c]
    1339:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
    133d:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
    1341:	48 8d 45 a8          	lea    rax,[rbp-0x58]
    1345:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
    1349:	48 8d 45 d0          	lea    rax,[rbp-0x30]
    134d:	b9 00 00 00 00       	mov    ecx,0x0
    1352:	48 89 c6             	mov    rsi,rax
    1355:	48 8d 05 60 00 00 00 	lea    rax,[rip+0x60]        # 13bc <main._omp_fn.0>
    135c:	48 89 c7             	mov    rdi,rax
    135f:	e8 4c fd ff ff       	call   10b0 <GOMP_parallel@plt>
    1364:	e8 e7 fc ff ff       	call   1050 <omp_get_wtime@plt>
    1369:	66 48 0f 7e c0       	movq   rax,xmm0
    136e:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
    1372:	f2 0f 10 45 c8       	movsd  xmm0,QWORD PTR [rbp-0x38]
    1377:	f2 0f 5c 45 c0       	subsd  xmm0,QWORD PTR [rbp-0x40]
    137c:	66 48 0f 7e c0       	movq   rax,xmm0
    1381:	66 48 0f 6e c0       	movq   xmm0,rax
    1386:	48 8d 05 73 0d 00 00 	lea    rax,[rip+0xd73]        # 2100 <_IO_stdin_used+0x100>
    138d:	48 89 c7             	mov    rdi,rax
    1390:	b8 01 00 00 00       	mov    eax,0x1
    1395:	e8 e6 fc ff ff       	call   1080 <printf@plt>
    139a:	b8 00 00 00 00       	mov    eax,0x0
    139f:	48 89 dc             	mov    rsp,rbx
    13a2:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
    13a6:	64 48 2b 14 25 28 00 	sub    rdx,QWORD PTR fs:0x28
    13ad:	00 00 
    13af:	74 05                	je     13b6 <main+0x1fd>
    13b1:	e8 ba fc ff ff       	call   1070 <__stack_chk_fail@plt>
    13b6:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    13ba:	c9                   	leave
    13bb:	c3                   	ret

00000000000013bc <main._omp_fn.0>:
    13bc:	55                   	push   rbp
    13bd:	48 89 e5             	mov    rbp,rsp
    13c0:	41 54                	push   r12
    13c2:	53                   	push   rbx
    13c3:	48 83 ec 20          	sub    rsp,0x20
    13c7:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
    13cb:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    13cf:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
    13d3:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    13d7:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    13db:	48 8b 00             	mov    rax,QWORD PTR [rax]
    13de:	8b 18                	mov    ebx,DWORD PTR [rax]
    13e0:	e8 ab fc ff ff       	call   1090 <omp_get_num_threads@plt>
    13e5:	41 89 c4             	mov    r12d,eax
    13e8:	e8 73 fc ff ff       	call   1060 <omp_get_thread_num@plt>
    13ed:	89 c6                	mov    esi,eax
    13ef:	89 d8                	mov    eax,ebx
    13f1:	99                   	cdq
    13f2:	41 f7 fc             	idiv   r12d
    13f5:	89 c1                	mov    ecx,eax
    13f7:	89 d8                	mov    eax,ebx
    13f9:	99                   	cdq
    13fa:	41 f7 fc             	idiv   r12d
    13fd:	89 d0                	mov    eax,edx
    13ff:	39 c6                	cmp    esi,eax
    1401:	7c 36                	jl     1439 <main._omp_fn.0+0x7d>
    1403:	0f af f1             	imul   esi,ecx
    1406:	89 f2                	mov    edx,esi
    1408:	01 d0                	add    eax,edx
    140a:	8d 14 08             	lea    edx,[rax+rcx*1]
    140d:	39 d0                	cmp    eax,edx
    140f:	7d 21                	jge    1432 <main._omp_fn.0+0x76>
    1411:	89 45 e4             	mov    DWORD PTR [rbp-0x1c],eax
    1414:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
    1417:	0f af c0             	imul   eax,eax
    141a:	89 c6                	mov    esi,eax
    141c:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    1420:	8b 4d e4             	mov    ecx,DWORD PTR [rbp-0x1c]
    1423:	48 63 c9             	movsxd rcx,ecx
    1426:	89 34 88             	mov    DWORD PTR [rax+rcx*4],esi
    1429:	83 45 e4 01          	add    DWORD PTR [rbp-0x1c],0x1
    142d:	39 55 e4             	cmp    DWORD PTR [rbp-0x1c],edx
    1430:	7c e2                	jl     1414 <main._omp_fn.0+0x58>
    1432:	e8 09 fc ff ff       	call   1040 <GOMP_barrier@plt>
    1437:	eb 0a                	jmp    1443 <main._omp_fn.0+0x87>
    1439:	b8 00 00 00 00       	mov    eax,0x0
    143e:	83 c1 01             	add    ecx,0x1
    1441:	eb c0                	jmp    1403 <main._omp_fn.0+0x47>
    1443:	48 83 c4 20          	add    rsp,0x20
    1447:	5b                   	pop    rbx
    1448:	41 5c                	pop    r12
    144a:	5d                   	pop    rbp
    144b:	c3                   	ret

Disassembly of section .fini:

000000000000144c <_fini>:
    144c:	f3 0f 1e fa          	endbr64
    1450:	48 83 ec 08          	sub    rsp,0x8
    1454:	48 83 c4 08          	add    rsp,0x8
    1458:	c3                   	ret
