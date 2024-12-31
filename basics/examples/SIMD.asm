
SIMD:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 c1 3f 00 00 	mov    rax,QWORD PTR [rip+0x3fc1]        # 4fd0 <__gmon_start__@Base>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <__stack_chk_fail@plt-0x10>:
    1020:	ff 35 ca 3f 00 00    	push   QWORD PTR [rip+0x3fca]        # 4ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 3f 00 00    	jmp    QWORD PTR [rip+0x3fcc]        # 4ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001030 <__stack_chk_fail@plt>:
    1030:	ff 25 ca 3f 00 00    	jmp    QWORD PTR [rip+0x3fca]        # 5000 <__stack_chk_fail@GLIBC_2.4>
    1036:	68 00 00 00 00       	push   0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <printf@plt>:
    1040:	ff 25 c2 3f 00 00    	jmp    QWORD PTR [rip+0x3fc2]        # 5008 <printf@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <gettimeofday@plt>:
    1050:	ff 25 ba 3f 00 00    	jmp    QWORD PTR [rip+0x3fba]        # 5010 <gettimeofday@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	push   0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .text:

0000000000001060 <_start>:
    1060:	f3 0f 1e fa          	endbr64
    1064:	31 ed                	xor    ebp,ebp
    1066:	49 89 d1             	mov    r9,rdx
    1069:	5e                   	pop    rsi
    106a:	48 89 e2             	mov    rdx,rsp
    106d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1071:	50                   	push   rax
    1072:	54                   	push   rsp
    1073:	45 31 c0             	xor    r8d,r8d
    1076:	31 c9                	xor    ecx,ecx
    1078:	48 8d 3d eb 02 00 00 	lea    rdi,[rip+0x2eb]        # 136a <main>
    107f:	ff 15 3b 3f 00 00    	call   QWORD PTR [rip+0x3f3b]        # 4fc0 <__libc_start_main@GLIBC_2.34>
    1085:	f4                   	hlt
    1086:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    108d:	00 00 00 
    1090:	48 8d 3d 91 3f 00 00 	lea    rdi,[rip+0x3f91]        # 5028 <__TMC_END__>
    1097:	48 8d 05 8a 3f 00 00 	lea    rax,[rip+0x3f8a]        # 5028 <__TMC_END__>
    109e:	48 39 f8             	cmp    rax,rdi
    10a1:	74 15                	je     10b8 <_start+0x58>
    10a3:	48 8b 05 1e 3f 00 00 	mov    rax,QWORD PTR [rip+0x3f1e]        # 4fc8 <_ITM_deregisterTMCloneTable@Base>
    10aa:	48 85 c0             	test   rax,rax
    10ad:	74 09                	je     10b8 <_start+0x58>
    10af:	ff e0                	jmp    rax
    10b1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    10b8:	c3                   	ret
    10b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    10c0:	48 8d 3d 61 3f 00 00 	lea    rdi,[rip+0x3f61]        # 5028 <__TMC_END__>
    10c7:	48 8d 35 5a 3f 00 00 	lea    rsi,[rip+0x3f5a]        # 5028 <__TMC_END__>
    10ce:	48 29 fe             	sub    rsi,rdi
    10d1:	48 89 f0             	mov    rax,rsi
    10d4:	48 c1 ee 3f          	shr    rsi,0x3f
    10d8:	48 c1 f8 03          	sar    rax,0x3
    10dc:	48 01 c6             	add    rsi,rax
    10df:	48 d1 fe             	sar    rsi,1
    10e2:	74 14                	je     10f8 <_start+0x98>
    10e4:	48 8b 05 ed 3e 00 00 	mov    rax,QWORD PTR [rip+0x3eed]        # 4fd8 <_ITM_registerTMCloneTable@Base>
    10eb:	48 85 c0             	test   rax,rax
    10ee:	74 08                	je     10f8 <_start+0x98>
    10f0:	ff e0                	jmp    rax
    10f2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    10f8:	c3                   	ret
    10f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1100:	f3 0f 1e fa          	endbr64
    1104:	80 3d 25 3f 00 00 00 	cmp    BYTE PTR [rip+0x3f25],0x0        # 5030 <__bss_start>
    110b:	75 33                	jne    1140 <_start+0xe0>
    110d:	55                   	push   rbp
    110e:	48 83 3d ca 3e 00 00 	cmp    QWORD PTR [rip+0x3eca],0x0        # 4fe0 <__cxa_finalize@GLIBC_2.2.5>
    1115:	00 
    1116:	48 89 e5             	mov    rbp,rsp
    1119:	74 0d                	je     1128 <_start+0xc8>
    111b:	48 8b 3d fe 3e 00 00 	mov    rdi,QWORD PTR [rip+0x3efe]        # 5020 <__dso_handle>
    1122:	ff 15 b8 3e 00 00    	call   QWORD PTR [rip+0x3eb8]        # 4fe0 <__cxa_finalize@GLIBC_2.2.5>
    1128:	e8 63 ff ff ff       	call   1090 <_start+0x30>
    112d:	c6 05 fc 3e 00 00 01 	mov    BYTE PTR [rip+0x3efc],0x1        # 5030 <__bss_start>
    1134:	5d                   	pop    rbp
    1135:	c3                   	ret
    1136:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    113d:	00 00 00 
    1140:	c3                   	ret
    1141:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    1148:	00 00 00 00 
    114c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    1150:	f3 0f 1e fa          	endbr64
    1154:	e9 67 ff ff ff       	jmp    10c0 <_start+0x60>

0000000000001159 <add1>:
    1159:	55                   	push   rbp
    115a:	48 89 e5             	mov    rbp,rsp
    115d:	f2 0f 11 45 e8       	movsd  QWORD PTR [rbp-0x18],xmm0
    1162:	f2 0f 11 4d e0       	movsd  QWORD PTR [rbp-0x20],xmm1
    1167:	f2 0f 11 55 d8       	movsd  QWORD PTR [rbp-0x28],xmm2
    116c:	f2 0f 10 45 e8       	movsd  xmm0,QWORD PTR [rbp-0x18]
    1171:	f2 0f 58 45 e0       	addsd  xmm0,QWORD PTR [rbp-0x20]
    1176:	f2 0f 10 4d d8       	movsd  xmm1,QWORD PTR [rbp-0x28]
    117b:	f2 0f 58 c1          	addsd  xmm0,xmm1
    117f:	f2 0f 11 45 f8       	movsd  QWORD PTR [rbp-0x8],xmm0
    1184:	f2 0f 10 45 f8       	movsd  xmm0,QWORD PTR [rbp-0x8]
    1189:	5d                   	pop    rbp
    118a:	c3                   	ret

000000000000118b <add2>:
    118b:	55                   	push   rbp
    118c:	48 89 e5             	mov    rbp,rsp
    118f:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
    1193:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
    1197:	89 55 dc             	mov    DWORD PTR [rbp-0x24],edx
    119a:	f2 0f 11 45 d0       	movsd  QWORD PTR [rbp-0x30],xmm0
    119f:	8b 45 dc             	mov    eax,DWORD PTR [rbp-0x24]
    11a2:	48 98                	cdqe
    11a4:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
    11ab:	00 
    11ac:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    11b0:	48 01 d0             	add    rax,rdx
    11b3:	f2 0f 10 08          	movsd  xmm1,QWORD PTR [rax]
    11b7:	8b 45 dc             	mov    eax,DWORD PTR [rbp-0x24]
    11ba:	48 98                	cdqe
    11bc:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
    11c3:	00 
    11c4:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    11c8:	48 01 d0             	add    rax,rdx
    11cb:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
    11cf:	f2 0f 58 c1          	addsd  xmm0,xmm1
    11d3:	f2 0f 10 4d d0       	movsd  xmm1,QWORD PTR [rbp-0x30]
    11d8:	f2 0f 58 c1          	addsd  xmm0,xmm1
    11dc:	f2 0f 11 45 f8       	movsd  QWORD PTR [rbp-0x8],xmm0
    11e1:	f2 0f 10 45 f8       	movsd  xmm0,QWORD PTR [rbp-0x8]
    11e6:	5d                   	pop    rbp
    11e7:	c3                   	ret

00000000000011e8 <add3>:
    11e8:	55                   	push   rbp
    11e9:	48 89 e5             	mov    rbp,rsp
    11ec:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
    11f0:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
    11f4:	f2 0f 11 45 d8       	movsd  QWORD PTR [rbp-0x28],xmm0
    11f9:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    11fd:	f2 0f 10 08          	movsd  xmm1,QWORD PTR [rax]
    1201:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    1205:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
    1209:	f2 0f 58 c1          	addsd  xmm0,xmm1
    120d:	f2 0f 10 4d d8       	movsd  xmm1,QWORD PTR [rbp-0x28]
    1212:	f2 0f 58 c1          	addsd  xmm0,xmm1
    1216:	f2 0f 11 45 f8       	movsd  QWORD PTR [rbp-0x8],xmm0
    121b:	f2 0f 10 45 f8       	movsd  xmm0,QWORD PTR [rbp-0x8]
    1220:	5d                   	pop    rbp
    1221:	c3                   	ret

0000000000001222 <work>:
    1222:	55                   	push   rbp
    1223:	48 89 e5             	mov    rbp,rsp
    1226:	41 54                	push   r12
    1228:	53                   	push   rbx
    1229:	48 83 ec 28          	sub    rsp,0x28
    122d:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
    1231:	48 89 75 d0          	mov    QWORD PTR [rbp-0x30],rsi
    1235:	89 55 cc             	mov    DWORD PTR [rbp-0x34],edx
    1238:	8b 5d cc             	mov    ebx,DWORD PTR [rbp-0x34]
    123b:	c7 45 e0 00 00 00 00 	mov    DWORD PTR [rbp-0x20],0x0
    1242:	c7 45 e0 00 00 00 00 	mov    DWORD PTR [rbp-0x20],0x0
    1249:	e9 fe 00 00 00       	jmp    134c <work+0x12a>
    124e:	8b 45 e0             	mov    eax,DWORD PTR [rbp-0x20]
    1251:	48 98                	cdqe
    1253:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
    125a:	00 
    125b:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
    125f:	48 01 d0             	add    rax,rdx
    1262:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
    1266:	8b 45 e0             	mov    eax,DWORD PTR [rbp-0x20]
    1269:	48 98                	cdqe
    126b:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
    1272:	00 
    1273:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    1277:	48 01 d0             	add    rax,rdx
    127a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    127d:	f2 0f 10 0d ab 1d 00 	movsd  xmm1,QWORD PTR [rip+0x1dab]        # 3030 <_IO_stdin_used+0x30>
    1284:	00 
    1285:	66 0f 28 d1          	movapd xmm2,xmm1
    1289:	66 0f 28 c8          	movapd xmm1,xmm0
    128d:	66 48 0f 6e c0       	movq   xmm0,rax
    1292:	e8 c2 fe ff ff       	call   1159 <add1>
    1297:	66 48 0f 7e c0       	movq   rax,xmm0
    129c:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    12a0:	48 8b 35 89 1d 00 00 	mov    rsi,QWORD PTR [rip+0x1d89]        # 3030 <_IO_stdin_used+0x30>
    12a7:	8b 55 e0             	mov    edx,DWORD PTR [rbp-0x20]
    12aa:	48 8b 4d d0          	mov    rcx,QWORD PTR [rbp-0x30]
    12ae:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    12b2:	66 48 0f 6e c6       	movq   xmm0,rsi
    12b7:	48 89 ce             	mov    rsi,rcx
    12ba:	48 89 c7             	mov    rdi,rax
    12bd:	e8 c9 fe ff ff       	call   118b <add2>
    12c2:	66 48 0f 7e c0       	movq   rax,xmm0
    12c7:	8b 55 e0             	mov    edx,DWORD PTR [rbp-0x20]
    12ca:	48 63 d2             	movsxd rdx,edx
    12cd:	48 8d 0c d5 00 00 00 	lea    rcx,[rdx*8+0x0]
    12d4:	00 
    12d5:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
    12d9:	48 01 ca             	add    rdx,rcx
    12dc:	66 48 0f 6e c0       	movq   xmm0,rax
    12e1:	f2 0f 58 45 e8       	addsd  xmm0,QWORD PTR [rbp-0x18]
    12e6:	f2 0f 11 02          	movsd  QWORD PTR [rdx],xmm0
    12ea:	8b 45 e0             	mov    eax,DWORD PTR [rbp-0x20]
    12ed:	48 98                	cdqe
    12ef:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
    12f6:	00 
    12f7:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
    12fb:	48 8d 0c 02          	lea    rcx,[rdx+rax*1]
    12ff:	8b 45 e0             	mov    eax,DWORD PTR [rbp-0x20]
    1302:	48 98                	cdqe
    1304:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
    130b:	00 
    130c:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    1310:	48 01 c2             	add    rdx,rax
    1313:	8b 45 e0             	mov    eax,DWORD PTR [rbp-0x20]
    1316:	48 98                	cdqe
    1318:	48 8d 34 c5 00 00 00 	lea    rsi,[rax*8+0x0]
    131f:	00 
    1320:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    1324:	4c 8d 24 06          	lea    r12,[rsi+rax*1]
    1328:	48 8b 05 01 1d 00 00 	mov    rax,QWORD PTR [rip+0x1d01]        # 3030 <_IO_stdin_used+0x30>
    132f:	66 48 0f 6e c0       	movq   xmm0,rax
    1334:	48 89 ce             	mov    rsi,rcx
    1337:	48 89 d7             	mov    rdi,rdx
    133a:	e8 a9 fe ff ff       	call   11e8 <add3>
    133f:	66 48 0f 7e c0       	movq   rax,xmm0
    1344:	49 89 04 24          	mov    QWORD PTR [r12],rax
    1348:	83 45 e0 01          	add    DWORD PTR [rbp-0x20],0x1
    134c:	39 5d e0             	cmp    DWORD PTR [rbp-0x20],ebx
    134f:	0f 8c f9 fe ff ff    	jl     124e <work+0x2c>
    1355:	39 5d e0             	cmp    DWORD PTR [rbp-0x20],ebx
    1358:	75 06                	jne    1360 <work+0x13e>
    135a:	8b 45 e0             	mov    eax,DWORD PTR [rbp-0x20]
    135d:	89 45 e4             	mov    DWORD PTR [rbp-0x1c],eax
    1360:	90                   	nop
    1361:	48 83 c4 28          	add    rsp,0x28
    1365:	5b                   	pop    rbx
    1366:	41 5c                	pop    r12
    1368:	5d                   	pop    rbp
    1369:	c3                   	ret

