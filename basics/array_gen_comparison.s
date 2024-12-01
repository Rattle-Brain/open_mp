
array_gen_comparison:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 c1 2f 00 00 	mov    0x2fc1(%rip),%rax        # 3fd0 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <puts@plt-0x10>:
    1020:	ff 35 ca 2f 00 00    	push   0x2fca(%rip)        # 3ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 2f 00 00    	jmp    *0x2fcc(%rip)        # 3ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <puts@plt>:
    1030:	ff 25 ca 2f 00 00    	jmp    *0x2fca(%rip)        # 4000 <puts@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <GOMP_barrier@plt>:
    1040:	ff 25 c2 2f 00 00    	jmp    *0x2fc2(%rip)        # 4008 <GOMP_barrier@GOMP_1.0>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <omp_get_wtime@plt>:
    1050:	ff 25 ba 2f 00 00    	jmp    *0x2fba(%rip)        # 4010 <omp_get_wtime@OMP_2.0>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001060 <omp_get_thread_num@plt>:
    1060:	ff 25 b2 2f 00 00    	jmp    *0x2fb2(%rip)        # 4018 <omp_get_thread_num@OMP_1.0>
    1066:	68 03 00 00 00       	push   $0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001070 <__stack_chk_fail@plt>:
    1070:	ff 25 aa 2f 00 00    	jmp    *0x2faa(%rip)        # 4020 <__stack_chk_fail@GLIBC_2.4>
    1076:	68 04 00 00 00       	push   $0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001080 <printf@plt>:
    1080:	ff 25 a2 2f 00 00    	jmp    *0x2fa2(%rip)        # 4028 <printf@GLIBC_2.2.5>
    1086:	68 05 00 00 00       	push   $0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001090 <omp_get_num_threads@plt>:
    1090:	ff 25 9a 2f 00 00    	jmp    *0x2f9a(%rip)        # 4030 <omp_get_num_threads@OMP_1.0>
    1096:	68 06 00 00 00       	push   $0x6
    109b:	e9 80 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010a0 <__isoc99_scanf@plt>:
    10a0:	ff 25 92 2f 00 00    	jmp    *0x2f92(%rip)        # 4038 <__isoc99_scanf@GLIBC_2.7>
    10a6:	68 07 00 00 00       	push   $0x7
    10ab:	e9 70 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010b0 <GOMP_parallel@plt>:
    10b0:	ff 25 8a 2f 00 00    	jmp    *0x2f8a(%rip)        # 4040 <GOMP_parallel@GOMP_4.0>
    10b6:	68 08 00 00 00       	push   $0x8
    10bb:	e9 60 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .text:

00000000000010c0 <_start>:
    10c0:	f3 0f 1e fa          	endbr64
    10c4:	31 ed                	xor    %ebp,%ebp
    10c6:	49 89 d1             	mov    %rdx,%r9
    10c9:	5e                   	pop    %rsi
    10ca:	48 89 e2             	mov    %rsp,%rdx
    10cd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10d1:	50                   	push   %rax
    10d2:	54                   	push   %rsp
    10d3:	45 31 c0             	xor    %r8d,%r8d
    10d6:	31 c9                	xor    %ecx,%ecx
    10d8:	48 8d 3d da 00 00 00 	lea    0xda(%rip),%rdi        # 11b9 <main>
    10df:	ff 15 db 2e 00 00    	call   *0x2edb(%rip)        # 3fc0 <__libc_start_main@GLIBC_2.34>
    10e5:	f4                   	hlt
    10e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10ed:	00 00 00 
    10f0:	48 8d 3d 61 2f 00 00 	lea    0x2f61(%rip),%rdi        # 4058 <__TMC_END__>
    10f7:	48 8d 05 5a 2f 00 00 	lea    0x2f5a(%rip),%rax        # 4058 <__TMC_END__>
    10fe:	48 39 f8             	cmp    %rdi,%rax
    1101:	74 15                	je     1118 <_start+0x58>
    1103:	48 8b 05 be 2e 00 00 	mov    0x2ebe(%rip),%rax        # 3fc8 <_ITM_deregisterTMCloneTable@Base>
    110a:	48 85 c0             	test   %rax,%rax
    110d:	74 09                	je     1118 <_start+0x58>
    110f:	ff e0                	jmp    *%rax
    1111:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1118:	c3                   	ret
    1119:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1120:	48 8d 3d 31 2f 00 00 	lea    0x2f31(%rip),%rdi        # 4058 <__TMC_END__>
    1127:	48 8d 35 2a 2f 00 00 	lea    0x2f2a(%rip),%rsi        # 4058 <__TMC_END__>
    112e:	48 29 fe             	sub    %rdi,%rsi
    1131:	48 89 f0             	mov    %rsi,%rax
    1134:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1138:	48 c1 f8 03          	sar    $0x3,%rax
    113c:	48 01 c6             	add    %rax,%rsi
    113f:	48 d1 fe             	sar    $1,%rsi
    1142:	74 14                	je     1158 <_start+0x98>
    1144:	48 8b 05 8d 2e 00 00 	mov    0x2e8d(%rip),%rax        # 3fd8 <_ITM_registerTMCloneTable@Base>
    114b:	48 85 c0             	test   %rax,%rax
    114e:	74 08                	je     1158 <_start+0x98>
    1150:	ff e0                	jmp    *%rax
    1152:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1158:	c3                   	ret
    1159:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1160:	f3 0f 1e fa          	endbr64
    1164:	80 3d ed 2e 00 00 00 	cmpb   $0x0,0x2eed(%rip)        # 4058 <__TMC_END__>
    116b:	75 33                	jne    11a0 <_start+0xe0>
    116d:	55                   	push   %rbp
    116e:	48 83 3d 6a 2e 00 00 	cmpq   $0x0,0x2e6a(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1175:	00 
    1176:	48 89 e5             	mov    %rsp,%rbp
    1179:	74 0d                	je     1188 <_start+0xc8>
    117b:	48 8b 3d ce 2e 00 00 	mov    0x2ece(%rip),%rdi        # 4050 <__dso_handle>
    1182:	ff 15 58 2e 00 00    	call   *0x2e58(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1188:	e8 63 ff ff ff       	call   10f0 <_start+0x30>
    118d:	c6 05 c4 2e 00 00 01 	movb   $0x1,0x2ec4(%rip)        # 4058 <__TMC_END__>
    1194:	5d                   	pop    %rbp
    1195:	c3                   	ret
    1196:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    119d:	00 00 00 
    11a0:	c3                   	ret
    11a1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    11a8:	00 00 00 00 
    11ac:	0f 1f 40 00          	nopl   0x0(%rax)
    11b0:	f3 0f 1e fa          	endbr64
    11b4:	e9 67 ff ff ff       	jmp    1120 <_start+0x60>

00000000000011b9 <main>:
    11b9:	55                   	push   %rbp
    11ba:	48 89 e5             	mov    %rsp,%rbp
    11bd:	53                   	push   %rbx
    11be:	48 83 ec 58          	sub    $0x58,%rsp
    11c2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    11c9:	00 00 
    11cb:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    11cf:	31 c0                	xor    %eax,%eax
    11d1:	48 89 e0             	mov    %rsp,%rax
    11d4:	48 89 c3             	mov    %rax,%rbx
    11d7:	48 8d 05 2a 0e 00 00 	lea    0xe2a(%rip),%rax        # 2008 <_IO_stdin_used+0x8>
    11de:	48 89 c7             	mov    %rax,%rdi
    11e1:	b8 00 00 00 00       	mov    $0x0,%eax
    11e6:	e8 95 fe ff ff       	call   1080 <printf@plt>
    11eb:	48 8d 45 a4          	lea    -0x5c(%rbp),%rax
    11ef:	48 89 c6             	mov    %rax,%rsi
    11f2:	48 8d 05 2d 0e 00 00 	lea    0xe2d(%rip),%rax        # 2026 <_IO_stdin_used+0x26>
    11f9:	48 89 c7             	mov    %rax,%rdi
    11fc:	b8 00 00 00 00       	mov    $0x0,%eax
    1201:	e8 9a fe ff ff       	call   10a0 <__isoc99_scanf@plt>
    1206:	8b 45 a4             	mov    -0x5c(%rbp),%eax
    1209:	85 c0                	test   %eax,%eax
    120b:	7f 0f                	jg     121c <main+0x63>
    120d:	48 8d 05 1c 0e 00 00 	lea    0xe1c(%rip),%rax        # 2030 <_IO_stdin_used+0x30>
    1214:	48 89 c7             	mov    %rax,%rdi
    1217:	e8 14 fe ff ff       	call   1030 <puts@plt>
    121c:	8b 45 a4             	mov    -0x5c(%rbp),%eax
    121f:	85 c0                	test   %eax,%eax
    1221:	7e b4                	jle    11d7 <main+0x1e>
    1223:	48 8d 05 36 0e 00 00 	lea    0xe36(%rip),%rax        # 2060 <_IO_stdin_used+0x60>
    122a:	48 89 c7             	mov    %rax,%rdi
    122d:	b8 00 00 00 00       	mov    $0x0,%eax
    1232:	e8 49 fe ff ff       	call   1080 <printf@plt>
    1237:	48 8d 45 a8          	lea    -0x58(%rbp),%rax
    123b:	48 89 c6             	mov    %rax,%rsi
    123e:	48 8d 05 e1 0d 00 00 	lea    0xde1(%rip),%rax        # 2026 <_IO_stdin_used+0x26>
    1245:	48 89 c7             	mov    %rax,%rdi
    1248:	b8 00 00 00 00       	mov    $0x0,%eax
    124d:	e8 4e fe ff ff       	call   10a0 <__isoc99_scanf@plt>
    1252:	8b 45 a8             	mov    -0x58(%rbp),%eax
    1255:	85 c0                	test   %eax,%eax
    1257:	7f 0f                	jg     1268 <main+0xaf>
    1259:	48 8d 05 30 0e 00 00 	lea    0xe30(%rip),%rax        # 2090 <_IO_stdin_used+0x90>
    1260:	48 89 c7             	mov    %rax,%rdi
    1263:	e8 c8 fd ff ff       	call   1030 <puts@plt>
    1268:	8b 45 a8             	mov    -0x58(%rbp),%eax
    126b:	85 c0                	test   %eax,%eax
    126d:	7e b4                	jle    1223 <main+0x6a>
    126f:	8b 45 a8             	mov    -0x58(%rbp),%eax
    1272:	48 63 d0             	movslq %eax,%rdx
    1275:	48 83 ea 01          	sub    $0x1,%rdx
    1279:	48 89 55 b0          	mov    %rdx,-0x50(%rbp)
    127d:	48 98                	cltq
    127f:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1286:	00 
    1287:	b8 10 00 00 00       	mov    $0x10,%eax
    128c:	48 83 e8 01          	sub    $0x1,%rax
    1290:	48 01 d0             	add    %rdx,%rax
    1293:	b9 10 00 00 00       	mov    $0x10,%ecx
    1298:	ba 00 00 00 00       	mov    $0x0,%edx
    129d:	48 f7 f1             	div    %rcx
    12a0:	48 6b c0 10          	imul   $0x10,%rax,%rax
    12a4:	48 29 c4             	sub    %rax,%rsp
    12a7:	48 89 e0             	mov    %rsp,%rax
    12aa:	48 83 c0 03          	add    $0x3,%rax
    12ae:	48 c1 e8 02          	shr    $0x2,%rax
    12b2:	48 c1 e0 02          	shl    $0x2,%rax
    12b6:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    12ba:	e8 91 fd ff ff       	call   1050 <omp_get_wtime@plt>
    12bf:	66 48 0f 7e c0       	movq   %xmm0,%rax
    12c4:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    12c8:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%rbp)
    12cf:	eb 19                	jmp    12ea <main+0x131>
    12d1:	8b 45 ac             	mov    -0x54(%rbp),%eax
    12d4:	0f af c0             	imul   %eax,%eax
    12d7:	89 c1                	mov    %eax,%ecx
    12d9:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    12dd:	8b 55 ac             	mov    -0x54(%rbp),%edx
    12e0:	48 63 d2             	movslq %edx,%rdx
    12e3:	89 0c 90             	mov    %ecx,(%rax,%rdx,4)
    12e6:	83 45 ac 01          	addl   $0x1,-0x54(%rbp)
    12ea:	8b 45 a8             	mov    -0x58(%rbp),%eax
    12ed:	39 45 ac             	cmp    %eax,-0x54(%rbp)
    12f0:	7c df                	jl     12d1 <main+0x118>
    12f2:	e8 59 fd ff ff       	call   1050 <omp_get_wtime@plt>
    12f7:	66 48 0f 7e c0       	movq   %xmm0,%rax
    12fc:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    1300:	f2 0f 10 45 c8       	movsd  -0x38(%rbp),%xmm0
    1305:	f2 0f 5c 45 c0       	subsd  -0x40(%rbp),%xmm0
    130a:	66 48 0f 7e c0       	movq   %xmm0,%rax
    130f:	66 48 0f 6e c0       	movq   %rax,%xmm0
    1314:	48 8d 05 a5 0d 00 00 	lea    0xda5(%rip),%rax        # 20c0 <_IO_stdin_used+0xc0>
    131b:	48 89 c7             	mov    %rax,%rdi
    131e:	b8 01 00 00 00       	mov    $0x1,%eax
    1323:	e8 58 fd ff ff       	call   1080 <printf@plt>
    1328:	e8 23 fd ff ff       	call   1050 <omp_get_wtime@plt>
    132d:	66 48 0f 7e c0       	movq   %xmm0,%rax
    1332:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    1336:	8b 55 a4             	mov    -0x5c(%rbp),%edx
    1339:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    133d:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    1341:	48 8d 45 a8          	lea    -0x58(%rbp),%rax
    1345:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    1349:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    134d:	b9 00 00 00 00       	mov    $0x0,%ecx
    1352:	48 89 c6             	mov    %rax,%rsi
    1355:	48 8d 05 60 00 00 00 	lea    0x60(%rip),%rax        # 13bc <main._omp_fn.0>
    135c:	48 89 c7             	mov    %rax,%rdi
    135f:	e8 4c fd ff ff       	call   10b0 <GOMP_parallel@plt>
    1364:	e8 e7 fc ff ff       	call   1050 <omp_get_wtime@plt>
    1369:	66 48 0f 7e c0       	movq   %xmm0,%rax
    136e:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    1372:	f2 0f 10 45 c8       	movsd  -0x38(%rbp),%xmm0
    1377:	f2 0f 5c 45 c0       	subsd  -0x40(%rbp),%xmm0
    137c:	66 48 0f 7e c0       	movq   %xmm0,%rax
    1381:	66 48 0f 6e c0       	movq   %rax,%xmm0
    1386:	48 8d 05 73 0d 00 00 	lea    0xd73(%rip),%rax        # 2100 <_IO_stdin_used+0x100>
    138d:	48 89 c7             	mov    %rax,%rdi
    1390:	b8 01 00 00 00       	mov    $0x1,%eax
    1395:	e8 e6 fc ff ff       	call   1080 <printf@plt>
    139a:	b8 00 00 00 00       	mov    $0x0,%eax
    139f:	48 89 dc             	mov    %rbx,%rsp
    13a2:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    13a6:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    13ad:	00 00 
    13af:	74 05                	je     13b6 <main+0x1fd>
    13b1:	e8 ba fc ff ff       	call   1070 <__stack_chk_fail@plt>
    13b6:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    13ba:	c9                   	leave
    13bb:	c3                   	ret

00000000000013bc <main._omp_fn.0>:
    13bc:	55                   	push   %rbp
    13bd:	48 89 e5             	mov    %rsp,%rbp
    13c0:	41 54                	push   %r12
    13c2:	53                   	push   %rbx
    13c3:	48 83 ec 20          	sub    $0x20,%rsp
    13c7:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    13cb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    13cf:	48 8b 40 08          	mov    0x8(%rax),%rax
    13d3:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    13d7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    13db:	48 8b 00             	mov    (%rax),%rax
    13de:	8b 18                	mov    (%rax),%ebx
    13e0:	e8 ab fc ff ff       	call   1090 <omp_get_num_threads@plt>
    13e5:	41 89 c4             	mov    %eax,%r12d
    13e8:	e8 73 fc ff ff       	call   1060 <omp_get_thread_num@plt>
    13ed:	89 c6                	mov    %eax,%esi
    13ef:	89 d8                	mov    %ebx,%eax
    13f1:	99                   	cltd
    13f2:	41 f7 fc             	idiv   %r12d
    13f5:	89 c1                	mov    %eax,%ecx
    13f7:	89 d8                	mov    %ebx,%eax
    13f9:	99                   	cltd
    13fa:	41 f7 fc             	idiv   %r12d
    13fd:	89 d0                	mov    %edx,%eax
    13ff:	39 c6                	cmp    %eax,%esi
    1401:	7c 36                	jl     1439 <main._omp_fn.0+0x7d>
    1403:	0f af f1             	imul   %ecx,%esi
    1406:	89 f2                	mov    %esi,%edx
    1408:	01 d0                	add    %edx,%eax
    140a:	8d 14 08             	lea    (%rax,%rcx,1),%edx
    140d:	39 d0                	cmp    %edx,%eax
    140f:	7d 21                	jge    1432 <main._omp_fn.0+0x76>
    1411:	89 45 e4             	mov    %eax,-0x1c(%rbp)
    1414:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    1417:	0f af c0             	imul   %eax,%eax
    141a:	89 c6                	mov    %eax,%esi
    141c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1420:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
    1423:	48 63 c9             	movslq %ecx,%rcx
    1426:	89 34 88             	mov    %esi,(%rax,%rcx,4)
    1429:	83 45 e4 01          	addl   $0x1,-0x1c(%rbp)
    142d:	39 55 e4             	cmp    %edx,-0x1c(%rbp)
    1430:	7c e2                	jl     1414 <main._omp_fn.0+0x58>
    1432:	e8 09 fc ff ff       	call   1040 <GOMP_barrier@plt>
    1437:	eb 0a                	jmp    1443 <main._omp_fn.0+0x87>
    1439:	b8 00 00 00 00       	mov    $0x0,%eax
    143e:	83 c1 01             	add    $0x1,%ecx
    1441:	eb c0                	jmp    1403 <main._omp_fn.0+0x47>
    1443:	48 83 c4 20          	add    $0x20,%rsp
    1447:	5b                   	pop    %rbx
    1448:	41 5c                	pop    %r12
    144a:	5d                   	pop    %rbp
    144b:	c3                   	ret

Disassembly of section .fini:

000000000000144c <_fini>:
    144c:	f3 0f 1e fa          	endbr64
    1450:	48 83 ec 08          	sub    $0x8,%rsp
    1454:	48 83 c4 08          	add    $0x8,%rsp
    1458:	c3                   	ret