000000000000136a <main>:
    136a:	55                   	push   rbp
    136b:	48 89 e5             	mov    rbp,rsp
    136e:	53                   	push   rbx
    136f:	48 83 ec 48          	sub    rsp,0x48
    1373:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    137a:	00 00 
    137c:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    1380:	31 c0                	xor    eax,eax
    1382:	48 89 e0             	mov    rax,rsp
    1385:	48 89 c3             	mov    rbx,rax
    1388:	c7 45 bc a0 86 01 00 	mov    DWORD PTR [rbp-0x44],0x186a0
    138f:	8b 45 bc             	mov    eax,DWORD PTR [rbp-0x44]
    1392:	48 98                	cdqe
    1394:	48 83 e8 01          	sub    rax,0x1
    1398:	48 89 45 c0          	mov    QWORD PTR [rbp-0x40],rax
    139c:	8b 45 bc             	mov    eax,DWORD PTR [rbp-0x44]
    139f:	48 98                	cdqe
    13a1:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
    13a8:	00 
    13a9:	b8 10 00 00 00       	mov    eax,0x10
    13ae:	48 83 e8 01          	sub    rax,0x1
    13b2:	48 01 d0             	add    rax,rdx
    13b5:	b9 10 00 00 00       	mov    ecx,0x10
    13ba:	ba 00 00 00 00       	mov    edx,0x0
    13bf:	48 f7 f1             	div    rcx
    13c2:	48 6b c0 10          	imul   rax,rax,0x10
    13c6:	48 29 c4             	sub    rsp,rax
    13c9:	48 89 e0             	mov    rax,rsp
    13cc:	48 83 c0 07          	add    rax,0x7
    13d0:	48 c1 e8 03          	shr    rax,0x3
    13d4:	48 c1 e0 03          	shl    rax,0x3
    13d8:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
    13dc:	8b 45 bc             	mov    eax,DWORD PTR [rbp-0x44]
    13df:	48 98                	cdqe
    13e1:	48 83 e8 01          	sub    rax,0x1
    13e5:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
    13e9:	8b 45 bc             	mov    eax,DWORD PTR [rbp-0x44]
    13ec:	48 98                	cdqe
    13ee:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
    13f5:	00 
    13f6:	b8 10 00 00 00       	mov    eax,0x10
    13fb:	48 83 e8 01          	sub    rax,0x1
    13ff:	48 01 d0             	add    rax,rdx
    1402:	b9 10 00 00 00       	mov    ecx,0x10
    1407:	ba 00 00 00 00       	mov    edx,0x0
    140c:	48 f7 f1             	div    rcx
    140f:	48 6b c0 10          	imul   rax,rax,0x10
    1413:	48 29 c4             	sub    rsp,rax
    1416:	48 89 e0             	mov    rax,rsp
    1419:	48 83 c0 07          	add    rax,0x7
    141d:	48 c1 e8 03          	shr    rax,0x3
    1421:	48 c1 e0 03          	shl    rax,0x3
    1425:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
    1429:	c7 45 b8 00 00 00 00 	mov    DWORD PTR [rbp-0x48],0x0
    1430:	eb 39                	jmp    146b <main+0x101>
    1432:	66 0f ef c0          	pxor   xmm0,xmm0
    1436:	f2 0f 2a 45 b8       	cvtsi2sd xmm0,DWORD PTR [rbp-0x48]
    143b:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    143f:	8b 55 b8             	mov    edx,DWORD PTR [rbp-0x48]
    1442:	48 63 d2             	movsxd rdx,edx
    1445:	f2 0f 11 04 d0       	movsd  QWORD PTR [rax+rdx*8],xmm0
    144a:	8b 45 bc             	mov    eax,DWORD PTR [rbp-0x44]
    144d:	2b 45 b8             	sub    eax,DWORD PTR [rbp-0x48]
    1450:	66 0f ef c0          	pxor   xmm0,xmm0
    1454:	f2 0f 2a c0          	cvtsi2sd xmm0,eax
    1458:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    145c:	8b 55 b8             	mov    edx,DWORD PTR [rbp-0x48]
    145f:	48 63 d2             	movsxd rdx,edx
    1462:	f2 0f 11 04 d0       	movsd  QWORD PTR [rax+rdx*8],xmm0
    1467:	83 45 b8 01          	add    DWORD PTR [rbp-0x48],0x1
    146b:	8b 45 b8             	mov    eax,DWORD PTR [rbp-0x48]
    146e:	3b 45 bc             	cmp    eax,DWORD PTR [rbp-0x44]
    1471:	7c bf                	jl     1432 <main+0xc8>
    1473:	be 00 00 00 00       	mov    esi,0x0
    1478:	48 8d 05 d1 3b 00 00 	lea    rax,[rip+0x3bd1]        # 5050 <start>
    147f:	48 89 c7             	mov    rdi,rax
    1482:	e8 c9 fb ff ff       	call   1050 <gettimeofday@plt>
    1487:	c7 45 b8 00 00 00 00 	mov    DWORD PTR [rbp-0x48],0x0
    148e:	e9 b6 00 00 00       	jmp    1549 <main+0x1df>
    1493:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    1497:	8b 55 b8             	mov    edx,DWORD PTR [rbp-0x48]
    149a:	48 63 d2             	movsxd rdx,edx
    149d:	f2 0f 10 0c d0       	movsd  xmm1,QWORD PTR [rax+rdx*8]
    14a2:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    14a6:	8b 55 b8             	mov    edx,DWORD PTR [rbp-0x48]
    14a9:	48 63 d2             	movsxd rdx,edx
    14ac:	f2 0f 10 04 d0       	movsd  xmm0,QWORD PTR [rax+rdx*8]
    14b1:	f2 0f 58 c8          	addsd  xmm1,xmm0
    14b5:	f2 0f 10 05 73 1b 00 	movsd  xmm0,QWORD PTR [rip+0x1b73]        # 3030 <_IO_stdin_used+0x30>
    14bc:	00 
    14bd:	f2 0f 58 c1          	addsd  xmm0,xmm1
    14c1:	f2 0f 11 45 e0       	movsd  QWORD PTR [rbp-0x20],xmm0
    14c6:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    14ca:	8b 55 b8             	mov    edx,DWORD PTR [rbp-0x48]
    14cd:	48 63 d2             	movsxd rdx,edx
    14d0:	f2 0f 10 0c d0       	movsd  xmm1,QWORD PTR [rax+rdx*8]
    14d5:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    14d9:	8b 55 b8             	mov    edx,DWORD PTR [rbp-0x48]
    14dc:	48 63 d2             	movsxd rdx,edx
    14df:	f2 0f 10 04 d0       	movsd  xmm0,QWORD PTR [rax+rdx*8]
    14e4:	f2 0f 58 c8          	addsd  xmm1,xmm0
    14e8:	f2 0f 10 05 40 1b 00 	movsd  xmm0,QWORD PTR [rip+0x1b40]        # 3030 <_IO_stdin_used+0x30>
    14ef:	00 
    14f0:	f2 0f 58 c1          	addsd  xmm0,xmm1
    14f4:	f2 0f 58 45 e0       	addsd  xmm0,QWORD PTR [rbp-0x20]
    14f9:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    14fd:	8b 55 b8             	mov    edx,DWORD PTR [rbp-0x48]
    1500:	48 63 d2             	movsxd rdx,edx
    1503:	f2 0f 11 04 d0       	movsd  QWORD PTR [rax+rdx*8],xmm0
    1508:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    150c:	8b 55 b8             	mov    edx,DWORD PTR [rbp-0x48]
    150f:	48 63 d2             	movsxd rdx,edx
    1512:	f2 0f 10 0c d0       	movsd  xmm1,QWORD PTR [rax+rdx*8]
    1517:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    151b:	8b 55 b8             	mov    edx,DWORD PTR [rbp-0x48]
    151e:	48 63 d2             	movsxd rdx,edx
    1521:	f2 0f 10 04 d0       	movsd  xmm0,QWORD PTR [rax+rdx*8]
    1526:	f2 0f 58 c8          	addsd  xmm1,xmm0
    152a:	f2 0f 10 05 fe 1a 00 	movsd  xmm0,QWORD PTR [rip+0x1afe]        # 3030 <_IO_stdin_used+0x30>
    1531:	00 
    1532:	f2 0f 58 c1          	addsd  xmm0,xmm1
    1536:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    153a:	8b 55 b8             	mov    edx,DWORD PTR [rbp-0x48]
    153d:	48 63 d2             	movsxd rdx,edx
    1540:	f2 0f 11 04 d0       	movsd  QWORD PTR [rax+rdx*8],xmm0
    1545:	83 45 b8 01          	add    DWORD PTR [rbp-0x48],0x1
    1549:	8b 45 b8             	mov    eax,DWORD PTR [rbp-0x48]
    154c:	3b 45 bc             	cmp    eax,DWORD PTR [rbp-0x44]
    154f:	0f 8c 3e ff ff ff    	jl     1493 <main+0x129>
    1555:	be 00 00 00 00       	mov    esi,0x0
    155a:	48 8d 05 df 3a 00 00 	lea    rax,[rip+0x3adf]        # 5040 <stop>
    1561:	48 89 c7             	mov    rdi,rax
    1564:	e8 e7 fa ff ff       	call   1050 <gettimeofday@plt>
    1569:	48 8b 15 d0 3a 00 00 	mov    rdx,QWORD PTR [rip+0x3ad0]        # 5040 <stop>
    1570:	48 8b 05 d9 3a 00 00 	mov    rax,QWORD PTR [rip+0x3ad9]        # 5050 <start>
    1577:	48 29 c2             	sub    rdx,rax
    157a:	48 69 d2 40 42 0f 00 	imul   rdx,rdx,0xf4240
    1581:	48 8b 05 c0 3a 00 00 	mov    rax,QWORD PTR [rip+0x3ac0]        # 5048 <stop+0x8>
    1588:	48 01 d0             	add    rax,rdx
    158b:	48 8b 15 c6 3a 00 00 	mov    rdx,QWORD PTR [rip+0x3ac6]        # 5058 <start+0x8>
    1592:	48 29 d0             	sub    rax,rdx
    1595:	48 89 c6             	mov    rsi,rax
    1598:	48 8d 05 69 1a 00 00 	lea    rax,[rip+0x1a69]        # 3008 <_IO_stdin_used+0x8>
    159f:	48 89 c7             	mov    rdi,rax
    15a2:	b8 00 00 00 00       	mov    eax,0x0
    15a7:	e8 94 fa ff ff       	call   1040 <printf@plt>
    15ac:	be 00 00 00 00       	mov    esi,0x0
    15b1:	48 8d 05 98 3a 00 00 	lea    rax,[rip+0x3a98]        # 5050 <start>
    15b8:	48 89 c7             	mov    rdi,rax
    15bb:	e8 90 fa ff ff       	call   1050 <gettimeofday@plt>
    15c0:	8b 55 bc             	mov    edx,DWORD PTR [rbp-0x44]
    15c3:	48 8b 4d d8          	mov    rcx,QWORD PTR [rbp-0x28]
    15c7:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    15cb:	48 89 ce             	mov    rsi,rcx
    15ce:	48 89 c7             	mov    rdi,rax
    15d1:	e8 4c fc ff ff       	call   1222 <work>
    15d6:	be 00 00 00 00       	mov    esi,0x0
    15db:	48 8d 05 5e 3a 00 00 	lea    rax,[rip+0x3a5e]        # 5040 <stop>
    15e2:	48 89 c7             	mov    rdi,rax
    15e5:	e8 66 fa ff ff       	call   1050 <gettimeofday@plt>
    15ea:	48 8b 15 4f 3a 00 00 	mov    rdx,QWORD PTR [rip+0x3a4f]        # 5040 <stop>
    15f1:	48 8b 05 58 3a 00 00 	mov    rax,QWORD PTR [rip+0x3a58]        # 5050 <start>
    15f8:	48 29 c2             	sub    rdx,rax
    15fb:	48 69 d2 40 42 0f 00 	imul   rdx,rdx,0xf4240
    1602:	48 8b 05 3f 3a 00 00 	mov    rax,QWORD PTR [rip+0x3a3f]        # 5048 <stop+0x8>
    1609:	48 01 d0             	add    rax,rdx
    160c:	48 8b 15 45 3a 00 00 	mov    rdx,QWORD PTR [rip+0x3a45]        # 5058 <start+0x8>
    1613:	48 29 d0             	sub    rax,rdx
    1616:	48 89 c6             	mov    rsi,rax
    1619:	48 8d 05 f9 19 00 00 	lea    rax,[rip+0x19f9]        # 3019 <_IO_stdin_used+0x19>
    1620:	48 89 c7             	mov    rdi,rax
    1623:	b8 00 00 00 00       	mov    eax,0x0
    1628:	e8 13 fa ff ff       	call   1040 <printf@plt>
    162d:	b8 00 00 00 00       	mov    eax,0x0
    1632:	48 89 dc             	mov    rsp,rbx
    1635:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
    1639:	64 48 2b 14 25 28 00 	sub    rdx,QWORD PTR fs:0x28
    1640:	00 00 
    1642:	74 05                	je     1649 <main+0x2df>
    1644:	e8 e7 f9 ff ff       	call   1030 <__stack_chk_fail@plt>
    1649:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    164d:	c9                   	leave
    164e:	c3                   	ret

000000000000164f <_ZGVbN2l8l8u_add3>:
    164f:	55                   	push   rbp
    1650:	48 89 e5             	mov    rbp,rsp
    1653:	48 83 ec 50          	sub    rsp,0x50
    1657:	48 89 7d c8          	mov    QWORD PTR [rbp-0x38],rdi
    165b:	48 89 75 c0          	mov    QWORD PTR [rbp-0x40],rsi
    165f:	f2 0f 11 45 b8       	movsd  QWORD PTR [rbp-0x48],xmm0
    1664:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    166b:	00 00 
    166d:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1671:	31 c0                	xor    eax,eax
    1673:	b8 00 00 00 00       	mov    eax,0x0
    1678:	48 8b 55 c8          	mov    rdx,QWORD PTR [rbp-0x38]
    167c:	f2 0f 10 0a          	movsd  xmm1,QWORD PTR [rdx]
    1680:	48 8b 55 c0          	mov    rdx,QWORD PTR [rbp-0x40]
    1684:	f2 0f 10 02          	movsd  xmm0,QWORD PTR [rdx]
    1688:	f2 0f 58 c1          	addsd  xmm0,xmm1
    168c:	f2 0f 58 45 b8       	addsd  xmm0,QWORD PTR [rbp-0x48]
    1691:	f2 0f 11 45 d8       	movsd  QWORD PTR [rbp-0x28],xmm0
    1696:	f2 0f 10 45 d8       	movsd  xmm0,QWORD PTR [rbp-0x28]
    169b:	89 c2                	mov    edx,eax
    169d:	f2 0f 11 44 d5 e0    	movsd  QWORD PTR [rbp+rdx*8-0x20],xmm0
    16a3:	83 c0 01             	add    eax,0x1
    16a6:	48 83 45 c8 08       	add    QWORD PTR [rbp-0x38],0x8
    16ab:	48 83 45 c0 08       	add    QWORD PTR [rbp-0x40],0x8
    16b0:	83 f8 02             	cmp    eax,0x2
    16b3:	72 c3                	jb     1678 <_ZGVbN2l8l8u_add3+0x29>
    16b5:	66 0f 28 45 e0       	movapd xmm0,XMMWORD PTR [rbp-0x20]
    16ba:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    16be:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    16c5:	00 00 
    16c7:	74 05                	je     16ce <_ZGVbN2l8l8u_add3+0x7f>
    16c9:	e8 62 f9 ff ff       	call   1030 <__stack_chk_fail@plt>
    16ce:	c9                   	leave
    16cf:	c3                   	ret

00000000000016d0 <_ZGVbM2l8l8u_add3>:
    16d0:	55                   	push   rbp
    16d1:	48 89 e5             	mov    rbp,rsp
    16d4:	48 83 ec 60          	sub    rsp,0x60
    16d8:	48 89 7d b8          	mov    QWORD PTR [rbp-0x48],rdi
    16dc:	48 89 75 b0          	mov    QWORD PTR [rbp-0x50],rsi
    16e0:	f2 0f 11 45 a8       	movsd  QWORD PTR [rbp-0x58],xmm0
    16e5:	66 0f 28 c1          	movapd xmm0,xmm1
    16e9:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    16f0:	00 00 
    16f2:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    16f6:	31 c0                	xor    eax,eax
    16f8:	0f 29 45 d0          	movaps XMMWORD PTR [rbp-0x30],xmm0
    16fc:	b8 00 00 00 00       	mov    eax,0x0
    1701:	89 c2                	mov    edx,eax
    1703:	f2 0f 10 44 d5 d0    	movsd  xmm0,QWORD PTR [rbp+rdx*8-0x30]
    1709:	66 48 0f 7e c2       	movq   rdx,xmm0
    170e:	48 85 d2             	test   rdx,rdx
    1711:	74 2b                	je     173e <_ZGVbM2l8l8u_add3+0x6e>
    1713:	48 8b 55 b8          	mov    rdx,QWORD PTR [rbp-0x48]
    1717:	f2 0f 10 0a          	movsd  xmm1,QWORD PTR [rdx]
    171b:	48 8b 55 b0          	mov    rdx,QWORD PTR [rbp-0x50]
    171f:	f2 0f 10 02          	movsd  xmm0,QWORD PTR [rdx]
    1723:	f2 0f 58 c1          	addsd  xmm0,xmm1
    1727:	f2 0f 58 45 a8       	addsd  xmm0,QWORD PTR [rbp-0x58]
    172c:	f2 0f 11 45 c8       	movsd  QWORD PTR [rbp-0x38],xmm0
    1731:	f2 0f 10 45 c8       	movsd  xmm0,QWORD PTR [rbp-0x38]
    1736:	89 c2                	mov    edx,eax
    1738:	f2 0f 11 44 d5 e0    	movsd  QWORD PTR [rbp+rdx*8-0x20],xmm0
    173e:	83 c0 01             	add    eax,0x1
    1741:	48 83 45 b8 08       	add    QWORD PTR [rbp-0x48],0x8
    1746:	48 83 45 b0 08       	add    QWORD PTR [rbp-0x50],0x8
    174b:	83 f8 02             	cmp    eax,0x2
    174e:	72 b1                	jb     1701 <_ZGVbM2l8l8u_add3+0x31>
    1750:	66 0f 28 45 e0       	movapd xmm0,XMMWORD PTR [rbp-0x20]
    1755:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1759:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    1760:	00 00 
    1762:	74 05                	je     1769 <_ZGVbM2l8l8u_add3+0x99>
    1764:	e8 c7 f8 ff ff       	call   1030 <__stack_chk_fail@plt>
    1769:	c9                   	leave
    176a:	c3                   	ret

000000000000176b <_ZGVcN4l8l8u_add3>:
    176b:	55                   	push   rbp
    176c:	48 89 e5             	mov    rbp,rsp
    176f:	48 83 e4 e0          	and    rsp,0xffffffffffffffe0
    1773:	48 83 ec 60          	sub    rsp,0x60
    1777:	48 89 7c 24 18       	mov    QWORD PTR [rsp+0x18],rdi
    177c:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
    1781:	c5 fb 11 44 24 08    	vmovsd QWORD PTR [rsp+0x8],xmm0
    1787:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    178e:	00 00 
    1790:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
    1795:	31 c0                	xor    eax,eax
    1797:	b8 00 00 00 00       	mov    eax,0x0
    179c:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
    17a1:	c5 fb 10 0a          	vmovsd xmm1,QWORD PTR [rdx]
    17a5:	48 8b 54 24 10       	mov    rdx,QWORD PTR [rsp+0x10]
    17aa:	c5 fb 10 02          	vmovsd xmm0,QWORD PTR [rdx]
    17ae:	c5 f3 58 c0          	vaddsd xmm0,xmm1,xmm0
    17b2:	c5 fb 58 44 24 08    	vaddsd xmm0,xmm0,QWORD PTR [rsp+0x8]
    17b8:	c5 fb 11 44 24 28    	vmovsd QWORD PTR [rsp+0x28],xmm0
    17be:	c5 fb 10 44 24 28    	vmovsd xmm0,QWORD PTR [rsp+0x28]
    17c4:	89 c2                	mov    edx,eax
    17c6:	c5 fb 11 44 d4 30    	vmovsd QWORD PTR [rsp+rdx*8+0x30],xmm0
    17cc:	83 c0 01             	add    eax,0x1
    17cf:	48 83 44 24 18 08    	add    QWORD PTR [rsp+0x18],0x8
    17d5:	48 83 44 24 10 08    	add    QWORD PTR [rsp+0x10],0x8
    17db:	83 f8 04             	cmp    eax,0x4
    17de:	72 bc                	jb     179c <_ZGVcN4l8l8u_add3+0x31>
    17e0:	c5 fd 10 44 24 30    	vmovupd ymm0,YMMWORD PTR [rsp+0x30]
    17e6:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
    17eb:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    17f2:	00 00 
    17f4:	74 05                	je     17fb <_ZGVcN4l8l8u_add3+0x90>
    17f6:	e8 35 f8 ff ff       	call   1030 <__stack_chk_fail@plt>
    17fb:	c9                   	leave
    17fc:	c3                   	ret

00000000000017fd <_ZGVcM4l8l8u_add3>:
    17fd:	55                   	push   rbp
    17fe:	48 89 e5             	mov    rbp,rsp
    1801:	48 83 e4 e0          	and    rsp,0xffffffffffffffe0
    1805:	48 83 c4 80          	add    rsp,0xffffffffffffff80
    1809:	48 89 7c 24 18       	mov    QWORD PTR [rsp+0x18],rdi
    180e:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
    1813:	c5 fb 11 44 24 08    	vmovsd QWORD PTR [rsp+0x8],xmm0
    1819:	c5 fd 28 c1          	vmovapd ymm0,ymm1
    181d:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1824:	00 00 
    1826:	48 89 44 24 78       	mov    QWORD PTR [rsp+0x78],rax
    182b:	31 c0                	xor    eax,eax
    182d:	c5 fd 11 44 24 30    	vmovupd YMMWORD PTR [rsp+0x30],ymm0
    1833:	b8 00 00 00 00       	mov    eax,0x0
    1838:	89 c2                	mov    edx,eax
    183a:	c5 fb 10 44 d4 30    	vmovsd xmm0,QWORD PTR [rsp+rdx*8+0x30]
    1840:	c4 e1 f9 7e c2       	vmovq  rdx,xmm0
    1845:	48 85 d2             	test   rdx,rdx
    1848:	74 30                	je     187a <_ZGVcM4l8l8u_add3+0x7d>
    184a:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
    184f:	c5 fb 10 0a          	vmovsd xmm1,QWORD PTR [rdx]
    1853:	48 8b 54 24 10       	mov    rdx,QWORD PTR [rsp+0x10]
    1858:	c5 fb 10 02          	vmovsd xmm0,QWORD PTR [rdx]
    185c:	c5 f3 58 c0          	vaddsd xmm0,xmm1,xmm0
    1860:	c5 fb 58 44 24 08    	vaddsd xmm0,xmm0,QWORD PTR [rsp+0x8]
    1866:	c5 fb 11 44 24 28    	vmovsd QWORD PTR [rsp+0x28],xmm0
    186c:	c5 fb 10 44 24 28    	vmovsd xmm0,QWORD PTR [rsp+0x28]
    1872:	89 c2                	mov    edx,eax
    1874:	c5 fb 11 44 d4 50    	vmovsd QWORD PTR [rsp+rdx*8+0x50],xmm0
    187a:	83 c0 01             	add    eax,0x1
    187d:	48 83 44 24 18 08    	add    QWORD PTR [rsp+0x18],0x8
    1883:	48 83 44 24 10 08    	add    QWORD PTR [rsp+0x10],0x8
    1889:	83 f8 04             	cmp    eax,0x4
    188c:	72 aa                	jb     1838 <_ZGVcM4l8l8u_add3+0x3b>
    188e:	c5 fd 10 44 24 50    	vmovupd ymm0,YMMWORD PTR [rsp+0x50]
    1894:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
    1899:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    18a0:	00 00 
    18a2:	74 05                	je     18a9 <_ZGVcM4l8l8u_add3+0xac>
    18a4:	e8 87 f7 ff ff       	call   1030 <__stack_chk_fail@plt>
    18a9:	c9                   	leave
    18aa:	c3                   	ret

00000000000018ab <_ZGVdN4l8l8u_add3>:
    18ab:	55                   	push   rbp
    18ac:	48 89 e5             	mov    rbp,rsp
    18af:	48 83 e4 e0          	and    rsp,0xffffffffffffffe0
    18b3:	48 83 ec 60          	sub    rsp,0x60
    18b7:	48 89 7c 24 18       	mov    QWORD PTR [rsp+0x18],rdi
    18bc:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
    18c1:	c5 fb 11 44 24 08    	vmovsd QWORD PTR [rsp+0x8],xmm0
    18c7:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    18ce:	00 00 
    18d0:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
    18d5:	31 c0                	xor    eax,eax
    18d7:	b8 00 00 00 00       	mov    eax,0x0
    18dc:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
    18e1:	c5 fb 10 0a          	vmovsd xmm1,QWORD PTR [rdx]
    18e5:	48 8b 54 24 10       	mov    rdx,QWORD PTR [rsp+0x10]
    18ea:	c5 fb 10 02          	vmovsd xmm0,QWORD PTR [rdx]
    18ee:	c5 f3 58 c0          	vaddsd xmm0,xmm1,xmm0
    18f2:	c5 fb 58 44 24 08    	vaddsd xmm0,xmm0,QWORD PTR [rsp+0x8]
    18f8:	c5 fb 11 44 24 28    	vmovsd QWORD PTR [rsp+0x28],xmm0
    18fe:	c5 fb 10 44 24 28    	vmovsd xmm0,QWORD PTR [rsp+0x28]
    1904:	89 c2                	mov    edx,eax
    1906:	c5 fb 11 44 d4 30    	vmovsd QWORD PTR [rsp+rdx*8+0x30],xmm0
    190c:	83 c0 01             	add    eax,0x1
    190f:	48 83 44 24 18 08    	add    QWORD PTR [rsp+0x18],0x8
    1915:	48 83 44 24 10 08    	add    QWORD PTR [rsp+0x10],0x8
    191b:	83 f8 04             	cmp    eax,0x4
    191e:	72 bc                	jb     18dc <_ZGVdN4l8l8u_add3+0x31>
    1920:	c5 fd 10 44 24 30    	vmovupd ymm0,YMMWORD PTR [rsp+0x30]
    1926:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
    192b:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    1932:	00 00 
    1934:	74 05                	je     193b <_ZGVdN4l8l8u_add3+0x90>
    1936:	e8 f5 f6 ff ff       	call   1030 <__stack_chk_fail@plt>
    193b:	c9                   	leave
    193c:	c3                   	ret

000000000000193d <_ZGVdM4l8l8u_add3>:
    193d:	55                   	push   rbp
    193e:	48 89 e5             	mov    rbp,rsp
    1941:	48 83 e4 e0          	and    rsp,0xffffffffffffffe0
    1945:	48 83 c4 80          	add    rsp,0xffffffffffffff80
    1949:	48 89 7c 24 18       	mov    QWORD PTR [rsp+0x18],rdi
    194e:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
    1953:	c5 fb 11 44 24 08    	vmovsd QWORD PTR [rsp+0x8],xmm0
    1959:	c5 fd 28 c1          	vmovapd ymm0,ymm1
    195d:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1964:	00 00 
    1966:	48 89 44 24 78       	mov    QWORD PTR [rsp+0x78],rax
    196b:	31 c0                	xor    eax,eax
    196d:	c5 fd 11 44 24 30    	vmovupd YMMWORD PTR [rsp+0x30],ymm0
    1973:	b8 00 00 00 00       	mov    eax,0x0
    1978:	89 c2                	mov    edx,eax
    197a:	c5 fb 10 44 d4 30    	vmovsd xmm0,QWORD PTR [rsp+rdx*8+0x30]
    1980:	c4 e1 f9 7e c2       	vmovq  rdx,xmm0
    1985:	48 85 d2             	test   rdx,rdx
    1988:	74 30                	je     19ba <_ZGVdM4l8l8u_add3+0x7d>
    198a:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
    198f:	c5 fb 10 0a          	vmovsd xmm1,QWORD PTR [rdx]
    1993:	48 8b 54 24 10       	mov    rdx,QWORD PTR [rsp+0x10]
    1998:	c5 fb 10 02          	vmovsd xmm0,QWORD PTR [rdx]
    199c:	c5 f3 58 c0          	vaddsd xmm0,xmm1,xmm0
    19a0:	c5 fb 58 44 24 08    	vaddsd xmm0,xmm0,QWORD PTR [rsp+0x8]
    19a6:	c5 fb 11 44 24 28    	vmovsd QWORD PTR [rsp+0x28],xmm0
    19ac:	c5 fb 10 44 24 28    	vmovsd xmm0,QWORD PTR [rsp+0x28]
    19b2:	89 c2                	mov    edx,eax
    19b4:	c5 fb 11 44 d4 50    	vmovsd QWORD PTR [rsp+rdx*8+0x50],xmm0
    19ba:	83 c0 01             	add    eax,0x1
    19bd:	48 83 44 24 18 08    	add    QWORD PTR [rsp+0x18],0x8
    19c3:	48 83 44 24 10 08    	add    QWORD PTR [rsp+0x10],0x8
    19c9:	83 f8 04             	cmp    eax,0x4
    19cc:	72 aa                	jb     1978 <_ZGVdM4l8l8u_add3+0x3b>
    19ce:	c5 fd 10 44 24 50    	vmovupd ymm0,YMMWORD PTR [rsp+0x50]
    19d4:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
    19d9:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    19e0:	00 00 
    19e2:	74 05                	je     19e9 <_ZGVdM4l8l8u_add3+0xac>
    19e4:	e8 47 f6 ff ff       	call   1030 <__stack_chk_fail@plt>
    19e9:	c9                   	leave
    19ea:	c3                   	ret

00000000000019eb <_ZGVeN8l8l8u_add3>:
    19eb:	55                   	push   rbp
    19ec:	48 89 e5             	mov    rbp,rsp
    19ef:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
    19f3:	48 83 c4 80          	add    rsp,0xffffffffffffff80
    19f7:	48 89 7c 24 18       	mov    QWORD PTR [rsp+0x18],rdi
    19fc:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
    1a01:	c5 fb 11 44 24 08    	vmovsd QWORD PTR [rsp+0x8],xmm0
    1a07:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1a0e:	00 00 
    1a10:	48 89 44 24 78       	mov    QWORD PTR [rsp+0x78],rax
    1a15:	31 c0                	xor    eax,eax
    1a17:	b8 00 00 00 00       	mov    eax,0x0
    1a1c:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
    1a21:	c5 fb 10 0a          	vmovsd xmm1,QWORD PTR [rdx]
    1a25:	48 8b 54 24 10       	mov    rdx,QWORD PTR [rsp+0x10]
    1a2a:	c5 fb 10 02          	vmovsd xmm0,QWORD PTR [rdx]
    1a2e:	c5 f3 58 c0          	vaddsd xmm0,xmm1,xmm0
    1a32:	c5 fb 58 44 24 08    	vaddsd xmm0,xmm0,QWORD PTR [rsp+0x8]
    1a38:	c5 fb 11 44 24 28    	vmovsd QWORD PTR [rsp+0x28],xmm0
    1a3e:	c5 fb 10 44 24 28    	vmovsd xmm0,QWORD PTR [rsp+0x28]
    1a44:	89 c2                	mov    edx,eax
    1a46:	c5 fb 11 44 d4 30    	vmovsd QWORD PTR [rsp+rdx*8+0x30],xmm0
    1a4c:	83 c0 01             	add    eax,0x1
    1a4f:	48 83 44 24 18 08    	add    QWORD PTR [rsp+0x18],0x8
    1a55:	48 83 44 24 10 08    	add    QWORD PTR [rsp+0x10],0x8
    1a5b:	83 f8 08             	cmp    eax,0x8
    1a5e:	72 bc                	jb     1a1c <_ZGVeN8l8l8u_add3+0x31>
    1a60:	62 f1 fd 48 10 84 24 	vmovupd zmm0,ZMMWORD PTR [rsp+0x30]
    1a67:	30 00 00 00 
    1a6b:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
    1a70:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    1a77:	00 00 
    1a79:	74 05                	je     1a80 <_ZGVeN8l8l8u_add3+0x95>
    1a7b:	e8 b0 f5 ff ff       	call   1030 <__stack_chk_fail@plt>
    1a80:	c9                   	leave
    1a81:	c3                   	ret

0000000000001a82 <_ZGVeM8l8l8u_add3>:
    1a82:	55                   	push   rbp
    1a83:	48 89 e5             	mov    rbp,rsp
    1a86:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
    1a8a:	48 83 c4 80          	add    rsp,0xffffffffffffff80
    1a8e:	48 89 7c 24 18       	mov    QWORD PTR [rsp+0x18],rdi
    1a93:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
    1a98:	c5 fb 11 44 24 08    	vmovsd QWORD PTR [rsp+0x8],xmm0
    1a9e:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1aa5:	00 00 
    1aa7:	48 89 44 24 78       	mov    QWORD PTR [rsp+0x78],rax
    1aac:	31 c0                	xor    eax,eax
    1aae:	b8 00 00 00 00       	mov    eax,0x0
    1ab3:	89 d6                	mov    esi,edx
    1ab5:	89 c1                	mov    ecx,eax
    1ab7:	d3 ee                	shr    esi,cl
    1ab9:	89 f1                	mov    ecx,esi
    1abb:	83 e1 01             	and    ecx,0x1
    1abe:	85 c9                	test   ecx,ecx
    1ac0:	74 30                	je     1af2 <_ZGVeM8l8l8u_add3+0x70>
    1ac2:	48 8b 4c 24 18       	mov    rcx,QWORD PTR [rsp+0x18]
    1ac7:	c5 fb 10 09          	vmovsd xmm1,QWORD PTR [rcx]
    1acb:	48 8b 4c 24 10       	mov    rcx,QWORD PTR [rsp+0x10]
    1ad0:	c5 fb 10 01          	vmovsd xmm0,QWORD PTR [rcx]
    1ad4:	c5 f3 58 c0          	vaddsd xmm0,xmm1,xmm0
    1ad8:	c5 fb 58 44 24 08    	vaddsd xmm0,xmm0,QWORD PTR [rsp+0x8]
    1ade:	c5 fb 11 44 24 28    	vmovsd QWORD PTR [rsp+0x28],xmm0
    1ae4:	c5 fb 10 44 24 28    	vmovsd xmm0,QWORD PTR [rsp+0x28]
    1aea:	89 c1                	mov    ecx,eax
    1aec:	c5 fb 11 44 cc 30    	vmovsd QWORD PTR [rsp+rcx*8+0x30],xmm0
    1af2:	83 c0 01             	add    eax,0x1
    1af5:	48 83 44 24 18 08    	add    QWORD PTR [rsp+0x18],0x8
    1afb:	48 83 44 24 10 08    	add    QWORD PTR [rsp+0x10],0x8
    1b01:	83 f8 08             	cmp    eax,0x8
    1b04:	72 ad                	jb     1ab3 <_ZGVeM8l8l8u_add3+0x31>
    1b06:	62 f1 fd 48 10 84 24 	vmovupd zmm0,ZMMWORD PTR [rsp+0x30]
    1b0d:	30 00 00 00 
    1b11:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
    1b16:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    1b1d:	00 00 
    1b1f:	74 05                	je     1b26 <_ZGVeM8l8l8u_add3+0xa4>
    1b21:	e8 0a f5 ff ff       	call   1030 <__stack_chk_fail@plt>
    1b26:	c9                   	leave
    1b27:	c3                   	ret

0000000000001b28 <_ZGVbN2uulu_add2>:
    1b28:	55                   	push   rbp
    1b29:	48 89 e5             	mov    rbp,rsp
    1b2c:	48 83 ec 50          	sub    rsp,0x50
    1b30:	48 89 7d c8          	mov    QWORD PTR [rbp-0x38],rdi
    1b34:	48 89 75 c0          	mov    QWORD PTR [rbp-0x40],rsi
    1b38:	89 55 bc             	mov    DWORD PTR [rbp-0x44],edx
    1b3b:	f2 0f 11 45 b0       	movsd  QWORD PTR [rbp-0x50],xmm0
    1b40:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1b47:	00 00 
    1b49:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1b4d:	31 c0                	xor    eax,eax
    1b4f:	b8 00 00 00 00       	mov    eax,0x0
    1b54:	8b 55 bc             	mov    edx,DWORD PTR [rbp-0x44]
    1b57:	48 63 d2             	movsxd rdx,edx
    1b5a:	48 8d 0c d5 00 00 00 	lea    rcx,[rdx*8+0x0]
    1b61:	00 
    1b62:	48 8b 55 c8          	mov    rdx,QWORD PTR [rbp-0x38]
    1b66:	48 01 ca             	add    rdx,rcx
    1b69:	f2 0f 10 0a          	movsd  xmm1,QWORD PTR [rdx]
    1b6d:	8b 55 bc             	mov    edx,DWORD PTR [rbp-0x44]
    1b70:	48 63 d2             	movsxd rdx,edx
    1b73:	48 8d 0c d5 00 00 00 	lea    rcx,[rdx*8+0x0]
    1b7a:	00 
    1b7b:	48 8b 55 c0          	mov    rdx,QWORD PTR [rbp-0x40]
    1b7f:	48 01 ca             	add    rdx,rcx
    1b82:	f2 0f 10 02          	movsd  xmm0,QWORD PTR [rdx]
    1b86:	f2 0f 58 c1          	addsd  xmm0,xmm1
    1b8a:	f2 0f 58 45 b0       	addsd  xmm0,QWORD PTR [rbp-0x50]
    1b8f:	f2 0f 11 45 d8       	movsd  QWORD PTR [rbp-0x28],xmm0
    1b94:	f2 0f 10 45 d8       	movsd  xmm0,QWORD PTR [rbp-0x28]
    1b99:	89 c2                	mov    edx,eax
    1b9b:	f2 0f 11 44 d5 e0    	movsd  QWORD PTR [rbp+rdx*8-0x20],xmm0
    1ba1:	83 c0 01             	add    eax,0x1
    1ba4:	83 45 bc 01          	add    DWORD PTR [rbp-0x44],0x1
    1ba8:	83 f8 02             	cmp    eax,0x2
    1bab:	72 a7                	jb     1b54 <_ZGVbN2uulu_add2+0x2c>
    1bad:	66 0f 28 45 e0       	movapd xmm0,XMMWORD PTR [rbp-0x20]
    1bb2:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1bb6:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    1bbd:	00 00 
    1bbf:	74 05                	je     1bc6 <_ZGVbN2uulu_add2+0x9e>
    1bc1:	e8 6a f4 ff ff       	call   1030 <__stack_chk_fail@plt>
    1bc6:	c9                   	leave
    1bc7:	c3                   	ret

0000000000001bc8 <_ZGVbM2uulu_add2>:
    1bc8:	55                   	push   rbp
    1bc9:	48 89 e5             	mov    rbp,rsp
    1bcc:	48 83 ec 60          	sub    rsp,0x60
    1bd0:	48 89 7d b8          	mov    QWORD PTR [rbp-0x48],rdi
    1bd4:	48 89 75 b0          	mov    QWORD PTR [rbp-0x50],rsi
    1bd8:	89 55 ac             	mov    DWORD PTR [rbp-0x54],edx
    1bdb:	f2 0f 11 45 a0       	movsd  QWORD PTR [rbp-0x60],xmm0
    1be0:	66 0f 28 c1          	movapd xmm0,xmm1
    1be4:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1beb:	00 00 
    1bed:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1bf1:	31 c0                	xor    eax,eax
    1bf3:	0f 29 45 d0          	movaps XMMWORD PTR [rbp-0x30],xmm0
    1bf7:	b8 00 00 00 00       	mov    eax,0x0
    1bfc:	89 c2                	mov    edx,eax
    1bfe:	f2 0f 10 44 d5 d0    	movsd  xmm0,QWORD PTR [rbp+rdx*8-0x30]
    1c04:	66 48 0f 7e c2       	movq   rdx,xmm0
    1c09:	48 85 d2             	test   rdx,rdx
    1c0c:	74 4d                	je     1c5b <_ZGVbM2uulu_add2+0x93>
    1c0e:	8b 55 ac             	mov    edx,DWORD PTR [rbp-0x54]
    1c11:	48 63 d2             	movsxd rdx,edx
    1c14:	48 8d 0c d5 00 00 00 	lea    rcx,[rdx*8+0x0]
    1c1b:	00 
    1c1c:	48 8b 55 b8          	mov    rdx,QWORD PTR [rbp-0x48]
    1c20:	48 01 ca             	add    rdx,rcx
    1c23:	f2 0f 10 0a          	movsd  xmm1,QWORD PTR [rdx]
    1c27:	8b 55 ac             	mov    edx,DWORD PTR [rbp-0x54]
    1c2a:	48 63 d2             	movsxd rdx,edx
    1c2d:	48 8d 0c d5 00 00 00 	lea    rcx,[rdx*8+0x0]
    1c34:	00 
    1c35:	48 8b 55 b0          	mov    rdx,QWORD PTR [rbp-0x50]
    1c39:	48 01 ca             	add    rdx,rcx
    1c3c:	f2 0f 10 02          	movsd  xmm0,QWORD PTR [rdx]
    1c40:	f2 0f 58 c1          	addsd  xmm0,xmm1
    1c44:	f2 0f 58 45 a0       	addsd  xmm0,QWORD PTR [rbp-0x60]
    1c49:	f2 0f 11 45 c8       	movsd  QWORD PTR [rbp-0x38],xmm0
    1c4e:	f2 0f 10 45 c8       	movsd  xmm0,QWORD PTR [rbp-0x38]
    1c53:	89 c2                	mov    edx,eax
    1c55:	f2 0f 11 44 d5 e0    	movsd  QWORD PTR [rbp+rdx*8-0x20],xmm0
    1c5b:	83 c0 01             	add    eax,0x1
    1c5e:	83 45 ac 01          	add    DWORD PTR [rbp-0x54],0x1
    1c62:	83 f8 02             	cmp    eax,0x2
    1c65:	72 95                	jb     1bfc <_ZGVbM2uulu_add2+0x34>
    1c67:	66 0f 28 45 e0       	movapd xmm0,XMMWORD PTR [rbp-0x20]
    1c6c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1c70:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    1c77:	00 00 
    1c79:	74 05                	je     1c80 <_ZGVbM2uulu_add2+0xb8>
    1c7b:	e8 b0 f3 ff ff       	call   1030 <__stack_chk_fail@plt>
    1c80:	c9                   	leave
    1c81:	c3                   	ret

0000000000001c82 <_ZGVcN4uulu_add2>:
    1c82:	55                   	push   rbp
    1c83:	48 89 e5             	mov    rbp,rsp
    1c86:	48 83 e4 e0          	and    rsp,0xffffffffffffffe0
    1c8a:	48 83 ec 60          	sub    rsp,0x60
    1c8e:	48 89 7c 24 18       	mov    QWORD PTR [rsp+0x18],rdi
    1c93:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
    1c98:	89 54 24 0c          	mov    DWORD PTR [rsp+0xc],edx
    1c9c:	c5 fb 11 04 24       	vmovsd QWORD PTR [rsp],xmm0
    1ca1:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1ca8:	00 00 
    1caa:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
    1caf:	31 c0                	xor    eax,eax
    1cb1:	b8 00 00 00 00       	mov    eax,0x0
    1cb6:	8b 54 24 0c          	mov    edx,DWORD PTR [rsp+0xc]
    1cba:	48 63 d2             	movsxd rdx,edx
    1cbd:	48 8d 0c d5 00 00 00 	lea    rcx,[rdx*8+0x0]
    1cc4:	00 
    1cc5:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
    1cca:	48 01 ca             	add    rdx,rcx
    1ccd:	c5 fb 10 0a          	vmovsd xmm1,QWORD PTR [rdx]
    1cd1:	8b 54 24 0c          	mov    edx,DWORD PTR [rsp+0xc]
    1cd5:	48 63 d2             	movsxd rdx,edx
    1cd8:	48 8d 0c d5 00 00 00 	lea    rcx,[rdx*8+0x0]
    1cdf:	00 
    1ce0:	48 8b 54 24 10       	mov    rdx,QWORD PTR [rsp+0x10]
    1ce5:	48 01 ca             	add    rdx,rcx
    1ce8:	c5 fb 10 02          	vmovsd xmm0,QWORD PTR [rdx]
    1cec:	c5 f3 58 c0          	vaddsd xmm0,xmm1,xmm0
    1cf0:	c5 fb 58 04 24       	vaddsd xmm0,xmm0,QWORD PTR [rsp]
    1cf5:	c5 fb 11 44 24 28    	vmovsd QWORD PTR [rsp+0x28],xmm0
    1cfb:	c5 fb 10 44 24 28    	vmovsd xmm0,QWORD PTR [rsp+0x28]
    1d01:	89 c2                	mov    edx,eax
    1d03:	c5 fb 11 44 d4 30    	vmovsd QWORD PTR [rsp+rdx*8+0x30],xmm0
    1d09:	83 c0 01             	add    eax,0x1
    1d0c:	83 44 24 0c 01       	add    DWORD PTR [rsp+0xc],0x1
    1d11:	83 f8 04             	cmp    eax,0x4
    1d14:	72 a0                	jb     1cb6 <_ZGVcN4uulu_add2+0x34>
    1d16:	c5 fd 10 44 24 30    	vmovupd ymm0,YMMWORD PTR [rsp+0x30]
    1d1c:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
    1d21:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    1d28:	00 00 
    1d2a:	74 05                	je     1d31 <_ZGVcN4uulu_add2+0xaf>
    1d2c:	e8 ff f2 ff ff       	call   1030 <__stack_chk_fail@plt>
    1d31:	c9                   	leave
    1d32:	c3                   	ret

0000000000001d33 <_ZGVcM4uulu_add2>:
    1d33:	55                   	push   rbp
    1d34:	48 89 e5             	mov    rbp,rsp
    1d37:	48 83 e4 e0          	and    rsp,0xffffffffffffffe0
    1d3b:	48 83 c4 80          	add    rsp,0xffffffffffffff80
    1d3f:	48 89 7c 24 18       	mov    QWORD PTR [rsp+0x18],rdi
    1d44:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
    1d49:	89 54 24 0c          	mov    DWORD PTR [rsp+0xc],edx
    1d4d:	c5 fb 11 04 24       	vmovsd QWORD PTR [rsp],xmm0
    1d52:	c5 fd 28 c1          	vmovapd ymm0,ymm1
    1d56:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1d5d:	00 00 
    1d5f:	48 89 44 24 78       	mov    QWORD PTR [rsp+0x78],rax
    1d64:	31 c0                	xor    eax,eax
    1d66:	c5 fd 11 44 24 30    	vmovupd YMMWORD PTR [rsp+0x30],ymm0
    1d6c:	b8 00 00 00 00       	mov    eax,0x0
    1d71:	89 c2                	mov    edx,eax
    1d73:	c5 fb 10 44 d4 30    	vmovsd xmm0,QWORD PTR [rsp+rdx*8+0x30]
    1d79:	c4 e1 f9 7e c2       	vmovq  rdx,xmm0
    1d7e:	48 85 d2             	test   rdx,rdx
    1d81:	74 53                	je     1dd6 <_ZGVcM4uulu_add2+0xa3>
    1d83:	8b 54 24 0c          	mov    edx,DWORD PTR [rsp+0xc]
    1d87:	48 63 d2             	movsxd rdx,edx
    1d8a:	48 8d 0c d5 00 00 00 	lea    rcx,[rdx*8+0x0]
    1d91:	00 
    1d92:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
    1d97:	48 01 ca             	add    rdx,rcx
    1d9a:	c5 fb 10 0a          	vmovsd xmm1,QWORD PTR [rdx]
    1d9e:	8b 54 24 0c          	mov    edx,DWORD PTR [rsp+0xc]
    1da2:	48 63 d2             	movsxd rdx,edx
    1da5:	48 8d 0c d5 00 00 00 	lea    rcx,[rdx*8+0x0]
    1dac:	00 
    1dad:	48 8b 54 24 10       	mov    rdx,QWORD PTR [rsp+0x10]
    1db2:	48 01 ca             	add    rdx,rcx
    1db5:	c5 fb 10 02          	vmovsd xmm0,QWORD PTR [rdx]
    1db9:	c5 f3 58 c0          	vaddsd xmm0,xmm1,xmm0
    1dbd:	c5 fb 58 04 24       	vaddsd xmm0,xmm0,QWORD PTR [rsp]
    1dc2:	c5 fb 11 44 24 28    	vmovsd QWORD PTR [rsp+0x28],xmm0
    1dc8:	c5 fb 10 44 24 28    	vmovsd xmm0,QWORD PTR [rsp+0x28]
    1dce:	89 c2                	mov    edx,eax
    1dd0:	c5 fb 11 44 d4 50    	vmovsd QWORD PTR [rsp+rdx*8+0x50],xmm0
    1dd6:	83 c0 01             	add    eax,0x1
    1dd9:	83 44 24 0c 01       	add    DWORD PTR [rsp+0xc],0x1
    1dde:	83 f8 04             	cmp    eax,0x4
    1de1:	72 8e                	jb     1d71 <_ZGVcM4uulu_add2+0x3e>
    1de3:	c5 fd 10 44 24 50    	vmovupd ymm0,YMMWORD PTR [rsp+0x50]
    1de9:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
    1dee:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    1df5:	00 00 
    1df7:	74 05                	je     1dfe <_ZGVcM4uulu_add2+0xcb>
    1df9:	e8 32 f2 ff ff       	call   1030 <__stack_chk_fail@plt>
    1dfe:	c9                   	leave
    1dff:	c3                   	ret

0000000000001e00 <_ZGVdN4uulu_add2>:
    1e00:	55                   	push   rbp
    1e01:	48 89 e5             	mov    rbp,rsp
    1e04:	48 83 e4 e0          	and    rsp,0xffffffffffffffe0
    1e08:	48 83 ec 60          	sub    rsp,0x60
    1e0c:	48 89 7c 24 18       	mov    QWORD PTR [rsp+0x18],rdi
    1e11:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
    1e16:	89 54 24 0c          	mov    DWORD PTR [rsp+0xc],edx
    1e1a:	c5 fb 11 04 24       	vmovsd QWORD PTR [rsp],xmm0
    1e1f:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1e26:	00 00 
    1e28:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
    1e2d:	31 c0                	xor    eax,eax
    1e2f:	b8 00 00 00 00       	mov    eax,0x0
    1e34:	8b 54 24 0c          	mov    edx,DWORD PTR [rsp+0xc]
    1e38:	48 63 d2             	movsxd rdx,edx
    1e3b:	48 8d 0c d5 00 00 00 	lea    rcx,[rdx*8+0x0]
    1e42:	00 
    1e43:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
    1e48:	48 01 ca             	add    rdx,rcx
    1e4b:	c5 fb 10 0a          	vmovsd xmm1,QWORD PTR [rdx]
    1e4f:	8b 54 24 0c          	mov    edx,DWORD PTR [rsp+0xc]
    1e53:	48 63 d2             	movsxd rdx,edx
    1e56:	48 8d 0c d5 00 00 00 	lea    rcx,[rdx*8+0x0]
    1e5d:	00 
    1e5e:	48 8b 54 24 10       	mov    rdx,QWORD PTR [rsp+0x10]
    1e63:	48 01 ca             	add    rdx,rcx
    1e66:	c5 fb 10 02          	vmovsd xmm0,QWORD PTR [rdx]
    1e6a:	c5 f3 58 c0          	vaddsd xmm0,xmm1,xmm0
    1e6e:	c5 fb 58 04 24       	vaddsd xmm0,xmm0,QWORD PTR [rsp]
    1e73:	c5 fb 11 44 24 28    	vmovsd QWORD PTR [rsp+0x28],xmm0
    1e79:	c5 fb 10 44 24 28    	vmovsd xmm0,QWORD PTR [rsp+0x28]
    1e7f:	89 c2                	mov    edx,eax
    1e81:	c5 fb 11 44 d4 30    	vmovsd QWORD PTR [rsp+rdx*8+0x30],xmm0
    1e87:	83 c0 01             	add    eax,0x1
    1e8a:	83 44 24 0c 01       	add    DWORD PTR [rsp+0xc],0x1
    1e8f:	83 f8 04             	cmp    eax,0x4
    1e92:	72 a0                	jb     1e34 <_ZGVdN4uulu_add2+0x34>
    1e94:	c5 fd 10 44 24 30    	vmovupd ymm0,YMMWORD PTR [rsp+0x30]
    1e9a:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
    1e9f:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    1ea6:	00 00 
    1ea8:	74 05                	je     1eaf <_ZGVdN4uulu_add2+0xaf>
    1eaa:	e8 81 f1 ff ff       	call   1030 <__stack_chk_fail@plt>
    1eaf:	c9                   	leave
    1eb0:	c3                   	ret

0000000000001eb1 <_ZGVdM4uulu_add2>:
    1eb1:	55                   	push   rbp
    1eb2:	48 89 e5             	mov    rbp,rsp
    1eb5:	48 83 e4 e0          	and    rsp,0xffffffffffffffe0
    1eb9:	48 83 c4 80          	add    rsp,0xffffffffffffff80
    1ebd:	48 89 7c 24 18       	mov    QWORD PTR [rsp+0x18],rdi
    1ec2:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
    1ec7:	89 54 24 0c          	mov    DWORD PTR [rsp+0xc],edx
    1ecb:	c5 fb 11 04 24       	vmovsd QWORD PTR [rsp],xmm0
    1ed0:	c5 fd 28 c1          	vmovapd ymm0,ymm1
    1ed4:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1edb:	00 00 
    1edd:	48 89 44 24 78       	mov    QWORD PTR [rsp+0x78],rax
    1ee2:	31 c0                	xor    eax,eax
    1ee4:	c5 fd 11 44 24 30    	vmovupd YMMWORD PTR [rsp+0x30],ymm0
    1eea:	b8 00 00 00 00       	mov    eax,0x0
    1eef:	89 c2                	mov    edx,eax
    1ef1:	c5 fb 10 44 d4 30    	vmovsd xmm0,QWORD PTR [rsp+rdx*8+0x30]
    1ef7:	c4 e1 f9 7e c2       	vmovq  rdx,xmm0
    1efc:	48 85 d2             	test   rdx,rdx
    1eff:	74 53                	je     1f54 <_ZGVdM4uulu_add2+0xa3>
    1f01:	8b 54 24 0c          	mov    edx,DWORD PTR [rsp+0xc]
    1f05:	48 63 d2             	movsxd rdx,edx
    1f08:	48 8d 0c d5 00 00 00 	lea    rcx,[rdx*8+0x0]
    1f0f:	00 
    1f10:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
    1f15:	48 01 ca             	add    rdx,rcx
    1f18:	c5 fb 10 0a          	vmovsd xmm1,QWORD PTR [rdx]
    1f1c:	8b 54 24 0c          	mov    edx,DWORD PTR [rsp+0xc]
    1f20:	48 63 d2             	movsxd rdx,edx
    1f23:	48 8d 0c d5 00 00 00 	lea    rcx,[rdx*8+0x0]
    1f2a:	00 
    1f2b:	48 8b 54 24 10       	mov    rdx,QWORD PTR [rsp+0x10]
    1f30:	48 01 ca             	add    rdx,rcx
    1f33:	c5 fb 10 02          	vmovsd xmm0,QWORD PTR [rdx]
    1f37:	c5 f3 58 c0          	vaddsd xmm0,xmm1,xmm0
    1f3b:	c5 fb 58 04 24       	vaddsd xmm0,xmm0,QWORD PTR [rsp]
    1f40:	c5 fb 11 44 24 28    	vmovsd QWORD PTR [rsp+0x28],xmm0
    1f46:	c5 fb 10 44 24 28    	vmovsd xmm0,QWORD PTR [rsp+0x28]
    1f4c:	89 c2                	mov    edx,eax
    1f4e:	c5 fb 11 44 d4 50    	vmovsd QWORD PTR [rsp+rdx*8+0x50],xmm0
    1f54:	83 c0 01             	add    eax,0x1
    1f57:	83 44 24 0c 01       	add    DWORD PTR [rsp+0xc],0x1
    1f5c:	83 f8 04             	cmp    eax,0x4
    1f5f:	72 8e                	jb     1eef <_ZGVdM4uulu_add2+0x3e>
    1f61:	c5 fd 10 44 24 50    	vmovupd ymm0,YMMWORD PTR [rsp+0x50]
    1f67:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
    1f6c:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    1f73:	00 00 
    1f75:	74 05                	je     1f7c <_ZGVdM4uulu_add2+0xcb>
    1f77:	e8 b4 f0 ff ff       	call   1030 <__stack_chk_fail@plt>
    1f7c:	c9                   	leave
    1f7d:	c3                   	ret

0000000000001f7e <_ZGVeN8uulu_add2>:
    1f7e:	55                   	push   rbp
    1f7f:	48 89 e5             	mov    rbp,rsp
    1f82:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
    1f86:	48 83 c4 80          	add    rsp,0xffffffffffffff80
    1f8a:	48 89 7c 24 18       	mov    QWORD PTR [rsp+0x18],rdi
    1f8f:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
    1f94:	89 54 24 0c          	mov    DWORD PTR [rsp+0xc],edx
    1f98:	c5 fb 11 04 24       	vmovsd QWORD PTR [rsp],xmm0
    1f9d:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1fa4:	00 00 
    1fa6:	48 89 44 24 78       	mov    QWORD PTR [rsp+0x78],rax
    1fab:	31 c0                	xor    eax,eax
    1fad:	b8 00 00 00 00       	mov    eax,0x0
    1fb2:	8b 54 24 0c          	mov    edx,DWORD PTR [rsp+0xc]
    1fb6:	48 63 d2             	movsxd rdx,edx
    1fb9:	48 8d 0c d5 00 00 00 	lea    rcx,[rdx*8+0x0]
    1fc0:	00 
    1fc1:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
    1fc6:	48 01 ca             	add    rdx,rcx
    1fc9:	c5 fb 10 0a          	vmovsd xmm1,QWORD PTR [rdx]
    1fcd:	8b 54 24 0c          	mov    edx,DWORD PTR [rsp+0xc]
    1fd1:	48 63 d2             	movsxd rdx,edx
    1fd4:	48 8d 0c d5 00 00 00 	lea    rcx,[rdx*8+0x0]
    1fdb:	00 
    1fdc:	48 8b 54 24 10       	mov    rdx,QWORD PTR [rsp+0x10]
    1fe1:	48 01 ca             	add    rdx,rcx
    1fe4:	c5 fb 10 02          	vmovsd xmm0,QWORD PTR [rdx]
    1fe8:	c5 f3 58 c0          	vaddsd xmm0,xmm1,xmm0
    1fec:	c5 fb 58 04 24       	vaddsd xmm0,xmm0,QWORD PTR [rsp]
    1ff1:	c5 fb 11 44 24 28    	vmovsd QWORD PTR [rsp+0x28],xmm0
    1ff7:	c5 fb 10 44 24 28    	vmovsd xmm0,QWORD PTR [rsp+0x28]
    1ffd:	89 c2                	mov    edx,eax
    1fff:	c5 fb 11 44 d4 30    	vmovsd QWORD PTR [rsp+rdx*8+0x30],xmm0
    2005:	83 c0 01             	add    eax,0x1
    2008:	83 44 24 0c 01       	add    DWORD PTR [rsp+0xc],0x1
    200d:	83 f8 08             	cmp    eax,0x8
    2010:	72 a0                	jb     1fb2 <_ZGVeN8uulu_add2+0x34>
    2012:	62 f1 fd 48 10 84 24 	vmovupd zmm0,ZMMWORD PTR [rsp+0x30]
    2019:	30 00 00 00 
    201d:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
    2022:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    2029:	00 00 
    202b:	74 05                	je     2032 <_ZGVeN8uulu_add2+0xb4>
    202d:	e8 fe ef ff ff       	call   1030 <__stack_chk_fail@plt>
    2032:	c9                   	leave
    2033:	c3                   	ret

0000000000002034 <_ZGVeM8uulu_add2>:
    2034:	55                   	push   rbp
    2035:	48 89 e5             	mov    rbp,rsp
    2038:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
    203c:	48 83 c4 80          	add    rsp,0xffffffffffffff80
    2040:	48 89 7c 24 18       	mov    QWORD PTR [rsp+0x18],rdi
    2045:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
    204a:	89 54 24 0c          	mov    DWORD PTR [rsp+0xc],edx
    204e:	c5 fb 11 04 24       	vmovsd QWORD PTR [rsp],xmm0
    2053:	89 ca                	mov    edx,ecx
    2055:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    205c:	00 00 
    205e:	48 89 44 24 78       	mov    QWORD PTR [rsp+0x78],rax
    2063:	31 c0                	xor    eax,eax
    2065:	b8 00 00 00 00       	mov    eax,0x0
    206a:	89 d7                	mov    edi,edx
    206c:	89 c1                	mov    ecx,eax
    206e:	d3 ef                	shr    edi,cl
    2070:	89 f9                	mov    ecx,edi
    2072:	83 e1 01             	and    ecx,0x1
    2075:	85 c9                	test   ecx,ecx
    2077:	74 53                	je     20cc <_ZGVeM8uulu_add2+0x98>
    2079:	8b 4c 24 0c          	mov    ecx,DWORD PTR [rsp+0xc]
    207d:	48 63 c9             	movsxd rcx,ecx
    2080:	48 8d 34 cd 00 00 00 	lea    rsi,[rcx*8+0x0]
    2087:	00 
    2088:	48 8b 4c 24 18       	mov    rcx,QWORD PTR [rsp+0x18]
    208d:	48 01 f1             	add    rcx,rsi
    2090:	c5 fb 10 09          	vmovsd xmm1,QWORD PTR [rcx]
    2094:	8b 4c 24 0c          	mov    ecx,DWORD PTR [rsp+0xc]
    2098:	48 63 c9             	movsxd rcx,ecx
    209b:	48 8d 34 cd 00 00 00 	lea    rsi,[rcx*8+0x0]
    20a2:	00 
    20a3:	48 8b 4c 24 10       	mov    rcx,QWORD PTR [rsp+0x10]
    20a8:	48 01 f1             	add    rcx,rsi
    20ab:	c5 fb 10 01          	vmovsd xmm0,QWORD PTR [rcx]
    20af:	c5 f3 58 c0          	vaddsd xmm0,xmm1,xmm0
    20b3:	c5 fb 58 04 24       	vaddsd xmm0,xmm0,QWORD PTR [rsp]
    20b8:	c5 fb 11 44 24 28    	vmovsd QWORD PTR [rsp+0x28],xmm0
    20be:	c5 fb 10 44 24 28    	vmovsd xmm0,QWORD PTR [rsp+0x28]
    20c4:	89 c1                	mov    ecx,eax
    20c6:	c5 fb 11 44 cc 30    	vmovsd QWORD PTR [rsp+rcx*8+0x30],xmm0
    20cc:	83 c0 01             	add    eax,0x1
    20cf:	83 44 24 0c 01       	add    DWORD PTR [rsp+0xc],0x1
    20d4:	83 f8 08             	cmp    eax,0x8
    20d7:	72 91                	jb     206a <_ZGVeM8uulu_add2+0x36>
    20d9:	62 f1 fd 48 10 84 24 	vmovupd zmm0,ZMMWORD PTR [rsp+0x30]
    20e0:	30 00 00 00 
    20e4:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
    20e9:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    20f0:	00 00 
    20f2:	74 05                	je     20f9 <_ZGVeM8uulu_add2+0xc5>
    20f4:	e8 37 ef ff ff       	call   1030 <__stack_chk_fail@plt>
    20f9:	c9                   	leave
    20fa:	c3                   	ret

00000000000020fb <_ZGVbN2vvu_add1>:
    20fb:	55                   	push   rbp
    20fc:	48 89 e5             	mov    rbp,rsp
    20ff:	48 83 ec 70          	sub    rsp,0x70
    2103:	f2 0f 11 55 98       	movsd  QWORD PTR [rbp-0x68],xmm2
    2108:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    210f:	00 00 
    2111:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    2115:	31 c0                	xor    eax,eax
    2117:	0f 29 45 c0          	movaps XMMWORD PTR [rbp-0x40],xmm0
    211b:	0f 29 4d d0          	movaps XMMWORD PTR [rbp-0x30],xmm1
    211f:	b8 00 00 00 00       	mov    eax,0x0
    2124:	89 c2                	mov    edx,eax
    2126:	f2 0f 10 44 d5 d0    	movsd  xmm0,QWORD PTR [rbp+rdx*8-0x30]
    212c:	f2 0f 11 45 b0       	movsd  QWORD PTR [rbp-0x50],xmm0
    2131:	89 c2                	mov    edx,eax
    2133:	f2 0f 10 44 d5 c0    	movsd  xmm0,QWORD PTR [rbp+rdx*8-0x40]
    2139:	f2 0f 11 45 a8       	movsd  QWORD PTR [rbp-0x58],xmm0
    213e:	f2 0f 10 45 a8       	movsd  xmm0,QWORD PTR [rbp-0x58]
    2143:	f2 0f 58 45 b0       	addsd  xmm0,QWORD PTR [rbp-0x50]
    2148:	f2 0f 58 45 98       	addsd  xmm0,QWORD PTR [rbp-0x68]
    214d:	f2 0f 11 45 b8       	movsd  QWORD PTR [rbp-0x48],xmm0
    2152:	f2 0f 10 45 b8       	movsd  xmm0,QWORD PTR [rbp-0x48]
    2157:	89 c2                	mov    edx,eax
    2159:	f2 0f 11 44 d5 e0    	movsd  QWORD PTR [rbp+rdx*8-0x20],xmm0
    215f:	83 c0 01             	add    eax,0x1
    2162:	83 f8 02             	cmp    eax,0x2
    2165:	72 bd                	jb     2124 <_ZGVbN2vvu_add1+0x29>
    2167:	66 0f 28 45 e0       	movapd xmm0,XMMWORD PTR [rbp-0x20]
    216c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    2170:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    2177:	00 00 
    2179:	74 05                	je     2180 <_ZGVbN2vvu_add1+0x85>
    217b:	e8 b0 ee ff ff       	call   1030 <__stack_chk_fail@plt>
    2180:	c9                   	leave
    2181:	c3                   	ret

0000000000002182 <_ZGVbM2vvu_add1>:
    2182:	55                   	push   rbp
    2183:	48 89 e5             	mov    rbp,rsp
    2186:	48 83 c4 80          	add    rsp,0xffffffffffffff80
    218a:	66 0f 28 e1          	movapd xmm4,xmm1
    218e:	f2 0f 11 55 88       	movsd  QWORD PTR [rbp-0x78],xmm2
    2193:	66 0f 28 cb          	movapd xmm1,xmm3
    2197:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    219e:	00 00 
    21a0:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    21a4:	31 c0                	xor    eax,eax
    21a6:	0f 29 45 b0          	movaps XMMWORD PTR [rbp-0x50],xmm0
    21aa:	0f 29 65 c0          	movaps XMMWORD PTR [rbp-0x40],xmm4
    21ae:	0f 29 4d d0          	movaps XMMWORD PTR [rbp-0x30],xmm1
    21b2:	b8 00 00 00 00       	mov    eax,0x0
    21b7:	89 c2                	mov    edx,eax
    21b9:	f2 0f 10 44 d5 c0    	movsd  xmm0,QWORD PTR [rbp+rdx*8-0x40]
    21bf:	f2 0f 11 45 a0       	movsd  QWORD PTR [rbp-0x60],xmm0
    21c4:	89 c2                	mov    edx,eax
    21c6:	f2 0f 10 44 d5 b0    	movsd  xmm0,QWORD PTR [rbp+rdx*8-0x50]
    21cc:	f2 0f 11 45 98       	movsd  QWORD PTR [rbp-0x68],xmm0
    21d1:	89 c2                	mov    edx,eax
    21d3:	f2 0f 10 44 d5 d0    	movsd  xmm0,QWORD PTR [rbp+rdx*8-0x30]
    21d9:	66 48 0f 7e c2       	movq   rdx,xmm0
    21de:	48 85 d2             	test   rdx,rdx
    21e1:	74 21                	je     2204 <_ZGVbM2vvu_add1+0x82>
    21e3:	f2 0f 10 45 98       	movsd  xmm0,QWORD PTR [rbp-0x68]
    21e8:	f2 0f 58 45 a0       	addsd  xmm0,QWORD PTR [rbp-0x60]
    21ed:	f2 0f 58 45 88       	addsd  xmm0,QWORD PTR [rbp-0x78]
    21f2:	f2 0f 11 45 a8       	movsd  QWORD PTR [rbp-0x58],xmm0
    21f7:	f2 0f 10 45 a8       	movsd  xmm0,QWORD PTR [rbp-0x58]
    21fc:	89 c2                	mov    edx,eax
    21fe:	f2 0f 11 44 d5 e0    	movsd  QWORD PTR [rbp+rdx*8-0x20],xmm0
    2204:	83 c0 01             	add    eax,0x1
    2207:	83 f8 02             	cmp    eax,0x2
    220a:	72 ab                	jb     21b7 <_ZGVbM2vvu_add1+0x35>
    220c:	66 0f 28 45 e0       	movapd xmm0,XMMWORD PTR [rbp-0x20]
    2211:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    2215:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    221c:	00 00 
    221e:	74 05                	je     2225 <_ZGVbM2vvu_add1+0xa3>
    2220:	e8 0b ee ff ff       	call   1030 <__stack_chk_fail@plt>
    2225:	c9                   	leave
    2226:	c3                   	ret

0000000000002227 <_ZGVcN4vvu_add1>:
    2227:	55                   	push   rbp
    2228:	48 89 e5             	mov    rbp,rsp
    222b:	48 83 e4 e0          	and    rsp,0xffffffffffffffe0
    222f:	48 81 ec a0 00 00 00 	sub    rsp,0xa0
    2236:	c5 fb 11 54 24 08    	vmovsd QWORD PTR [rsp+0x8],xmm2
    223c:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    2243:	00 00 
    2245:	48 89 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rax
    224c:	00 
    224d:	31 c0                	xor    eax,eax
    224f:	c5 fd 11 44 24 30    	vmovupd YMMWORD PTR [rsp+0x30],ymm0
    2255:	c5 fd 11 4c 24 50    	vmovupd YMMWORD PTR [rsp+0x50],ymm1
    225b:	b8 00 00 00 00       	mov    eax,0x0
    2260:	89 c2                	mov    edx,eax
    2262:	c5 fb 10 44 d4 50    	vmovsd xmm0,QWORD PTR [rsp+rdx*8+0x50]
    2268:	c5 fb 11 44 24 20    	vmovsd QWORD PTR [rsp+0x20],xmm0
    226e:	89 c2                	mov    edx,eax
    2270:	c5 fb 10 44 d4 30    	vmovsd xmm0,QWORD PTR [rsp+rdx*8+0x30]
    2276:	c5 fb 11 44 24 18    	vmovsd QWORD PTR [rsp+0x18],xmm0
    227c:	c5 fb 10 44 24 18    	vmovsd xmm0,QWORD PTR [rsp+0x18]
    2282:	c5 fb 58 44 24 20    	vaddsd xmm0,xmm0,QWORD PTR [rsp+0x20]
    2288:	c5 fb 58 44 24 08    	vaddsd xmm0,xmm0,QWORD PTR [rsp+0x8]
    228e:	c5 fb 11 44 24 28    	vmovsd QWORD PTR [rsp+0x28],xmm0
    2294:	c5 fb 10 44 24 28    	vmovsd xmm0,QWORD PTR [rsp+0x28]
    229a:	89 c2                	mov    edx,eax
    229c:	c5 fb 11 44 d4 70    	vmovsd QWORD PTR [rsp+rdx*8+0x70],xmm0
    22a2:	83 c0 01             	add    eax,0x1
    22a5:	83 f8 04             	cmp    eax,0x4
    22a8:	72 b6                	jb     2260 <_ZGVcN4vvu_add1+0x39>
    22aa:	c5 fd 10 44 24 70    	vmovupd ymm0,YMMWORD PTR [rsp+0x70]
    22b0:	48 8b 84 24 98 00 00 	mov    rax,QWORD PTR [rsp+0x98]
    22b7:	00 
    22b8:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    22bf:	00 00 
    22c1:	74 05                	je     22c8 <_ZGVcN4vvu_add1+0xa1>
    22c3:	e8 68 ed ff ff       	call   1030 <__stack_chk_fail@plt>
    22c8:	c9                   	leave
    22c9:	c3                   	ret

00000000000022ca <_ZGVcM4vvu_add1>:
    22ca:	55                   	push   rbp
    22cb:	48 89 e5             	mov    rbp,rsp
    22ce:	48 83 e4 e0          	and    rsp,0xffffffffffffffe0
    22d2:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
    22d9:	c5 fd 28 e1          	vmovapd ymm4,ymm1
    22dd:	c5 fb 11 54 24 08    	vmovsd QWORD PTR [rsp+0x8],xmm2
    22e3:	c5 fd 28 cb          	vmovapd ymm1,ymm3
    22e7:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    22ee:	00 00 
    22f0:	48 89 84 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rax
    22f7:	00 
    22f8:	31 c0                	xor    eax,eax
    22fa:	c5 fd 11 44 24 30    	vmovupd YMMWORD PTR [rsp+0x30],ymm0
    2300:	c5 fd 11 64 24 50    	vmovupd YMMWORD PTR [rsp+0x50],ymm4
    2306:	c5 fd 11 4c 24 70    	vmovupd YMMWORD PTR [rsp+0x70],ymm1
    230c:	b8 00 00 00 00       	mov    eax,0x0
    2311:	89 c2                	mov    edx,eax
    2313:	c5 fb 10 44 d4 50    	vmovsd xmm0,QWORD PTR [rsp+rdx*8+0x50]
    2319:	c5 fb 11 44 24 20    	vmovsd QWORD PTR [rsp+0x20],xmm0
    231f:	89 c2                	mov    edx,eax
    2321:	c5 fb 10 44 d4 30    	vmovsd xmm0,QWORD PTR [rsp+rdx*8+0x30]
    2327:	c5 fb 11 44 24 18    	vmovsd QWORD PTR [rsp+0x18],xmm0
    232d:	89 c2                	mov    edx,eax
    232f:	c5 fb 10 44 d4 70    	vmovsd xmm0,QWORD PTR [rsp+rdx*8+0x70]
    2335:	c4 e1 f9 7e c2       	vmovq  rdx,xmm0
    233a:	48 85 d2             	test   rdx,rdx
    233d:	74 29                	je     2368 <_ZGVcM4vvu_add1+0x9e>
    233f:	c5 fb 10 44 24 18    	vmovsd xmm0,QWORD PTR [rsp+0x18]
    2345:	c5 fb 58 44 24 20    	vaddsd xmm0,xmm0,QWORD PTR [rsp+0x20]
    234b:	c5 fb 58 44 24 08    	vaddsd xmm0,xmm0,QWORD PTR [rsp+0x8]
    2351:	c5 fb 11 44 24 28    	vmovsd QWORD PTR [rsp+0x28],xmm0
    2357:	c5 fb 10 44 24 28    	vmovsd xmm0,QWORD PTR [rsp+0x28]
    235d:	89 c2                	mov    edx,eax
    235f:	c5 fb 11 84 d4 90 00 	vmovsd QWORD PTR [rsp+rdx*8+0x90],xmm0
    2366:	00 00 
    2368:	83 c0 01             	add    eax,0x1
    236b:	83 f8 04             	cmp    eax,0x4
    236e:	72 a1                	jb     2311 <_ZGVcM4vvu_add1+0x47>
    2370:	c5 fd 10 84 24 90 00 	vmovupd ymm0,YMMWORD PTR [rsp+0x90]
    2377:	00 00 
    2379:	48 8b 84 24 b8 00 00 	mov    rax,QWORD PTR [rsp+0xb8]
    2380:	00 
    2381:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    2388:	00 00 
    238a:	74 05                	je     2391 <_ZGVcM4vvu_add1+0xc7>
    238c:	e8 9f ec ff ff       	call   1030 <__stack_chk_fail@plt>
    2391:	c9                   	leave
    2392:	c3                   	ret

0000000000002393 <_ZGVdN4vvu_add1>:
    2393:	55                   	push   rbp
    2394:	48 89 e5             	mov    rbp,rsp
    2397:	48 83 e4 e0          	and    rsp,0xffffffffffffffe0
    239b:	48 81 ec a0 00 00 00 	sub    rsp,0xa0
    23a2:	c5 fb 11 54 24 08    	vmovsd QWORD PTR [rsp+0x8],xmm2
    23a8:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    23af:	00 00 
    23b1:	48 89 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rax
    23b8:	00 
    23b9:	31 c0                	xor    eax,eax
    23bb:	c5 fd 11 44 24 30    	vmovupd YMMWORD PTR [rsp+0x30],ymm0
    23c1:	c5 fd 11 4c 24 50    	vmovupd YMMWORD PTR [rsp+0x50],ymm1
    23c7:	b8 00 00 00 00       	mov    eax,0x0
    23cc:	89 c2                	mov    edx,eax
    23ce:	c5 fb 10 44 d4 50    	vmovsd xmm0,QWORD PTR [rsp+rdx*8+0x50]
    23d4:	c5 fb 11 44 24 20    	vmovsd QWORD PTR [rsp+0x20],xmm0
    23da:	89 c2                	mov    edx,eax
    23dc:	c5 fb 10 44 d4 30    	vmovsd xmm0,QWORD PTR [rsp+rdx*8+0x30]
    23e2:	c5 fb 11 44 24 18    	vmovsd QWORD PTR [rsp+0x18],xmm0
    23e8:	c5 fb 10 44 24 18    	vmovsd xmm0,QWORD PTR [rsp+0x18]
    23ee:	c5 fb 58 44 24 20    	vaddsd xmm0,xmm0,QWORD PTR [rsp+0x20]
    23f4:	c5 fb 58 44 24 08    	vaddsd xmm0,xmm0,QWORD PTR [rsp+0x8]
    23fa:	c5 fb 11 44 24 28    	vmovsd QWORD PTR [rsp+0x28],xmm0
    2400:	c5 fb 10 44 24 28    	vmovsd xmm0,QWORD PTR [rsp+0x28]
    2406:	89 c2                	mov    edx,eax
    2408:	c5 fb 11 44 d4 70    	vmovsd QWORD PTR [rsp+rdx*8+0x70],xmm0
    240e:	83 c0 01             	add    eax,0x1
    2411:	83 f8 04             	cmp    eax,0x4
    2414:	72 b6                	jb     23cc <_ZGVdN4vvu_add1+0x39>
    2416:	c5 fd 10 44 24 70    	vmovupd ymm0,YMMWORD PTR [rsp+0x70]
    241c:	48 8b 84 24 98 00 00 	mov    rax,QWORD PTR [rsp+0x98]
    2423:	00 
    2424:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    242b:	00 00 
    242d:	74 05                	je     2434 <_ZGVdN4vvu_add1+0xa1>
    242f:	e8 fc eb ff ff       	call   1030 <__stack_chk_fail@plt>
    2434:	c9                   	leave
    2435:	c3                   	ret

0000000000002436 <_ZGVdM4vvu_add1>:
    2436:	55                   	push   rbp
    2437:	48 89 e5             	mov    rbp,rsp
    243a:	48 83 e4 e0          	and    rsp,0xffffffffffffffe0
    243e:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
    2445:	c5 fd 28 e1          	vmovapd ymm4,ymm1
    2449:	c5 fb 11 54 24 08    	vmovsd QWORD PTR [rsp+0x8],xmm2
    244f:	c5 fd 28 cb          	vmovapd ymm1,ymm3
    2453:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    245a:	00 00 
    245c:	48 89 84 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rax
    2463:	00 
    2464:	31 c0                	xor    eax,eax
    2466:	c5 fd 11 44 24 30    	vmovupd YMMWORD PTR [rsp+0x30],ymm0
    246c:	c5 fd 11 64 24 50    	vmovupd YMMWORD PTR [rsp+0x50],ymm4
    2472:	c5 fd 11 4c 24 70    	vmovupd YMMWORD PTR [rsp+0x70],ymm1
    2478:	b8 00 00 00 00       	mov    eax,0x0
    247d:	89 c2                	mov    edx,eax
    247f:	c5 fb 10 44 d4 50    	vmovsd xmm0,QWORD PTR [rsp+rdx*8+0x50]
    2485:	c5 fb 11 44 24 20    	vmovsd QWORD PTR [rsp+0x20],xmm0
    248b:	89 c2                	mov    edx,eax
    248d:	c5 fb 10 44 d4 30    	vmovsd xmm0,QWORD PTR [rsp+rdx*8+0x30]
    2493:	c5 fb 11 44 24 18    	vmovsd QWORD PTR [rsp+0x18],xmm0
    2499:	89 c2                	mov    edx,eax
    249b:	c5 fb 10 44 d4 70    	vmovsd xmm0,QWORD PTR [rsp+rdx*8+0x70]
    24a1:	c4 e1 f9 7e c2       	vmovq  rdx,xmm0
    24a6:	48 85 d2             	test   rdx,rdx
    24a9:	74 29                	je     24d4 <_ZGVdM4vvu_add1+0x9e>
    24ab:	c5 fb 10 44 24 18    	vmovsd xmm0,QWORD PTR [rsp+0x18]
    24b1:	c5 fb 58 44 24 20    	vaddsd xmm0,xmm0,QWORD PTR [rsp+0x20]
    24b7:	c5 fb 58 44 24 08    	vaddsd xmm0,xmm0,QWORD PTR [rsp+0x8]
    24bd:	c5 fb 11 44 24 28    	vmovsd QWORD PTR [rsp+0x28],xmm0
    24c3:	c5 fb 10 44 24 28    	vmovsd xmm0,QWORD PTR [rsp+0x28]
    24c9:	89 c2                	mov    edx,eax
    24cb:	c5 fb 11 84 d4 90 00 	vmovsd QWORD PTR [rsp+rdx*8+0x90],xmm0
    24d2:	00 00 
    24d4:	83 c0 01             	add    eax,0x1
    24d7:	83 f8 04             	cmp    eax,0x4
    24da:	72 a1                	jb     247d <_ZGVdM4vvu_add1+0x47>
    24dc:	c5 fd 10 84 24 90 00 	vmovupd ymm0,YMMWORD PTR [rsp+0x90]
    24e3:	00 00 
    24e5:	48 8b 84 24 b8 00 00 	mov    rax,QWORD PTR [rsp+0xb8]
    24ec:	00 
    24ed:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    24f4:	00 00 
    24f6:	74 05                	je     24fd <_ZGVdM4vvu_add1+0xc7>
    24f8:	e8 33 eb ff ff       	call   1030 <__stack_chk_fail@plt>
    24fd:	c9                   	leave
    24fe:	c3                   	ret

00000000000024ff <_ZGVeN8vvu_add1>:
    24ff:	55                   	push   rbp
    2500:	48 89 e5             	mov    rbp,rsp
    2503:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
    2507:	48 81 ec 00 01 00 00 	sub    rsp,0x100
    250e:	c5 fb 11 54 24 08    	vmovsd QWORD PTR [rsp+0x8],xmm2
    2514:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    251b:	00 00 
    251d:	48 89 84 24 f8 00 00 	mov    QWORD PTR [rsp+0xf8],rax
    2524:	00 
    2525:	31 c0                	xor    eax,eax
    2527:	62 f1 fd 48 11 84 24 	vmovupd ZMMWORD PTR [rsp+0x30],zmm0
    252e:	30 00 00 00 
    2532:	62 f1 fd 48 11 8c 24 	vmovupd ZMMWORD PTR [rsp+0x70],zmm1
    2539:	70 00 00 00 
    253d:	b8 00 00 00 00       	mov    eax,0x0
    2542:	89 c2                	mov    edx,eax
    2544:	c5 fb 10 44 d4 70    	vmovsd xmm0,QWORD PTR [rsp+rdx*8+0x70]
    254a:	c5 fb 11 44 24 20    	vmovsd QWORD PTR [rsp+0x20],xmm0
    2550:	89 c2                	mov    edx,eax
    2552:	c5 fb 10 44 d4 30    	vmovsd xmm0,QWORD PTR [rsp+rdx*8+0x30]
    2558:	c5 fb 11 44 24 18    	vmovsd QWORD PTR [rsp+0x18],xmm0
    255e:	c5 fb 10 44 24 18    	vmovsd xmm0,QWORD PTR [rsp+0x18]
    2564:	c5 fb 58 44 24 20    	vaddsd xmm0,xmm0,QWORD PTR [rsp+0x20]
    256a:	c5 fb 58 44 24 08    	vaddsd xmm0,xmm0,QWORD PTR [rsp+0x8]
    2570:	c5 fb 11 44 24 28    	vmovsd QWORD PTR [rsp+0x28],xmm0
    2576:	c5 fb 10 44 24 28    	vmovsd xmm0,QWORD PTR [rsp+0x28]
    257c:	89 c2                	mov    edx,eax
    257e:	c5 fb 11 84 d4 b0 00 	vmovsd QWORD PTR [rsp+rdx*8+0xb0],xmm0
    2585:	00 00 
    2587:	83 c0 01             	add    eax,0x1
    258a:	83 f8 08             	cmp    eax,0x8
    258d:	72 b3                	jb     2542 <_ZGVeN8vvu_add1+0x43>
    258f:	62 f1 fd 48 10 84 24 	vmovupd zmm0,ZMMWORD PTR [rsp+0xb0]
    2596:	b0 00 00 00 
    259a:	48 8b 84 24 f8 00 00 	mov    rax,QWORD PTR [rsp+0xf8]
    25a1:	00 
    25a2:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    25a9:	00 00 
    25ab:	74 05                	je     25b2 <_ZGVeN8vvu_add1+0xb3>
    25ad:	e8 7e ea ff ff       	call   1030 <__stack_chk_fail@plt>
    25b2:	c9                   	leave
    25b3:	c3                   	ret

00000000000025b4 <_ZGVeM8vvu_add1>:
    25b4:	55                   	push   rbp
    25b5:	48 89 e5             	mov    rbp,rsp
    25b8:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
    25bc:	48 81 ec 00 01 00 00 	sub    rsp,0x100
    25c3:	c5 fb 11 54 24 08    	vmovsd QWORD PTR [rsp+0x8],xmm2
    25c9:	89 fa                	mov    edx,edi
    25cb:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    25d2:	00 00 
    25d4:	48 89 84 24 f8 00 00 	mov    QWORD PTR [rsp+0xf8],rax
    25db:	00 
    25dc:	31 c0                	xor    eax,eax
    25de:	62 f1 fd 48 11 84 24 	vmovupd ZMMWORD PTR [rsp+0x30],zmm0
    25e5:	30 00 00 00 
    25e9:	62 f1 fd 48 11 8c 24 	vmovupd ZMMWORD PTR [rsp+0x70],zmm1
    25f0:	70 00 00 00 
    25f4:	b8 00 00 00 00       	mov    eax,0x0
    25f9:	89 c1                	mov    ecx,eax
    25fb:	c5 fb 10 44 cc 70    	vmovsd xmm0,QWORD PTR [rsp+rcx*8+0x70]
    2601:	c5 fb 11 44 24 20    	vmovsd QWORD PTR [rsp+0x20],xmm0
    2607:	89 c1                	mov    ecx,eax
    2609:	c5 fb 10 44 cc 30    	vmovsd xmm0,QWORD PTR [rsp+rcx*8+0x30]
    260f:	c5 fb 11 44 24 18    	vmovsd QWORD PTR [rsp+0x18],xmm0
    2615:	89 d6                	mov    esi,edx
    2617:	89 c1                	mov    ecx,eax
    2619:	d3 ee                	shr    esi,cl
    261b:	89 f1                	mov    ecx,esi
    261d:	83 e1 01             	and    ecx,0x1
    2620:	85 c9                	test   ecx,ecx
    2622:	74 29                	je     264d <_ZGVeM8vvu_add1+0x99>
    2624:	c5 fb 10 44 24 18    	vmovsd xmm0,QWORD PTR [rsp+0x18]
    262a:	c5 fb 58 44 24 20    	vaddsd xmm0,xmm0,QWORD PTR [rsp+0x20]
    2630:	c5 fb 58 44 24 08    	vaddsd xmm0,xmm0,QWORD PTR [rsp+0x8]
    2636:	c5 fb 11 44 24 28    	vmovsd QWORD PTR [rsp+0x28],xmm0
    263c:	c5 fb 10 44 24 28    	vmovsd xmm0,QWORD PTR [rsp+0x28]
    2642:	89 c1                	mov    ecx,eax
    2644:	c5 fb 11 84 cc b0 00 	vmovsd QWORD PTR [rsp+rcx*8+0xb0],xmm0
    264b:	00 00 
    264d:	83 c0 01             	add    eax,0x1
    2650:	83 f8 08             	cmp    eax,0x8
    2653:	72 a4                	jb     25f9 <_ZGVeM8vvu_add1+0x45>
    2655:	62 f1 fd 48 10 84 24 	vmovupd zmm0,ZMMWORD PTR [rsp+0xb0]
    265c:	b0 00 00 00 
    2660:	48 8b 84 24 f8 00 00 	mov    rax,QWORD PTR [rsp+0xf8]
    2667:	00 
    2668:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    266f:	00 00 
    2671:	74 05                	je     2678 <_ZGVeM8vvu_add1+0xc4>
    2673:	e8 b8 e9 ff ff       	call   1030 <__stack_chk_fail@plt>
    2678:	c9                   	leave
    2679:	c3                   	ret

Disassembly of section .fini:

000000000000267c <_fini>:
    267c:	f3 0f 1e fa          	endbr64
    2680:	48 83 ec 08          	sub    rsp,0x8
    2684:	48 83 c4 08          	add    rsp,0x8
    2688:	c3                   	ret
