
obj/kernel.full:     file format elf64-x86-64


Disassembly of section .text:

0000000000040000 <_kernel_start>:
   40000:	48 c7 c4 00 00 08 00 	mov    $0x80000,%rsp
   40007:	48 89 e5             	mov    %rsp,%rbp
   4000a:	6a 00                	push   $0x0
   4000c:	9d                   	popf   
   4000d:	3d 02 b0 ad 2b       	cmp    $0x2badb002,%eax
   40012:	75 0d                	jne    40021 <_kernel_start+0x21>
   40014:	f7 03 04 00 00 00    	testl  $0x4,(%rbx)
   4001a:	74 05                	je     40021 <_kernel_start+0x21>
   4001c:	8b 7b 10             	mov    0x10(%rbx),%edi
   4001f:	eb 07                	jmp    40028 <_kernel_start+0x28>
   40021:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
   40028:	e9 f3 12 00 00       	jmp    41320 <kernel(char const*)>

000000000004002d <exception_entry_0>:
   4002d:	6a 00                	push   $0x0
   4002f:	6a 00                	push   $0x0
   40031:	e9 3c 0a 00 00       	jmp    40a72 <exception_entry>

0000000000040036 <exception_entry_1>:
   40036:	6a 00                	push   $0x0
   40038:	6a 01                	push   $0x1
   4003a:	e9 33 0a 00 00       	jmp    40a72 <exception_entry>

000000000004003f <exception_entry_2>:
   4003f:	6a 00                	push   $0x0
   40041:	6a 02                	push   $0x2
   40043:	e9 2a 0a 00 00       	jmp    40a72 <exception_entry>

0000000000040048 <exception_entry_3>:
   40048:	6a 00                	push   $0x0
   4004a:	6a 03                	push   $0x3
   4004c:	e9 21 0a 00 00       	jmp    40a72 <exception_entry>

0000000000040051 <exception_entry_4>:
   40051:	6a 00                	push   $0x0
   40053:	6a 04                	push   $0x4
   40055:	e9 18 0a 00 00       	jmp    40a72 <exception_entry>

000000000004005a <exception_entry_5>:
   4005a:	6a 00                	push   $0x0
   4005c:	6a 05                	push   $0x5
   4005e:	e9 0f 0a 00 00       	jmp    40a72 <exception_entry>

0000000000040063 <exception_entry_6>:
   40063:	6a 00                	push   $0x0
   40065:	6a 06                	push   $0x6
   40067:	e9 06 0a 00 00       	jmp    40a72 <exception_entry>

000000000004006c <exception_entry_7>:
   4006c:	6a 00                	push   $0x0
   4006e:	6a 07                	push   $0x7
   40070:	e9 fd 09 00 00       	jmp    40a72 <exception_entry>

0000000000040075 <exception_entry_8>:
   40075:	6a 08                	push   $0x8
   40077:	e9 f6 09 00 00       	jmp    40a72 <exception_entry>

000000000004007c <exception_entry_9>:
   4007c:	6a 00                	push   $0x0
   4007e:	6a 09                	push   $0x9
   40080:	e9 ed 09 00 00       	jmp    40a72 <exception_entry>

0000000000040085 <exception_entry_10>:
   40085:	6a 0a                	push   $0xa
   40087:	e9 e6 09 00 00       	jmp    40a72 <exception_entry>

000000000004008c <exception_entry_11>:
   4008c:	6a 0b                	push   $0xb
   4008e:	e9 df 09 00 00       	jmp    40a72 <exception_entry>

0000000000040093 <exception_entry_12>:
   40093:	6a 0c                	push   $0xc
   40095:	e9 d8 09 00 00       	jmp    40a72 <exception_entry>

000000000004009a <exception_entry_13>:
   4009a:	6a 0d                	push   $0xd
   4009c:	e9 d1 09 00 00       	jmp    40a72 <exception_entry>

00000000000400a1 <exception_entry_14>:
   400a1:	6a 0e                	push   $0xe
   400a3:	e9 ca 09 00 00       	jmp    40a72 <exception_entry>

00000000000400a8 <exception_entry_15>:
   400a8:	6a 00                	push   $0x0
   400aa:	6a 0f                	push   $0xf
   400ac:	e9 c1 09 00 00       	jmp    40a72 <exception_entry>

00000000000400b1 <exception_entry_16>:
   400b1:	6a 00                	push   $0x0
   400b3:	6a 10                	push   $0x10
   400b5:	e9 b8 09 00 00       	jmp    40a72 <exception_entry>

00000000000400ba <exception_entry_17>:
   400ba:	6a 11                	push   $0x11
   400bc:	e9 b1 09 00 00       	jmp    40a72 <exception_entry>

00000000000400c1 <exception_entry_18>:
   400c1:	6a 00                	push   $0x0
   400c3:	6a 12                	push   $0x12
   400c5:	e9 a8 09 00 00       	jmp    40a72 <exception_entry>

00000000000400ca <exception_entry_19>:
   400ca:	6a 00                	push   $0x0
   400cc:	6a 13                	push   $0x13
   400ce:	e9 9f 09 00 00       	jmp    40a72 <exception_entry>

00000000000400d3 <exception_entry_20>:
   400d3:	6a 00                	push   $0x0
   400d5:	6a 14                	push   $0x14
   400d7:	e9 96 09 00 00       	jmp    40a72 <exception_entry>

00000000000400dc <exception_entry_21>:
   400dc:	6a 00                	push   $0x0
   400de:	6a 15                	push   $0x15
   400e0:	e9 8d 09 00 00       	jmp    40a72 <exception_entry>

00000000000400e5 <exception_entry_22>:
   400e5:	6a 00                	push   $0x0
   400e7:	6a 16                	push   $0x16
   400e9:	e9 84 09 00 00       	jmp    40a72 <exception_entry>

00000000000400ee <exception_entry_23>:
   400ee:	6a 00                	push   $0x0
   400f0:	6a 17                	push   $0x17
   400f2:	e9 7b 09 00 00       	jmp    40a72 <exception_entry>

00000000000400f7 <exception_entry_24>:
   400f7:	6a 00                	push   $0x0
   400f9:	6a 18                	push   $0x18
   400fb:	e9 72 09 00 00       	jmp    40a72 <exception_entry>

0000000000040100 <exception_entry_25>:
   40100:	6a 00                	push   $0x0
   40102:	6a 19                	push   $0x19
   40104:	e9 69 09 00 00       	jmp    40a72 <exception_entry>

0000000000040109 <exception_entry_26>:
   40109:	6a 00                	push   $0x0
   4010b:	6a 1a                	push   $0x1a
   4010d:	e9 60 09 00 00       	jmp    40a72 <exception_entry>

0000000000040112 <exception_entry_27>:
   40112:	6a 00                	push   $0x0
   40114:	6a 1b                	push   $0x1b
   40116:	e9 57 09 00 00       	jmp    40a72 <exception_entry>

000000000004011b <exception_entry_28>:
   4011b:	6a 00                	push   $0x0
   4011d:	6a 1c                	push   $0x1c
   4011f:	e9 4e 09 00 00       	jmp    40a72 <exception_entry>

0000000000040124 <exception_entry_29>:
   40124:	6a 00                	push   $0x0
   40126:	6a 1d                	push   $0x1d
   40128:	e9 45 09 00 00       	jmp    40a72 <exception_entry>

000000000004012d <exception_entry_30>:
   4012d:	6a 00                	push   $0x0
   4012f:	6a 1e                	push   $0x1e
   40131:	e9 3c 09 00 00       	jmp    40a72 <exception_entry>

0000000000040136 <exception_entry_31>:
   40136:	6a 00                	push   $0x0
   40138:	6a 1f                	push   $0x1f
   4013a:	e9 33 09 00 00       	jmp    40a72 <exception_entry>

000000000004013f <exception_entry_32>:
   4013f:	6a 00                	push   $0x0
   40141:	6a 20                	push   $0x20
   40143:	e9 2a 09 00 00       	jmp    40a72 <exception_entry>

0000000000040148 <exception_entry_33>:
   40148:	6a 00                	push   $0x0
   4014a:	6a 21                	push   $0x21
   4014c:	e9 21 09 00 00       	jmp    40a72 <exception_entry>

0000000000040151 <exception_entry_34>:
   40151:	6a 00                	push   $0x0
   40153:	6a 22                	push   $0x22
   40155:	e9 18 09 00 00       	jmp    40a72 <exception_entry>

000000000004015a <exception_entry_35>:
   4015a:	6a 00                	push   $0x0
   4015c:	6a 23                	push   $0x23
   4015e:	e9 0f 09 00 00       	jmp    40a72 <exception_entry>

0000000000040163 <exception_entry_36>:
   40163:	6a 00                	push   $0x0
   40165:	6a 24                	push   $0x24
   40167:	e9 06 09 00 00       	jmp    40a72 <exception_entry>

000000000004016c <exception_entry_37>:
   4016c:	6a 00                	push   $0x0
   4016e:	6a 25                	push   $0x25
   40170:	e9 fd 08 00 00       	jmp    40a72 <exception_entry>

0000000000040175 <exception_entry_38>:
   40175:	6a 00                	push   $0x0
   40177:	6a 26                	push   $0x26
   40179:	e9 f4 08 00 00       	jmp    40a72 <exception_entry>

000000000004017e <exception_entry_39>:
   4017e:	6a 00                	push   $0x0
   40180:	6a 27                	push   $0x27
   40182:	e9 eb 08 00 00       	jmp    40a72 <exception_entry>

0000000000040187 <exception_entry_40>:
   40187:	6a 00                	push   $0x0
   40189:	6a 28                	push   $0x28
   4018b:	e9 e2 08 00 00       	jmp    40a72 <exception_entry>

0000000000040190 <exception_entry_41>:
   40190:	6a 00                	push   $0x0
   40192:	6a 29                	push   $0x29
   40194:	e9 d9 08 00 00       	jmp    40a72 <exception_entry>

0000000000040199 <exception_entry_42>:
   40199:	6a 00                	push   $0x0
   4019b:	6a 2a                	push   $0x2a
   4019d:	e9 d0 08 00 00       	jmp    40a72 <exception_entry>

00000000000401a2 <exception_entry_43>:
   401a2:	6a 00                	push   $0x0
   401a4:	6a 2b                	push   $0x2b
   401a6:	e9 c7 08 00 00       	jmp    40a72 <exception_entry>

00000000000401ab <exception_entry_44>:
   401ab:	6a 00                	push   $0x0
   401ad:	6a 2c                	push   $0x2c
   401af:	e9 be 08 00 00       	jmp    40a72 <exception_entry>

00000000000401b4 <exception_entry_45>:
   401b4:	6a 00                	push   $0x0
   401b6:	6a 2d                	push   $0x2d
   401b8:	e9 b5 08 00 00       	jmp    40a72 <exception_entry>

00000000000401bd <exception_entry_46>:
   401bd:	6a 00                	push   $0x0
   401bf:	6a 2e                	push   $0x2e
   401c1:	e9 ac 08 00 00       	jmp    40a72 <exception_entry>

00000000000401c6 <exception_entry_47>:
   401c6:	6a 00                	push   $0x0
   401c8:	6a 2f                	push   $0x2f
   401ca:	e9 a3 08 00 00       	jmp    40a72 <exception_entry>

00000000000401cf <exception_entry_48>:
   401cf:	6a 00                	push   $0x0
   401d1:	6a 30                	push   $0x30
   401d3:	e9 9a 08 00 00       	jmp    40a72 <exception_entry>

00000000000401d8 <exception_entry_49>:
   401d8:	6a 00                	push   $0x0
   401da:	6a 31                	push   $0x31
   401dc:	e9 91 08 00 00       	jmp    40a72 <exception_entry>

00000000000401e1 <exception_entry_50>:
   401e1:	6a 00                	push   $0x0
   401e3:	6a 32                	push   $0x32
   401e5:	e9 88 08 00 00       	jmp    40a72 <exception_entry>

00000000000401ea <exception_entry_51>:
   401ea:	6a 00                	push   $0x0
   401ec:	6a 33                	push   $0x33
   401ee:	e9 7f 08 00 00       	jmp    40a72 <exception_entry>

00000000000401f3 <exception_entry_52>:
   401f3:	6a 00                	push   $0x0
   401f5:	6a 34                	push   $0x34
   401f7:	e9 76 08 00 00       	jmp    40a72 <exception_entry>

00000000000401fc <exception_entry_53>:
   401fc:	6a 00                	push   $0x0
   401fe:	6a 35                	push   $0x35
   40200:	e9 6d 08 00 00       	jmp    40a72 <exception_entry>

0000000000040205 <exception_entry_54>:
   40205:	6a 00                	push   $0x0
   40207:	6a 36                	push   $0x36
   40209:	e9 64 08 00 00       	jmp    40a72 <exception_entry>

000000000004020e <exception_entry_55>:
   4020e:	6a 00                	push   $0x0
   40210:	6a 37                	push   $0x37
   40212:	e9 5b 08 00 00       	jmp    40a72 <exception_entry>

0000000000040217 <exception_entry_56>:
   40217:	6a 00                	push   $0x0
   40219:	6a 38                	push   $0x38
   4021b:	e9 52 08 00 00       	jmp    40a72 <exception_entry>

0000000000040220 <exception_entry_57>:
   40220:	6a 00                	push   $0x0
   40222:	6a 39                	push   $0x39
   40224:	e9 49 08 00 00       	jmp    40a72 <exception_entry>

0000000000040229 <exception_entry_58>:
   40229:	6a 00                	push   $0x0
   4022b:	6a 3a                	push   $0x3a
   4022d:	e9 40 08 00 00       	jmp    40a72 <exception_entry>

0000000000040232 <exception_entry_59>:
   40232:	6a 00                	push   $0x0
   40234:	6a 3b                	push   $0x3b
   40236:	e9 37 08 00 00       	jmp    40a72 <exception_entry>

000000000004023b <exception_entry_60>:
   4023b:	6a 00                	push   $0x0
   4023d:	6a 3c                	push   $0x3c
   4023f:	e9 2e 08 00 00       	jmp    40a72 <exception_entry>

0000000000040244 <exception_entry_61>:
   40244:	6a 00                	push   $0x0
   40246:	6a 3d                	push   $0x3d
   40248:	e9 25 08 00 00       	jmp    40a72 <exception_entry>

000000000004024d <exception_entry_62>:
   4024d:	6a 00                	push   $0x0
   4024f:	6a 3e                	push   $0x3e
   40251:	e9 1c 08 00 00       	jmp    40a72 <exception_entry>

0000000000040256 <exception_entry_63>:
   40256:	6a 00                	push   $0x0
   40258:	6a 3f                	push   $0x3f
   4025a:	e9 13 08 00 00       	jmp    40a72 <exception_entry>

000000000004025f <exception_entry_64>:
   4025f:	6a 00                	push   $0x0
   40261:	6a 40                	push   $0x40
   40263:	e9 0a 08 00 00       	jmp    40a72 <exception_entry>

0000000000040268 <exception_entry_65>:
   40268:	6a 00                	push   $0x0
   4026a:	6a 41                	push   $0x41
   4026c:	e9 01 08 00 00       	jmp    40a72 <exception_entry>

0000000000040271 <exception_entry_66>:
   40271:	6a 00                	push   $0x0
   40273:	6a 42                	push   $0x42
   40275:	e9 f8 07 00 00       	jmp    40a72 <exception_entry>

000000000004027a <exception_entry_67>:
   4027a:	6a 00                	push   $0x0
   4027c:	6a 43                	push   $0x43
   4027e:	e9 ef 07 00 00       	jmp    40a72 <exception_entry>

0000000000040283 <exception_entry_68>:
   40283:	6a 00                	push   $0x0
   40285:	6a 44                	push   $0x44
   40287:	e9 e6 07 00 00       	jmp    40a72 <exception_entry>

000000000004028c <exception_entry_69>:
   4028c:	6a 00                	push   $0x0
   4028e:	6a 45                	push   $0x45
   40290:	e9 dd 07 00 00       	jmp    40a72 <exception_entry>

0000000000040295 <exception_entry_70>:
   40295:	6a 00                	push   $0x0
   40297:	6a 46                	push   $0x46
   40299:	e9 d4 07 00 00       	jmp    40a72 <exception_entry>

000000000004029e <exception_entry_71>:
   4029e:	6a 00                	push   $0x0
   402a0:	6a 47                	push   $0x47
   402a2:	e9 cb 07 00 00       	jmp    40a72 <exception_entry>

00000000000402a7 <exception_entry_72>:
   402a7:	6a 00                	push   $0x0
   402a9:	6a 48                	push   $0x48
   402ab:	e9 c2 07 00 00       	jmp    40a72 <exception_entry>

00000000000402b0 <exception_entry_73>:
   402b0:	6a 00                	push   $0x0
   402b2:	6a 49                	push   $0x49
   402b4:	e9 b9 07 00 00       	jmp    40a72 <exception_entry>

00000000000402b9 <exception_entry_74>:
   402b9:	6a 00                	push   $0x0
   402bb:	6a 4a                	push   $0x4a
   402bd:	e9 b0 07 00 00       	jmp    40a72 <exception_entry>

00000000000402c2 <exception_entry_75>:
   402c2:	6a 00                	push   $0x0
   402c4:	6a 4b                	push   $0x4b
   402c6:	e9 a7 07 00 00       	jmp    40a72 <exception_entry>

00000000000402cb <exception_entry_76>:
   402cb:	6a 00                	push   $0x0
   402cd:	6a 4c                	push   $0x4c
   402cf:	e9 9e 07 00 00       	jmp    40a72 <exception_entry>

00000000000402d4 <exception_entry_77>:
   402d4:	6a 00                	push   $0x0
   402d6:	6a 4d                	push   $0x4d
   402d8:	e9 95 07 00 00       	jmp    40a72 <exception_entry>

00000000000402dd <exception_entry_78>:
   402dd:	6a 00                	push   $0x0
   402df:	6a 4e                	push   $0x4e
   402e1:	e9 8c 07 00 00       	jmp    40a72 <exception_entry>

00000000000402e6 <exception_entry_79>:
   402e6:	6a 00                	push   $0x0
   402e8:	6a 4f                	push   $0x4f
   402ea:	e9 83 07 00 00       	jmp    40a72 <exception_entry>

00000000000402ef <exception_entry_80>:
   402ef:	6a 00                	push   $0x0
   402f1:	6a 50                	push   $0x50
   402f3:	e9 7a 07 00 00       	jmp    40a72 <exception_entry>

00000000000402f8 <exception_entry_81>:
   402f8:	6a 00                	push   $0x0
   402fa:	6a 51                	push   $0x51
   402fc:	e9 71 07 00 00       	jmp    40a72 <exception_entry>

0000000000040301 <exception_entry_82>:
   40301:	6a 00                	push   $0x0
   40303:	6a 52                	push   $0x52
   40305:	e9 68 07 00 00       	jmp    40a72 <exception_entry>

000000000004030a <exception_entry_83>:
   4030a:	6a 00                	push   $0x0
   4030c:	6a 53                	push   $0x53
   4030e:	e9 5f 07 00 00       	jmp    40a72 <exception_entry>

0000000000040313 <exception_entry_84>:
   40313:	6a 00                	push   $0x0
   40315:	6a 54                	push   $0x54
   40317:	e9 56 07 00 00       	jmp    40a72 <exception_entry>

000000000004031c <exception_entry_85>:
   4031c:	6a 00                	push   $0x0
   4031e:	6a 55                	push   $0x55
   40320:	e9 4d 07 00 00       	jmp    40a72 <exception_entry>

0000000000040325 <exception_entry_86>:
   40325:	6a 00                	push   $0x0
   40327:	6a 56                	push   $0x56
   40329:	e9 44 07 00 00       	jmp    40a72 <exception_entry>

000000000004032e <exception_entry_87>:
   4032e:	6a 00                	push   $0x0
   40330:	6a 57                	push   $0x57
   40332:	e9 3b 07 00 00       	jmp    40a72 <exception_entry>

0000000000040337 <exception_entry_88>:
   40337:	6a 00                	push   $0x0
   40339:	6a 58                	push   $0x58
   4033b:	e9 32 07 00 00       	jmp    40a72 <exception_entry>

0000000000040340 <exception_entry_89>:
   40340:	6a 00                	push   $0x0
   40342:	6a 59                	push   $0x59
   40344:	e9 29 07 00 00       	jmp    40a72 <exception_entry>

0000000000040349 <exception_entry_90>:
   40349:	6a 00                	push   $0x0
   4034b:	6a 5a                	push   $0x5a
   4034d:	e9 20 07 00 00       	jmp    40a72 <exception_entry>

0000000000040352 <exception_entry_91>:
   40352:	6a 00                	push   $0x0
   40354:	6a 5b                	push   $0x5b
   40356:	e9 17 07 00 00       	jmp    40a72 <exception_entry>

000000000004035b <exception_entry_92>:
   4035b:	6a 00                	push   $0x0
   4035d:	6a 5c                	push   $0x5c
   4035f:	e9 0e 07 00 00       	jmp    40a72 <exception_entry>

0000000000040364 <exception_entry_93>:
   40364:	6a 00                	push   $0x0
   40366:	6a 5d                	push   $0x5d
   40368:	e9 05 07 00 00       	jmp    40a72 <exception_entry>

000000000004036d <exception_entry_94>:
   4036d:	6a 00                	push   $0x0
   4036f:	6a 5e                	push   $0x5e
   40371:	e9 fc 06 00 00       	jmp    40a72 <exception_entry>

0000000000040376 <exception_entry_95>:
   40376:	6a 00                	push   $0x0
   40378:	6a 5f                	push   $0x5f
   4037a:	e9 f3 06 00 00       	jmp    40a72 <exception_entry>

000000000004037f <exception_entry_96>:
   4037f:	6a 00                	push   $0x0
   40381:	6a 60                	push   $0x60
   40383:	e9 ea 06 00 00       	jmp    40a72 <exception_entry>

0000000000040388 <exception_entry_97>:
   40388:	6a 00                	push   $0x0
   4038a:	6a 61                	push   $0x61
   4038c:	e9 e1 06 00 00       	jmp    40a72 <exception_entry>

0000000000040391 <exception_entry_98>:
   40391:	6a 00                	push   $0x0
   40393:	6a 62                	push   $0x62
   40395:	e9 d8 06 00 00       	jmp    40a72 <exception_entry>

000000000004039a <exception_entry_99>:
   4039a:	6a 00                	push   $0x0
   4039c:	6a 63                	push   $0x63
   4039e:	e9 cf 06 00 00       	jmp    40a72 <exception_entry>

00000000000403a3 <exception_entry_100>:
   403a3:	6a 00                	push   $0x0
   403a5:	6a 64                	push   $0x64
   403a7:	e9 c6 06 00 00       	jmp    40a72 <exception_entry>

00000000000403ac <exception_entry_101>:
   403ac:	6a 00                	push   $0x0
   403ae:	6a 65                	push   $0x65
   403b0:	e9 bd 06 00 00       	jmp    40a72 <exception_entry>

00000000000403b5 <exception_entry_102>:
   403b5:	6a 00                	push   $0x0
   403b7:	6a 66                	push   $0x66
   403b9:	e9 b4 06 00 00       	jmp    40a72 <exception_entry>

00000000000403be <exception_entry_103>:
   403be:	6a 00                	push   $0x0
   403c0:	6a 67                	push   $0x67
   403c2:	e9 ab 06 00 00       	jmp    40a72 <exception_entry>

00000000000403c7 <exception_entry_104>:
   403c7:	6a 00                	push   $0x0
   403c9:	6a 68                	push   $0x68
   403cb:	e9 a2 06 00 00       	jmp    40a72 <exception_entry>

00000000000403d0 <exception_entry_105>:
   403d0:	6a 00                	push   $0x0
   403d2:	6a 69                	push   $0x69
   403d4:	e9 99 06 00 00       	jmp    40a72 <exception_entry>

00000000000403d9 <exception_entry_106>:
   403d9:	6a 00                	push   $0x0
   403db:	6a 6a                	push   $0x6a
   403dd:	e9 90 06 00 00       	jmp    40a72 <exception_entry>

00000000000403e2 <exception_entry_107>:
   403e2:	6a 00                	push   $0x0
   403e4:	6a 6b                	push   $0x6b
   403e6:	e9 87 06 00 00       	jmp    40a72 <exception_entry>

00000000000403eb <exception_entry_108>:
   403eb:	6a 00                	push   $0x0
   403ed:	6a 6c                	push   $0x6c
   403ef:	e9 7e 06 00 00       	jmp    40a72 <exception_entry>

00000000000403f4 <exception_entry_109>:
   403f4:	6a 00                	push   $0x0
   403f6:	6a 6d                	push   $0x6d
   403f8:	e9 75 06 00 00       	jmp    40a72 <exception_entry>

00000000000403fd <exception_entry_110>:
   403fd:	6a 00                	push   $0x0
   403ff:	6a 6e                	push   $0x6e
   40401:	e9 6c 06 00 00       	jmp    40a72 <exception_entry>

0000000000040406 <exception_entry_111>:
   40406:	6a 00                	push   $0x0
   40408:	6a 6f                	push   $0x6f
   4040a:	e9 63 06 00 00       	jmp    40a72 <exception_entry>

000000000004040f <exception_entry_112>:
   4040f:	6a 00                	push   $0x0
   40411:	6a 70                	push   $0x70
   40413:	e9 5a 06 00 00       	jmp    40a72 <exception_entry>

0000000000040418 <exception_entry_113>:
   40418:	6a 00                	push   $0x0
   4041a:	6a 71                	push   $0x71
   4041c:	e9 51 06 00 00       	jmp    40a72 <exception_entry>

0000000000040421 <exception_entry_114>:
   40421:	6a 00                	push   $0x0
   40423:	6a 72                	push   $0x72
   40425:	e9 48 06 00 00       	jmp    40a72 <exception_entry>

000000000004042a <exception_entry_115>:
   4042a:	6a 00                	push   $0x0
   4042c:	6a 73                	push   $0x73
   4042e:	e9 3f 06 00 00       	jmp    40a72 <exception_entry>

0000000000040433 <exception_entry_116>:
   40433:	6a 00                	push   $0x0
   40435:	6a 74                	push   $0x74
   40437:	e9 36 06 00 00       	jmp    40a72 <exception_entry>

000000000004043c <exception_entry_117>:
   4043c:	6a 00                	push   $0x0
   4043e:	6a 75                	push   $0x75
   40440:	e9 2d 06 00 00       	jmp    40a72 <exception_entry>

0000000000040445 <exception_entry_118>:
   40445:	6a 00                	push   $0x0
   40447:	6a 76                	push   $0x76
   40449:	e9 24 06 00 00       	jmp    40a72 <exception_entry>

000000000004044e <exception_entry_119>:
   4044e:	6a 00                	push   $0x0
   40450:	6a 77                	push   $0x77
   40452:	e9 1b 06 00 00       	jmp    40a72 <exception_entry>

0000000000040457 <exception_entry_120>:
   40457:	6a 00                	push   $0x0
   40459:	6a 78                	push   $0x78
   4045b:	e9 12 06 00 00       	jmp    40a72 <exception_entry>

0000000000040460 <exception_entry_121>:
   40460:	6a 00                	push   $0x0
   40462:	6a 79                	push   $0x79
   40464:	e9 09 06 00 00       	jmp    40a72 <exception_entry>

0000000000040469 <exception_entry_122>:
   40469:	6a 00                	push   $0x0
   4046b:	6a 7a                	push   $0x7a
   4046d:	e9 00 06 00 00       	jmp    40a72 <exception_entry>

0000000000040472 <exception_entry_123>:
   40472:	6a 00                	push   $0x0
   40474:	6a 7b                	push   $0x7b
   40476:	e9 f7 05 00 00       	jmp    40a72 <exception_entry>

000000000004047b <exception_entry_124>:
   4047b:	6a 00                	push   $0x0
   4047d:	6a 7c                	push   $0x7c
   4047f:	e9 ee 05 00 00       	jmp    40a72 <exception_entry>

0000000000040484 <exception_entry_125>:
   40484:	6a 00                	push   $0x0
   40486:	6a 7d                	push   $0x7d
   40488:	e9 e5 05 00 00       	jmp    40a72 <exception_entry>

000000000004048d <exception_entry_126>:
   4048d:	6a 00                	push   $0x0
   4048f:	6a 7e                	push   $0x7e
   40491:	e9 dc 05 00 00       	jmp    40a72 <exception_entry>

0000000000040496 <exception_entry_127>:
   40496:	6a 00                	push   $0x0
   40498:	6a 7f                	push   $0x7f
   4049a:	e9 d3 05 00 00       	jmp    40a72 <exception_entry>

000000000004049f <exception_entry_128>:
   4049f:	6a 00                	push   $0x0
   404a1:	68 80 00 00 00       	push   $0x80
   404a6:	e9 c7 05 00 00       	jmp    40a72 <exception_entry>

00000000000404ab <exception_entry_129>:
   404ab:	6a 00                	push   $0x0
   404ad:	68 81 00 00 00       	push   $0x81
   404b2:	e9 bb 05 00 00       	jmp    40a72 <exception_entry>

00000000000404b7 <exception_entry_130>:
   404b7:	6a 00                	push   $0x0
   404b9:	68 82 00 00 00       	push   $0x82
   404be:	e9 af 05 00 00       	jmp    40a72 <exception_entry>

00000000000404c3 <exception_entry_131>:
   404c3:	6a 00                	push   $0x0
   404c5:	68 83 00 00 00       	push   $0x83
   404ca:	e9 a3 05 00 00       	jmp    40a72 <exception_entry>

00000000000404cf <exception_entry_132>:
   404cf:	6a 00                	push   $0x0
   404d1:	68 84 00 00 00       	push   $0x84
   404d6:	e9 97 05 00 00       	jmp    40a72 <exception_entry>

00000000000404db <exception_entry_133>:
   404db:	6a 00                	push   $0x0
   404dd:	68 85 00 00 00       	push   $0x85
   404e2:	e9 8b 05 00 00       	jmp    40a72 <exception_entry>

00000000000404e7 <exception_entry_134>:
   404e7:	6a 00                	push   $0x0
   404e9:	68 86 00 00 00       	push   $0x86
   404ee:	e9 7f 05 00 00       	jmp    40a72 <exception_entry>

00000000000404f3 <exception_entry_135>:
   404f3:	6a 00                	push   $0x0
   404f5:	68 87 00 00 00       	push   $0x87
   404fa:	e9 73 05 00 00       	jmp    40a72 <exception_entry>

00000000000404ff <exception_entry_136>:
   404ff:	6a 00                	push   $0x0
   40501:	68 88 00 00 00       	push   $0x88
   40506:	e9 67 05 00 00       	jmp    40a72 <exception_entry>

000000000004050b <exception_entry_137>:
   4050b:	6a 00                	push   $0x0
   4050d:	68 89 00 00 00       	push   $0x89
   40512:	e9 5b 05 00 00       	jmp    40a72 <exception_entry>

0000000000040517 <exception_entry_138>:
   40517:	6a 00                	push   $0x0
   40519:	68 8a 00 00 00       	push   $0x8a
   4051e:	e9 4f 05 00 00       	jmp    40a72 <exception_entry>

0000000000040523 <exception_entry_139>:
   40523:	6a 00                	push   $0x0
   40525:	68 8b 00 00 00       	push   $0x8b
   4052a:	e9 43 05 00 00       	jmp    40a72 <exception_entry>

000000000004052f <exception_entry_140>:
   4052f:	6a 00                	push   $0x0
   40531:	68 8c 00 00 00       	push   $0x8c
   40536:	e9 37 05 00 00       	jmp    40a72 <exception_entry>

000000000004053b <exception_entry_141>:
   4053b:	6a 00                	push   $0x0
   4053d:	68 8d 00 00 00       	push   $0x8d
   40542:	e9 2b 05 00 00       	jmp    40a72 <exception_entry>

0000000000040547 <exception_entry_142>:
   40547:	6a 00                	push   $0x0
   40549:	68 8e 00 00 00       	push   $0x8e
   4054e:	e9 1f 05 00 00       	jmp    40a72 <exception_entry>

0000000000040553 <exception_entry_143>:
   40553:	6a 00                	push   $0x0
   40555:	68 8f 00 00 00       	push   $0x8f
   4055a:	e9 13 05 00 00       	jmp    40a72 <exception_entry>

000000000004055f <exception_entry_144>:
   4055f:	6a 00                	push   $0x0
   40561:	68 90 00 00 00       	push   $0x90
   40566:	e9 07 05 00 00       	jmp    40a72 <exception_entry>

000000000004056b <exception_entry_145>:
   4056b:	6a 00                	push   $0x0
   4056d:	68 91 00 00 00       	push   $0x91
   40572:	e9 fb 04 00 00       	jmp    40a72 <exception_entry>

0000000000040577 <exception_entry_146>:
   40577:	6a 00                	push   $0x0
   40579:	68 92 00 00 00       	push   $0x92
   4057e:	e9 ef 04 00 00       	jmp    40a72 <exception_entry>

0000000000040583 <exception_entry_147>:
   40583:	6a 00                	push   $0x0
   40585:	68 93 00 00 00       	push   $0x93
   4058a:	e9 e3 04 00 00       	jmp    40a72 <exception_entry>

000000000004058f <exception_entry_148>:
   4058f:	6a 00                	push   $0x0
   40591:	68 94 00 00 00       	push   $0x94
   40596:	e9 d7 04 00 00       	jmp    40a72 <exception_entry>

000000000004059b <exception_entry_149>:
   4059b:	6a 00                	push   $0x0
   4059d:	68 95 00 00 00       	push   $0x95
   405a2:	e9 cb 04 00 00       	jmp    40a72 <exception_entry>

00000000000405a7 <exception_entry_150>:
   405a7:	6a 00                	push   $0x0
   405a9:	68 96 00 00 00       	push   $0x96
   405ae:	e9 bf 04 00 00       	jmp    40a72 <exception_entry>

00000000000405b3 <exception_entry_151>:
   405b3:	6a 00                	push   $0x0
   405b5:	68 97 00 00 00       	push   $0x97
   405ba:	e9 b3 04 00 00       	jmp    40a72 <exception_entry>

00000000000405bf <exception_entry_152>:
   405bf:	6a 00                	push   $0x0
   405c1:	68 98 00 00 00       	push   $0x98
   405c6:	e9 a7 04 00 00       	jmp    40a72 <exception_entry>

00000000000405cb <exception_entry_153>:
   405cb:	6a 00                	push   $0x0
   405cd:	68 99 00 00 00       	push   $0x99
   405d2:	e9 9b 04 00 00       	jmp    40a72 <exception_entry>

00000000000405d7 <exception_entry_154>:
   405d7:	6a 00                	push   $0x0
   405d9:	68 9a 00 00 00       	push   $0x9a
   405de:	e9 8f 04 00 00       	jmp    40a72 <exception_entry>

00000000000405e3 <exception_entry_155>:
   405e3:	6a 00                	push   $0x0
   405e5:	68 9b 00 00 00       	push   $0x9b
   405ea:	e9 83 04 00 00       	jmp    40a72 <exception_entry>

00000000000405ef <exception_entry_156>:
   405ef:	6a 00                	push   $0x0
   405f1:	68 9c 00 00 00       	push   $0x9c
   405f6:	e9 77 04 00 00       	jmp    40a72 <exception_entry>

00000000000405fb <exception_entry_157>:
   405fb:	6a 00                	push   $0x0
   405fd:	68 9d 00 00 00       	push   $0x9d
   40602:	e9 6b 04 00 00       	jmp    40a72 <exception_entry>

0000000000040607 <exception_entry_158>:
   40607:	6a 00                	push   $0x0
   40609:	68 9e 00 00 00       	push   $0x9e
   4060e:	e9 5f 04 00 00       	jmp    40a72 <exception_entry>

0000000000040613 <exception_entry_159>:
   40613:	6a 00                	push   $0x0
   40615:	68 9f 00 00 00       	push   $0x9f
   4061a:	e9 53 04 00 00       	jmp    40a72 <exception_entry>

000000000004061f <exception_entry_160>:
   4061f:	6a 00                	push   $0x0
   40621:	68 a0 00 00 00       	push   $0xa0
   40626:	e9 47 04 00 00       	jmp    40a72 <exception_entry>

000000000004062b <exception_entry_161>:
   4062b:	6a 00                	push   $0x0
   4062d:	68 a1 00 00 00       	push   $0xa1
   40632:	e9 3b 04 00 00       	jmp    40a72 <exception_entry>

0000000000040637 <exception_entry_162>:
   40637:	6a 00                	push   $0x0
   40639:	68 a2 00 00 00       	push   $0xa2
   4063e:	e9 2f 04 00 00       	jmp    40a72 <exception_entry>

0000000000040643 <exception_entry_163>:
   40643:	6a 00                	push   $0x0
   40645:	68 a3 00 00 00       	push   $0xa3
   4064a:	e9 23 04 00 00       	jmp    40a72 <exception_entry>

000000000004064f <exception_entry_164>:
   4064f:	6a 00                	push   $0x0
   40651:	68 a4 00 00 00       	push   $0xa4
   40656:	e9 17 04 00 00       	jmp    40a72 <exception_entry>

000000000004065b <exception_entry_165>:
   4065b:	6a 00                	push   $0x0
   4065d:	68 a5 00 00 00       	push   $0xa5
   40662:	e9 0b 04 00 00       	jmp    40a72 <exception_entry>

0000000000040667 <exception_entry_166>:
   40667:	6a 00                	push   $0x0
   40669:	68 a6 00 00 00       	push   $0xa6
   4066e:	e9 ff 03 00 00       	jmp    40a72 <exception_entry>

0000000000040673 <exception_entry_167>:
   40673:	6a 00                	push   $0x0
   40675:	68 a7 00 00 00       	push   $0xa7
   4067a:	e9 f3 03 00 00       	jmp    40a72 <exception_entry>

000000000004067f <exception_entry_168>:
   4067f:	6a 00                	push   $0x0
   40681:	68 a8 00 00 00       	push   $0xa8
   40686:	e9 e7 03 00 00       	jmp    40a72 <exception_entry>

000000000004068b <exception_entry_169>:
   4068b:	6a 00                	push   $0x0
   4068d:	68 a9 00 00 00       	push   $0xa9
   40692:	e9 db 03 00 00       	jmp    40a72 <exception_entry>

0000000000040697 <exception_entry_170>:
   40697:	6a 00                	push   $0x0
   40699:	68 aa 00 00 00       	push   $0xaa
   4069e:	e9 cf 03 00 00       	jmp    40a72 <exception_entry>

00000000000406a3 <exception_entry_171>:
   406a3:	6a 00                	push   $0x0
   406a5:	68 ab 00 00 00       	push   $0xab
   406aa:	e9 c3 03 00 00       	jmp    40a72 <exception_entry>

00000000000406af <exception_entry_172>:
   406af:	6a 00                	push   $0x0
   406b1:	68 ac 00 00 00       	push   $0xac
   406b6:	e9 b7 03 00 00       	jmp    40a72 <exception_entry>

00000000000406bb <exception_entry_173>:
   406bb:	6a 00                	push   $0x0
   406bd:	68 ad 00 00 00       	push   $0xad
   406c2:	e9 ab 03 00 00       	jmp    40a72 <exception_entry>

00000000000406c7 <exception_entry_174>:
   406c7:	6a 00                	push   $0x0
   406c9:	68 ae 00 00 00       	push   $0xae
   406ce:	e9 9f 03 00 00       	jmp    40a72 <exception_entry>

00000000000406d3 <exception_entry_175>:
   406d3:	6a 00                	push   $0x0
   406d5:	68 af 00 00 00       	push   $0xaf
   406da:	e9 93 03 00 00       	jmp    40a72 <exception_entry>

00000000000406df <exception_entry_176>:
   406df:	6a 00                	push   $0x0
   406e1:	68 b0 00 00 00       	push   $0xb0
   406e6:	e9 87 03 00 00       	jmp    40a72 <exception_entry>

00000000000406eb <exception_entry_177>:
   406eb:	6a 00                	push   $0x0
   406ed:	68 b1 00 00 00       	push   $0xb1
   406f2:	e9 7b 03 00 00       	jmp    40a72 <exception_entry>

00000000000406f7 <exception_entry_178>:
   406f7:	6a 00                	push   $0x0
   406f9:	68 b2 00 00 00       	push   $0xb2
   406fe:	e9 6f 03 00 00       	jmp    40a72 <exception_entry>

0000000000040703 <exception_entry_179>:
   40703:	6a 00                	push   $0x0
   40705:	68 b3 00 00 00       	push   $0xb3
   4070a:	e9 63 03 00 00       	jmp    40a72 <exception_entry>

000000000004070f <exception_entry_180>:
   4070f:	6a 00                	push   $0x0
   40711:	68 b4 00 00 00       	push   $0xb4
   40716:	e9 57 03 00 00       	jmp    40a72 <exception_entry>

000000000004071b <exception_entry_181>:
   4071b:	6a 00                	push   $0x0
   4071d:	68 b5 00 00 00       	push   $0xb5
   40722:	e9 4b 03 00 00       	jmp    40a72 <exception_entry>

0000000000040727 <exception_entry_182>:
   40727:	6a 00                	push   $0x0
   40729:	68 b6 00 00 00       	push   $0xb6
   4072e:	e9 3f 03 00 00       	jmp    40a72 <exception_entry>

0000000000040733 <exception_entry_183>:
   40733:	6a 00                	push   $0x0
   40735:	68 b7 00 00 00       	push   $0xb7
   4073a:	e9 33 03 00 00       	jmp    40a72 <exception_entry>

000000000004073f <exception_entry_184>:
   4073f:	6a 00                	push   $0x0
   40741:	68 b8 00 00 00       	push   $0xb8
   40746:	e9 27 03 00 00       	jmp    40a72 <exception_entry>

000000000004074b <exception_entry_185>:
   4074b:	6a 00                	push   $0x0
   4074d:	68 b9 00 00 00       	push   $0xb9
   40752:	e9 1b 03 00 00       	jmp    40a72 <exception_entry>

0000000000040757 <exception_entry_186>:
   40757:	6a 00                	push   $0x0
   40759:	68 ba 00 00 00       	push   $0xba
   4075e:	e9 0f 03 00 00       	jmp    40a72 <exception_entry>

0000000000040763 <exception_entry_187>:
   40763:	6a 00                	push   $0x0
   40765:	68 bb 00 00 00       	push   $0xbb
   4076a:	e9 03 03 00 00       	jmp    40a72 <exception_entry>

000000000004076f <exception_entry_188>:
   4076f:	6a 00                	push   $0x0
   40771:	68 bc 00 00 00       	push   $0xbc
   40776:	e9 f7 02 00 00       	jmp    40a72 <exception_entry>

000000000004077b <exception_entry_189>:
   4077b:	6a 00                	push   $0x0
   4077d:	68 bd 00 00 00       	push   $0xbd
   40782:	e9 eb 02 00 00       	jmp    40a72 <exception_entry>

0000000000040787 <exception_entry_190>:
   40787:	6a 00                	push   $0x0
   40789:	68 be 00 00 00       	push   $0xbe
   4078e:	e9 df 02 00 00       	jmp    40a72 <exception_entry>

0000000000040793 <exception_entry_191>:
   40793:	6a 00                	push   $0x0
   40795:	68 bf 00 00 00       	push   $0xbf
   4079a:	e9 d3 02 00 00       	jmp    40a72 <exception_entry>

000000000004079f <exception_entry_192>:
   4079f:	6a 00                	push   $0x0
   407a1:	68 c0 00 00 00       	push   $0xc0
   407a6:	e9 c7 02 00 00       	jmp    40a72 <exception_entry>

00000000000407ab <exception_entry_193>:
   407ab:	6a 00                	push   $0x0
   407ad:	68 c1 00 00 00       	push   $0xc1
   407b2:	e9 bb 02 00 00       	jmp    40a72 <exception_entry>

00000000000407b7 <exception_entry_194>:
   407b7:	6a 00                	push   $0x0
   407b9:	68 c2 00 00 00       	push   $0xc2
   407be:	e9 af 02 00 00       	jmp    40a72 <exception_entry>

00000000000407c3 <exception_entry_195>:
   407c3:	6a 00                	push   $0x0
   407c5:	68 c3 00 00 00       	push   $0xc3
   407ca:	e9 a3 02 00 00       	jmp    40a72 <exception_entry>

00000000000407cf <exception_entry_196>:
   407cf:	6a 00                	push   $0x0
   407d1:	68 c4 00 00 00       	push   $0xc4
   407d6:	e9 97 02 00 00       	jmp    40a72 <exception_entry>

00000000000407db <exception_entry_197>:
   407db:	6a 00                	push   $0x0
   407dd:	68 c5 00 00 00       	push   $0xc5
   407e2:	e9 8b 02 00 00       	jmp    40a72 <exception_entry>

00000000000407e7 <exception_entry_198>:
   407e7:	6a 00                	push   $0x0
   407e9:	68 c6 00 00 00       	push   $0xc6
   407ee:	e9 7f 02 00 00       	jmp    40a72 <exception_entry>

00000000000407f3 <exception_entry_199>:
   407f3:	6a 00                	push   $0x0
   407f5:	68 c7 00 00 00       	push   $0xc7
   407fa:	e9 73 02 00 00       	jmp    40a72 <exception_entry>

00000000000407ff <exception_entry_200>:
   407ff:	6a 00                	push   $0x0
   40801:	68 c8 00 00 00       	push   $0xc8
   40806:	e9 67 02 00 00       	jmp    40a72 <exception_entry>

000000000004080b <exception_entry_201>:
   4080b:	6a 00                	push   $0x0
   4080d:	68 c9 00 00 00       	push   $0xc9
   40812:	e9 5b 02 00 00       	jmp    40a72 <exception_entry>

0000000000040817 <exception_entry_202>:
   40817:	6a 00                	push   $0x0
   40819:	68 ca 00 00 00       	push   $0xca
   4081e:	e9 4f 02 00 00       	jmp    40a72 <exception_entry>

0000000000040823 <exception_entry_203>:
   40823:	6a 00                	push   $0x0
   40825:	68 cb 00 00 00       	push   $0xcb
   4082a:	e9 43 02 00 00       	jmp    40a72 <exception_entry>

000000000004082f <exception_entry_204>:
   4082f:	6a 00                	push   $0x0
   40831:	68 cc 00 00 00       	push   $0xcc
   40836:	e9 37 02 00 00       	jmp    40a72 <exception_entry>

000000000004083b <exception_entry_205>:
   4083b:	6a 00                	push   $0x0
   4083d:	68 cd 00 00 00       	push   $0xcd
   40842:	e9 2b 02 00 00       	jmp    40a72 <exception_entry>

0000000000040847 <exception_entry_206>:
   40847:	6a 00                	push   $0x0
   40849:	68 ce 00 00 00       	push   $0xce
   4084e:	e9 1f 02 00 00       	jmp    40a72 <exception_entry>

0000000000040853 <exception_entry_207>:
   40853:	6a 00                	push   $0x0
   40855:	68 cf 00 00 00       	push   $0xcf
   4085a:	e9 13 02 00 00       	jmp    40a72 <exception_entry>

000000000004085f <exception_entry_208>:
   4085f:	6a 00                	push   $0x0
   40861:	68 d0 00 00 00       	push   $0xd0
   40866:	e9 07 02 00 00       	jmp    40a72 <exception_entry>

000000000004086b <exception_entry_209>:
   4086b:	6a 00                	push   $0x0
   4086d:	68 d1 00 00 00       	push   $0xd1
   40872:	e9 fb 01 00 00       	jmp    40a72 <exception_entry>

0000000000040877 <exception_entry_210>:
   40877:	6a 00                	push   $0x0
   40879:	68 d2 00 00 00       	push   $0xd2
   4087e:	e9 ef 01 00 00       	jmp    40a72 <exception_entry>

0000000000040883 <exception_entry_211>:
   40883:	6a 00                	push   $0x0
   40885:	68 d3 00 00 00       	push   $0xd3
   4088a:	e9 e3 01 00 00       	jmp    40a72 <exception_entry>

000000000004088f <exception_entry_212>:
   4088f:	6a 00                	push   $0x0
   40891:	68 d4 00 00 00       	push   $0xd4
   40896:	e9 d7 01 00 00       	jmp    40a72 <exception_entry>

000000000004089b <exception_entry_213>:
   4089b:	6a 00                	push   $0x0
   4089d:	68 d5 00 00 00       	push   $0xd5
   408a2:	e9 cb 01 00 00       	jmp    40a72 <exception_entry>

00000000000408a7 <exception_entry_214>:
   408a7:	6a 00                	push   $0x0
   408a9:	68 d6 00 00 00       	push   $0xd6
   408ae:	e9 bf 01 00 00       	jmp    40a72 <exception_entry>

00000000000408b3 <exception_entry_215>:
   408b3:	6a 00                	push   $0x0
   408b5:	68 d7 00 00 00       	push   $0xd7
   408ba:	e9 b3 01 00 00       	jmp    40a72 <exception_entry>

00000000000408bf <exception_entry_216>:
   408bf:	6a 00                	push   $0x0
   408c1:	68 d8 00 00 00       	push   $0xd8
   408c6:	e9 a7 01 00 00       	jmp    40a72 <exception_entry>

00000000000408cb <exception_entry_217>:
   408cb:	6a 00                	push   $0x0
   408cd:	68 d9 00 00 00       	push   $0xd9
   408d2:	e9 9b 01 00 00       	jmp    40a72 <exception_entry>

00000000000408d7 <exception_entry_218>:
   408d7:	6a 00                	push   $0x0
   408d9:	68 da 00 00 00       	push   $0xda
   408de:	e9 8f 01 00 00       	jmp    40a72 <exception_entry>

00000000000408e3 <exception_entry_219>:
   408e3:	6a 00                	push   $0x0
   408e5:	68 db 00 00 00       	push   $0xdb
   408ea:	e9 83 01 00 00       	jmp    40a72 <exception_entry>

00000000000408ef <exception_entry_220>:
   408ef:	6a 00                	push   $0x0
   408f1:	68 dc 00 00 00       	push   $0xdc
   408f6:	e9 77 01 00 00       	jmp    40a72 <exception_entry>

00000000000408fb <exception_entry_221>:
   408fb:	6a 00                	push   $0x0
   408fd:	68 dd 00 00 00       	push   $0xdd
   40902:	e9 6b 01 00 00       	jmp    40a72 <exception_entry>

0000000000040907 <exception_entry_222>:
   40907:	6a 00                	push   $0x0
   40909:	68 de 00 00 00       	push   $0xde
   4090e:	e9 5f 01 00 00       	jmp    40a72 <exception_entry>

0000000000040913 <exception_entry_223>:
   40913:	6a 00                	push   $0x0
   40915:	68 df 00 00 00       	push   $0xdf
   4091a:	e9 53 01 00 00       	jmp    40a72 <exception_entry>

000000000004091f <exception_entry_224>:
   4091f:	6a 00                	push   $0x0
   40921:	68 e0 00 00 00       	push   $0xe0
   40926:	e9 47 01 00 00       	jmp    40a72 <exception_entry>

000000000004092b <exception_entry_225>:
   4092b:	6a 00                	push   $0x0
   4092d:	68 e1 00 00 00       	push   $0xe1
   40932:	e9 3b 01 00 00       	jmp    40a72 <exception_entry>

0000000000040937 <exception_entry_226>:
   40937:	6a 00                	push   $0x0
   40939:	68 e2 00 00 00       	push   $0xe2
   4093e:	e9 2f 01 00 00       	jmp    40a72 <exception_entry>

0000000000040943 <exception_entry_227>:
   40943:	6a 00                	push   $0x0
   40945:	68 e3 00 00 00       	push   $0xe3
   4094a:	e9 23 01 00 00       	jmp    40a72 <exception_entry>

000000000004094f <exception_entry_228>:
   4094f:	6a 00                	push   $0x0
   40951:	68 e4 00 00 00       	push   $0xe4
   40956:	e9 17 01 00 00       	jmp    40a72 <exception_entry>

000000000004095b <exception_entry_229>:
   4095b:	6a 00                	push   $0x0
   4095d:	68 e5 00 00 00       	push   $0xe5
   40962:	e9 0b 01 00 00       	jmp    40a72 <exception_entry>

0000000000040967 <exception_entry_230>:
   40967:	6a 00                	push   $0x0
   40969:	68 e6 00 00 00       	push   $0xe6
   4096e:	e9 ff 00 00 00       	jmp    40a72 <exception_entry>

0000000000040973 <exception_entry_231>:
   40973:	6a 00                	push   $0x0
   40975:	68 e7 00 00 00       	push   $0xe7
   4097a:	e9 f3 00 00 00       	jmp    40a72 <exception_entry>

000000000004097f <exception_entry_232>:
   4097f:	6a 00                	push   $0x0
   40981:	68 e8 00 00 00       	push   $0xe8
   40986:	e9 e7 00 00 00       	jmp    40a72 <exception_entry>

000000000004098b <exception_entry_233>:
   4098b:	6a 00                	push   $0x0
   4098d:	68 e9 00 00 00       	push   $0xe9
   40992:	e9 db 00 00 00       	jmp    40a72 <exception_entry>

0000000000040997 <exception_entry_234>:
   40997:	6a 00                	push   $0x0
   40999:	68 ea 00 00 00       	push   $0xea
   4099e:	e9 cf 00 00 00       	jmp    40a72 <exception_entry>

00000000000409a3 <exception_entry_235>:
   409a3:	6a 00                	push   $0x0
   409a5:	68 eb 00 00 00       	push   $0xeb
   409aa:	e9 c3 00 00 00       	jmp    40a72 <exception_entry>

00000000000409af <exception_entry_236>:
   409af:	6a 00                	push   $0x0
   409b1:	68 ec 00 00 00       	push   $0xec
   409b6:	e9 b7 00 00 00       	jmp    40a72 <exception_entry>

00000000000409bb <exception_entry_237>:
   409bb:	6a 00                	push   $0x0
   409bd:	68 ed 00 00 00       	push   $0xed
   409c2:	e9 ab 00 00 00       	jmp    40a72 <exception_entry>

00000000000409c7 <exception_entry_238>:
   409c7:	6a 00                	push   $0x0
   409c9:	68 ee 00 00 00       	push   $0xee
   409ce:	e9 9f 00 00 00       	jmp    40a72 <exception_entry>

00000000000409d3 <exception_entry_239>:
   409d3:	6a 00                	push   $0x0
   409d5:	68 ef 00 00 00       	push   $0xef
   409da:	e9 93 00 00 00       	jmp    40a72 <exception_entry>

00000000000409df <exception_entry_240>:
   409df:	6a 00                	push   $0x0
   409e1:	68 f0 00 00 00       	push   $0xf0
   409e6:	e9 87 00 00 00       	jmp    40a72 <exception_entry>

00000000000409eb <exception_entry_241>:
   409eb:	6a 00                	push   $0x0
   409ed:	68 f1 00 00 00       	push   $0xf1
   409f2:	eb 7e                	jmp    40a72 <exception_entry>

00000000000409f4 <exception_entry_242>:
   409f4:	6a 00                	push   $0x0
   409f6:	68 f2 00 00 00       	push   $0xf2
   409fb:	eb 75                	jmp    40a72 <exception_entry>

00000000000409fd <exception_entry_243>:
   409fd:	6a 00                	push   $0x0
   409ff:	68 f3 00 00 00       	push   $0xf3
   40a04:	eb 6c                	jmp    40a72 <exception_entry>

0000000000040a06 <exception_entry_244>:
   40a06:	6a 00                	push   $0x0
   40a08:	68 f4 00 00 00       	push   $0xf4
   40a0d:	eb 63                	jmp    40a72 <exception_entry>

0000000000040a0f <exception_entry_245>:
   40a0f:	6a 00                	push   $0x0
   40a11:	68 f5 00 00 00       	push   $0xf5
   40a16:	eb 5a                	jmp    40a72 <exception_entry>

0000000000040a18 <exception_entry_246>:
   40a18:	6a 00                	push   $0x0
   40a1a:	68 f6 00 00 00       	push   $0xf6
   40a1f:	eb 51                	jmp    40a72 <exception_entry>

0000000000040a21 <exception_entry_247>:
   40a21:	6a 00                	push   $0x0
   40a23:	68 f7 00 00 00       	push   $0xf7
   40a28:	eb 48                	jmp    40a72 <exception_entry>

0000000000040a2a <exception_entry_248>:
   40a2a:	6a 00                	push   $0x0
   40a2c:	68 f8 00 00 00       	push   $0xf8
   40a31:	eb 3f                	jmp    40a72 <exception_entry>

0000000000040a33 <exception_entry_249>:
   40a33:	6a 00                	push   $0x0
   40a35:	68 f9 00 00 00       	push   $0xf9
   40a3a:	eb 36                	jmp    40a72 <exception_entry>

0000000000040a3c <exception_entry_250>:
   40a3c:	6a 00                	push   $0x0
   40a3e:	68 fa 00 00 00       	push   $0xfa
   40a43:	eb 2d                	jmp    40a72 <exception_entry>

0000000000040a45 <exception_entry_251>:
   40a45:	6a 00                	push   $0x0
   40a47:	68 fb 00 00 00       	push   $0xfb
   40a4c:	eb 24                	jmp    40a72 <exception_entry>

0000000000040a4e <exception_entry_252>:
   40a4e:	6a 00                	push   $0x0
   40a50:	68 fc 00 00 00       	push   $0xfc
   40a55:	eb 1b                	jmp    40a72 <exception_entry>

0000000000040a57 <exception_entry_253>:
   40a57:	6a 00                	push   $0x0
   40a59:	68 fd 00 00 00       	push   $0xfd
   40a5e:	eb 12                	jmp    40a72 <exception_entry>

0000000000040a60 <exception_entry_254>:
   40a60:	6a 00                	push   $0x0
   40a62:	68 fe 00 00 00       	push   $0xfe
   40a67:	eb 09                	jmp    40a72 <exception_entry>

0000000000040a69 <exception_entry_255>:
   40a69:	6a 00                	push   $0x0
   40a6b:	68 ff 00 00 00       	push   $0xff
   40a70:	eb 00                	jmp    40a72 <exception_entry>

0000000000040a72 <exception_entry>:
   40a72:	0f a8                	push   %gs
   40a74:	0f a0                	push   %fs
   40a76:	41 57                	push   %r15
   40a78:	41 56                	push   %r14
   40a7a:	41 55                	push   %r13
   40a7c:	41 54                	push   %r12
   40a7e:	41 53                	push   %r11
   40a80:	41 52                	push   %r10
   40a82:	41 51                	push   %r9
   40a84:	41 50                	push   %r8
   40a86:	57                   	push   %rdi
   40a87:	56                   	push   %rsi
   40a88:	55                   	push   %rbp
   40a89:	53                   	push   %rbx
   40a8a:	52                   	push   %rdx
   40a8b:	51                   	push   %rcx
   40a8c:	50                   	push   %rax
   40a8d:	48 89 e7             	mov    %rsp,%rdi
   40a90:	48 c7 c0 00 a0 05 00 	mov    $0x5a000,%rax
   40a97:	0f 22 d8             	mov    %rax,%cr3
   40a9a:	e8 f7 0b 00 00       	call   41696 <exception(regstate*)>

0000000000040a9f <exception_return(proc*)>:
   40a9f:	8b 47 0c             	mov    0xc(%rdi),%eax
   40aa2:	83 f8 01             	cmp    $0x1,%eax
   40aa5:	0f 85 a4 00 00 00    	jne    40b4f <proc_runnable_fail>
   40aab:	48 8b 07             	mov    (%rdi),%rax
   40aae:	0f 22 d8             	mov    %rax,%cr3
   40ab1:	48 8d 67 10          	lea    0x10(%rdi),%rsp
   40ab5:	58                   	pop    %rax
   40ab6:	59                   	pop    %rcx
   40ab7:	5a                   	pop    %rdx
   40ab8:	5b                   	pop    %rbx
   40ab9:	5d                   	pop    %rbp
   40aba:	5e                   	pop    %rsi
   40abb:	5f                   	pop    %rdi
   40abc:	41 58                	pop    %r8
   40abe:	41 59                	pop    %r9
   40ac0:	41 5a                	pop    %r10
   40ac2:	41 5b                	pop    %r11
   40ac4:	41 5c                	pop    %r12
   40ac6:	41 5d                	pop    %r13
   40ac8:	41 5e                	pop    %r14
   40aca:	41 5f                	pop    %r15
   40acc:	0f a1                	pop    %fs
   40ace:	0f a9                	pop    %gs
   40ad0:	48 83 c4 10          	add    $0x10,%rsp
   40ad4:	48 cf                	iretq  

0000000000040ad6 <syscall_entry>:
   40ad6:	48 89 24 25 f0 ff 07 	mov    %rsp,0x7fff0
   40add:	00 
   40ade:	48 c7 c4 00 00 08 00 	mov    $0x80000,%rsp
   40ae5:	6a 23                	push   $0x23
   40ae7:	48 83 ec 08          	sub    $0x8,%rsp
   40aeb:	41 53                	push   %r11
   40aed:	6a 1b                	push   $0x1b
   40aef:	51                   	push   %rcx
   40af0:	48 83 ec 08          	sub    $0x8,%rsp
   40af4:	6a ff                	push   $0xffffffffffffffff
   40af6:	0f a8                	push   %gs
   40af8:	0f a0                	push   %fs
   40afa:	41 57                	push   %r15
   40afc:	41 56                	push   %r14
   40afe:	41 55                	push   %r13
   40b00:	41 54                	push   %r12
   40b02:	48 83 ec 08          	sub    $0x8,%rsp
   40b06:	41 52                	push   %r10
   40b08:	41 51                	push   %r9
   40b0a:	41 50                	push   %r8
   40b0c:	57                   	push   %rdi
   40b0d:	56                   	push   %rsi
   40b0e:	55                   	push   %rbp
   40b0f:	53                   	push   %rbx
   40b10:	52                   	push   %rdx
   40b11:	48 83 ec 08          	sub    $0x8,%rsp
   40b15:	50                   	push   %rax
   40b16:	48 c7 c0 00 a0 05 00 	mov    $0x5a000,%rax
   40b1d:	0f 22 d8             	mov    %rax,%cr3
   40b20:	48 89 e7             	mov    %rsp,%rdi
   40b23:	e8 93 0c 00 00       	call   417bb <syscall(regstate*)>
   40b28:	48 8b 0c 25 00 82 05 	mov    0x58200,%rcx
   40b2f:	00 
   40b30:	8b 49 0c             	mov    0xc(%rcx),%ecx
   40b33:	83 f9 01             	cmp    $0x1,%ecx
   40b36:	75 17                	jne    40b4f <proc_runnable_fail>
   40b38:	48 8b 0c 25 00 82 05 	mov    0x58200,%rcx
   40b3f:	00 
   40b40:	48 8b 09             	mov    (%rcx),%rcx
   40b43:	0f 22 d9             	mov    %rcx,%cr3
   40b46:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   40b4d:	48 cf                	iretq  

0000000000040b4f <proc_runnable_fail>:
   40b4f:	48 c7 c2 ce 44 04 00 	mov    $0x444ce,%rdx
   40b56:	31 f6                	xor    %esi,%esi
   40b58:	48 c7 c7 c0 44 04 00 	mov    $0x444c0,%rdi
   40b5f:	e8 e4 16 00 00       	call   42248 <assert_fail(char const*, int, char const*)>

0000000000040b64 <kalloc(unsigned long)>:
//    The stencil code returns the next allocatable free page it can find,
//    but it never reuses pages or supports freeing memory 

static uintptr_t next_alloc_pa;

void* kalloc(size_t sz) {
   40b64:	f3 0f 1e fa          	endbr64 
   40b68:	55                   	push   %rbp
   40b69:	48 89 e5             	mov    %rsp,%rbp
   40b6c:	41 54                	push   %r12
   40b6e:	53                   	push   %rbx
    if (sz > PAGESIZE) {
        return nullptr;
   40b6f:	41 bc 00 00 00 00    	mov    $0x0,%r12d
    if (sz > PAGESIZE) {
   40b75:	48 81 ff 00 10 00 00 	cmp    $0x1000,%rdi
   40b7c:	0f 87 8b 00 00 00    	ja     40c0d <kalloc(unsigned long)+0xa9>
    }
    check_pagetable(kernel_pagetable);
   40b82:	bf 00 a0 05 00       	mov    $0x5a000,%edi
   40b87:	e8 a2 1b 00 00       	call   4272e <check_pagetable(x86_64_pagetable*)>

    //next_alloc_pa = 0;
    while (next_alloc_pa < MEMSIZE_PHYSICAL) {
   40b8c:	48 8b 1d 95 83 01 00 	mov    0x18395(%rip),%rbx        # 58f28 <next_alloc_pa>
   40b93:	48 81 fb ff ff 1f 00 	cmp    $0x1fffff,%rbx
   40b9a:	77 79                	ja     40c15 <kalloc(unsigned long)+0xb1>
        uintptr_t pa = next_alloc_pa;
        next_alloc_pa += PAGESIZE;
   40b9c:	41 bc 00 00 08 00    	mov    $0x80000,%r12d
   40ba2:	eb 10                	jmp    40bb4 <kalloc(unsigned long)+0x50>
    while (next_alloc_pa < MEMSIZE_PHYSICAL) {
   40ba4:	48 8b 1d 7d 83 01 00 	mov    0x1837d(%rip),%rbx        # 58f28 <next_alloc_pa>
   40bab:	48 81 fb ff ff 1f 00 	cmp    $0x1fffff,%rbx
   40bb2:	77 53                	ja     40c07 <kalloc(unsigned long)+0xa3>
        next_alloc_pa += PAGESIZE;
   40bb4:	48 8d 83 00 10 00 00 	lea    0x1000(%rbx),%rax
   40bbb:	48 81 fb 00 f0 03 00 	cmp    $0x3f000,%rbx
   40bc2:	49 0f 44 c4          	cmove  %r12,%rax
   40bc6:	48 89 05 5b 83 01 00 	mov    %rax,0x1835b(%rip)        # 58f28 <next_alloc_pa>
        if (next_alloc_pa == KERNEL_START_ADDR) {
            next_alloc_pa = (uintptr_t) 0x080000;
        }

        if (allocatable_physical_address(pa) && !pages[pa / PAGESIZE].used()) {
   40bcd:	48 89 df             	mov    %rbx,%rdi
   40bd0:	e8 fb 11 00 00       	call   41dd0 <allocatable_physical_address(unsigned long)>
   40bd5:	84 c0                	test   %al,%al
   40bd7:	74 cb                	je     40ba4 <kalloc(unsigned long)+0x40>
   40bd9:	48 89 d8             	mov    %rbx,%rax
   40bdc:	48 c1 e8 0c          	shr    $0xc,%rax
   40be0:	80 b8 00 80 05 00 00 	cmpb   $0x0,0x58000(%rax)
   40be7:	75 bb                	jne    40ba4 <kalloc(unsigned long)+0x40>
            pages[pa / PAGESIZE].refcount++;
   40be9:	c6 80 00 80 05 00 01 	movb   $0x1,0x58000(%rax)
            memset((void*) pa, 0, PAGESIZE);
   40bf0:	49 89 dc             	mov    %rbx,%r12
   40bf3:	ba 00 10 00 00       	mov    $0x1000,%edx
   40bf8:	be 00 00 00 00       	mov    $0x0,%esi
   40bfd:	48 89 df             	mov    %rbx,%rdi
   40c00:	e8 64 2d 00 00       	call   43969 <memset>
            return (void*) pa;
   40c05:	eb 06                	jmp    40c0d <kalloc(unsigned long)+0xa9>
        }
    }
    return nullptr;
   40c07:	41 bc 00 00 00 00    	mov    $0x0,%r12d
}
   40c0d:	4c 89 e0             	mov    %r12,%rax
   40c10:	5b                   	pop    %rbx
   40c11:	41 5c                	pop    %r12
   40c13:	5d                   	pop    %rbp
   40c14:	c3                   	ret    
    return nullptr;
   40c15:	41 bc 00 00 00 00    	mov    $0x0,%r12d
   40c1b:	eb f0                	jmp    40c0d <kalloc(unsigned long)+0xa9>

0000000000040c1d <process_setup(int, char const*)>:
// process_setup(pid, program_name)
//    Loads application program `program_name` as process number `pid`.
//    This loads the application's code and data into memory, sets its
//    %rip and %rsp, gives it a stack page, and marks it as runnable.

void process_setup(pid_t pid, const char* program_name) {
   40c1d:	55                   	push   %rbp
   40c1e:	48 89 e5             	mov    %rsp,%rbp
   40c21:	41 57                	push   %r15
   40c23:	41 56                	push   %r14
   40c25:	41 55                	push   %r13
   40c27:	41 54                	push   %r12
   40c29:	53                   	push   %rbx
   40c2a:	48 83 ec 68          	sub    $0x68,%rsp
   40c2e:	41 89 fe             	mov    %edi,%r14d
   40c31:	49 89 f4             	mov    %rsi,%r12
    // ptable[pid].regs.reg_rsp = stack_addr + PAGESIZE;

    // // Finally, mark the process as runnable.
    // ptable[pid].state = P_RUNNABLE;

    init_process(&ptable[pid], 0);
   40c34:	4c 63 ff             	movslq %edi,%r15
   40c37:	4b 8d 1c 7f          	lea    (%r15,%r15,2),%rbx
   40c3b:	48 c1 e3 02          	shl    $0x2,%rbx
   40c3f:	4a 8d 3c 3b          	lea    (%rbx,%r15,1),%rdi
   40c43:	48 c1 e7 04          	shl    $0x4,%rdi
   40c47:	48 81 c7 20 82 05 00 	add    $0x58220,%rdi
   40c4e:	be 00 00 00 00       	mov    $0x0,%esi
   40c53:	e8 ba 11 00 00       	call   41e12 <init_process(proc*, int)>

    // initialize process page table
    x86_64_pagetable* proc_pagetable = (x86_64_pagetable*) kalloc(PAGESIZE);
   40c58:	bf 00 10 00 00       	mov    $0x1000,%edi
   40c5d:	e8 02 ff ff ff       	call   40b64 <kalloc(unsigned long)>
   40c62:	49 89 c5             	mov    %rax,%r13
    ptable[pid].pagetable = proc_pagetable;
   40c65:	4c 01 fb             	add    %r15,%rbx
   40c68:	48 c1 e3 04          	shl    $0x4,%rbx
   40c6c:	48 89 83 20 82 05 00 	mov    %rax,0x58220(%rbx)

    // load the program
    program_loader loader(program_name);
   40c73:	4c 89 e6             	mov    %r12,%rsi
   40c76:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   40c7a:	e8 29 22 00 00       	call   42ea8 <program_loader::program_loader(char const*)>
    void down(bool skip);
};


inline vmiter::vmiter(x86_64_pagetable* pt, uintptr_t va)
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   40c7f:	48 c7 85 78 ff ff ff 	movq   $0x5a000,-0x88(%rbp)
   40c86:	00 a0 05 00 
   40c8a:	48 c7 45 80 00 a0 05 	movq   $0x5a000,-0x80(%rbp)
   40c91:	00 
   40c92:	c7 45 88 03 00 00 00 	movl   $0x3,-0x78(%rbp)
   40c99:	c7 45 8c ff 0f 00 00 	movl   $0xfff,-0x74(%rbp)
   40ca0:	48 c7 45 90 00 00 00 	movq   $0x0,-0x70(%rbp)
   40ca7:	00 
    real_find(va);
   40ca8:	be 00 00 00 00       	mov    $0x0,%esi
   40cad:	48 8d bd 78 ff ff ff 	lea    -0x88(%rbp),%rdi
   40cb4:	e8 43 0c 00 00       	call   418fc <vmiter::real_find(unsigned long)>
}
inline vmiter::vmiter(const proc* p, uintptr_t va)
    : vmiter(p->pagetable, va) {
}
inline uintptr_t vmiter::va() const {
    return va_;
   40cb9:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
    
    //copy mappings from kernel to process
    for (vmiter it(kernel_pagetable); it.va() < PROC_START_ADDR; it += PAGESIZE) {
   40cbd:	48 81 fe ff ff 0f 00 	cmp    $0xfffff,%rsi
   40cc4:	0f 87 e9 01 00 00    	ja     40eb3 <process_setup(int, char const*)+0x296>
        if (level_ > 0) {
            pa &= ~0x1000UL;
        }
        return pa + (va_ & pageoffmask(level_));
    } else {
        return -1;
   40cca:	48 c7 c3 ff ff ff ff 	mov    $0xffffffffffffffff,%rbx
            pa &= ~0x1000UL;
   40cd1:	49 bc 00 e0 ff ff ff 	movabs $0xfffffffffe000,%r12
   40cd8:	ff 0f 00 
        uintptr_t pa = *pep_ & PTE_PAMASK;
   40cdb:	49 bf 00 f0 ff ff ff 	movabs $0xffffffffff000,%r15
   40ce2:	ff 0f 00 
   40ce5:	e9 3e 01 00 00       	jmp    40e28 <process_setup(int, char const*)+0x20b>
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   40cea:	4c 89 6d 98          	mov    %r13,-0x68(%rbp)
   40cee:	4c 89 6d a0          	mov    %r13,-0x60(%rbp)
   40cf2:	c7 45 a8 03 00 00 00 	movl   $0x3,-0x58(%rbp)
   40cf9:	c7 45 ac ff 0f 00 00 	movl   $0xfff,-0x54(%rbp)
   40d00:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
   40d07:	00 
    real_find(va);
   40d08:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
   40d0c:	e8 eb 0b 00 00       	call   418fc <vmiter::real_find(unsigned long)>
    if (*pep_ & PTE_P) {
   40d11:	48 8b 45 80          	mov    -0x80(%rbp),%rax
   40d15:	48 8b 00             	mov    (%rax),%rax
        return -1;
   40d18:	48 89 de             	mov    %rbx,%rsi
    if (*pep_ & PTE_P) {
   40d1b:	a8 01                	test   $0x1,%al
   40d1d:	74 23                	je     40d42 <process_setup(int, char const*)+0x125>
        if (level_ > 0) {
   40d1f:	8b 4d 88             	mov    -0x78(%rbp),%ecx
            pa &= ~0x1000UL;
   40d22:	48 89 c2             	mov    %rax,%rdx
        uintptr_t pa = *pep_ & PTE_PAMASK;
   40d25:	4c 21 fa             	and    %r15,%rdx
   40d28:	4c 21 e0             	and    %r12,%rax
   40d2b:	85 c9                	test   %ecx,%ecx
   40d2d:	48 0f 4f d0          	cmovg  %rax,%rdx
// Parts of a paged address: page index, page offset
static inline int pageindex(uintptr_t addr, int level) {
    return (int) (addr >> (PAGEOFFBITS + level * PAGEINDEXBITS)) & 0x1FF;
}
static inline uintptr_t pageoffmask(int level) {
    return (1UL << (PAGEOFFBITS + level * PAGEINDEXBITS)) - 1;
   40d31:	8d 4c c9 0c          	lea    0xc(%rcx,%rcx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   40d35:	48 d3 e6             	shl    %cl,%rsi
   40d38:	48 f7 d6             	not    %rsi
   40d3b:	48 23 75 90          	and    -0x70(%rbp),%rsi
   40d3f:	48 01 d6             	add    %rdx,%rsi
}
inline void vmiter::next_range() {
    real_find(last_va());
}
inline void vmiter::map(uintptr_t pa, int perm) {
    int r = try_map(pa, perm);
   40d42:	ba 00 00 00 00       	mov    $0x0,%edx
   40d47:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
   40d4b:	e8 ae 0c 00 00       	call   419fe <vmiter::try_map(unsigned long, int)>
    assert(r == 0);
   40d50:	85 c0                	test   %eax,%eax
   40d52:	0f 84 a8 00 00 00    	je     40e00 <process_setup(int, char const*)+0x1e3>
   40d58:	ba eb 44 04 00       	mov    $0x444eb,%edx
   40d5d:	be b1 00 00 00       	mov    $0xb1,%esi
   40d62:	bf f2 44 04 00       	mov    $0x444f2,%edi
   40d67:	e8 dc 14 00 00       	call   42248 <assert_fail(char const*, int, char const*)>
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   40d6c:	4c 89 6d 98          	mov    %r13,-0x68(%rbp)
   40d70:	4c 89 6d a0          	mov    %r13,-0x60(%rbp)
   40d74:	c7 45 a8 03 00 00 00 	movl   $0x3,-0x58(%rbp)
   40d7b:	c7 45 ac ff 0f 00 00 	movl   $0xfff,-0x54(%rbp)
   40d82:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
   40d89:	00 
    real_find(va);
   40d8a:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
   40d8e:	e8 69 0b 00 00       	call   418fc <vmiter::real_find(unsigned long)>
    if (*pep_ & PTE_P) {
   40d93:	48 8b 45 80          	mov    -0x80(%rbp),%rax
   40d97:	48 8b 00             	mov    (%rax),%rax
        return -1;
   40d9a:	48 89 de             	mov    %rbx,%rsi
    if (*pep_ & PTE_P) {
   40d9d:	a8 01                	test   $0x1,%al
   40d9f:	74 23                	je     40dc4 <process_setup(int, char const*)+0x1a7>
        if (level_ > 0) {
   40da1:	8b 4d 88             	mov    -0x78(%rbp),%ecx
            pa &= ~0x1000UL;
   40da4:	48 89 c2             	mov    %rax,%rdx
        uintptr_t pa = *pep_ & PTE_PAMASK;
   40da7:	4c 21 fa             	and    %r15,%rdx
   40daa:	4c 21 e0             	and    %r12,%rax
   40dad:	85 c9                	test   %ecx,%ecx
   40daf:	48 0f 4f d0          	cmovg  %rax,%rdx
   40db3:	8d 4c c9 0c          	lea    0xc(%rcx,%rcx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   40db7:	48 d3 e6             	shl    %cl,%rsi
   40dba:	48 f7 d6             	not    %rsi
   40dbd:	48 23 75 90          	and    -0x70(%rbp),%rsi
   40dc1:	48 01 d6             	add    %rdx,%rsi
    int r = try_map(pa, perm);
   40dc4:	ba 07 00 00 00       	mov    $0x7,%edx
   40dc9:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
   40dcd:	e8 2c 0c 00 00       	call   419fe <vmiter::try_map(unsigned long, int)>
    assert(r == 0);
   40dd2:	85 c0                	test   %eax,%eax
   40dd4:	74 2a                	je     40e00 <process_setup(int, char const*)+0x1e3>
   40dd6:	ba eb 44 04 00       	mov    $0x444eb,%edx
   40ddb:	be b1 00 00 00       	mov    $0xb1,%esi
   40de0:	bf f2 44 04 00       	mov    $0x444f2,%edi
   40de5:	e8 5e 14 00 00       	call   42248 <assert_fail(char const*, int, char const*)>
    int r = try_map(pa, perm);
   40dea:	ba 03 00 00 00       	mov    $0x3,%edx
   40def:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
   40df3:	e8 06 0c 00 00       	call   419fe <vmiter::try_map(unsigned long, int)>
    assert(r == 0);
   40df8:	85 c0                	test   %eax,%eax
   40dfa:	0f 85 9f 00 00 00    	jne    40e9f <process_setup(int, char const*)+0x282>
    return find(va_ + delta);
   40e00:	48 8b 45 90          	mov    -0x70(%rbp),%rax
   40e04:	48 8d b0 00 10 00 00 	lea    0x1000(%rax),%rsi
    real_find(va);
   40e0b:	48 8d bd 78 ff ff ff 	lea    -0x88(%rbp),%rdi
   40e12:	e8 e5 0a 00 00       	call   418fc <vmiter::real_find(unsigned long)>
    return va_;
   40e17:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
   40e1b:	48 81 fe ff ff 0f 00 	cmp    $0xfffff,%rsi
   40e22:	0f 87 8b 00 00 00    	ja     40eb3 <process_setup(int, char const*)+0x296>
		if (it.va() == 0) {
   40e28:	48 85 f6             	test   %rsi,%rsi
   40e2b:	0f 84 b9 fe ff ff    	je     40cea <process_setup(int, char const*)+0xcd>
			vmiter(proc_pagetable, it.va()).map(it.pa(), 0);
		} else if (it.va() == CONSOLE_ADDR) {
   40e31:	48 81 fe 00 80 0b 00 	cmp    $0xb8000,%rsi
   40e38:	0f 84 2e ff ff ff    	je     40d6c <process_setup(int, char const*)+0x14f>
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   40e3e:	4c 89 6d 98          	mov    %r13,-0x68(%rbp)
   40e42:	4c 89 6d a0          	mov    %r13,-0x60(%rbp)
   40e46:	c7 45 a8 03 00 00 00 	movl   $0x3,-0x58(%rbp)
   40e4d:	c7 45 ac ff 0f 00 00 	movl   $0xfff,-0x54(%rbp)
   40e54:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
   40e5b:	00 
    real_find(va);
   40e5c:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
   40e60:	e8 97 0a 00 00       	call   418fc <vmiter::real_find(unsigned long)>
    if (*pep_ & PTE_P) {
   40e65:	48 8b 45 80          	mov    -0x80(%rbp),%rax
   40e69:	48 8b 00             	mov    (%rax),%rax
        return -1;
   40e6c:	48 89 de             	mov    %rbx,%rsi
    if (*pep_ & PTE_P) {
   40e6f:	a8 01                	test   $0x1,%al
   40e71:	0f 84 73 ff ff ff    	je     40dea <process_setup(int, char const*)+0x1cd>
        if (level_ > 0) {
   40e77:	8b 4d 88             	mov    -0x78(%rbp),%ecx
            pa &= ~0x1000UL;
   40e7a:	48 89 c2             	mov    %rax,%rdx
        uintptr_t pa = *pep_ & PTE_PAMASK;
   40e7d:	4c 21 fa             	and    %r15,%rdx
   40e80:	4c 21 e0             	and    %r12,%rax
   40e83:	85 c9                	test   %ecx,%ecx
   40e85:	48 0f 4f d0          	cmovg  %rax,%rdx
   40e89:	8d 4c c9 0c          	lea    0xc(%rcx,%rcx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   40e8d:	48 d3 e6             	shl    %cl,%rsi
   40e90:	48 f7 d6             	not    %rsi
   40e93:	48 23 75 90          	and    -0x70(%rbp),%rsi
   40e97:	48 01 d6             	add    %rdx,%rsi
   40e9a:	e9 4b ff ff ff       	jmp    40dea <process_setup(int, char const*)+0x1cd>
    assert(r == 0);
   40e9f:	ba eb 44 04 00       	mov    $0x444eb,%edx
   40ea4:	be b1 00 00 00       	mov    $0xb1,%esi
   40ea9:	bf f2 44 04 00       	mov    $0x444f2,%edi
   40eae:	e8 95 13 00 00       	call   42248 <assert_fail(char const*, int, char const*)>
			vmiter(proc_pagetable, it.va()).map(it.pa(), PTE_P | PTE_W);
		}
	}

    // allocate and map all memory
    for (loader.reset(); loader.present(); ++loader) {
   40eb3:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   40eb7:	e8 58 1f 00 00       	call   42e14 <program_loader::reset()>
   40ebc:	e9 32 01 00 00       	jmp    40ff3 <process_setup(int, char const*)+0x3d6>
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   40ec1:	4c 89 6d 98          	mov    %r13,-0x68(%rbp)
   40ec5:	4c 89 6d a0          	mov    %r13,-0x60(%rbp)
   40ec9:	c7 45 a8 03 00 00 00 	movl   $0x3,-0x58(%rbp)
   40ed0:	c7 45 ac ff 0f 00 00 	movl   $0xfff,-0x54(%rbp)
   40ed7:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
   40ede:	00 
    real_find(va);
   40edf:	4c 89 e6             	mov    %r12,%rsi
   40ee2:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
   40ee6:	e8 11 0a 00 00       	call   418fc <vmiter::real_find(unsigned long)>
    int r = try_map(pa, perm);
   40eeb:	ba 05 00 00 00       	mov    $0x5,%edx
   40ef0:	48 89 de             	mov    %rbx,%rsi
   40ef3:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
   40ef7:	e8 02 0b 00 00       	call   419fe <vmiter::try_map(unsigned long, int)>
    assert(r == 0);
   40efc:	85 c0                	test   %eax,%eax
   40efe:	0f 85 d2 00 00 00    	jne    40fd6 <process_setup(int, char const*)+0x3b9>
        for (uintptr_t a = round_down(loader.va(), PAGESIZE); a < loader.va() + loader.size(); a += PAGESIZE) {        
   40f04:	49 81 c4 00 10 00 00 	add    $0x1000,%r12
   40f0b:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   40f0f:	e8 38 1e 00 00       	call   42d4c <program_loader::va() const>
   40f14:	48 89 c3             	mov    %rax,%rbx
   40f17:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   40f1b:	e8 44 1e 00 00       	call   42d64 <program_loader::size() const>
   40f20:	48 01 c3             	add    %rax,%rbx
   40f23:	4c 39 e3             	cmp    %r12,%rbx
   40f26:	0f 86 be 00 00 00    	jbe    40fea <process_setup(int, char const*)+0x3cd>
            void* ptr = kalloc(PAGESIZE);
   40f2c:	bf 00 10 00 00       	mov    $0x1000,%edi
   40f31:	e8 2e fc ff ff       	call   40b64 <kalloc(unsigned long)>
   40f36:	48 89 c3             	mov    %rax,%rbx
            memset(ptr, 0, PAGESIZE);
   40f39:	ba 00 10 00 00       	mov    $0x1000,%edx
   40f3e:	be 00 00 00 00       	mov    $0x0,%esi
   40f43:	48 89 c7             	mov    %rax,%rdi
   40f46:	e8 1e 2a 00 00       	call   43969 <memset>
            memcpy(ptr, loader.data(), loader.data_size());
   40f4b:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   40f4f:	e8 44 1e 00 00       	call   42d98 <program_loader::data_size() const>
   40f54:	49 89 c7             	mov    %rax,%r15
   40f57:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   40f5b:	e8 1c 1e 00 00       	call   42d7c <program_loader::data() const>
   40f60:	48 89 c6             	mov    %rax,%rsi
   40f63:	4c 89 fa             	mov    %r15,%rdx
   40f66:	48 89 df             	mov    %rbx,%rdi
   40f69:	e8 8a 29 00 00       	call   438f8 <memcpy>
            if (loader.writable()) {
   40f6e:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   40f72:	e8 49 1e 00 00       	call   42dc0 <program_loader::writable() const>
   40f77:	84 c0                	test   %al,%al
   40f79:	0f 84 42 ff ff ff    	je     40ec1 <process_setup(int, char const*)+0x2a4>
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   40f7f:	4c 89 6d 98          	mov    %r13,-0x68(%rbp)
   40f83:	4c 89 6d a0          	mov    %r13,-0x60(%rbp)
   40f87:	c7 45 a8 03 00 00 00 	movl   $0x3,-0x58(%rbp)
   40f8e:	c7 45 ac ff 0f 00 00 	movl   $0xfff,-0x54(%rbp)
   40f95:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
   40f9c:	00 
    real_find(va);
   40f9d:	4c 89 e6             	mov    %r12,%rsi
   40fa0:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
   40fa4:	e8 53 09 00 00       	call   418fc <vmiter::real_find(unsigned long)>
    int r = try_map(pa, perm);
   40fa9:	ba 07 00 00 00       	mov    $0x7,%edx
   40fae:	48 89 de             	mov    %rbx,%rsi
   40fb1:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
   40fb5:	e8 44 0a 00 00       	call   419fe <vmiter::try_map(unsigned long, int)>
    assert(r == 0);
   40fba:	85 c0                	test   %eax,%eax
   40fbc:	0f 84 42 ff ff ff    	je     40f04 <process_setup(int, char const*)+0x2e7>
   40fc2:	ba eb 44 04 00       	mov    $0x444eb,%edx
   40fc7:	be b1 00 00 00       	mov    $0xb1,%esi
   40fcc:	bf f2 44 04 00       	mov    $0x444f2,%edi
   40fd1:	e8 72 12 00 00       	call   42248 <assert_fail(char const*, int, char const*)>
   40fd6:	ba eb 44 04 00       	mov    $0x444eb,%edx
   40fdb:	be b1 00 00 00       	mov    $0xb1,%esi
   40fe0:	bf f2 44 04 00       	mov    $0x444f2,%edi
   40fe5:	e8 5e 12 00 00       	call   42248 <assert_fail(char const*, int, char const*)>
    for (loader.reset(); loader.present(); ++loader) {
   40fea:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   40fee:	e8 ff 1d 00 00       	call   42df2 <program_loader::operator++()>
   40ff3:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   40ff7:	e8 b4 1d 00 00       	call   42db0 <program_loader::present() const>
   40ffc:	84 c0                	test   %al,%al
   40ffe:	74 17                	je     41017 <process_setup(int, char const*)+0x3fa>
        for (uintptr_t a = round_down(loader.va(), PAGESIZE); a < loader.va() + loader.size(); a += PAGESIZE) {        
   41000:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   41004:	e8 43 1d 00 00       	call   42d4c <program_loader::va() const>
   41009:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
   4100f:	49 89 c4             	mov    %rax,%r12
   41012:	e9 f4 fe ff ff       	jmp    40f0b <process_setup(int, char const*)+0x2ee>
			}
        }
    }	

    // copy instructions and data into place
    for (loader.reset(); loader.present(); ++loader) {     
   41017:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   4101b:	e8 f4 1d 00 00       	call   42e14 <program_loader::reset()>
   41020:	eb 5d                	jmp    4107f <process_setup(int, char const*)+0x462>
        memset((void*) loader.va(), 0, loader.size());
   41022:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   41026:	e8 39 1d 00 00       	call   42d64 <program_loader::size() const>
   4102b:	48 89 c3             	mov    %rax,%rbx
   4102e:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   41032:	e8 15 1d 00 00       	call   42d4c <program_loader::va() const>
   41037:	48 89 c7             	mov    %rax,%rdi
   4103a:	48 89 da             	mov    %rbx,%rdx
   4103d:	be 00 00 00 00       	mov    $0x0,%esi
   41042:	e8 22 29 00 00       	call   43969 <memset>
        memcpy((void*) loader.va(), loader.data(), loader.data_size());  
   41047:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   4104b:	e8 48 1d 00 00       	call   42d98 <program_loader::data_size() const>
   41050:	49 89 c4             	mov    %rax,%r12
   41053:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   41057:	e8 20 1d 00 00       	call   42d7c <program_loader::data() const>
   4105c:	48 89 c3             	mov    %rax,%rbx
   4105f:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   41063:	e8 e4 1c 00 00       	call   42d4c <program_loader::va() const>
   41068:	48 89 c7             	mov    %rax,%rdi
   4106b:	4c 89 e2             	mov    %r12,%rdx
   4106e:	48 89 de             	mov    %rbx,%rsi
   41071:	e8 82 28 00 00       	call   438f8 <memcpy>
    for (loader.reset(); loader.present(); ++loader) {     
   41076:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   4107a:	e8 73 1d 00 00       	call   42df2 <program_loader::operator++()>
   4107f:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   41083:	e8 28 1d 00 00       	call   42db0 <program_loader::present() const>
   41088:	84 c0                	test   %al,%al
   4108a:	75 96                	jne    41022 <process_setup(int, char const*)+0x405>
    }

    // mark entry point
    ptable[pid].regs.reg_rip = loader.entry();
   4108c:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   41090:	e8 47 1d 00 00       	call   42ddc <program_loader::entry() const>
   41095:	48 89 c6             	mov    %rax,%rsi
   41098:	49 63 d6             	movslq %r14d,%rdx
   4109b:	48 8d 04 52          	lea    (%rdx,%rdx,2),%rax
   4109f:	48 c1 e0 02          	shl    $0x2,%rax
   410a3:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
   410a7:	48 c1 e1 04          	shl    $0x4,%rcx
   410ab:	48 89 b1 c8 82 05 00 	mov    %rsi,0x582c8(%rcx)

    // allocate stack
    uintptr_t stack_addr = MEMSIZE_VIRTUAL - PAGESIZE;
    ptable[pid].regs.reg_rsp = stack_addr + PAGESIZE;
   410b2:	48 c7 81 e0 82 05 00 	movq   $0x300000,0x582e0(%rcx)
   410b9:	00 00 30 00 
    
    void* ptr = kalloc(PAGESIZE);
   410bd:	bf 00 10 00 00       	mov    $0x1000,%edi
   410c2:	e8 9d fa ff ff       	call   40b64 <kalloc(unsigned long)>
   410c7:	48 89 c3             	mov    %rax,%rbx
    memset(ptr, 0, PAGESIZE);
   410ca:	ba 00 10 00 00       	mov    $0x1000,%edx
   410cf:	be 00 00 00 00       	mov    $0x0,%esi
   410d4:	48 89 c7             	mov    %rax,%rdi
   410d7:	e8 8d 28 00 00       	call   43969 <memset>
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   410dc:	4c 89 6d 98          	mov    %r13,-0x68(%rbp)
   410e0:	4c 89 6d a0          	mov    %r13,-0x60(%rbp)
   410e4:	c7 45 a8 03 00 00 00 	movl   $0x3,-0x58(%rbp)
   410eb:	c7 45 ac ff 0f 00 00 	movl   $0xfff,-0x54(%rbp)
   410f2:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
   410f9:	00 
    real_find(va);
   410fa:	be 00 f0 2f 00       	mov    $0x2ff000,%esi
   410ff:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
   41103:	e8 f4 07 00 00       	call   418fc <vmiter::real_find(unsigned long)>
    int r = try_map(pa, perm);
   41108:	ba 07 00 00 00       	mov    $0x7,%edx
   4110d:	48 89 de             	mov    %rbx,%rsi
   41110:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
   41114:	e8 e5 08 00 00       	call   419fe <vmiter::try_map(unsigned long, int)>
    assert(r == 0);
   41119:	85 c0                	test   %eax,%eax
   4111b:	75 28                	jne    41145 <process_setup(int, char const*)+0x528>
    vmiter(proc_pagetable, stack_addr).map(ptr, PTE_P | PTE_W | PTE_U); 

    // mark process as runnable
    ptable[pid].state = P_RUNNABLE;
   4111d:	4d 63 f6             	movslq %r14d,%r14
   41120:	4b 8d 04 76          	lea    (%r14,%r14,2),%rax
   41124:	49 8d 04 86          	lea    (%r14,%rax,4),%rax
   41128:	48 c1 e0 04          	shl    $0x4,%rax
   4112c:	c7 80 2c 82 05 00 01 	movl   $0x1,0x5822c(%rax)
   41133:	00 00 00 

}
   41136:	48 83 c4 68          	add    $0x68,%rsp
   4113a:	5b                   	pop    %rbx
   4113b:	41 5c                	pop    %r12
   4113d:	41 5d                	pop    %r13
   4113f:	41 5e                	pop    %r14
   41141:	41 5f                	pop    %r15
   41143:	5d                   	pop    %rbp
   41144:	c3                   	ret    
   41145:	ba eb 44 04 00       	mov    $0x444eb,%edx
   4114a:	be b1 00 00 00       	mov    $0xb1,%esi
   4114f:	bf f2 44 04 00       	mov    $0x444f2,%edi
   41154:	e8 ef 10 00 00       	call   42248 <assert_fail(char const*, int, char const*)>

0000000000041159 <kfree(void*)>:
void kfree(void* kptr) {
   41159:	f3 0f 1e fa          	endbr64 
   4115d:	55                   	push   %rbp
   4115e:	48 89 e5             	mov    %rsp,%rbp
    assert(false);
   41161:	ba fe 44 04 00       	mov    $0x444fe,%edx
   41166:	be 96 00 00 00       	mov    $0x96,%esi
   4116b:	bf 04 45 04 00       	mov    $0x44504,%edi
   41170:	e8 d3 10 00 00       	call   42248 <assert_fail(char const*, int, char const*)>

0000000000041175 <syscall_page_alloc(unsigned long)>:
//    Helper function that handles the SYSCALL_PAGE_ALLOC system call.
//    This function implement the specification for `sys_page_alloc`
//    in `u-lib.hh` (but in the stencil code, it does not - you will
//    have to change this).

int syscall_page_alloc(uintptr_t addr) {
   41175:	f3 0f 1e fa          	endbr64 
    if (addr % PAGESIZE || addr < PROC_START_ADDR || addr >= MEMSIZE_VIRTUAL){
   41179:	f7 c7 ff 0f 00 00    	test   $0xfff,%edi
   4117f:	0f 85 14 01 00 00    	jne    41299 <syscall_page_alloc(unsigned long)+0x124>
int syscall_page_alloc(uintptr_t addr) {
   41185:	55                   	push   %rbp
   41186:	48 89 e5             	mov    %rsp,%rbp
   41189:	41 54                	push   %r12
   4118b:	53                   	push   %rbx
   4118c:	48 83 ec 40          	sub    $0x40,%rsp
   41190:	48 89 fb             	mov    %rdi,%rbx
    if (addr % PAGESIZE || addr < PROC_START_ADDR || addr >= MEMSIZE_VIRTUAL){
   41193:	48 8d 87 00 00 f0 ff 	lea    -0x100000(%rdi),%rax
   4119a:	48 3d ff ff 1f 00    	cmp    $0x1fffff,%rax
   411a0:	0f 87 f9 00 00 00    	ja     4129f <syscall_page_alloc(unsigned long)+0x12a>
		return -1;
	}
    void* ptr = kalloc(PAGESIZE);
   411a6:	bf 00 10 00 00       	mov    $0x1000,%edi
   411ab:	e8 b4 f9 ff ff       	call   40b64 <kalloc(unsigned long)>
   411b0:	49 89 c4             	mov    %rax,%r12
    if (!ptr) {
   411b3:	48 85 c0             	test   %rax,%rax
   411b6:	0f 84 ea 00 00 00    	je     412a6 <syscall_page_alloc(unsigned long)+0x131>
		return -1;
	}
	else {
		memset(ptr, 0, PAGESIZE);
   411bc:	ba 00 10 00 00       	mov    $0x1000,%edx
   411c1:	be 00 00 00 00       	mov    $0x0,%esi
   411c6:	48 89 c7             	mov    %rax,%rdi
   411c9:	e8 9b 27 00 00       	call   43969 <memset>
		vmiter(current->pagetable, addr).map(ptr, PTE_P | PTE_W | PTE_U);
   411ce:	48 8b 05 2b 70 01 00 	mov    0x1702b(%rip),%rax        # 58200 <current>
   411d5:	48 8b 00             	mov    (%rax),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   411d8:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
   411dc:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
   411e0:	c7 45 c0 03 00 00 00 	movl   $0x3,-0x40(%rbp)
   411e7:	c7 45 c4 ff 0f 00 00 	movl   $0xfff,-0x3c(%rbp)
   411ee:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
   411f5:	00 
    real_find(va);
   411f6:	48 89 de             	mov    %rbx,%rsi
   411f9:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   411fd:	e8 fa 06 00 00       	call   418fc <vmiter::real_find(unsigned long)>
    int r = try_map(pa, perm);
   41202:	ba 07 00 00 00       	mov    $0x7,%edx
   41207:	4c 89 e6             	mov    %r12,%rsi
   4120a:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   4120e:	e8 eb 07 00 00       	call   419fe <vmiter::try_map(unsigned long, int)>
    assert(r == 0);
   41213:	85 c0                	test   %eax,%eax
   41215:	75 66                	jne    4127d <syscall_page_alloc(unsigned long)+0x108>
	}
    // Currently we're simply using the physical page that has the same address
    // as `addr` (which is a virtual address).
    //assert(!pages[addr / PAGESIZE].used());
    //pages[addr / PAGESIZE].refcount = 1;
    vmiter curr_pt_vmiter = vmiter(ptable[current->pid].pagetable, addr);
   41217:	48 8b 05 e2 6f 01 00 	mov    0x16fe2(%rip),%rax        # 58200 <current>
   4121e:	48 63 40 08          	movslq 0x8(%rax),%rax
   41222:	48 8d 14 40          	lea    (%rax,%rax,2),%rdx
   41226:	48 8d 04 90          	lea    (%rax,%rdx,4),%rax
   4122a:	48 c1 e0 04          	shl    $0x4,%rax
   4122e:	48 8b 80 20 82 05 00 	mov    0x58220(%rax),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   41235:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   41239:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
   4123d:	c7 45 e0 03 00 00 00 	movl   $0x3,-0x20(%rbp)
   41244:	c7 45 e4 ff 0f 00 00 	movl   $0xfff,-0x1c(%rbp)
   4124b:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
   41252:	00 
    real_find(va);
   41253:	48 89 de             	mov    %rbx,%rsi
   41256:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   4125a:	e8 9d 06 00 00       	call   418fc <vmiter::real_find(unsigned long)>
    int map_status = curr_pt_vmiter.try_map((uintptr_t) ptr, PTE_P | PTE_W | PTE_U); //?? hwhy try map?
   4125f:	ba 07 00 00 00       	mov    $0x7,%edx
   41264:	4c 89 e6             	mov    %r12,%rsi
   41267:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   4126b:	e8 8e 07 00 00       	call   419fe <vmiter::try_map(unsigned long, int)>
    if (map_status != 0) {
   41270:	85 c0                	test   %eax,%eax
   41272:	75 1d                	jne    41291 <syscall_page_alloc(unsigned long)+0x11c>
        return -1;
    }
    return 0;
    memset((void*) addr, 0, PAGESIZE);
    return 0;
}
   41274:	48 83 c4 40          	add    $0x40,%rsp
   41278:	5b                   	pop    %rbx
   41279:	41 5c                	pop    %r12
   4127b:	5d                   	pop    %rbp
   4127c:	c3                   	ret    
    assert(r == 0);
   4127d:	ba eb 44 04 00       	mov    $0x444eb,%edx
   41282:	be b1 00 00 00       	mov    $0xb1,%esi
   41287:	bf f2 44 04 00       	mov    $0x444f2,%edi
   4128c:	e8 b7 0f 00 00       	call   42248 <assert_fail(char const*, int, char const*)>
        kfree(ptr);
   41291:	4c 89 e7             	mov    %r12,%rdi
   41294:	e8 c0 fe ff ff       	call   41159 <kfree(void*)>
		return -1;
   41299:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
   4129e:	c3                   	ret    
		return -1;
   4129f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   412a4:	eb ce                	jmp    41274 <syscall_page_alloc(unsigned long)+0xff>
		return -1;
   412a6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   412ab:	eb c7                	jmp    41274 <syscall_page_alloc(unsigned long)+0xff>

00000000000412ad <syscall_fork()>:
// syscall_fork()
//    Handles the SYSCALL_FORK system call. This function
//    implements the specification for `sys_fork` in `u-lib.hh`.
// *YOU DO NOT NEED TO IMPLEMENT THIS* - though if you want an extra challenge feel free

pid_t syscall_fork() {
   412ad:	f3 0f 1e fa          	endbr64 
   412b1:	55                   	push   %rbp
   412b2:	48 89 e5             	mov    %rsp,%rbp
    panic("Unexpected system call %ld!\n", SYSCALL_FORK);
   412b5:	be 05 00 00 00       	mov    $0x5,%esi
   412ba:	bf 0e 45 04 00       	mov    $0x4450e,%edi
   412bf:	b0 00                	mov    $0x0,%al
   412c1:	e8 49 19 00 00       	call   42c0f <panic(char const*, ...)>

00000000000412c6 <syscall_exit()>:
// syscall_exit()
//    Handles the SYSCALL_EXIT system call. This function
//    implements the specification for `sys_exit` in `u-lib.hh`.
// *YOU DO NOT NEED TO IMPLEMENT THIS* - though if you want an extra challenge feel free

void syscall_exit() {
   412c6:	f3 0f 1e fa          	endbr64 
   412ca:	55                   	push   %rbp
   412cb:	48 89 e5             	mov    %rsp,%rbp
    panic("Unexpected system call %ld!\n", SYSCALL_EXIT);
   412ce:	be 06 00 00 00       	mov    $0x6,%esi
   412d3:	bf 0e 45 04 00       	mov    $0x4450e,%edi
   412d8:	b0 00                	mov    $0x0,%al
   412da:	e8 30 19 00 00       	call   42c0f <panic(char const*, ...)>

00000000000412df <run(proc*)>:
//    Runs process `p`. This involves setting `current = p` and calling
//    `exception_return` to restore its page table and registers.
//    You should *not* have to edit this function.
// *DO NOT EDIT THIS*

void run(proc* p) {
   412df:	f3 0f 1e fa          	endbr64 
   412e3:	55                   	push   %rbp
   412e4:	48 89 e5             	mov    %rsp,%rbp
   412e7:	53                   	push   %rbx
   412e8:	48 83 ec 08          	sub    $0x8,%rsp
    assert(p->state == P_RUNNABLE);
   412ec:	83 7f 0c 01          	cmpl   $0x1,0xc(%rdi)
   412f0:	75 1a                	jne    4130c <run(proc*)+0x2d>
   412f2:	48 89 fb             	mov    %rdi,%rbx
    current = p;
   412f5:	48 89 3d 04 6f 01 00 	mov    %rdi,0x16f04(%rip)        # 58200 <current>

    // Check the process's current pagetable.
    check_pagetable(p->pagetable);
   412fc:	48 8b 3f             	mov    (%rdi),%rdi
   412ff:	e8 2a 14 00 00       	call   4272e <check_pagetable(x86_64_pagetable*)>

    // This function is defined in k-exception.S. It restores the process's
    // registers then jumps back to user mode.
    exception_return(p);
   41304:	48 89 df             	mov    %rbx,%rdi
   41307:	e8 93 f7 ff ff       	call   40a9f <exception_return(proc*)>
    assert(p->state == P_RUNNABLE);
   4130c:	ba 2b 45 04 00       	mov    $0x4452b,%edx
   41311:	be 08 02 00 00       	mov    $0x208,%esi
   41316:	bf 04 45 04 00       	mov    $0x44504,%edi
   4131b:	e8 28 0f 00 00       	call   42248 <assert_fail(char const*, int, char const*)>

0000000000041320 <kernel(char const*)>:
void kernel(const char* command) {
   41320:	f3 0f 1e fa          	endbr64 
   41324:	55                   	push   %rbp
   41325:	48 89 e5             	mov    %rsp,%rbp
   41328:	53                   	push   %rbx
   41329:	48 83 ec 48          	sub    $0x48,%rsp
   4132d:	48 89 fb             	mov    %rdi,%rbx
    init_hardware();
   41330:	e8 d2 0f 00 00       	call   42307 <init_hardware()>
    log_printf("Starting WeensyOS\n");
   41335:	bf 42 45 04 00       	mov    $0x44542,%edi
   4133a:	b8 00 00 00 00       	mov    $0x0,%eax
   4133f:	e8 d9 0d 00 00       	call   4211d <log_printf(char const*, ...)>
	  = __m & __memory_order_mask;
	__glibcxx_assert(__b != memory_order_acquire);
	__glibcxx_assert(__b != memory_order_acq_rel);
	__glibcxx_assert(__b != memory_order_consume);

	__atomic_store_n(&_M_i, __i, int(__m));
   41344:	b8 01 00 00 00       	mov    $0x1,%eax
   41349:	48 87 05 e0 7b 01 00 	xchg   %rax,0x17be0(%rip)        # 58f30 <ticks>
    init_timer(HZ);
   41350:	bf 64 00 00 00       	mov    $0x64,%edi
   41355:	e8 2f 0a 00 00       	call   41d89 <init_timer(int)>
    console_clear();
   4135a:	e8 e6 2e 00 00       	call   44245 <console_clear()>
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   4135f:	48 c7 45 b8 00 a0 05 	movq   $0x5a000,-0x48(%rbp)
   41366:	00 
   41367:	48 c7 45 c0 00 a0 05 	movq   $0x5a000,-0x40(%rbp)
   4136e:	00 
   4136f:	c7 45 c8 03 00 00 00 	movl   $0x3,-0x38(%rbp)
   41376:	c7 45 cc ff 0f 00 00 	movl   $0xfff,-0x34(%rbp)
   4137d:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
   41384:	00 
    real_find(va);
   41385:	be 00 00 00 00       	mov    $0x0,%esi
   4138a:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   4138e:	e8 69 05 00 00       	call   418fc <vmiter::real_find(unsigned long)>
    return va_;
   41393:	48 8b 75 d0          	mov    -0x30(%rbp),%rsi
    for (vmiter it(kernel_pagetable); it.va() < MEMSIZE_PHYSICAL; it += PAGESIZE) {
   41397:	48 81 fe ff ff 1f 00 	cmp    $0x1fffff,%rsi
   4139e:	0f 86 c1 00 00 00    	jbe    41465 <kernel(char const*)+0x145>
    for (pid_t i = 0; i < NPROC; i++) {
   413a4:	ba 28 82 05 00       	mov    $0x58228,%edx
   413a9:	b8 00 00 00 00       	mov    $0x0,%eax
        ptable[i].pid = i;
   413ae:	89 02                	mov    %eax,(%rdx)
        ptable[i].state = P_FREE;
   413b0:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%rdx)
    for (pid_t i = 0; i < NPROC; i++) {
   413b7:	83 c0 01             	add    $0x1,%eax
   413ba:	48 81 c2 d0 00 00 00 	add    $0xd0,%rdx
   413c1:	83 f8 10             	cmp    $0x10,%eax
   413c4:	75 e8                	jne    413ae <kernel(char const*)+0x8e>
    if (command && program_loader(command).present()) {
   413c6:	48 85 db             	test   %rbx,%rbx
   413c9:	74 1d                	je     413e8 <kernel(char const*)+0xc8>
   413cb:	48 89 de             	mov    %rbx,%rsi
   413ce:	48 8d 7d d8          	lea    -0x28(%rbp),%rdi
   413d2:	e8 d1 1a 00 00       	call   42ea8 <program_loader::program_loader(char const*)>
   413d7:	48 8d 7d d8          	lea    -0x28(%rbp),%rdi
   413db:	e8 d0 19 00 00       	call   42db0 <program_loader::present() const>
   413e0:	84 c0                	test   %al,%al
   413e2:	0f 85 fd 00 00 00    	jne    414e5 <kernel(char const*)+0x1c5>
        process_setup(1, "allocator");
   413e8:	be 55 45 04 00       	mov    $0x44555,%esi
   413ed:	bf 01 00 00 00       	mov    $0x1,%edi
   413f2:	e8 26 f8 ff ff       	call   40c1d <process_setup(int, char const*)>
        process_setup(2, "allocator2");
   413f7:	be 5f 45 04 00       	mov    $0x4455f,%esi
   413fc:	bf 02 00 00 00       	mov    $0x2,%edi
   41401:	e8 17 f8 ff ff       	call   40c1d <process_setup(int, char const*)>
        process_setup(3, "allocator3");
   41406:	be 6a 45 04 00       	mov    $0x4456a,%esi
   4140b:	bf 03 00 00 00       	mov    $0x3,%edi
   41410:	e8 08 f8 ff ff       	call   40c1d <process_setup(int, char const*)>
        process_setup(4, "allocator4");
   41415:	be 75 45 04 00       	mov    $0x44575,%esi
   4141a:	bf 04 00 00 00       	mov    $0x4,%edi
   4141f:	e8 f9 f7 ff ff       	call   40c1d <process_setup(int, char const*)>
    run(&ptable[1]);
   41424:	bf f0 82 05 00       	mov    $0x582f0,%edi
   41429:	e8 b1 fe ff ff       	call   412df <run(proc*)>
    int r = try_map(pa, perm);
   4142e:	ba 03 00 00 00       	mov    $0x3,%edx
   41433:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   41437:	e8 c2 05 00 00       	call   419fe <vmiter::try_map(unsigned long, int)>
    assert(r == 0);
   4143c:	85 c0                	test   %eax,%eax
   4143e:	75 62                	jne    414a2 <kernel(char const*)+0x182>
    return find(va_ + delta);
   41440:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   41444:	48 8d b0 00 10 00 00 	lea    0x1000(%rax),%rsi
    real_find(va);
   4144b:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   4144f:	e8 a8 04 00 00       	call   418fc <vmiter::real_find(unsigned long)>
    return va_;
   41454:	48 8b 75 d0          	mov    -0x30(%rbp),%rsi
    for (vmiter it(kernel_pagetable); it.va() < MEMSIZE_PHYSICAL; it += PAGESIZE) {
   41458:	48 81 fe ff ff 1f 00 	cmp    $0x1fffff,%rsi
   4145f:	0f 87 3f ff ff ff    	ja     413a4 <kernel(char const*)+0x84>
        if (it.va() != 0 && (it.va() >= PROC_START_ADDR || it.va() == CONSOLE_ADDR)) {
   41465:	48 85 f6             	test   %rsi,%rsi
   41468:	74 4c                	je     414b6 <kernel(char const*)+0x196>
   4146a:	48 81 fe 00 80 0b 00 	cmp    $0xb8000,%rsi
   41471:	74 09                	je     4147c <kernel(char const*)+0x15c>
   41473:	48 81 fe ff ff 0f 00 	cmp    $0xfffff,%rsi
   4147a:	76 b2                	jbe    4142e <kernel(char const*)+0x10e>
    int r = try_map(pa, perm);
   4147c:	ba 07 00 00 00       	mov    $0x7,%edx
   41481:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   41485:	e8 74 05 00 00       	call   419fe <vmiter::try_map(unsigned long, int)>
    assert(r == 0);
   4148a:	85 c0                	test   %eax,%eax
   4148c:	74 b2                	je     41440 <kernel(char const*)+0x120>
   4148e:	ba eb 44 04 00       	mov    $0x444eb,%edx
   41493:	be b1 00 00 00       	mov    $0xb1,%esi
   41498:	bf f2 44 04 00       	mov    $0x444f2,%edi
   4149d:	e8 a6 0d 00 00       	call   42248 <assert_fail(char const*, int, char const*)>
   414a2:	ba eb 44 04 00       	mov    $0x444eb,%edx
   414a7:	be b1 00 00 00       	mov    $0xb1,%esi
   414ac:	bf f2 44 04 00       	mov    $0x444f2,%edi
   414b1:	e8 92 0d 00 00       	call   42248 <assert_fail(char const*, int, char const*)>
    int r = try_map(pa, perm);
   414b6:	ba 00 00 00 00       	mov    $0x0,%edx
   414bb:	be 00 00 00 00       	mov    $0x0,%esi
   414c0:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   414c4:	e8 35 05 00 00       	call   419fe <vmiter::try_map(unsigned long, int)>
    assert(r == 0);
   414c9:	85 c0                	test   %eax,%eax
   414cb:	0f 84 6f ff ff ff    	je     41440 <kernel(char const*)+0x120>
   414d1:	ba eb 44 04 00       	mov    $0x444eb,%edx
   414d6:	be b1 00 00 00       	mov    $0xb1,%esi
   414db:	bf f2 44 04 00       	mov    $0x444f2,%edi
   414e0:	e8 63 0d 00 00       	call   42248 <assert_fail(char const*, int, char const*)>
        process_setup(1, command);
   414e5:	48 89 de             	mov    %rbx,%rsi
   414e8:	bf 01 00 00 00       	mov    $0x1,%edi
   414ed:	e8 2b f7 ff ff       	call   40c1d <process_setup(int, char const*)>
   414f2:	e9 2d ff ff ff       	jmp    41424 <kernel(char const*)+0x104>

00000000000414f7 <memshow()>:
//    Switches to a new process's virtual memory map every 0.25 sec.
//    Uses `console_memviewer()`, a function defined in `k-memviewer.cc`.
//    You should *not* have to edit this function.
// *DO NOT EDIT THIS*

void memshow() {
   414f7:	f3 0f 1e fa          	endbr64 
   414fb:	55                   	push   %rbp
   414fc:	48 89 e5             	mov    %rsp,%rbp
    static unsigned last_ticks = 0;
    static int showing = 0;
    bool switched_process = false;

    // switch to a new process every 0.25 sec
    if (last_ticks == 0 || ticks - last_ticks >= HZ / 2) {
   414ff:	83 3d 1e 7a 01 00 00 	cmpl   $0x0,0x17a1e(%rip)        # 58f24 <memshow()::last_ticks>
   41506:	74 1b                	je     41523 <memshow()+0x2c>
	memory_order __b __attribute__ ((__unused__))
	  = __m & __memory_order_mask;
	__glibcxx_assert(__b != memory_order_release);
	__glibcxx_assert(__b != memory_order_acq_rel);

	return __atomic_load_n(&_M_i, int(__m));
   41508:	48 8b 05 21 7a 01 00 	mov    0x17a21(%rip),%rax        # 58f30 <ticks>
   4150f:	8b 15 0f 7a 01 00    	mov    0x17a0f(%rip),%edx        # 58f24 <memshow()::last_ticks>
   41515:	48 29 d0             	sub    %rdx,%rax
    bool switched_process = false;
   41518:	be 00 00 00 00       	mov    $0x0,%esi
    if (last_ticks == 0 || ticks - last_ticks >= HZ / 2) {
   4151d:	48 83 f8 31          	cmp    $0x31,%rax
   41521:	76 2c                	jbe    4154f <memshow()+0x58>
   41523:	48 8b 05 06 7a 01 00 	mov    0x17a06(%rip),%rax        # 58f30 <ticks>
        last_ticks = ticks;
   4152a:	89 05 f4 79 01 00    	mov    %eax,0x179f4(%rip)        # 58f24 <memshow()::last_ticks>
        showing = (showing + 1) % NPROC;
   41530:	8b 05 ea 79 01 00    	mov    0x179ea(%rip),%eax        # 58f20 <memshow()::showing>
   41536:	83 c0 01             	add    $0x1,%eax
   41539:	99                   	cltd   
   4153a:	c1 ea 1c             	shr    $0x1c,%edx
   4153d:	01 d0                	add    %edx,%eax
   4153f:	83 e0 0f             	and    $0xf,%eax
   41542:	29 d0                	sub    %edx,%eax
   41544:	89 05 d6 79 01 00    	mov    %eax,0x179d6(%rip)        # 58f20 <memshow()::showing>
        switched_process = true;
   4154a:	be 01 00 00 00       	mov    $0x1,%esi
    }

    proc* p = nullptr;
    for (int search = 0; !p && search < NPROC; ++search) {
   4154f:	8b 05 cb 79 01 00    	mov    0x179cb(%rip),%eax        # 58f20 <memshow()::showing>
        switched_process = true;
   41555:	b9 10 00 00 00       	mov    $0x10,%ecx
   4155a:	41 b9 00 00 00 00    	mov    $0x0,%r9d
   41560:	bf 01 00 00 00       	mov    $0x1,%edi
   41565:	eb 16                	jmp    4157d <memshow()+0x86>
        if (ptable[showing].state != P_FREE
            && ptable[showing].pagetable) {
            p = &ptable[showing];
        } else {
            showing = (showing + 1) % NPROC;
   41567:	83 c0 01             	add    $0x1,%eax
   4156a:	99                   	cltd   
   4156b:	c1 ea 1c             	shr    $0x1c,%edx
   4156e:	01 d0                	add    %edx,%eax
   41570:	83 e0 0f             	and    $0xf,%eax
   41573:	29 d0                	sub    %edx,%eax
    for (int search = 0; !p && search < NPROC; ++search) {
   41575:	41 89 f9             	mov    %edi,%r9d
   41578:	83 e9 01             	sub    $0x1,%ecx
   4157b:	74 58                	je     415d5 <memshow()+0xde>
        if (ptable[showing].state != P_FREE
   4157d:	48 63 d0             	movslq %eax,%rdx
   41580:	4c 8d 04 52          	lea    (%rdx,%rdx,2),%r8
   41584:	4a 8d 14 82          	lea    (%rdx,%r8,4),%rdx
   41588:	48 c1 e2 04          	shl    $0x4,%rdx
   4158c:	83 ba 2c 82 05 00 00 	cmpl   $0x0,0x5822c(%rdx)
   41593:	74 d2                	je     41567 <memshow()+0x70>
            && ptable[showing].pagetable) {
   41595:	48 63 d0             	movslq %eax,%rdx
   41598:	4a 8d 14 82          	lea    (%rdx,%r8,4),%rdx
   4159c:	48 c1 e2 04          	shl    $0x4,%rdx
   415a0:	48 83 ba 20 82 05 00 	cmpq   $0x0,0x58220(%rdx)
   415a7:	00 
   415a8:	74 bd                	je     41567 <memshow()+0x70>
   415aa:	45 84 c9             	test   %r9b,%r9b
   415ad:	74 06                	je     415b5 <memshow()+0xbe>
   415af:	89 05 6b 79 01 00    	mov    %eax,0x1796b(%rip)        # 58f20 <memshow()::showing>
            p = &ptable[showing];
   415b5:	48 98                	cltq   
   415b7:	48 8d 14 40          	lea    (%rax,%rax,2),%rdx
   415bb:	48 8d 3c 90          	lea    (%rax,%rdx,4),%rdi
   415bf:	48 c1 e7 04          	shl    $0x4,%rdi
   415c3:	48 81 c7 20 82 05 00 	add    $0x58220,%rdi
        }
    }

    extern void console_memviewer(proc* vmp, bool switched_process);
    console_memviewer(p, switched_process);
   415ca:	40 0f b6 f6          	movzbl %sil,%esi
   415ce:	e8 54 20 00 00       	call   43627 <console_memviewer(proc*, bool)>
   415d3:	5d                   	pop    %rbp
   415d4:	c3                   	ret    
   415d5:	89 05 45 79 01 00    	mov    %eax,0x17945(%rip)        # 58f20 <memshow()::showing>
    for (int search = 0; !p && search < NPROC; ++search) {
   415db:	bf 00 00 00 00       	mov    $0x0,%edi
   415e0:	eb e8                	jmp    415ca <memshow()+0xd3>

00000000000415e2 <schedule()>:
void schedule() {
   415e2:	f3 0f 1e fa          	endbr64 
   415e6:	55                   	push   %rbp
   415e7:	48 89 e5             	mov    %rsp,%rbp
   415ea:	41 54                	push   %r12
   415ec:	53                   	push   %rbx
    pid_t pid = current->pid;
   415ed:	48 8b 05 0c 6c 01 00 	mov    0x16c0c(%rip),%rax        # 58200 <current>
        pid = (pid + 1) % NPROC; 
   415f4:	8b 40 08             	mov    0x8(%rax),%eax
   415f7:	83 c0 01             	add    $0x1,%eax
   415fa:	99                   	cltd   
   415fb:	c1 ea 1c             	shr    $0x1c,%edx
   415fe:	01 d0                	add    %edx,%eax
   41600:	83 e0 0f             	and    $0xf,%eax
   41603:	29 d0                	sub    %edx,%eax
   41605:	41 89 c4             	mov    %eax,%r12d
        if (ptable[pid].state == P_RUNNABLE) {
   41608:	48 98                	cltq   
   4160a:	48 8d 14 40          	lea    (%rax,%rax,2),%rdx
   4160e:	48 8d 04 90          	lea    (%rax,%rdx,4),%rax
   41612:	48 c1 e0 04          	shl    $0x4,%rax
   41616:	83 b8 2c 82 05 00 01 	cmpl   $0x1,0x5822c(%rax)
   4161d:	74 5c                	je     4167b <schedule()+0x99>
        check_keyboard();
   4161f:	e8 ca 14 00 00       	call   42aee <check_keyboard()>
    for (unsigned spins = 1; true; ++spins) {
   41624:	bb 01 00 00 00       	mov    $0x1,%ebx
   41629:	83 c3 01             	add    $0x1,%ebx
        pid = (pid + 1) % NPROC; 
   4162c:	41 8d 44 24 01       	lea    0x1(%r12),%eax
   41631:	99                   	cltd   
   41632:	c1 ea 1c             	shr    $0x1c,%edx
   41635:	01 d0                	add    %edx,%eax
   41637:	83 e0 0f             	and    $0xf,%eax
   4163a:	29 d0                	sub    %edx,%eax
   4163c:	41 89 c4             	mov    %eax,%r12d
        if (ptable[pid].state == P_RUNNABLE) {
   4163f:	48 98                	cltq   
   41641:	48 8d 14 40          	lea    (%rax,%rax,2),%rdx
   41645:	48 8d 04 90          	lea    (%rax,%rdx,4),%rax
   41649:	48 c1 e0 04          	shl    $0x4,%rax
   4164d:	83 b8 2c 82 05 00 01 	cmpl   $0x1,0x5822c(%rax)
   41654:	74 25                	je     4167b <schedule()+0x99>
        check_keyboard();
   41656:	e8 93 14 00 00       	call   42aee <check_keyboard()>
        if (spins % (1 << 12) == 0) {
   4165b:	f7 c3 ff 0f 00 00    	test   $0xfff,%ebx
   41661:	75 c6                	jne    41629 <schedule()+0x47>
            memshow();
   41663:	e8 8f fe ff ff       	call   414f7 <memshow()>
            log_printf("%u\n", spins);
   41668:	89 de                	mov    %ebx,%esi
   4166a:	bf 80 45 04 00       	mov    $0x44580,%edi
   4166f:	b8 00 00 00 00       	mov    $0x0,%eax
   41674:	e8 a4 0a 00 00       	call   4211d <log_printf(char const*, ...)>
   41679:	eb ae                	jmp    41629 <schedule()+0x47>
            run(&ptable[pid]);
   4167b:	4d 63 e4             	movslq %r12d,%r12
   4167e:	4b 8d 04 64          	lea    (%r12,%r12,2),%rax
   41682:	49 8d 3c 84          	lea    (%r12,%rax,4),%rdi
   41686:	48 c1 e7 04          	shl    $0x4,%rdi
   4168a:	48 81 c7 20 82 05 00 	add    $0x58220,%rdi
   41691:	e8 49 fc ff ff       	call   412df <run(proc*)>

0000000000041696 <exception(regstate*)>:
void exception(regstate* regs) {
   41696:	f3 0f 1e fa          	endbr64 
   4169a:	55                   	push   %rbp
   4169b:	48 89 e5             	mov    %rsp,%rbp
   4169e:	41 56                	push   %r14
   416a0:	41 55                	push   %r13
   416a2:	41 54                	push   %r12
   416a4:	53                   	push   %rbx
   416a5:	48 89 fe             	mov    %rdi,%rsi
    current->regs = *regs;
   416a8:	48 8b 1d 51 6b 01 00 	mov    0x16b51(%rip),%rbx        # 58200 <current>
   416af:	48 8d 7b 10          	lea    0x10(%rbx),%rdi
   416b3:	b9 18 00 00 00       	mov    $0x18,%ecx
   416b8:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
    console_show_cursor(cursorpos);
   416bb:	8b 3d 3b 79 07 00    	mov    0x7793b(%rip),%edi        # b8ffc <cursorpos>
   416c1:	e8 d2 07 00 00       	call   41e98 <console_show_cursor(int)>
    if (regs->reg_intno != INT_PF || (regs->reg_errcode & PFERR_USER)) {
   416c6:	83 bb 98 00 00 00 0e 	cmpl   $0xe,0x98(%rbx)
   416cd:	75 09                	jne    416d8 <exception(regstate*)+0x42>
   416cf:	f6 83 a0 00 00 00 04 	testb  $0x4,0xa0(%rbx)
   416d6:	74 05                	je     416dd <exception(regstate*)+0x47>
        memshow();
   416d8:	e8 1a fe ff ff       	call   414f7 <memshow()>
    check_keyboard();
   416dd:	e8 0c 14 00 00       	call   42aee <check_keyboard()>
    switch (regs->reg_intno) {
   416e2:	8b b3 98 00 00 00    	mov    0x98(%rbx),%esi
   416e8:	83 fe 0e             	cmp    $0xe,%esi
   416eb:	74 22                	je     4170f <exception(regstate*)+0x79>
   416ed:	83 fe 20             	cmp    $0x20,%esi
   416f0:	0f 85 b6 00 00 00    	jne    417ac <exception(regstate*)+0x116>
      { return __atomic_add_fetch(&_M_i, 1, int(memory_order_seq_cst)); }
   416f6:	f0 48 83 05 31 78 01 	lock addq $0x1,0x17831(%rip)        # 58f30 <ticks>
   416fd:	00 01 
}
inline uint32_t lapicstate::read(int reg) const {
    return reg_[reg].v;
}
inline void lapicstate::write(int reg, uint32_t v) {
    reg_[reg].v = v;
   416ff:	b8 b0 00 e0 fe       	mov    $0xfee000b0,%eax
   41704:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
        schedule();
   4170a:	e8 d3 fe ff ff       	call   415e2 <schedule()>
    asm volatile("movq %0, %%cr0" : : "r" (x));
}

__always_inline uintptr_t rdcr2() {
    uintptr_t x;
    asm volatile("movq %%cr2, %0" : "=r" (x));
   4170f:	41 0f 20 d6          	mov    %cr2,%r14
        const char* operation = regs->reg_errcode & PFERR_WRITE
   41713:	48 8b 83 a0 00 00 00 	mov    0xa0(%rbx),%rax
                ? "write" : "read";
   4171a:	a8 02                	test   $0x2,%al
   4171c:	41 bc 84 45 04 00    	mov    $0x44584,%r12d
   41722:	ba 8a 45 04 00       	mov    $0x4458a,%edx
   41727:	4c 0f 44 e2          	cmove  %rdx,%r12
                ? "protection problem" : "missing page";
   4172b:	a8 01                	test   $0x1,%al
   4172d:	41 bd 8f 45 04 00    	mov    $0x4458f,%r13d
   41733:	b8 a2 45 04 00       	mov    $0x445a2,%eax
   41738:	4c 0f 44 e8          	cmove  %rax,%r13
        console_printf(CPOS(24, 0), 0x0C00,
   4173c:	48 8b 05 bd 6a 01 00 	mov    0x16abd(%rip),%rax        # 58200 <current>
   41743:	8b 48 08             	mov    0x8(%rax),%ecx
   41746:	ff b3 a8 00 00 00    	push   0xa8(%rbx)
   4174c:	41 55                	push   %r13
   4174e:	4d 89 e1             	mov    %r12,%r9
   41751:	4d 89 f0             	mov    %r14,%r8
   41754:	ba d0 45 04 00       	mov    $0x445d0,%edx
   41759:	be 00 0c 00 00       	mov    $0xc00,%esi
   4175e:	bf 80 07 00 00       	mov    $0x780,%edi
   41763:	b8 00 00 00 00       	mov    $0x0,%eax
   41768:	e8 04 2d 00 00       	call   44471 <console_printf(int, int, char const*, ...)>
        if (!(regs->reg_errcode & PFERR_USER)) {
   4176d:	48 83 c4 10          	add    $0x10,%rsp
   41771:	f6 83 a0 00 00 00 04 	testb  $0x4,0xa0(%rbx)
   41778:	74 13                	je     4178d <exception(regstate*)+0xf7>
        current->state = P_BROKEN;
   4177a:	48 8b 05 7f 6a 01 00 	mov    0x16a7f(%rip),%rax        # 58200 <current>
   41781:	c7 40 0c 03 00 00 00 	movl   $0x3,0xc(%rax)
        schedule();
   41788:	e8 55 fe ff ff       	call   415e2 <schedule()>
            panic("Kernel page fault for %p (%s %s, rip=%p)!\n",
   4178d:	4c 8b 83 a8 00 00 00 	mov    0xa8(%rbx),%r8
   41794:	4c 89 e9             	mov    %r13,%rcx
   41797:	4c 89 e2             	mov    %r12,%rdx
   4179a:	4c 89 f6             	mov    %r14,%rsi
   4179d:	bf 00 46 04 00       	mov    $0x44600,%edi
   417a2:	b8 00 00 00 00       	mov    $0x0,%eax
   417a7:	e8 63 14 00 00       	call   42c0f <panic(char const*, ...)>
        panic("Unexpected exception %d!\n", regs->reg_intno);
   417ac:	bf af 45 04 00       	mov    $0x445af,%edi
   417b1:	b8 00 00 00 00       	mov    $0x0,%eax
   417b6:	e8 54 14 00 00       	call   42c0f <panic(char const*, ...)>

00000000000417bb <syscall(regstate*)>:
uintptr_t syscall(regstate* regs) {
   417bb:	f3 0f 1e fa          	endbr64 
   417bf:	55                   	push   %rbp
   417c0:	48 89 e5             	mov    %rsp,%rbp
   417c3:	53                   	push   %rbx
   417c4:	48 83 ec 08          	sub    $0x8,%rsp
   417c8:	48 89 fe             	mov    %rdi,%rsi
    current->regs = *regs;
   417cb:	48 8b 1d 2e 6a 01 00 	mov    0x16a2e(%rip),%rbx        # 58200 <current>
   417d2:	48 8d 7b 10          	lea    0x10(%rbx),%rdi
   417d6:	b9 18 00 00 00       	mov    $0x18,%ecx
   417db:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
    console_show_cursor(cursorpos);
   417de:	8b 3d 18 78 07 00    	mov    0x77818(%rip),%edi        # b8ffc <cursorpos>
   417e4:	e8 af 06 00 00       	call   41e98 <console_show_cursor(int)>
    memshow();
   417e9:	e8 09 fd ff ff       	call   414f7 <memshow()>
    check_keyboard();
   417ee:	e8 fb 12 00 00       	call   42aee <check_keyboard()>
    switch (regs->reg_rax) {
   417f3:	48 8b 73 10          	mov    0x10(%rbx),%rsi
   417f7:	48 83 fe 06          	cmp    $0x6,%rsi
   417fb:	77 5a                	ja     41857 <syscall(regstate*)+0x9c>
   417fd:	3e ff 24 f5 30 46 04 	notrack jmp *0x44630(,%rsi,8)
   41804:	00 
        panic(nullptr); // does not return
   41805:	bf 00 00 00 00       	mov    $0x0,%edi
   4180a:	b8 00 00 00 00       	mov    $0x0,%eax
   4180f:	e8 fb 13 00 00       	call   42c0f <panic(char const*, ...)>
        return current->pid;
   41814:	48 8b 05 e5 69 01 00 	mov    0x169e5(%rip),%rax        # 58200 <current>
   4181b:	48 63 40 08          	movslq 0x8(%rax),%rax
}
   4181f:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
   41823:	c9                   	leave  
   41824:	c3                   	ret    
        current->regs.reg_rax = 0;
   41825:	48 8b 05 d4 69 01 00 	mov    0x169d4(%rip),%rax        # 58200 <current>
   4182c:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
   41833:	00 
        schedule(); // does not return
   41834:	e8 a9 fd ff ff       	call   415e2 <schedule()>
        return syscall_page_alloc(current->regs.reg_rdi);
   41839:	48 8b 05 c0 69 01 00 	mov    0x169c0(%rip),%rax        # 58200 <current>
   41840:	48 8b 78 40          	mov    0x40(%rax),%rdi
   41844:	e8 2c f9 ff ff       	call   41175 <syscall_page_alloc(unsigned long)>
   41849:	48 98                	cltq   
   4184b:	eb d2                	jmp    4181f <syscall(regstate*)+0x64>
        return syscall_fork();
   4184d:	e8 5b fa ff ff       	call   412ad <syscall_fork()>
        syscall_exit();
   41852:	e8 6f fa ff ff       	call   412c6 <syscall_exit()>
        panic("Unexpected system call %ld!\n", regs->reg_rax);
   41857:	bf 0e 45 04 00       	mov    $0x4450e,%edi
   4185c:	b8 00 00 00 00       	mov    $0x0,%eax
   41861:	e8 a9 13 00 00       	call   42c0f <panic(char const*, ...)>

0000000000041866 <vmiter::down()>:
#include "k-vmiter.hh"

const x86_64_pageentry_t vmiter::zero_pe = 0;

void vmiter::down() {
   41866:	f3 0f 1e fa          	endbr64 
   4186a:	48 89 f8             	mov    %rdi,%rax
    while (level_ > 0 && (*pep_ & (PTE_P | PTE_PS)) == PTE_P) {
   4186d:	8b 77 10             	mov    0x10(%rdi),%esi
   41870:	85 f6                	test   %esi,%esi
   41872:	7e 53                	jle    418c7 <vmiter::down()+0x61>
   41874:	8d 4c f6 03          	lea    0x3(%rsi,%rsi,8),%ecx
        perm_ &= *pep_;
        --level_;
        uintptr_t pa = *pep_ & PTE_PAMASK;
   41878:	49 b9 00 f0 ff ff ff 	movabs $0xffffffffff000,%r9
   4187f:	ff 0f 00 
    while (level_ > 0 && (*pep_ & (PTE_P | PTE_PS)) == PTE_P) {
   41882:	48 8b 78 08          	mov    0x8(%rax),%rdi
   41886:	48 8b 17             	mov    (%rdi),%rdx
   41889:	49 89 d0             	mov    %rdx,%r8
   4188c:	41 81 e0 81 00 00 00 	and    $0x81,%r8d
   41893:	49 83 f8 01          	cmp    $0x1,%r8
   41897:	75 2e                	jne    418c7 <vmiter::down()+0x61>
        perm_ &= *pep_;
   41899:	21 50 14             	and    %edx,0x14(%rax)
        --level_;
   4189c:	83 ee 01             	sub    $0x1,%esi
   4189f:	89 70 10             	mov    %esi,0x10(%rax)
        uintptr_t pa = *pep_ & PTE_PAMASK;
   418a2:	4c 89 ca             	mov    %r9,%rdx
   418a5:	48 23 17             	and    (%rdi),%rdx
   418a8:	48 89 d7             	mov    %rdx,%rdi
    return (int) (addr >> (PAGEOFFBITS + level * PAGEINDEXBITS)) & 0x1FF;
   418ab:	48 8b 50 18          	mov    0x18(%rax),%rdx
   418af:	48 d3 ea             	shr    %cl,%rdx
        x86_64_pagetable* pt = reinterpret_cast<x86_64_pagetable*>(pa);
        pep_ = &pt->entry[pageindex(va_, level_)];
   418b2:	81 e2 ff 01 00 00    	and    $0x1ff,%edx
   418b8:	48 8d 14 d7          	lea    (%rdi,%rdx,8),%rdx
   418bc:	48 89 50 08          	mov    %rdx,0x8(%rax)
    while (level_ > 0 && (*pep_ & (PTE_P | PTE_PS)) == PTE_P) {
   418c0:	83 e9 09             	sub    $0x9,%ecx
   418c3:	85 f6                	test   %esi,%esi
   418c5:	75 bb                	jne    41882 <vmiter::down()+0x1c>
    }
    if ((*pep_ & PTE_PAMASK) >= 0x100000000UL) {
   418c7:	48 8b 50 08          	mov    0x8(%rax),%rdx
   418cb:	48 8b 0a             	mov    (%rdx),%rcx
   418ce:	48 ba 00 f0 ff ff ff 	movabs $0xffffffffff000,%rdx
   418d5:	ff 0f 00 
   418d8:	48 21 ca             	and    %rcx,%rdx
   418db:	48 c1 ea 20          	shr    $0x20,%rdx
   418df:	75 01                	jne    418e2 <vmiter::down()+0x7c>
   418e1:	c3                   	ret    
void vmiter::down() {
   418e2:	55                   	push   %rbp
   418e3:	48 89 e5             	mov    %rsp,%rbp
        panic("Page table %p may contain uninitialized memory!\n"
   418e6:	48 89 ca             	mov    %rcx,%rdx
   418e9:	48 8b 30             	mov    (%rax),%rsi
   418ec:	bf 68 46 04 00       	mov    $0x44668,%edi
   418f1:	b8 00 00 00 00       	mov    $0x0,%eax
   418f6:	e8 14 13 00 00       	call   42c0f <panic(char const*, ...)>
   418fb:	90                   	nop

00000000000418fc <vmiter::real_find(unsigned long)>:
              "(Page table contents: %p)\n", pt_, *pep_);
    }
}

void vmiter::real_find(uintptr_t va) {
   418fc:	f3 0f 1e fa          	endbr64 
   41900:	55                   	push   %rbp
   41901:	48 89 e5             	mov    %rsp,%rbp
   41904:	48 89 f0             	mov    %rsi,%rax
    if (level_ == 3 || ((va_ ^ va) & ~pageoffmask(level_ + 1)) != 0) {
   41907:	8b 57 10             	mov    0x10(%rdi),%edx
   4190a:	83 fa 03             	cmp    $0x3,%edx
   4190d:	74 1d                	je     4192c <vmiter::real_find(unsigned long)+0x30>
    return (1UL << (PAGEOFFBITS + level * PAGEINDEXBITS)) - 1;
   4190f:	8d 74 d2 09          	lea    0x9(%rdx,%rdx,8),%esi
   41913:	8d 4e 0c             	lea    0xc(%rsi),%ecx
   41916:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
   4191d:	48 d3 e2             	shl    %cl,%rdx
   41920:	48 89 c1             	mov    %rax,%rcx
   41923:	48 33 4f 18          	xor    0x18(%rdi),%rcx
   41927:	48 85 ca             	test   %rcx,%rdx
   4192a:	74 31                	je     4195d <vmiter::real_find(unsigned long)+0x61>
        level_ = 3;
   4192c:	c7 47 10 03 00 00 00 	movl   $0x3,0x10(%rdi)
    return va <= VA_LOWMAX || va >= VA_HIGHMIN;
   41933:	48 ba 00 00 00 00 00 	movabs $0xffff800000000000,%rdx
   4193a:	80 ff ff 
   4193d:	48 01 c2             	add    %rax,%rdx
        if (va_is_canonical(va)) {
   41940:	48 b9 ff ff ff ff ff 	movabs $0xfffeffffffffffff,%rcx
   41947:	ff fe ff 
   4194a:	48 39 ca             	cmp    %rcx,%rdx
   4194d:	77 39                	ja     41988 <vmiter::real_find(unsigned long)+0x8c>
            perm_ = initial_perm;
            pep_ = &pt_->entry[pageindex(va, level_)];
        } else {
            perm_ = 0;
   4194f:	c7 47 14 00 00 00 00 	movl   $0x0,0x14(%rdi)
   41956:	ba 50 47 04 00       	mov    $0x44750,%edx
   4195b:	eb 42                	jmp    4199f <vmiter::real_find(unsigned long)+0xa3>
            pep_ = const_cast<x86_64_pageentry_t*>(&zero_pe);
        }
    } else {
        int curidx = (reinterpret_cast<uintptr_t>(pep_) & PAGEOFFMASK) >> 3;
   4195d:	4c 8b 47 08          	mov    0x8(%rdi),%r8
    return (int) (addr >> (PAGEOFFBITS + level * PAGEINDEXBITS)) & 0x1FF;
   41961:	8d 4e 03             	lea    0x3(%rsi),%ecx
   41964:	48 89 c2             	mov    %rax,%rdx
   41967:	48 d3 ea             	shr    %cl,%rdx
   4196a:	81 e2 ff 01 00 00    	and    $0x1ff,%edx
   41970:	4c 89 c1             	mov    %r8,%rcx
   41973:	48 c1 e9 03          	shr    $0x3,%rcx
   41977:	81 e1 ff 01 00 00    	and    $0x1ff,%ecx
        pep_ += pageindex(va, level_) - curidx;
   4197d:	29 ca                	sub    %ecx,%edx
   4197f:	48 63 d2             	movslq %edx,%rdx
   41982:	49 8d 14 d0          	lea    (%r8,%rdx,8),%rdx
   41986:	eb 17                	jmp    4199f <vmiter::real_find(unsigned long)+0xa3>
            perm_ = initial_perm;
   41988:	c7 47 14 ff 0f 00 00 	movl   $0xfff,0x14(%rdi)
            pep_ = &pt_->entry[pageindex(va, level_)];
   4198f:	48 89 c2             	mov    %rax,%rdx
   41992:	48 c1 ea 24          	shr    $0x24,%rdx
   41996:	81 e2 f8 0f 00 00    	and    $0xff8,%edx
   4199c:	48 03 17             	add    (%rdi),%rdx
            pep_ = const_cast<x86_64_pageentry_t*>(&zero_pe);
   4199f:	48 89 57 08          	mov    %rdx,0x8(%rdi)
    }
    va_ = va;
   419a3:	48 89 47 18          	mov    %rax,0x18(%rdi)
    down();
   419a7:	e8 ba fe ff ff       	call   41866 <vmiter::down()>
}
   419ac:	5d                   	pop    %rbp
   419ad:	c3                   	ret    

00000000000419ae <vmiter::next()>:

void vmiter::next() {
   419ae:	f3 0f 1e fa          	endbr64 
   419b2:	55                   	push   %rbp
   419b3:	48 89 e5             	mov    %rsp,%rbp
    int level = 0;
    if (level_ > 0 && !perm()) {
   419b6:	8b 47 10             	mov    0x10(%rdi),%eax
   419b9:	85 c0                	test   %eax,%eax
   419bb:	7e 1d                	jle    419da <vmiter::next()+0x2c>
    if (*pep_ & PTE_P) {
   419bd:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   419c1:	48 8b 12             	mov    (%rdx),%rdx
   419c4:	f6 c2 01             	test   $0x1,%dl
   419c7:	74 16                	je     419df <vmiter::next()+0x31>
        return *pep_ & perm_;
   419c9:	48 63 4f 14          	movslq 0x14(%rdi),%rcx
    int level = 0;
   419cd:	48 85 d1             	test   %rdx,%rcx
   419d0:	ba 00 00 00 00       	mov    $0x0,%edx
   419d5:	0f 45 c2             	cmovne %edx,%eax
   419d8:	eb 05                	jmp    419df <vmiter::next()+0x31>
   419da:	b8 00 00 00 00       	mov    $0x0,%eax
    return (1UL << (PAGEOFFBITS + level * PAGEINDEXBITS)) - 1;
   419df:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   419e3:	be 01 00 00 00       	mov    $0x1,%esi
   419e8:	48 d3 e6             	shl    %cl,%rsi
   419eb:	48 83 ee 01          	sub    $0x1,%rsi
        level = level_;
    }
    real_find((va_ | pageoffmask(level)) + 1);
   419ef:	48 0b 77 18          	or     0x18(%rdi),%rsi
   419f3:	48 83 c6 01          	add    $0x1,%rsi
   419f7:	e8 00 ff ff ff       	call   418fc <vmiter::real_find(unsigned long)>
}
   419fc:	5d                   	pop    %rbp
   419fd:	c3                   	ret    

00000000000419fe <vmiter::try_map(unsigned long, int)>:

int vmiter::try_map(uintptr_t pa, int perm) {
   419fe:	f3 0f 1e fa          	endbr64 
   41a02:	55                   	push   %rbp
   41a03:	48 89 e5             	mov    %rsp,%rbp
   41a06:	41 57                	push   %r15
   41a08:	41 56                	push   %r14
   41a0a:	41 55                	push   %r13
   41a0c:	41 54                	push   %r12
   41a0e:	53                   	push   %rbx
   41a0f:	48 83 ec 08          	sub    $0x8,%rsp
   41a13:	49 89 fc             	mov    %rdi,%r12
   41a16:	49 89 f7             	mov    %rsi,%r15
   41a19:	41 89 d6             	mov    %edx,%r14d
    if (pa == (uintptr_t) -1 && perm == 0) {
   41a1c:	48 83 fe ff          	cmp    $0xffffffffffffffff,%rsi
   41a20:	75 25                	jne    41a47 <vmiter::try_map(unsigned long, int)+0x49>
   41a22:	85 d2                	test   %edx,%edx
   41a24:	75 21                	jne    41a47 <vmiter::try_map(unsigned long, int)+0x49>
        pa = 0;
    }
    assert(!(va_ & PAGEOFFMASK));
   41a26:	4c 8b 7f 18          	mov    0x18(%rdi),%r15
   41a2a:	41 81 e7 ff 0f 00 00 	and    $0xfff,%r15d
   41a31:	74 48                	je     41a7b <vmiter::try_map(unsigned long, int)+0x7d>
   41a33:	ba e3 46 04 00       	mov    $0x446e3,%edx
   41a38:	be 31 00 00 00       	mov    $0x31,%esi
   41a3d:	bf f8 46 04 00       	mov    $0x446f8,%edi
   41a42:	e8 01 08 00 00       	call   42248 <assert_fail(char const*, int, char const*)>
   41a47:	66 41 f7 44 24 18 ff 	testw  $0xfff,0x18(%r12)
   41a4e:	0f 
   41a4f:	75 e2                	jne    41a33 <vmiter::try_map(unsigned long, int)+0x35>
    if (perm & PTE_P) {
   41a51:	41 f6 c6 01          	test   $0x1,%r14b
   41a55:	0f 84 e5 00 00 00    	je     41b40 <vmiter::try_map(unsigned long, int)+0x142>
        assert(pa != (uintptr_t) -1);
   41a5b:	49 83 ff ff          	cmp    $0xffffffffffffffff,%r15
   41a5f:	0f 84 b3 00 00 00    	je     41b18 <vmiter::try_map(unsigned long, int)+0x11a>
        assert((pa & PTE_PAMASK) == pa);
   41a65:	48 b8 00 f0 ff ff ff 	movabs $0xffffffffff000,%rax
   41a6c:	ff 0f 00 
   41a6f:	4c 21 f8             	and    %r15,%rax
   41a72:	4c 39 f8             	cmp    %r15,%rax
   41a75:	0f 85 b1 00 00 00    	jne    41b2c <vmiter::try_map(unsigned long, int)+0x12e>
    } else {
        assert(!(pa & PTE_P));
    }
    assert(!(perm & ~perm_ & (PTE_P | PTE_W | PTE_U)));
   41a7b:	45 8b 6c 24 14       	mov    0x14(%r12),%r13d
   41a80:	41 f7 d5             	not    %r13d
   41a83:	45 21 f5             	and    %r14d,%r13d
   41a86:	41 83 e5 07          	and    $0x7,%r13d
   41a8a:	0f 85 ce 00 00 00    	jne    41b5e <vmiter::try_map(unsigned long, int)+0x160>

    while (level_ > 0 && perm) {
   41a90:	41 8b 44 24 10       	mov    0x10(%r12),%eax
   41a95:	45 85 f6             	test   %r14d,%r14d
   41a98:	74 57                	je     41af1 <vmiter::try_map(unsigned long, int)+0xf3>
   41a9a:	85 c0                	test   %eax,%eax
   41a9c:	7e 53                	jle    41af1 <vmiter::try_map(unsigned long, int)+0xf3>
        assert(!(*pep_ & PTE_P));
   41a9e:	49 8b 44 24 08       	mov    0x8(%r12),%rax
   41aa3:	f6 00 01             	testb  $0x1,(%rax)
   41aa6:	0f 85 c6 00 00 00    	jne    41b72 <vmiter::try_map(unsigned long, int)+0x174>
        x86_64_pagetable* pt = (x86_64_pagetable*) kalloc(PAGESIZE);
   41aac:	bf 00 10 00 00       	mov    $0x1000,%edi
   41ab1:	e8 ae f0 ff ff       	call   40b64 <kalloc(unsigned long)>
   41ab6:	48 89 c3             	mov    %rax,%rbx
        if (!pt) {
   41ab9:	48 85 c0             	test   %rax,%rax
   41abc:	0f 84 c4 00 00 00    	je     41b86 <vmiter::try_map(unsigned long, int)+0x188>
            return -1;
        }
        memset(pt, 0, PAGESIZE);
   41ac2:	ba 00 10 00 00       	mov    $0x1000,%edx
   41ac7:	be 00 00 00 00       	mov    $0x0,%esi
   41acc:	48 89 c7             	mov    %rax,%rdi
   41acf:	e8 95 1e 00 00       	call   43969 <memset>
        *pep_ = (uintptr_t) pt | PTE_P | PTE_W | PTE_U;
   41ad4:	49 8b 44 24 08       	mov    0x8(%r12),%rax
   41ad9:	48 83 cb 07          	or     $0x7,%rbx
   41add:	48 89 18             	mov    %rbx,(%rax)
        down();
   41ae0:	4c 89 e7             	mov    %r12,%rdi
   41ae3:	e8 7e fd ff ff       	call   41866 <vmiter::down()>
    while (level_ > 0 && perm) {
   41ae8:	41 8b 44 24 10       	mov    0x10(%r12),%eax
   41aed:	85 c0                	test   %eax,%eax
   41aef:	7f ad                	jg     41a9e <vmiter::try_map(unsigned long, int)+0xa0>
    }

    if (level_ == 0) {
   41af1:	85 c0                	test   %eax,%eax
   41af3:	75 11                	jne    41b06 <vmiter::try_map(unsigned long, int)+0x108>
        *pep_ = pa | perm;
   41af5:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
   41afa:	4d 63 f6             	movslq %r14d,%r14
   41afd:	4d 09 fe             	or     %r15,%r14
   41b00:	4c 89 32             	mov    %r14,(%rdx)
    }
    return 0;
   41b03:	41 89 c5             	mov    %eax,%r13d
}
   41b06:	44 89 e8             	mov    %r13d,%eax
   41b09:	48 83 c4 08          	add    $0x8,%rsp
   41b0d:	5b                   	pop    %rbx
   41b0e:	41 5c                	pop    %r12
   41b10:	41 5d                	pop    %r13
   41b12:	41 5e                	pop    %r14
   41b14:	41 5f                	pop    %r15
   41b16:	5d                   	pop    %rbp
   41b17:	c3                   	ret    
        assert(pa != (uintptr_t) -1);
   41b18:	ba 04 47 04 00       	mov    $0x44704,%edx
   41b1d:	be 33 00 00 00       	mov    $0x33,%esi
   41b22:	bf f8 46 04 00       	mov    $0x446f8,%edi
   41b27:	e8 1c 07 00 00       	call   42248 <assert_fail(char const*, int, char const*)>
        assert((pa & PTE_PAMASK) == pa);
   41b2c:	ba 19 47 04 00       	mov    $0x44719,%edx
   41b31:	be 34 00 00 00       	mov    $0x34,%esi
   41b36:	bf f8 46 04 00       	mov    $0x446f8,%edi
   41b3b:	e8 08 07 00 00       	call   42248 <assert_fail(char const*, int, char const*)>
        assert(!(pa & PTE_P));
   41b40:	41 f6 c7 01          	test   $0x1,%r15b
   41b44:	0f 84 31 ff ff ff    	je     41a7b <vmiter::try_map(unsigned long, int)+0x7d>
   41b4a:	ba 31 47 04 00       	mov    $0x44731,%edx
   41b4f:	be 36 00 00 00       	mov    $0x36,%esi
   41b54:	bf f8 46 04 00       	mov    $0x446f8,%edi
   41b59:	e8 ea 06 00 00       	call   42248 <assert_fail(char const*, int, char const*)>
    assert(!(perm & ~perm_ & (PTE_P | PTE_W | PTE_U)));
   41b5e:	ba b8 46 04 00       	mov    $0x446b8,%edx
   41b63:	be 38 00 00 00       	mov    $0x38,%esi
   41b68:	bf f8 46 04 00       	mov    $0x446f8,%edi
   41b6d:	e8 d6 06 00 00       	call   42248 <assert_fail(char const*, int, char const*)>
        assert(!(*pep_ & PTE_P));
   41b72:	ba 3f 47 04 00       	mov    $0x4473f,%edx
   41b77:	be 3b 00 00 00       	mov    $0x3b,%esi
   41b7c:	bf f8 46 04 00       	mov    $0x446f8,%edi
   41b81:	e8 c2 06 00 00       	call   42248 <assert_fail(char const*, int, char const*)>
            return -1;
   41b86:	41 bd ff ff ff ff    	mov    $0xffffffff,%r13d
   41b8c:	e9 75 ff ff ff       	jmp    41b06 <vmiter::try_map(unsigned long, int)+0x108>
   41b91:	90                   	nop

0000000000041b92 <ptiter::down(bool)>:
    pep_ = &pt_->entry[pageindex(va, level_)];
    va_ = va;
    down(false);
}

void ptiter::down(bool skip) {
   41b92:	f3 0f 1e fa          	endbr64 
   41b96:	55                   	push   %rbp
   41b97:	48 89 e5             	mov    %rsp,%rbp
   41b9a:	41 55                	push   %r13
   41b9c:	41 54                	push   %r12
   41b9e:	53                   	push   %rbx
    int stop_level = 1;
   41b9f:	41 bd 01 00 00 00    	mov    $0x1,%r13d
   41ba5:	41 ba 01 00 00 00    	mov    $0x1,%r10d
        if ((*pep_ & (PTE_P | PTE_PS)) == PTE_P && !skip) {
            if (level_ == stop_level) {
                break;
            } else {
                --level_;
                uintptr_t pa = *pep_ & PTE_PAMASK;
   41bab:	48 bb 00 f0 ff ff ff 	movabs $0xffffffffff000,%rbx
   41bb2:	ff 0f 00 
                // up one level
                if (level_ == 3) {
                    va_ = VA_NONCANONMAX + 1;
                    return;
                }
                stop_level = level_ + 1;
   41bb5:	41 bb 00 00 00 00    	mov    $0x0,%r11d
   41bbb:	eb 53                	jmp    41c10 <ptiter::down(bool)+0x7e>
            if (level_ == stop_level) {
   41bbd:	8b 47 10             	mov    0x10(%rdi),%eax
   41bc0:	44 39 e8             	cmp    %r13d,%eax
   41bc3:	74 35                	je     41bfa <ptiter::down(bool)+0x68>
                --level_;
   41bc5:	83 e8 01             	sub    $0x1,%eax
   41bc8:	89 47 10             	mov    %eax,0x10(%rdi)
                uintptr_t pa = *pep_ & PTE_PAMASK;
   41bcb:	48 89 da             	mov    %rbx,%rdx
   41bce:	49 23 14 24          	and    (%r12),%rdx
    return (int) (addr >> (PAGEOFFBITS + level * PAGEINDEXBITS)) & 0x1FF;
   41bd2:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   41bd6:	48 8b 47 18          	mov    0x18(%rdi),%rax
   41bda:	48 d3 e8             	shr    %cl,%rax
                pep_ = &pt->entry[pageindex(va_, level_)];
   41bdd:	25 ff 01 00 00       	and    $0x1ff,%eax
   41be2:	48 8d 04 c2          	lea    (%rdx,%rax,8),%rax
   41be6:	48 89 47 08          	mov    %rax,0x8(%rdi)
        } else {
   41bea:	eb 21                	jmp    41c0d <ptiter::down(bool)+0x7b>
                    va_ = VA_NONCANONMAX + 1;
   41bec:	48 b8 00 00 00 00 00 	movabs $0x1000000000000,%rax
   41bf3:	00 01 00 
   41bf6:	48 89 47 18          	mov    %rax,0x18(%rdi)
                va_ = va;
            }
            skip = false;
        }
    }
}
   41bfa:	5b                   	pop    %rbx
   41bfb:	41 5c                	pop    %r12
   41bfd:	41 5d                	pop    %r13
   41bff:	5d                   	pop    %rbp
   41c00:	c3                   	ret    
                ++pep_;
   41c01:	49 83 c4 08          	add    $0x8,%r12
   41c05:	4c 89 67 08          	mov    %r12,0x8(%rdi)
                va_ = va;
   41c09:	48 89 47 18          	mov    %rax,0x18(%rdi)
                stop_level = level_ + 1;
   41c0d:	44 89 de             	mov    %r11d,%esi
        if ((*pep_ & (PTE_P | PTE_PS)) == PTE_P && !skip) {
   41c10:	4c 8b 67 08          	mov    0x8(%rdi),%r12
   41c14:	49 8b 04 24          	mov    (%r12),%rax
   41c18:	25 81 00 00 00       	and    $0x81,%eax
   41c1d:	48 83 f8 01          	cmp    $0x1,%rax
   41c21:	75 05                	jne    41c28 <ptiter::down(bool)+0x96>
   41c23:	40 84 f6             	test   %sil,%sil
   41c26:	74 95                	je     41bbd <ptiter::down(bool)+0x2b>
            uintptr_t va = (va_ | pageoffmask(level_)) + 1;
   41c28:	48 8b 77 18          	mov    0x18(%rdi),%rsi
   41c2c:	44 8b 4f 10          	mov    0x10(%rdi),%r9d
    return (1UL << (PAGEOFFBITS + level * PAGEINDEXBITS)) - 1;
   41c30:	47 8d 04 c9          	lea    (%r9,%r9,8),%r8d
   41c34:	41 8d 48 0c          	lea    0xc(%r8),%ecx
   41c38:	4c 89 d2             	mov    %r10,%rdx
   41c3b:	48 d3 e2             	shl    %cl,%rdx
   41c3e:	48 83 ea 01          	sub    $0x1,%rdx
   41c42:	48 09 f2             	or     %rsi,%rdx
   41c45:	48 8d 42 01          	lea    0x1(%rdx),%rax
            if ((va ^ va_) & ~pageoffmask(level_ + 1)) {
   41c49:	41 8d 51 01          	lea    0x1(%r9),%edx
   41c4d:	41 8d 48 15          	lea    0x15(%r8),%ecx
   41c51:	4d 89 d0             	mov    %r10,%r8
   41c54:	49 d3 e0             	shl    %cl,%r8
   41c57:	4c 89 c1             	mov    %r8,%rcx
   41c5a:	48 f7 d9             	neg    %rcx
   41c5d:	49 89 f0             	mov    %rsi,%r8
   41c60:	49 31 c0             	xor    %rax,%r8
   41c63:	4c 85 c1             	test   %r8,%rcx
   41c66:	74 99                	je     41c01 <ptiter::down(bool)+0x6f>
                if (level_ == 3) {
   41c68:	41 83 f9 03          	cmp    $0x3,%r9d
   41c6c:	0f 84 7a ff ff ff    	je     41bec <ptiter::down(bool)+0x5a>
                level_ = 3;
   41c72:	c7 47 10 03 00 00 00 	movl   $0x3,0x10(%rdi)
                pep_ = &pt_->entry[pageindex(va_, level_)];
   41c79:	48 89 f0             	mov    %rsi,%rax
   41c7c:	48 c1 e8 24          	shr    $0x24,%rax
   41c80:	25 f8 0f 00 00       	and    $0xff8,%eax
   41c85:	48 03 07             	add    (%rdi),%rax
   41c88:	48 89 47 08          	mov    %rax,0x8(%rdi)
                stop_level = level_ + 1;
   41c8c:	41 89 d5             	mov    %edx,%r13d
   41c8f:	e9 79 ff ff ff       	jmp    41c0d <ptiter::down(bool)+0x7b>

0000000000041c94 <ptiter::go(unsigned long)>:
void ptiter::go(uintptr_t va) {
   41c94:	f3 0f 1e fa          	endbr64 
   41c98:	55                   	push   %rbp
   41c99:	48 89 e5             	mov    %rsp,%rbp
    level_ = 3;
   41c9c:	c7 47 10 03 00 00 00 	movl   $0x3,0x10(%rdi)
    pep_ = &pt_->entry[pageindex(va, level_)];
   41ca3:	48 89 f0             	mov    %rsi,%rax
   41ca6:	48 c1 e8 24          	shr    $0x24,%rax
   41caa:	25 f8 0f 00 00       	and    $0xff8,%eax
   41caf:	48 03 07             	add    (%rdi),%rax
   41cb2:	48 89 47 08          	mov    %rax,0x8(%rdi)
    va_ = va;
   41cb6:	48 89 77 18          	mov    %rsi,0x18(%rdi)
    down(false);
   41cba:	be 00 00 00 00       	mov    $0x0,%esi
   41cbf:	e8 ce fe ff ff       	call   41b92 <ptiter::down(bool)>
}
   41cc4:	5d                   	pop    %rbp
   41cc5:	c3                   	ret    

0000000000041cc6 <(anonymous namespace)::log_printer::putc(unsigned char, int)>:
         | IO_PARALLEL_CONTROL_INIT);
}

namespace {
struct log_printer : public printer {
    void putc(unsigned char c, int) override {
   41cc6:	f3 0f 1e fa          	endbr64 
   41cca:	41 89 f0             	mov    %esi,%r8d
    if (!initialized) {
   41ccd:	83 3d 30 d3 01 00 00 	cmpl   $0x0,0x1d330(%rip)        # 5f004 <parallel_port_putc(unsigned char)::initialized>
   41cd4:	75 15                	jne    41ceb <(anonymous namespace)::log_printer::putc(unsigned char, int)+0x25>
    asm volatile("outb %0, %w1" : : "a" (data), "d" (port));
   41cd6:	b8 00 00 00 00       	mov    $0x0,%eax
   41cdb:	ba 7a 03 00 00       	mov    $0x37a,%edx
   41ce0:	ee                   	out    %al,(%dx)
        initialized = 1;
   41ce1:	c7 05 19 d3 01 00 01 	movl   $0x1,0x1d319(%rip)        # 5f004 <parallel_port_putc(unsigned char)::initialized>
   41ce8:	00 00 00 
    asm volatile("inb %w1, %0" : "=a" (data) : "d" (port));
   41ceb:	ba 79 03 00 00       	mov    $0x379,%edx
   41cf0:	ec                   	in     (%dx),%al
         i < 12800 && (inb(IO_PARALLEL1_STATUS) & IO_PARALLEL_STATUS_BUSY) == 0;
   41cf1:	be 00 32 00 00       	mov    $0x3200,%esi
   41cf6:	b9 84 00 00 00       	mov    $0x84,%ecx
   41cfb:	bf 79 03 00 00       	mov    $0x379,%edi
   41d00:	84 c0                	test   %al,%al
   41d02:	78 12                	js     41d16 <(anonymous namespace)::log_printer::putc(unsigned char, int)+0x50>
   41d04:	89 ca                	mov    %ecx,%edx
   41d06:	ec                   	in     (%dx),%al
   41d07:	ec                   	in     (%dx),%al
   41d08:	ec                   	in     (%dx),%al
   41d09:	ec                   	in     (%dx),%al
   41d0a:	83 ee 01             	sub    $0x1,%esi
   41d0d:	74 07                	je     41d16 <(anonymous namespace)::log_printer::putc(unsigned char, int)+0x50>
   41d0f:	89 fa                	mov    %edi,%edx
   41d11:	ec                   	in     (%dx),%al
   41d12:	84 c0                	test   %al,%al
   41d14:	79 ee                	jns    41d04 <(anonymous namespace)::log_printer::putc(unsigned char, int)+0x3e>
    asm volatile("outb %0, %w1" : : "a" (data), "d" (port));
   41d16:	ba 78 03 00 00       	mov    $0x378,%edx
   41d1b:	44 89 c0             	mov    %r8d,%eax
   41d1e:	ee                   	out    %al,(%dx)
   41d1f:	ba 7a 03 00 00       	mov    $0x37a,%edx
   41d24:	b8 0d 00 00 00       	mov    $0xd,%eax
   41d29:	ee                   	out    %al,(%dx)
   41d2a:	b8 0c 00 00 00       	mov    $0xc,%eax
   41d2f:	ee                   	out    %al,(%dx)
        parallel_port_putc(c);
    }
   41d30:	c3                   	ret    

0000000000041d31 <stash_kernel_data(bool)>:

// stash_kernel_data
//    Soft reboot requires that we restore kernel data memory to
//    its initial state, so we store its initial state in unused
//    physical memory.
static void stash_kernel_data(bool reboot) {
   41d31:	55                   	push   %rbp
   41d32:	48 89 e5             	mov    %rsp,%rbp
   41d35:	89 f8                	mov    %edi,%eax
    // stash initial value of data segment for soft-reboot support
    extern uint8_t _data_start, _edata, _kernel_end;
    uintptr_t data_size = (uintptr_t) &_edata - (uintptr_t) &_data_start;
   41d37:	ba a0 75 05 00       	mov    $0x575a0,%edx
   41d3c:	48 81 ea 00 60 04 00 	sub    $0x46000,%rdx
    uint8_t* data_stash = (uint8_t*) (SYMTAB_ADDR - data_size);
   41d43:	bf 00 60 04 01       	mov    $0x1046000,%edi
   41d48:	48 81 ef a0 75 05 00 	sub    $0x575a0,%rdi
    if (reboot) {
   41d4f:	84 c0                	test   %al,%al
   41d51:	74 2a                	je     41d7d <stash_kernel_data(bool)+0x4c>
        memcpy(&_data_start, data_stash, data_size);
   41d53:	48 89 fe             	mov    %rdi,%rsi
   41d56:	bf 00 60 04 00       	mov    $0x46000,%edi
   41d5b:	e8 98 1b 00 00       	call   438f8 <memcpy>
        memset(&_edata, 0, &_kernel_end - &_edata);
   41d60:	ba 98 f0 05 00       	mov    $0x5f098,%edx
   41d65:	48 81 ea a0 75 05 00 	sub    $0x575a0,%rdx
   41d6c:	be 00 00 00 00       	mov    $0x0,%esi
   41d71:	bf a0 75 05 00       	mov    $0x575a0,%edi
   41d76:	e8 ee 1b 00 00       	call   43969 <memset>
    } else {
        memcpy(data_stash, &_data_start, data_size);
    }
}
   41d7b:	5d                   	pop    %rbp
   41d7c:	c3                   	ret    
        memcpy(data_stash, &_data_start, data_size);
   41d7d:	be 00 60 04 00       	mov    $0x46000,%esi
   41d82:	e8 71 1b 00 00       	call   438f8 <memcpy>
}
   41d87:	eb f2                	jmp    41d7b <stash_kernel_data(bool)+0x4a>

0000000000041d89 <init_timer(int)>:
void init_timer(int rate) {
   41d89:	f3 0f 1e fa          	endbr64 
    if (rate > 0) {
   41d8d:	85 ff                	test   %edi,%edi
   41d8f:	7e 12                	jle    41da3 <init_timer(int)+0x1a>
        lapic.write(lapic.reg_timer_initial_count, 1000000000 / rate);
   41d91:	b8 00 ca 9a 3b       	mov    $0x3b9aca00,%eax
   41d96:	99                   	cltd   
   41d97:	f7 ff                	idiv   %edi
   41d99:	a3 80 03 e0 fe 00 00 	movabs %eax,0xfee00380
   41da0:	00 00 
}
   41da2:	c3                   	ret    
    reg_[reg].v = v;
   41da3:	b8 80 03 e0 fe       	mov    $0xfee00380,%eax
   41da8:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
}
   41dae:	c3                   	ret    

0000000000041daf <reserved_physical_address(unsigned long)>:
bool reserved_physical_address(uintptr_t pa) {
   41daf:	f3 0f 1e fa          	endbr64 
    return pa < PAGESIZE || (pa >= IOPHYSMEM && pa < EXTPHYSMEM);
   41db3:	48 8d 87 00 00 f6 ff 	lea    -0xa0000(%rdi),%rax
   41dba:	48 3d ff ff 05 00    	cmp    $0x5ffff,%rax
   41dc0:	0f 96 c0             	setbe  %al
   41dc3:	48 81 ff ff 0f 00 00 	cmp    $0xfff,%rdi
   41dca:	0f 96 c2             	setbe  %dl
   41dcd:	09 d0                	or     %edx,%eax
}
   41dcf:	c3                   	ret    

0000000000041dd0 <allocatable_physical_address(unsigned long)>:
bool allocatable_physical_address(uintptr_t pa) {
   41dd0:	f3 0f 1e fa          	endbr64 
   41dd4:	55                   	push   %rbp
   41dd5:	48 89 e5             	mov    %rsp,%rbp
   41dd8:	53                   	push   %rbx
   41dd9:	48 83 ec 08          	sub    $0x8,%rsp
   41ddd:	48 89 fb             	mov    %rdi,%rbx
    return !reserved_physical_address(pa)
   41de0:	e8 ca ff ff ff       	call   41daf <reserved_physical_address(unsigned long)>
   41de5:	89 c2                	mov    %eax,%edx
        && pa < MEMSIZE_PHYSICAL;
   41de7:	b8 00 00 00 00       	mov    $0x0,%eax
   41dec:	84 d2                	test   %dl,%dl
   41dee:	75 1c                	jne    41e0c <allocatable_physical_address(unsigned long)+0x3c>
            || pa >= KERNEL_STACK_TOP)
   41df0:	48 8d 83 00 10 f8 ff 	lea    -0x7f000(%rbx),%rax
        && (pa < KERNEL_STACK_TOP - PAGESIZE
   41df7:	48 3d ff 0f 00 00    	cmp    $0xfff,%rax
   41dfd:	0f 97 c0             	seta   %al
        && pa < MEMSIZE_PHYSICAL;
   41e00:	48 81 fb ff ff 1f 00 	cmp    $0x1fffff,%rbx
   41e07:	0f 96 c2             	setbe  %dl
   41e0a:	21 d0                	and    %edx,%eax
}
   41e0c:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
   41e10:	c9                   	leave  
   41e11:	c3                   	ret    

0000000000041e12 <init_process(proc*, int)>:
void init_process(proc* p, int flags) {
   41e12:	f3 0f 1e fa          	endbr64 
   41e16:	55                   	push   %rbp
   41e17:	48 89 e5             	mov    %rsp,%rbp
   41e1a:	41 54                	push   %r12
   41e1c:	53                   	push   %rbx
   41e1d:	48 89 fb             	mov    %rdi,%rbx
   41e20:	41 89 f4             	mov    %esi,%r12d
    memset(&p->regs, 0, sizeof(p->regs));
   41e23:	48 8d 7f 10          	lea    0x10(%rdi),%rdi
   41e27:	ba c0 00 00 00       	mov    $0xc0,%edx
   41e2c:	be 00 00 00 00       	mov    $0x0,%esi
   41e31:	e8 33 1b 00 00       	call   43969 <memset>
    p->regs.reg_cs = SEGSEL_APP_CODE | 3;
   41e36:	48 c7 83 b0 00 00 00 	movq   $0x1b,0xb0(%rbx)
   41e3d:	1b 00 00 00 
    p->regs.reg_fs = SEGSEL_APP_DATA | 3;
   41e41:	48 c7 83 88 00 00 00 	movq   $0x23,0x88(%rbx)
   41e48:	23 00 00 00 
    p->regs.reg_gs = SEGSEL_APP_DATA | 3;
   41e4c:	48 c7 83 90 00 00 00 	movq   $0x23,0x90(%rbx)
   41e53:	23 00 00 00 
    p->regs.reg_ss = SEGSEL_APP_DATA | 3;
   41e57:	48 c7 83 c8 00 00 00 	movq   $0x23,0xc8(%rbx)
   41e5e:	23 00 00 00 
    if (flags & PROCINIT_ALLOW_PROGRAMMED_IO) {
   41e62:	44 89 e0             	mov    %r12d,%eax
   41e65:	83 e0 01             	and    $0x1,%eax
        p->regs.reg_rflags |= EFLAGS_IOPL_3;
   41e68:	83 f8 01             	cmp    $0x1,%eax
   41e6b:	48 19 c0             	sbb    %rax,%rax
   41e6e:	48 25 00 d0 ff ff    	and    $0xffffffffffffd000,%rax
   41e74:	48 05 00 32 00 00    	add    $0x3200,%rax
    if (flags & PROCINIT_DISABLE_INTERRUPTS) {
   41e7a:	41 f6 c4 02          	test   $0x2,%r12b
   41e7e:	75 09                	jne    41e89 <init_process(proc*, int)+0x77>
   41e80:	48 89 83 b8 00 00 00 	mov    %rax,0xb8(%rbx)
   41e87:	eb 0a                	jmp    41e93 <init_process(proc*, int)+0x81>
        p->regs.reg_rflags &= ~EFLAGS_IF;
   41e89:	80 e4 fd             	and    $0xfd,%ah
   41e8c:	48 89 83 b8 00 00 00 	mov    %rax,0xb8(%rbx)
}
   41e93:	5b                   	pop    %rbx
   41e94:	41 5c                	pop    %r12
   41e96:	5d                   	pop    %rbp
   41e97:	c3                   	ret    

0000000000041e98 <console_show_cursor(int)>:
void console_show_cursor(int cpos) {
   41e98:	f3 0f 1e fa          	endbr64 
        cpos = 0;
   41e9c:	81 ff d1 07 00 00    	cmp    $0x7d1,%edi
   41ea2:	b8 00 00 00 00       	mov    $0x0,%eax
   41ea7:	0f 43 f8             	cmovae %eax,%edi
   41eaa:	be d4 03 00 00       	mov    $0x3d4,%esi
   41eaf:	b8 0e 00 00 00       	mov    $0xe,%eax
   41eb4:	89 f2                	mov    %esi,%edx
   41eb6:	ee                   	out    %al,(%dx)
    outb(0x3D5, cpos / 256);
   41eb7:	8d 87 ff 00 00 00    	lea    0xff(%rdi),%eax
   41ebd:	85 ff                	test   %edi,%edi
   41ebf:	0f 49 c7             	cmovns %edi,%eax
   41ec2:	c1 f8 08             	sar    $0x8,%eax
   41ec5:	b9 d5 03 00 00       	mov    $0x3d5,%ecx
   41eca:	89 ca                	mov    %ecx,%edx
   41ecc:	ee                   	out    %al,(%dx)
   41ecd:	b8 0f 00 00 00       	mov    $0xf,%eax
   41ed2:	89 f2                	mov    %esi,%edx
   41ed4:	ee                   	out    %al,(%dx)
    outb(0x3D5, cpos % 256);
   41ed5:	89 fa                	mov    %edi,%edx
   41ed7:	c1 fa 1f             	sar    $0x1f,%edx
   41eda:	c1 ea 18             	shr    $0x18,%edx
   41edd:	8d 04 17             	lea    (%rdi,%rdx,1),%eax
   41ee0:	0f b6 c0             	movzbl %al,%eax
   41ee3:	29 d0                	sub    %edx,%eax
   41ee5:	89 ca                	mov    %ecx,%edx
   41ee7:	ee                   	out    %al,(%dx)
}
   41ee8:	c3                   	ret    

0000000000041ee9 <keyboard_readc()>:
int keyboard_readc() {
   41ee9:	f3 0f 1e fa          	endbr64 
    asm volatile("inb %w1, %0" : "=a" (data) : "d" (port));
   41eed:	ba 64 00 00 00       	mov    $0x64,%edx
   41ef2:	ec                   	in     (%dx),%al
    if ((inb(KEYBOARD_STATUSREG) & KEYBOARD_STATUS_READY) == 0) {
   41ef3:	a8 01                	test   $0x1,%al
   41ef5:	0f 84 1d 01 00 00    	je     42018 <keyboard_readc()+0x12f>
   41efb:	ba 60 00 00 00       	mov    $0x60,%edx
   41f00:	ec                   	in     (%dx),%al
    uint8_t escape = last_escape;
   41f01:	0f b6 15 00 d1 01 00 	movzbl 0x1d100(%rip),%edx        # 5f008 <keyboard_readc()::last_escape>
    last_escape = 0;
   41f08:	c6 05 f9 d0 01 00 00 	movb   $0x0,0x1d0f9(%rip)        # 5f008 <keyboard_readc()::last_escape>
    if (data == 0xE0) {         // mode shift
   41f0f:	3c e0                	cmp    $0xe0,%al
   41f11:	74 2a                	je     41f3d <keyboard_readc()+0x54>
    } else if (data & 0x80) {   // key release: matters only for modifier keys
   41f13:	84 c0                	test   %al,%al
   41f15:	78 33                	js     41f4a <keyboard_readc()+0x61>
    int ch = (unsigned char) keymap[data | escape];
   41f17:	09 c2                	or     %eax,%edx
   41f19:	0f b6 d2             	movzbl %dl,%edx
   41f1c:	0f b6 82 20 4b 04 00 	movzbl 0x44b20(%rdx),%eax
    if (ch >= 'a' && ch <= 'z') {
   41f23:	89 c1                	mov    %eax,%ecx
   41f25:	8d 50 9f             	lea    -0x61(%rax),%edx
   41f28:	83 fa 19             	cmp    $0x19,%edx
   41f2b:	77 76                	ja     41fa3 <keyboard_readc()+0xba>
        if (modifiers & MOD_CONTROL) {
   41f2d:	0f b6 15 d5 d0 01 00 	movzbl 0x1d0d5(%rip),%edx        # 5f009 <keyboard_readc()::modifiers>
   41f34:	f6 c2 02             	test   $0x2,%dl
   41f37:	74 50                	je     41f89 <keyboard_readc()+0xa0>
            ch -= 0x60;
   41f39:	83 e8 60             	sub    $0x60,%eax
   41f3c:	c3                   	ret    
        last_escape = 0x80;
   41f3d:	c6 05 c4 d0 01 00 80 	movb   $0x80,0x1d0c4(%rip)        # 5f008 <keyboard_readc()::last_escape>
        return 0;
   41f44:	b8 00 00 00 00       	mov    $0x0,%eax
   41f49:	c3                   	ret    
        int ch = keymap[(data & 0x7F) | escape];
   41f4a:	83 e0 7f             	and    $0x7f,%eax
   41f4d:	09 d0                	or     %edx,%eax
   41f4f:	0f b6 c0             	movzbl %al,%eax
   41f52:	0f b6 88 20 4b 04 00 	movzbl 0x44b20(%rax),%ecx
        if (ch >= KEY_SHIFT && ch < KEY_CAPSLOCK) {
   41f59:	0f b6 d1             	movzbl %cl,%edx
   41f5c:	81 ea fa 00 00 00    	sub    $0xfa,%edx
        return 0;
   41f62:	b8 00 00 00 00       	mov    $0x0,%eax
        if (ch >= KEY_SHIFT && ch < KEY_CAPSLOCK) {
   41f67:	83 fa 02             	cmp    $0x2,%edx
   41f6a:	0f 87 ad 00 00 00    	ja     4201d <keyboard_readc()+0x134>
            modifiers &= ~(1 << (ch - KEY_SHIFT));
   41f70:	83 c1 06             	add    $0x6,%ecx
   41f73:	0f b6 05 8f d0 01 00 	movzbl 0x1d08f(%rip),%eax        # 5f009 <keyboard_readc()::modifiers>
   41f7a:	0f b3 c8             	btr    %ecx,%eax
   41f7d:	88 05 86 d0 01 00    	mov    %al,0x1d086(%rip)        # 5f009 <keyboard_readc()::modifiers>
        return 0;
   41f83:	b8 00 00 00 00       	mov    $0x0,%eax
   41f88:	c3                   	ret    
        } else if (!(modifiers & MOD_SHIFT) != !(modifiers & MOD_CAPSLOCK)) {
   41f89:	89 d1                	mov    %edx,%ecx
   41f8b:	83 f1 01             	xor    $0x1,%ecx
   41f8e:	83 e1 01             	and    $0x1,%ecx
   41f91:	c0 ea 03             	shr    $0x3,%dl
   41f94:	83 f2 01             	xor    $0x1,%edx
   41f97:	83 e2 01             	and    $0x1,%edx
            ch -= 0x20;
   41f9a:	8d 70 e0             	lea    -0x20(%rax),%esi
   41f9d:	38 d1                	cmp    %dl,%cl
   41f9f:	0f 45 c6             	cmovne %esi,%eax
   41fa2:	c3                   	ret    
    } else if (ch >= KEY_CAPSLOCK) {
   41fa3:	3d fc 00 00 00       	cmp    $0xfc,%eax
   41fa8:	7e 19                	jle    41fc3 <keyboard_readc()+0xda>
        modifiers ^= 1 << (ch - KEY_SHIFT);
   41faa:	8d 88 06 ff ff ff    	lea    -0xfa(%rax),%ecx
   41fb0:	ba 01 00 00 00       	mov    $0x1,%edx
   41fb5:	d3 e2                	shl    %cl,%edx
   41fb7:	30 15 4c d0 01 00    	xor    %dl,0x1d04c(%rip)        # 5f009 <keyboard_readc()::modifiers>
        ch = 0;
   41fbd:	b8 00 00 00 00       	mov    $0x0,%eax
   41fc2:	c3                   	ret    
    } else if (ch >= KEY_SHIFT) {
   41fc3:	3d f9 00 00 00       	cmp    $0xf9,%eax
   41fc8:	7e 19                	jle    41fe3 <keyboard_readc()+0xfa>
        modifiers |= 1 << (ch - KEY_SHIFT);
   41fca:	8d 88 06 ff ff ff    	lea    -0xfa(%rax),%ecx
   41fd0:	ba 01 00 00 00       	mov    $0x1,%edx
   41fd5:	d3 e2                	shl    %cl,%edx
   41fd7:	08 15 2c d0 01 00    	or     %dl,0x1d02c(%rip)        # 5f009 <keyboard_readc()::modifiers>
        ch = 0;
   41fdd:	b8 00 00 00 00       	mov    $0x0,%eax
   41fe2:	c3                   	ret    
    } else if (ch >= CKEY(0) && ch <= CKEY(21)) {
   41fe3:	83 c1 80             	add    $0xffffff80,%ecx
   41fe6:	83 f9 15             	cmp    $0x15,%ecx
   41fe9:	77 18                	ja     42003 <keyboard_readc()+0x11a>
        ch = complex_keymap[ch - CKEY(0)].map[modifiers & 3];
   41feb:	0f b6 15 17 d0 01 00 	movzbl 0x1d017(%rip),%edx        # 5f009 <keyboard_readc()::modifiers>
   41ff2:	83 e2 03             	and    $0x3,%edx
   41ff5:	83 c0 80             	add    $0xffffff80,%eax
   41ff8:	48 98                	cltq   
   41ffa:	0f b6 84 82 c0 4a 04 	movzbl 0x44ac0(%rdx,%rax,4),%eax
   42001:	00 
   42002:	c3                   	ret    
    } else if (ch < 0x80 && (modifiers & MOD_CONTROL)) {
   42003:	83 f8 7f             	cmp    $0x7f,%eax
   42006:	7f 15                	jg     4201d <keyboard_readc()+0x134>
        ch = 0;
   42008:	f6 05 fa cf 01 00 02 	testb  $0x2,0x1cffa(%rip)        # 5f009 <keyboard_readc()::modifiers>
   4200f:	ba 00 00 00 00       	mov    $0x0,%edx
   42014:	0f 45 c2             	cmovne %edx,%eax
   42017:	c3                   	ret    
        return -1;
   42018:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
   4201d:	c3                   	ret    

000000000004201e <lookup_symbol(unsigned long, char const**, unsigned long*)>:
bool lookup_symbol(uintptr_t addr, const char** name, uintptr_t* start) {
   4201e:	f3 0f 1e fa          	endbr64 
   42022:	55                   	push   %rbp
   42023:	48 89 e5             	mov    %rsp,%rbp
   42026:	41 55                	push   %r13
   42028:	41 54                	push   %r12
   4202a:	53                   	push   %rbx
   4202b:	49 89 f9             	mov    %rdi,%r9
   4202e:	48 89 f3             	mov    %rsi,%rbx
   42031:	49 89 d4             	mov    %rdx,%r12
    if (!kernel_pagetable[2].entry[SYMTAB_ADDR / 0x200000]) {
   42034:	48 83 3d 04 a0 01 00 	cmpq   $0x0,0x1a004(%rip)        # 5c040 <kernel_pagetable+0x2040>
   4203b:	00 
   4203c:	75 0b                	jne    42049 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x2b>
        kernel_pagetable[2].entry[SYMTAB_ADDR / 0x200000] =
   4203e:	48 c7 05 f7 9f 01 00 	movq   $0x1000083,0x19ff7(%rip)        # 5c040 <kernel_pagetable+0x2040>
   42045:	83 00 00 01 
    size_t r = symtab.nsym;
   42049:	4c 8b 1d 58 40 00 00 	mov    0x4058(%rip),%r11        # 460a8 <symtab+0x8>
        auto& sym = symtab.sym[m];
   42050:	4c 8b 15 49 40 00 00 	mov    0x4049(%rip),%r10        # 460a0 <symtab>
    size_t r = symtab.nsym;
   42057:	4d 89 d8             	mov    %r11,%r8
    size_t l = 0;
   4205a:	bf 00 00 00 00       	mov    $0x0,%edi
    while (l < r) {
   4205f:	eb 17                	jmp    42078 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x5a>
                : m + 1 == symtab.nsym || addr < (&sym)[1].st_value)) {
   42061:	4c 8d 68 01          	lea    0x1(%rax),%r13
                ? addr < sym.st_value + sym.st_size
   42065:	4d 39 dd             	cmp    %r11,%r13
   42068:	74 45                	je     420af <lookup_symbol(unsigned long, char const**, unsigned long*)+0x91>
                : m + 1 == symtab.nsym || addr < (&sym)[1].st_value)) {
   4206a:	4c 39 4e 20          	cmp    %r9,0x20(%rsi)
   4206e:	77 3f                	ja     420af <lookup_symbol(unsigned long, char const**, unsigned long*)+0x91>
        } else if (symtab.sym[m].st_value < addr) {
   42070:	4c 39 c9             	cmp    %r9,%rcx
   42073:	72 6c                	jb     420e1 <lookup_symbol(unsigned long, char const**, unsigned long*)+0xc3>
        size_t m = l + ((r - l) >> 1);
   42075:	49 89 c0             	mov    %rax,%r8
    while (l < r) {
   42078:	4c 39 c7             	cmp    %r8,%rdi
   4207b:	73 6a                	jae    420e7 <lookup_symbol(unsigned long, char const**, unsigned long*)+0xc9>
        size_t m = l + ((r - l) >> 1);
   4207d:	4c 89 c0             	mov    %r8,%rax
   42080:	48 29 f8             	sub    %rdi,%rax
   42083:	48 d1 e8             	shr    %rax
   42086:	48 01 f8             	add    %rdi,%rax
        auto& sym = symtab.sym[m];
   42089:	48 8d 14 40          	lea    (%rax,%rax,2),%rdx
   4208d:	48 c1 e2 03          	shl    $0x3,%rdx
   42091:	49 8d 34 12          	lea    (%r10,%rdx,1),%rsi
        if (sym.st_value <= addr
   42095:	48 8b 4e 08          	mov    0x8(%rsi),%rcx
   42099:	4c 39 c9             	cmp    %r9,%rcx
   4209c:	77 d2                	ja     42070 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x52>
            && (sym.st_size != 0
   4209e:	4c 8b 6e 10          	mov    0x10(%rsi),%r13
        if (sym.st_value <= addr
   420a2:	4d 85 ed             	test   %r13,%r13
   420a5:	74 ba                	je     42061 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x43>
                ? addr < sym.st_value + sym.st_size
   420a7:	49 01 cd             	add    %rcx,%r13
            && (sym.st_size != 0
   420aa:	4d 39 cd             	cmp    %r9,%r13
   420ad:	76 c1                	jbe    42070 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x52>
            if (name) {
   420af:	48 85 db             	test   %rbx,%rbx
   420b2:	74 0c                	je     420c0 <lookup_symbol(unsigned long, char const**, unsigned long*)+0xa2>
                *name = symtab.strtab + symtab.sym[m].st_name;
   420b4:	8b 06                	mov    (%rsi),%eax
   420b6:	48 03 05 f3 3f 00 00 	add    0x3ff3(%rip),%rax        # 460b0 <symtab+0x10>
   420bd:	48 89 03             	mov    %rax,(%rbx)
            return true;
   420c0:	b8 01 00 00 00       	mov    $0x1,%eax
            if (start) {
   420c5:	4d 85 e4             	test   %r12,%r12
   420c8:	74 22                	je     420ec <lookup_symbol(unsigned long, char const**, unsigned long*)+0xce>
                *start = symtab.sym[m].st_value;
   420ca:	48 8b 05 cf 3f 00 00 	mov    0x3fcf(%rip),%rax        # 460a0 <symtab>
   420d1:	48 8b 44 10 08       	mov    0x8(%rax,%rdx,1),%rax
   420d6:	49 89 04 24          	mov    %rax,(%r12)
            return true;
   420da:	b8 01 00 00 00       	mov    $0x1,%eax
   420df:	eb 0b                	jmp    420ec <lookup_symbol(unsigned long, char const**, unsigned long*)+0xce>
            l = m + 1;
   420e1:	48 8d 78 01          	lea    0x1(%rax),%rdi
   420e5:	eb 91                	jmp    42078 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x5a>
    return false;
   420e7:	b8 00 00 00 00       	mov    $0x0,%eax
}
   420ec:	5b                   	pop    %rbx
   420ed:	41 5c                	pop    %r12
   420ef:	41 5d                	pop    %r13
   420f1:	5d                   	pop    %rbp
   420f2:	c3                   	ret    

00000000000420f3 <log_vprintf(char const*, __va_list_tag*)>:
void log_vprintf(const char* format, va_list val) {
   420f3:	f3 0f 1e fa          	endbr64 
   420f7:	55                   	push   %rbp
   420f8:	48 89 e5             	mov    %rsp,%rbp
   420fb:	48 83 ec 10          	sub    $0x10,%rsp
   420ff:	48 89 fa             	mov    %rdi,%rdx
   42102:	48 89 f1             	mov    %rsi,%rcx
    log_printer p;
   42105:	48 c7 45 f8 b0 4a 04 	movq   $0x44ab0,-0x8(%rbp)
   4210c:	00 
    p.vprintf(0, format, val);
   4210d:	be 00 00 00 00       	mov    $0x0,%esi
   42112:	48 8d 7d f8          	lea    -0x8(%rbp),%rdi
   42116:	e8 2f 19 00 00       	call   43a4a <printer::vprintf(int, char const*, __va_list_tag*)>
}
   4211b:	c9                   	leave  
   4211c:	c3                   	ret    

000000000004211d <log_printf(char const*, ...)>:
void log_printf(const char* format, ...) {
   4211d:	f3 0f 1e fa          	endbr64 
   42121:	55                   	push   %rbp
   42122:	48 89 e5             	mov    %rsp,%rbp
   42125:	48 83 ec 50          	sub    $0x50,%rsp
   42129:	48 89 75 d8          	mov    %rsi,-0x28(%rbp)
   4212d:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
   42131:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
   42135:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
   42139:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_start(val, format);
   4213d:	c7 45 b8 08 00 00 00 	movl   $0x8,-0x48(%rbp)
   42144:	48 8d 45 10          	lea    0x10(%rbp),%rax
   42148:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   4214c:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   42150:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    log_vprintf(format, val);
   42154:	48 8d 75 b8          	lea    -0x48(%rbp),%rsi
   42158:	e8 96 ff ff ff       	call   420f3 <log_vprintf(char const*, __va_list_tag*)>
}
   4215d:	c9                   	leave  
   4215e:	c3                   	ret    

000000000004215f <error_vprintf(int, int, char const*, __va_list_tag*)>:
int error_vprintf(int cpos, int color, const char* format, va_list val) {
   4215f:	f3 0f 1e fa          	endbr64 
   42163:	55                   	push   %rbp
   42164:	48 89 e5             	mov    %rsp,%rbp
   42167:	41 56                	push   %r14
   42169:	41 55                	push   %r13
   4216b:	41 54                	push   %r12
   4216d:	53                   	push   %rbx
   4216e:	48 83 ec 20          	sub    $0x20,%rsp
   42172:	41 89 fd             	mov    %edi,%r13d
   42175:	41 89 f6             	mov    %esi,%r14d
   42178:	49 89 d4             	mov    %rdx,%r12
   4217b:	48 89 cb             	mov    %rcx,%rbx
    __builtin_va_copy(val2, val);
   4217e:	48 8b 01             	mov    (%rcx),%rax
   42181:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
   42185:	48 8b 41 08          	mov    0x8(%rcx),%rax
   42189:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   4218d:	48 8b 41 10          	mov    0x10(%rcx),%rax
   42191:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    log_vprintf(format, val2);
   42195:	48 8d 75 c8          	lea    -0x38(%rbp),%rsi
   42199:	48 89 d7             	mov    %rdx,%rdi
   4219c:	e8 52 ff ff ff       	call   420f3 <log_vprintf(char const*, __va_list_tag*)>
    return console_vprintf(cpos, color, format, val);
   421a1:	48 89 d9             	mov    %rbx,%rcx
   421a4:	4c 89 e2             	mov    %r12,%rdx
   421a7:	44 89 f6             	mov    %r14d,%esi
   421aa:	44 89 ef             	mov    %r13d,%edi
   421ad:	e8 56 22 00 00       	call   44408 <console_vprintf(int, int, char const*, __va_list_tag*)>
}
   421b2:	48 83 c4 20          	add    $0x20,%rsp
   421b6:	5b                   	pop    %rbx
   421b7:	41 5c                	pop    %r12
   421b9:	41 5d                	pop    %r13
   421bb:	41 5e                	pop    %r14
   421bd:	5d                   	pop    %rbp
   421be:	c3                   	ret    

00000000000421bf <error_printf(int, int, char const*, ...)>:
int error_printf(int cpos, int color, const char* format, ...) {
   421bf:	f3 0f 1e fa          	endbr64 
   421c3:	55                   	push   %rbp
   421c4:	48 89 e5             	mov    %rsp,%rbp
   421c7:	48 83 ec 50          	sub    $0x50,%rsp
   421cb:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
   421cf:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
   421d3:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_start(val, format);
   421d7:	c7 45 b8 18 00 00 00 	movl   $0x18,-0x48(%rbp)
   421de:	48 8d 45 10          	lea    0x10(%rbp),%rax
   421e2:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   421e6:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   421ea:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    cpos = error_vprintf(cpos, color, format, val);
   421ee:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
   421f2:	e8 68 ff ff ff       	call   4215f <error_vprintf(int, int, char const*, __va_list_tag*)>
}
   421f7:	c9                   	leave  
   421f8:	c3                   	ret    

00000000000421f9 <error_printf(char const*, ...)>:
void error_printf(const char* format, ...) {
   421f9:	f3 0f 1e fa          	endbr64 
   421fd:	55                   	push   %rbp
   421fe:	48 89 e5             	mov    %rsp,%rbp
   42201:	48 83 ec 50          	sub    $0x50,%rsp
   42205:	48 89 75 d8          	mov    %rsi,-0x28(%rbp)
   42209:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
   4220d:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
   42211:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
   42215:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_start(val, format);
   42219:	c7 45 b8 08 00 00 00 	movl   $0x8,-0x48(%rbp)
   42220:	48 8d 45 10          	lea    0x10(%rbp),%rax
   42224:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   42228:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   4222c:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    error_vprintf(-1, COLOR_ERROR, format, val);
   42230:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
   42234:	48 89 fa             	mov    %rdi,%rdx
   42237:	be 00 c0 00 00       	mov    $0xc000,%esi
   4223c:	bf ff ff ff ff       	mov    $0xffffffff,%edi
   42241:	e8 19 ff ff ff       	call   4215f <error_vprintf(int, int, char const*, __va_list_tag*)>
}
   42246:	c9                   	leave  
   42247:	c3                   	ret    

0000000000042248 <assert_fail(char const*, int, char const*)>:
void assert_fail(const char* file, int line, const char* msg) {
   42248:	f3 0f 1e fa          	endbr64 
   4224c:	55                   	push   %rbp
   4224d:	48 89 e5             	mov    %rsp,%rbp
   42250:	41 57                	push   %r15
   42252:	41 56                	push   %r14
   42254:	41 55                	push   %r13
   42256:	41 54                	push   %r12
   42258:	53                   	push   %rbx
   42259:	48 83 ec 18          	sub    $0x18,%rsp
   4225d:	48 89 d1             	mov    %rdx,%rcx
    cursorpos = CPOS(23, 0);
   42260:	c7 05 92 6d 07 00 30 	movl   $0x730,0x76d92(%rip)        # b8ffc <cursorpos>
   42267:	07 00 00 
    error_printf("%s:%d: kernel assertion '%s' failed\n", file, line, msg);
   4226a:	89 f2                	mov    %esi,%edx
   4226c:	48 89 fe             	mov    %rdi,%rsi
   4226f:	bf 90 47 04 00       	mov    $0x44790,%edi
   42274:	b0 00                	mov    $0x0,%al
   42276:	e8 7e ff ff ff       	call   421f9 <error_printf(char const*, ...)>
    return x;
}

__always_inline uintptr_t rdrsp() {
    uintptr_t x;
    asm volatile("movq %%rsp, %0" : "=r" (x));
   4227b:	48 89 e0             	mov    %rsp,%rax
   4227e:	48 89 c2             	mov    %rax,%rdx
    return x - (x % multiple);
}
template <typename T>
inline constexpr T round_up(T x, unsigned multiple) {
    static_assert(std::is_unsigned<T>::value, "T must be unsigned");
    return round_down(x + multiple - 1, multiple);
   42281:	4c 8d a8 ff 0f 00 00 	lea    0xfff(%rax),%r13
   42288:	49 81 e5 00 f0 ff ff 	and    $0xfffffffffffff000,%r13
    asm volatile("movq %%rbp, %0" : "=r" (x));
   4228f:	48 89 eb             	mov    %rbp,%rbx
    int frame = 1;
   42292:	41 bc 01 00 00 00    	mov    $0x1,%r12d
        return rbp_ >= rsp_ && stack_top_ - rbp_ >= 16;
   42298:	48 39 da             	cmp    %rbx,%rdx
   4229b:	77 63                	ja     42300 <assert_fail(char const*, int, char const*)+0xb8>
   4229d:	4c 89 e8             	mov    %r13,%rax
   422a0:	48 29 d8             	sub    %rbx,%rax
   422a3:	48 83 f8 0f          	cmp    $0xf,%rax
   422a7:	76 57                	jbe    42300 <assert_fail(char const*, int, char const*)+0xb8>
        uintptr_t* rbpx = reinterpret_cast<uintptr_t*>(rbp_);
   422a9:	49 89 df             	mov    %rbx,%r15
        return rbpx[1];
   422ac:	4c 8b 73 08          	mov    0x8(%rbx),%r14
        if (lookup_symbol(ret_rip, &name, nullptr)) {
   422b0:	ba 00 00 00 00       	mov    $0x0,%edx
   422b5:	48 8d 75 c8          	lea    -0x38(%rbp),%rsi
   422b9:	4c 89 f7             	mov    %r14,%rdi
   422bc:	e8 5d fd ff ff       	call   4201e <lookup_symbol(unsigned long, char const**, unsigned long*)>
   422c1:	84 c0                	test   %al,%al
   422c3:	74 22                	je     422e7 <assert_fail(char const*, int, char const*)+0x9f>
            error_printf("  #%d  %p  <%s>\n", frame, ret_rip, name);
   422c5:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
   422c9:	4c 89 f2             	mov    %r14,%rdx
   422cc:	44 89 e6             	mov    %r12d,%esi
   422cf:	bf 73 49 04 00       	mov    $0x44973,%edi
   422d4:	b0 00                	mov    $0x0,%al
   422d6:	e8 1e ff ff ff       	call   421f9 <error_printf(char const*, ...)>
        rsp_ = rbp_ + 16;
   422db:	48 8d 53 10          	lea    0x10(%rbx),%rdx
        rbp_ = rbpx[0];
   422df:	49 8b 1f             	mov    (%r15),%rbx
         bt.step(), ++frame) {
   422e2:	41 ff c4             	inc    %r12d
   422e5:	eb b1                	jmp    42298 <assert_fail(char const*, int, char const*)+0x50>
        } else if (ret_rip) {
   422e7:	4d 85 f6             	test   %r14,%r14
   422ea:	74 ef                	je     422db <assert_fail(char const*, int, char const*)+0x93>
            error_printf("  #%d  %p\n", frame, ret_rip);
   422ec:	4c 89 f2             	mov    %r14,%rdx
   422ef:	44 89 e6             	mov    %r12d,%esi
   422f2:	bf 86 49 04 00       	mov    $0x44986,%edi
   422f7:	b0 00                	mov    $0x0,%al
   422f9:	e8 fb fe ff ff       	call   421f9 <error_printf(char const*, ...)>
   422fe:	eb db                	jmp    422db <assert_fail(char const*, int, char const*)+0x93>
        check_keyboard();
   42300:	e8 e9 07 00 00       	call   42aee <check_keyboard()>
    while (true) {
   42305:	eb f9                	jmp    42300 <assert_fail(char const*, int, char const*)+0xb8>

0000000000042307 <init_hardware()>:
void init_hardware() {
   42307:	f3 0f 1e fa          	endbr64 
   4230b:	55                   	push   %rbp
   4230c:	48 89 e5             	mov    %rsp,%rbp
   4230f:	53                   	push   %rbx
   42310:	48 83 ec 38          	sub    $0x38,%rsp
    stash_kernel_data(false);
   42314:	bf 00 00 00 00       	mov    $0x0,%edi
   42319:	e8 13 fa ff ff       	call   41d31 <stash_kernel_data(bool)>
    kernel_gdt_segments[0] = 0;
   4231e:	48 c7 05 f7 6c 01 00 	movq   $0x0,0x16cf7(%rip)        # 59020 <kernel_gdt_segments>
   42325:	00 00 00 00 
    *segment = type
   42329:	48 b8 00 00 00 00 00 	movabs $0x20980000000000,%rax
   42330:	98 20 00 
   42333:	48 89 05 ee 6c 01 00 	mov    %rax,0x16cee(%rip)        # 59028 <kernel_gdt_segments+0x8>
   4233a:	48 b8 00 00 00 00 00 	movabs $0x920000000000,%rax
   42341:	92 00 00 
   42344:	48 89 05 e5 6c 01 00 	mov    %rax,0x16ce5(%rip)        # 59030 <kernel_gdt_segments+0x10>
   4234b:	48 b8 00 00 00 00 00 	movabs $0x20f80000000000,%rax
   42352:	f8 20 00 
   42355:	48 89 05 dc 6c 01 00 	mov    %rax,0x16cdc(%rip)        # 59038 <kernel_gdt_segments+0x18>
   4235c:	48 b8 00 00 00 00 00 	movabs $0xf20000000000,%rax
   42363:	f2 00 00 
   42366:	48 89 05 d3 6c 01 00 	mov    %rax,0x16cd3(%rip)        # 59040 <kernel_gdt_segments+0x20>
    set_sys_segment(&kernel_gdt_segments[SEGSEL_TASKSTATE >> 3],
   4236d:	ba 20 f0 05 00       	mov    $0x5f020,%edx
    segment[0] = ((addr & 0x0000000000FFFFFFUL) << 16)
   42372:	48 89 d0             	mov    %rdx,%rax
   42375:	48 c1 e0 10          	shl    $0x10,%rax
   42379:	48 b9 00 00 ff ff ff 	movabs $0xffffff0000,%rcx
   42380:	00 00 00 
   42383:	48 21 c8             	and    %rcx,%rax
        | ((addr & 0x00000000FF000000UL) << 32)
   42386:	48 89 d1             	mov    %rdx,%rcx
   42389:	48 c1 e1 20          	shl    $0x20,%rcx
   4238d:	48 be 00 00 00 00 00 	movabs $0xff00000000000000,%rsi
   42394:	00 00 ff 
   42397:	48 21 f1             	and    %rsi,%rcx
   4239a:	48 09 c8             	or     %rcx,%rax
        | X86SEG_P;                   // segment present
   4239d:	48 b9 67 00 00 00 00 	movabs $0x890000000067,%rcx
   423a4:	89 00 00 
   423a7:	48 09 c8             	or     %rcx,%rax
   423aa:	48 89 05 97 6c 01 00 	mov    %rax,0x16c97(%rip)        # 59048 <kernel_gdt_segments+0x28>
    segment[1] = addr >> 32;
   423b1:	48 c1 ea 20          	shr    $0x20,%rdx
   423b5:	48 89 15 94 6c 01 00 	mov    %rdx,0x16c94(%rip)        # 59050 <kernel_gdt_segments+0x30>
    gdt.limit = (sizeof(uint64_t) * 3) - 1;
   423bc:	66 c7 45 c6 17 00    	movw   $0x17,-0x3a(%rbp)
    gdt.base = (uint64_t) kernel_gdt_segments;
   423c2:	48 c7 45 c8 20 90 05 	movq   $0x59020,-0x38(%rbp)
   423c9:	00 
    asm volatile("lgdt %0" : : "m" (gdt.limit));
   423ca:	0f 01 55 c6          	lgdt   -0x3a(%rbp)
    memset(kernel_pagetable, 0, sizeof(kernel_pagetable));
   423ce:	ba 00 50 00 00       	mov    $0x5000,%edx
   423d3:	be 00 00 00 00       	mov    $0x0,%esi
   423d8:	bf 00 a0 05 00       	mov    $0x5a000,%edi
   423dd:	e8 87 15 00 00       	call   43969 <memset>
        (x86_64_pageentry_t) &kernel_pagetable[1] | PTE_P | PTE_W | PTE_U;
   423e2:	b8 00 b0 05 00       	mov    $0x5b000,%eax
   423e7:	48 83 c8 07          	or     $0x7,%rax
   423eb:	48 89 05 0e 7c 01 00 	mov    %rax,0x17c0e(%rip)        # 5a000 <kernel_pagetable>
        (x86_64_pageentry_t) &kernel_pagetable[2] | PTE_P | PTE_W | PTE_U;
   423f2:	b8 00 c0 05 00       	mov    $0x5c000,%eax
   423f7:	48 83 c8 07          	or     $0x7,%rax
   423fb:	48 89 05 fe 8b 01 00 	mov    %rax,0x18bfe(%rip)        # 5b000 <kernel_pagetable+0x1000>
        (x86_64_pageentry_t) &kernel_pagetable[3] | PTE_P | PTE_W | PTE_U;
   42402:	b8 00 d0 05 00       	mov    $0x5d000,%eax
   42407:	48 83 c8 07          	or     $0x7,%rax
   4240b:	48 89 05 ee 9b 01 00 	mov    %rax,0x19bee(%rip)        # 5c000 <kernel_pagetable+0x2000>
        (x86_64_pageentry_t) &kernel_pagetable[4] | PTE_P | PTE_W | PTE_U;
   42412:	b8 00 e0 05 00       	mov    $0x5e000,%eax
   42417:	48 83 c8 07          	or     $0x7,%rax
   4241b:	48 89 05 e6 9b 01 00 	mov    %rax,0x19be6(%rip)        # 5c008 <kernel_pagetable+0x2008>
    kernel_pagetable[1].entry[1] =
   42422:	48 c7 05 db 8b 01 00 	movq   $0x40000083,0x18bdb(%rip)        # 5b008 <kernel_pagetable+0x1008>
   42429:	83 00 00 40 
    kernel_pagetable[1].entry[2] =
   4242d:	b8 83 00 00 80       	mov    $0x80000083,%eax
   42432:	48 89 05 d7 8b 01 00 	mov    %rax,0x18bd7(%rip)        # 5b010 <kernel_pagetable+0x1010>
    kernel_pagetable[1].entry[3] =
   42439:	48 8d 80 00 00 00 40 	lea    0x40000000(%rax),%rax
   42440:	48 89 05 d1 8b 01 00 	mov    %rax,0x18bd1(%rip)        # 5b018 <kernel_pagetable+0x1018>
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   42447:	48 c7 45 d0 00 a0 05 	movq   $0x5a000,-0x30(%rbp)
   4244e:	00 
   4244f:	48 c7 45 d8 00 a0 05 	movq   $0x5a000,-0x28(%rbp)
   42456:	00 
   42457:	c7 45 e0 03 00 00 00 	movl   $0x3,-0x20(%rbp)
   4245e:	c7 45 e4 ff 0f 00 00 	movl   $0xfff,-0x1c(%rbp)
   42465:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
   4246c:	00 
    real_find(va);
   4246d:	be 00 00 00 00       	mov    $0x0,%esi
   42472:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   42476:	e8 81 f4 ff ff       	call   418fc <vmiter::real_find(unsigned long)>
    return va_;
   4247b:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
         it.va() < MEMSIZE_PHYSICAL;
   4247f:	48 81 fe ff ff 1f 00 	cmp    $0x1fffff,%rsi
   42486:	76 72                	jbe    424fa <init_hardware()+0x1f3>
    asm volatile("movq %0, %%cr3" : : "r" (x) : "memory");
   42488:	b8 00 a0 05 00       	mov    $0x5a000,%eax
   4248d:	0f 22 d8             	mov    %rax,%cr3
    cursorpos = 3 * CONSOLE_COLUMNS;
   42490:	c7 05 62 6b 07 00 f0 	movl   $0xf0,0x76b62(%rip)        # b8ffc <cursorpos>
   42497:	00 00 00 
   4249a:	b9 a0 65 05 00       	mov    $0x565a0,%ecx
    for (int i = 0; i < 256; ++i) {
   4249f:	be 00 00 00 00       	mov    $0x0,%esi
        | ((addr & 0x00000000FFFF0000UL) << 32);
   424a4:	49 b9 00 00 00 00 00 	movabs $0x600000000000,%r9
   424ab:	60 00 00 
   424ae:	49 b8 00 00 00 00 00 	movabs $0xffff000000000000,%r8
   424b5:	00 ff ff 
   424b8:	48 bf 00 00 08 00 00 	movabs $0x8e0000080000,%rdi
   424bf:	8e 00 00 
   424c2:	e9 b2 00 00 00       	jmp    42579 <init_hardware()+0x272>
    int r = try_map(pa, perm);
   424c7:	ba 07 00 00 00       	mov    $0x7,%edx
   424cc:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   424d0:	e8 29 f5 ff ff       	call   419fe <vmiter::try_map(unsigned long, int)>
    assert(r == 0);
   424d5:	85 c0                	test   %eax,%eax
   424d7:	75 28                	jne    42501 <init_hardware()+0x1fa>
    return find(va_ + delta);
   424d9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   424dd:	48 8d b0 00 10 00 00 	lea    0x1000(%rax),%rsi
    real_find(va);
   424e4:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   424e8:	e8 0f f4 ff ff       	call   418fc <vmiter::real_find(unsigned long)>
    return va_;
   424ed:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
         it.va() < MEMSIZE_PHYSICAL;
   424f1:	48 81 fe ff ff 1f 00 	cmp    $0x1fffff,%rsi
   424f8:	77 8e                	ja     42488 <init_hardware()+0x181>
        if (it.va() != 0) {
   424fa:	48 85 f6             	test   %rsi,%rsi
   424fd:	74 da                	je     424d9 <init_hardware()+0x1d2>
   424ff:	eb c6                	jmp    424c7 <init_hardware()+0x1c0>
    assert(r == 0);
   42501:	ba eb 44 04 00       	mov    $0x444eb,%edx
   42506:	be b1 00 00 00       	mov    $0xb1,%esi
   4250b:	bf f2 44 04 00       	mov    $0x444f2,%edi
   42510:	e8 33 fd ff ff       	call   42248 <assert_fail(char const*, int, char const*)>
    assert(cpuid(1).edx & (1 << 9));
   42515:	ba 91 49 04 00       	mov    $0x44991,%edx
   4251a:	be b7 00 00 00       	mov    $0xb7,%esi
   4251f:	bf a9 49 04 00       	mov    $0x449a9,%edi
   42524:	e8 1f fd ff ff       	call   42248 <assert_fail(char const*, int, char const*)>
    assert(apic_base & IA32_APIC_BASE_ENABLED);
   42529:	ba b8 47 04 00       	mov    $0x447b8,%edx
   4252e:	be b9 00 00 00       	mov    $0xb9,%esi
   42533:	bf a9 49 04 00       	mov    $0x449a9,%edi
   42538:	e8 0b fd ff ff       	call   42248 <assert_fail(char const*, int, char const*)>
    assert((apic_base & 0xFFFFFFFFF000) == lapicstate::lapic_pa);
   4253d:	ba e0 47 04 00       	mov    $0x447e0,%edx
   42542:	be ba 00 00 00       	mov    $0xba,%esi
   42547:	bf a9 49 04 00       	mov    $0x449a9,%edi
   4254c:	e8 f7 fc ff ff       	call   42248 <assert_fail(char const*, int, char const*)>
    gate->gd_low = (addr & 0x000000000000FFFFUL)
   42551:	0f b7 c2             	movzwl %dx,%eax
        | ((addr & 0x00000000FFFF0000UL) << 32);
   42554:	4c 09 c8             	or     %r9,%rax
   42557:	49 89 d2             	mov    %rdx,%r10
   4255a:	49 c1 e2 20          	shl    $0x20,%r10
   4255e:	4d 21 c2             	and    %r8,%r10
   42561:	4c 09 d0             	or     %r10,%rax
   42564:	48 09 f8             	or     %rdi,%rax
   42567:	48 89 01             	mov    %rax,(%rcx)
    gate->gd_high = addr >> 32;
   4256a:	48 c1 ea 20          	shr    $0x20,%rdx
   4256e:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    for (int i = 0; i < 256; ++i) {
   42572:	83 c6 01             	add    $0x1,%esi
   42575:	48 83 c1 10          	add    $0x10,%rcx
        uintptr_t addr = interrupt_descriptors[i].gd_low;
   42579:	48 8b 11             	mov    (%rcx),%rdx
        set_gate(&interrupt_descriptors[i], addr,
   4257c:	83 fe 03             	cmp    $0x3,%esi
   4257f:	74 d0                	je     42551 <init_hardware()+0x24a>
        | ((addr & 0x00000000FFFF0000UL) << 32);
   42581:	48 89 d0             	mov    %rdx,%rax
   42584:	48 c1 e0 20          	shl    $0x20,%rax
   42588:	4c 21 c0             	and    %r8,%rax
    gate->gd_low = (addr & 0x000000000000FFFFUL)
   4258b:	44 0f b7 d2          	movzwl %dx,%r10d
        | ((addr & 0x00000000FFFF0000UL) << 32);
   4258f:	4c 09 d0             	or     %r10,%rax
   42592:	48 09 f8             	or     %rdi,%rax
   42595:	48 89 01             	mov    %rax,(%rcx)
    gate->gd_high = addr >> 32;
   42598:	48 c1 ea 20          	shr    $0x20,%rdx
   4259c:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    for (int i = 0; i < 256; ++i) {
   425a0:	83 c6 01             	add    $0x1,%esi
   425a3:	48 83 c1 10          	add    $0x10,%rcx
   425a7:	81 fe 00 01 00 00    	cmp    $0x100,%esi
   425ad:	75 ca                	jne    42579 <init_hardware()+0x272>
    uint32_t eax, ebx, ecx, edx;
} x86_64_cpuid_t;

__always_inline x86_64_cpuid_t cpuid(uint32_t leaf) {
    x86_64_cpuid_t ret;
    asm volatile("cpuid"
   425af:	b8 01 00 00 00       	mov    $0x1,%eax
   425b4:	0f a2                	cpuid  
    assert(cpuid(1).edx & (1 << 9));
   425b6:	f6 c6 02             	test   $0x2,%dh
   425b9:	0f 84 56 ff ff ff    	je     42515 <init_hardware()+0x20e>
    return ret;
}

__always_inline uint64_t rdmsr(uint32_t msr) {
    uint64_t low, high;
    asm volatile("rdmsr" : "=a" (low), "=d" (high) : "c" (msr));
   425bf:	b9 1b 00 00 00       	mov    $0x1b,%ecx
   425c4:	0f 32                	rdmsr  
    return low | (high << 32);
   425c6:	48 c1 e2 20          	shl    $0x20,%rdx
   425ca:	48 09 c2             	or     %rax,%rdx
    assert(apic_base & IA32_APIC_BASE_ENABLED);
   425cd:	f6 c4 08             	test   $0x8,%ah
   425d0:	0f 84 53 ff ff ff    	je     42529 <init_hardware()+0x222>
    assert((apic_base & 0xFFFFFFFFF000) == lapicstate::lapic_pa);
   425d6:	48 b8 00 f0 ff ff ff 	movabs $0xfffffffff000,%rax
   425dd:	ff 00 00 
   425e0:	48 21 c2             	and    %rax,%rdx
   425e3:	b8 00 00 e0 fe       	mov    $0xfee00000,%eax
   425e8:	48 39 c2             	cmp    %rax,%rdx
   425eb:	0f 85 4c ff ff ff    	jne    4253d <init_hardware()+0x236>
    asm volatile("outb %0, %w1" : : "a" (data), "d" (port));
   425f1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   425f6:	ba 21 00 00 00       	mov    $0x21,%edx
   425fb:	ee                   	out    %al,(%dx)
   425fc:	ba a1 00 00 00       	mov    $0xa1,%edx
   42601:	ee                   	out    %al,(%dx)
    for (auto fp = __init_array_start; fp != __init_array_end; ++fp) {
   42602:	b8 30 55 04 00       	mov    $0x45530,%eax
   42607:	48 3d 30 55 04 00    	cmp    $0x45530,%rax
   4260d:	74 12                	je     42621 <init_hardware()+0x31a>
   4260f:	48 89 c3             	mov    %rax,%rbx
        (*fp)();
   42612:	ff 13                	call   *(%rbx)
    for (auto fp = __init_array_start; fp != __init_array_end; ++fp) {
   42614:	48 83 c3 08          	add    $0x8,%rbx
   42618:	48 81 fb 30 55 04 00 	cmp    $0x45530,%rbx
   4261f:	75 f1                	jne    42612 <init_hardware()+0x30b>
    memset(&kernel_taskstate, 0, sizeof(kernel_taskstate));
   42621:	ba 68 00 00 00       	mov    $0x68,%edx
   42626:	be 00 00 00 00       	mov    $0x0,%esi
   4262b:	bf 20 f0 05 00       	mov    $0x5f020,%edi
   42630:	e8 34 13 00 00       	call   43969 <memset>
    kernel_taskstate.ts_rsp[0] = KERNEL_STACK_TOP;
   42635:	48 c7 05 e4 c9 01 00 	movq   $0x80000,0x1c9e4(%rip)        # 5f024 <kernel_taskstate+0x4>
   4263c:	00 00 08 00 
    gdt.limit = sizeof(kernel_gdt_segments) - 1;
   42640:	66 c7 45 c6 37 00    	movw   $0x37,-0x3a(%rbp)
    gdt.base = (uint64_t) kernel_gdt_segments;
   42646:	48 c7 45 c8 20 90 05 	movq   $0x59020,-0x38(%rbp)
   4264d:	00 
    idt.limit = sizeof(interrupt_descriptors) - 1;
   4264e:	66 c7 45 d6 ff 0f    	movw   $0xfff,-0x2a(%rbp)
    idt.base = (uint64_t) interrupt_descriptors;
   42654:	48 c7 45 d8 a0 65 05 	movq   $0x565a0,-0x28(%rbp)
   4265b:	00 
    asm volatile("lgdt %0; ltr %1; lidt %2"
   4265c:	b8 28 00 00 00       	mov    $0x28,%eax
   42661:	0f 01 55 c6          	lgdt   -0x3a(%rbp)
   42665:	0f 00 d8             	ltr    %ax
   42668:	0f 01 5d d6          	lidt   -0x2a(%rbp)
    asm volatile("movw %%ax, %%fs; movw %%ax, %%gs"
   4266c:	b8 10 00 00 00       	mov    $0x10,%eax
   42671:	8e e0                	mov    %eax,%fs
   42673:	8e e8                	mov    %eax,%gs
    asm volatile("movq %%cr0, %0" : "=r" (x));
   42675:	0f 20 c0             	mov    %cr0,%rax
    wrcr0(cr0);
   42678:	0d 23 00 05 80       	or     $0x80050023,%eax
    asm volatile("movq %0, %%cr0" : : "r" (x));
   4267d:	0f 22 c0             	mov    %rax,%cr0
}
__always_inline void wrmsr(uint32_t msr, uint64_t x) {
    asm volatile("wrmsr" : : "c" (msr), "a" ((uint32_t) x), "d" (x >> 32));
   42680:	b9 81 00 00 c0       	mov    $0xc0000081,%ecx
   42685:	b8 00 00 00 00       	mov    $0x0,%eax
   4268a:	ba 08 00 18 00       	mov    $0x180008,%edx
   4268f:	0f 30                	wrmsr  
    wrmsr(MSR_IA32_LSTAR, reinterpret_cast<uint64_t>(syscall_entry));
   42691:	b8 d6 0a 04 00       	mov    $0x40ad6,%eax
   42696:	48 89 c2             	mov    %rax,%rdx
   42699:	48 c1 ea 20          	shr    $0x20,%rdx
   4269d:	b9 82 00 00 c0       	mov    $0xc0000082,%ecx
   426a2:	0f 30                	wrmsr  
   426a4:	b9 84 00 00 c0       	mov    $0xc0000084,%ecx
   426a9:	b8 00 77 04 00       	mov    $0x47700,%eax
   426ae:	ba 00 00 00 00       	mov    $0x0,%edx
   426b3:	0f 30                	wrmsr  
    return reg_[reg].v;
   426b5:	b8 00 00 e0 fe       	mov    $0xfee00000,%eax
   426ba:	8b 90 f0 00 00 00    	mov    0xf0(%rax),%edx
    write(reg_svr, (read(reg_svr) & ~0xFF) | 0x100 | vector);
   426c0:	81 e2 00 fe ff ff    	and    $0xfffffe00,%edx
   426c6:	81 ca 3f 01 00 00    	or     $0x13f,%edx
    reg_[reg].v = v;
   426cc:	89 90 f0 00 00 00    	mov    %edx,0xf0(%rax)
   426d2:	c7 80 e0 03 00 00 0b 	movl   $0xb,0x3e0(%rax)
   426d9:	00 00 00 
   426dc:	c7 80 20 03 00 00 20 	movl   $0x20020,0x320(%rax)
   426e3:	00 02 00 
   426e6:	c7 80 80 03 00 00 00 	movl   $0x0,0x380(%rax)
   426ed:	00 00 00 
   426f0:	c7 80 50 03 00 00 00 	movl   $0x10000,0x350(%rax)
   426f7:	00 01 00 
   426fa:	c7 80 60 03 00 00 00 	movl   $0x10000,0x360(%rax)
   42701:	00 01 00 
   42704:	c7 80 70 03 00 00 33 	movl   $0x33,0x370(%rax)
   4270b:	00 00 00 
   4270e:	c7 80 80 02 00 00 00 	movl   $0x0,0x280(%rax)
   42715:	00 00 00 
    return reg_[reg].v;
   42718:	8b 90 80 02 00 00    	mov    0x280(%rax),%edx
    reg_[reg].v = v;
   4271e:	c7 80 b0 00 00 00 00 	movl   $0x0,0xb0(%rax)
   42725:	00 00 00 
}
   42728:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
   4272c:	c9                   	leave  
   4272d:	c3                   	ret    

000000000004272e <check_pagetable(x86_64_pagetable*)>:
void check_pagetable(x86_64_pagetable* pagetable) {
   4272e:	f3 0f 1e fa          	endbr64 
   42732:	55                   	push   %rbp
   42733:	48 89 e5             	mov    %rsp,%rbp
   42736:	53                   	push   %rbx
   42737:	48 83 ec 28          	sub    $0x28,%rsp
    assert(((uintptr_t) pagetable & PAGEOFFMASK) == 0); // must be page aligned
   4273b:	f7 c7 ff 0f 00 00    	test   $0xfff,%edi
   42741:	0f 85 74 01 00 00    	jne    428bb <check_pagetable(x86_64_pagetable*)+0x18d>
   42747:	48 89 fb             	mov    %rdi,%rbx
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   4274a:	48 89 7d d0          	mov    %rdi,-0x30(%rbp)
   4274e:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
   42752:	c7 45 e0 03 00 00 00 	movl   $0x3,-0x20(%rbp)
   42759:	c7 45 e4 ff 0f 00 00 	movl   $0xfff,-0x1c(%rbp)
   42760:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
   42767:	00 
    real_find(va);
   42768:	be 72 0a 04 00       	mov    $0x40a72,%esi
   4276d:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   42771:	e8 86 f1 ff ff       	call   418fc <vmiter::real_find(unsigned long)>
    if (*pep_ & PTE_P) {
   42776:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   4277a:	48 8b 08             	mov    (%rax),%rcx
   4277d:	f6 c1 01             	test   $0x1,%cl
   42780:	0f 84 5b 01 00 00    	je     428e1 <check_pagetable(x86_64_pagetable*)+0x1b3>
        if (level_ > 0) {
   42786:	8b 45 e0             	mov    -0x20(%rbp),%eax
            pa &= ~0x1000UL;
   42789:	48 ba 00 e0 ff ff ff 	movabs $0xfffffffffe000,%rdx
   42790:	ff 0f 00 
   42793:	48 21 ca             	and    %rcx,%rdx
        if (level_ > 0) {
   42796:	85 c0                	test   %eax,%eax
   42798:	0f 8e 31 01 00 00    	jle    428cf <check_pagetable(x86_64_pagetable*)+0x1a1>
    return (1UL << (PAGEOFFBITS + level * PAGEINDEXBITS)) - 1;
   4279e:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   427a2:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   427a9:	48 d3 e0             	shl    %cl,%rax
   427ac:	48 f7 d0             	not    %rax
   427af:	48 23 45 e8          	and    -0x18(%rbp),%rax
   427b3:	48 01 d0             	add    %rdx,%rax
    assert(vmiter(pagetable, (uintptr_t) exception_entry).pa()
   427b6:	ba 72 0a 04 00       	mov    $0x40a72,%edx
   427bb:	48 39 c2             	cmp    %rax,%rdx
   427be:	0f 85 1d 01 00 00    	jne    428e1 <check_pagetable(x86_64_pagetable*)+0x1b3>
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   427c4:	48 c7 45 d0 00 a0 05 	movq   $0x5a000,-0x30(%rbp)
   427cb:	00 
   427cc:	48 c7 45 d8 00 a0 05 	movq   $0x5a000,-0x28(%rbp)
   427d3:	00 
   427d4:	c7 45 e0 03 00 00 00 	movl   $0x3,-0x20(%rbp)
   427db:	c7 45 e4 ff 0f 00 00 	movl   $0xfff,-0x1c(%rbp)
   427e2:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
   427e9:	00 
    real_find(va);
   427ea:	48 89 de             	mov    %rbx,%rsi
   427ed:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   427f1:	e8 06 f1 ff ff       	call   418fc <vmiter::real_find(unsigned long)>
    if (*pep_ & PTE_P) {
   427f6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   427fa:	48 8b 08             	mov    (%rax),%rcx
   427fd:	f6 c1 01             	test   $0x1,%cl
   42800:	0f 84 01 01 00 00    	je     42907 <check_pagetable(x86_64_pagetable*)+0x1d9>
        if (level_ > 0) {
   42806:	8b 45 e0             	mov    -0x20(%rbp),%eax
            pa &= ~0x1000UL;
   42809:	48 ba 00 e0 ff ff ff 	movabs $0xfffffffffe000,%rdx
   42810:	ff 0f 00 
   42813:	48 21 ca             	and    %rcx,%rdx
        if (level_ > 0) {
   42816:	85 c0                	test   %eax,%eax
   42818:	0f 8e d7 00 00 00    	jle    428f5 <check_pagetable(x86_64_pagetable*)+0x1c7>
   4281e:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   42822:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   42829:	48 d3 e0             	shl    %cl,%rax
   4282c:	48 f7 d0             	not    %rax
   4282f:	48 23 45 e8          	and    -0x18(%rbp),%rax
   42833:	48 01 d0             	add    %rdx,%rax
    assert(vmiter(kernel_pagetable, (uintptr_t) pagetable).pa()
   42836:	48 39 c3             	cmp    %rax,%rbx
   42839:	0f 85 c8 00 00 00    	jne    42907 <check_pagetable(x86_64_pagetable*)+0x1d9>
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   4283f:	48 89 5d d0          	mov    %rbx,-0x30(%rbp)
   42843:	48 89 5d d8          	mov    %rbx,-0x28(%rbp)
   42847:	c7 45 e0 03 00 00 00 	movl   $0x3,-0x20(%rbp)
   4284e:	c7 45 e4 ff 0f 00 00 	movl   $0xfff,-0x1c(%rbp)
   42855:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
   4285c:	00 
    real_find(va);
   4285d:	be 00 a0 05 00       	mov    $0x5a000,%esi
   42862:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   42866:	e8 91 f0 ff ff       	call   418fc <vmiter::real_find(unsigned long)>
    if (*pep_ & PTE_P) {
   4286b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   4286f:	48 8b 08             	mov    (%rax),%rcx
   42872:	f6 c1 01             	test   $0x1,%cl
   42875:	0f 84 b2 00 00 00    	je     4292d <check_pagetable(x86_64_pagetable*)+0x1ff>
        if (level_ > 0) {
   4287b:	8b 45 e0             	mov    -0x20(%rbp),%eax
            pa &= ~0x1000UL;
   4287e:	48 ba 00 e0 ff ff ff 	movabs $0xfffffffffe000,%rdx
   42885:	ff 0f 00 
   42888:	48 21 ca             	and    %rcx,%rdx
        if (level_ > 0) {
   4288b:	85 c0                	test   %eax,%eax
   4288d:	0f 8e 88 00 00 00    	jle    4291b <check_pagetable(x86_64_pagetable*)+0x1ed>
   42893:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   42897:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   4289e:	48 d3 e0             	shl    %cl,%rax
   428a1:	48 f7 d0             	not    %rax
   428a4:	48 23 45 e8          	and    -0x18(%rbp),%rax
   428a8:	48 01 d0             	add    %rdx,%rax
    assert(vmiter(pagetable, (uintptr_t) kernel_pagetable).pa()
   428ab:	ba 00 a0 05 00       	mov    $0x5a000,%edx
   428b0:	48 39 c2             	cmp    %rax,%rdx
   428b3:	75 78                	jne    4292d <check_pagetable(x86_64_pagetable*)+0x1ff>
}
   428b5:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
   428b9:	c9                   	leave  
   428ba:	c3                   	ret    
    assert(((uintptr_t) pagetable & PAGEOFFMASK) == 0); // must be page aligned
   428bb:	ba 18 48 04 00       	mov    $0x44818,%edx
   428c0:	be 17 01 00 00       	mov    $0x117,%esi
   428c5:	bf a9 49 04 00       	mov    $0x449a9,%edi
   428ca:	e8 79 f9 ff ff       	call   42248 <assert_fail(char const*, int, char const*)>
        uintptr_t pa = *pep_ & PTE_PAMASK;
   428cf:	48 ba 00 f0 ff ff ff 	movabs $0xffffffffff000,%rdx
   428d6:	ff 0f 00 
   428d9:	48 21 ca             	and    %rcx,%rdx
   428dc:	e9 bd fe ff ff       	jmp    4279e <check_pagetable(x86_64_pagetable*)+0x70>
    assert(vmiter(pagetable, (uintptr_t) exception_entry).pa()
   428e1:	ba 48 48 04 00       	mov    $0x44848,%edx
   428e6:	be 18 01 00 00       	mov    $0x118,%esi
   428eb:	bf a9 49 04 00       	mov    $0x449a9,%edi
   428f0:	e8 53 f9 ff ff       	call   42248 <assert_fail(char const*, int, char const*)>
   428f5:	48 ba 00 f0 ff ff ff 	movabs $0xffffffffff000,%rdx
   428fc:	ff 0f 00 
   428ff:	48 21 ca             	and    %rcx,%rdx
   42902:	e9 17 ff ff ff       	jmp    4281e <check_pagetable(x86_64_pagetable*)+0xf0>
    assert(vmiter(kernel_pagetable, (uintptr_t) pagetable).pa()
   42907:	ba a0 48 04 00       	mov    $0x448a0,%edx
   4290c:	be 1a 01 00 00       	mov    $0x11a,%esi
   42911:	bf a9 49 04 00       	mov    $0x449a9,%edi
   42916:	e8 2d f9 ff ff       	call   42248 <assert_fail(char const*, int, char const*)>
   4291b:	48 ba 00 f0 ff ff ff 	movabs $0xffffffffff000,%rdx
   42922:	ff 0f 00 
   42925:	48 21 ca             	and    %rcx,%rdx
   42928:	e9 66 ff ff ff       	jmp    42893 <check_pagetable(x86_64_pagetable*)+0x165>
    assert(vmiter(pagetable, (uintptr_t) kernel_pagetable).pa()
   4292d:	ba f0 48 04 00       	mov    $0x448f0,%edx
   42932:	be 1c 01 00 00       	mov    $0x11c,%esi
   42937:	bf a9 49 04 00       	mov    $0x449a9,%edi
   4293c:	e8 07 f9 ff ff       	call   42248 <assert_fail(char const*, int, char const*)>
   42941:	90                   	nop

0000000000042942 <pcistate::next(int) const>:
int pcistate::next(int addr) const {
   42942:	f3 0f 1e fa          	endbr64 
   42946:	55                   	push   %rbp
   42947:	48 89 e5             	mov    %rsp,%rbp
    }
    return addr;
}

inline uint32_t pcistate::readl(int addr) const {
    assert(addr >= 0 && !(addr & 3));
   4294a:	89 f0                	mov    %esi,%eax
   4294c:	83 c0 0c             	add    $0xc,%eax
   4294f:	78 23                	js     42974 <pcistate::next(int) const+0x32>
   42951:	a8 03                	test   $0x3,%al
   42953:	75 1f                	jne    42974 <pcistate::next(int) const+0x32>
    outl(reg_host_bridge_config_addr, 0x80000000U | addr);
   42955:	0d 00 00 00 80       	or     $0x80000000,%eax
    asm volatile("outl %0, %w1" : : "a" (data), "d" (port));
   4295a:	ba f8 0c 00 00       	mov    $0xcf8,%edx
   4295f:	ef                   	out    %eax,(%dx)
    asm volatile("inl %w1, %0" : "=a" (data) : "d" (port));
   42960:	ba fc 0c 00 00       	mov    $0xcfc,%edx
   42965:	ed                   	in     (%dx),%eax
   42966:	89 c2                	mov    %eax,%edx
    asm volatile("outl %0, %w1" : : "a" (data), "d" (port));
   42968:	bf f8 0c 00 00       	mov    $0xcf8,%edi
    asm volatile("inl %w1, %0" : "=a" (data) : "d" (port));
   4296d:	b9 fc 0c 00 00       	mov    $0xcfc,%ecx
   42972:	eb 51                	jmp    429c5 <pcistate::next(int) const+0x83>
    assert(addr >= 0 && !(addr & 3));
   42974:	ba d9 49 04 00       	mov    $0x449d9,%edx
   42979:	be 57 00 00 00       	mov    $0x57,%esi
   4297e:	bf d0 49 04 00       	mov    $0x449d0,%edi
   42983:	e8 c0 f8 ff ff       	call   42248 <assert_fail(char const*, int, char const*)>
    assert(addr >= 0 && addr < 0x1000000);
   42988:	ba f2 49 04 00       	mov    $0x449f2,%edx
   4298d:	be 4a 00 00 00       	mov    $0x4a,%esi
   42992:	bf d0 49 04 00       	mov    $0x449d0,%edi
   42997:	e8 ac f8 ff ff       	call   42248 <assert_fail(char const*, int, char const*)>
            addr += make_addr(0, 0, 1);
   4299c:	81 c6 00 01 00 00    	add    $0x100,%esi
        if (addr >= addr_end) {
   429a2:	81 fe ff ff 07 00    	cmp    $0x7ffff,%esi
   429a8:	7f 58                	jg     42a02 <pcistate::next(int) const+0xc0>
        x = readl(addr + config_lthb);
   429aa:	8d 46 0c             	lea    0xc(%rsi),%eax
    assert(addr >= 0 && !(addr & 3));
   429ad:	40 f6 c6 03          	test   $0x3,%sil
   429b1:	75 37                	jne    429ea <pcistate::next(int) const+0xa8>
    outl(reg_host_bridge_config_addr, 0x80000000U | addr);
   429b3:	0d 00 00 00 80       	or     $0x80000000,%eax
    asm volatile("outl %0, %w1" : : "a" (data), "d" (port));
   429b8:	89 fa                	mov    %edi,%edx
   429ba:	ef                   	out    %eax,(%dx)
    asm volatile("inl %w1, %0" : "=a" (data) : "d" (port));
   429bb:	89 ca                	mov    %ecx,%edx
   429bd:	ed                   	in     (%dx),%eax
   429be:	89 c2                	mov    %eax,%edx
        if (x != uint32_t(-1)) {
   429c0:	83 f8 ff             	cmp    $0xffffffff,%eax
   429c3:	75 39                	jne    429fe <pcistate::next(int) const+0xbc>
    assert(addr >= 0 && addr < 0x1000000);
   429c5:	81 fe ff ff ff 00    	cmp    $0xffffff,%esi
   429cb:	77 bb                	ja     42988 <pcistate::next(int) const+0x46>
            && (x == uint32_t(-1) || !(x & 0x800000))) {
   429cd:	f7 c6 00 07 00 00    	test   $0x700,%esi
   429d3:	75 c7                	jne    4299c <pcistate::next(int) const+0x5a>
   429d5:	83 fa ff             	cmp    $0xffffffff,%edx
   429d8:	74 08                	je     429e2 <pcistate::next(int) const+0xa0>
   429da:	f7 c2 00 00 80 00    	test   $0x800000,%edx
   429e0:	75 ba                	jne    4299c <pcistate::next(int) const+0x5a>
            addr += make_addr(0, 1, 0);
   429e2:	81 c6 00 08 00 00    	add    $0x800,%esi
   429e8:	eb b8                	jmp    429a2 <pcistate::next(int) const+0x60>
    assert(addr >= 0 && !(addr & 3));
   429ea:	ba d9 49 04 00       	mov    $0x449d9,%edx
   429ef:	be 57 00 00 00       	mov    $0x57,%esi
   429f4:	bf d0 49 04 00       	mov    $0x449d0,%edi
   429f9:	e8 4a f8 ff ff       	call   42248 <assert_fail(char const*, int, char const*)>
   429fe:	89 f0                	mov    %esi,%eax
   42a00:	eb 05                	jmp    42a07 <pcistate::next(int) const+0xc5>
            return -1;
   42a02:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
   42a07:	5d                   	pop    %rbp
   42a08:	c3                   	ret    

0000000000042a09 <poweroff()>:
void poweroff() {
   42a09:	f3 0f 1e fa          	endbr64 
   42a0d:	55                   	push   %rbp
   42a0e:	48 89 e5             	mov    %rsp,%rbp
   42a11:	53                   	push   %rbx
   42a12:	48 83 ec 08          	sub    $0x8,%rsp
    asm volatile("outl %0, %w1" : : "a" (data), "d" (port));
   42a16:	b8 00 00 00 80       	mov    $0x80000000,%eax
   42a1b:	ba f8 0c 00 00       	mov    $0xcf8,%edx
   42a20:	ef                   	out    %eax,(%dx)
    asm volatile("inl %w1, %0" : "=a" (data) : "d" (port));
   42a21:	ba fc 0c 00 00       	mov    $0xcfc,%edx
   42a26:	ed                   	in     (%dx),%eax
    while (addr >= 0 && !predicate(addr)) {
   42a27:	3d 86 80 18 29       	cmp    $0x29188086,%eax
   42a2c:	0f 84 b5 00 00 00    	je     42ae7 <poweroff()+0xde>
   42a32:	3d 86 80 13 71       	cmp    $0x71138086,%eax
   42a37:	0f 84 aa 00 00 00    	je     42ae7 <poweroff()+0xde>
   42a3d:	be 00 00 00 00       	mov    $0x0,%esi
    asm volatile("outl %0, %w1" : : "a" (data), "d" (port));
   42a42:	bb f8 0c 00 00       	mov    $0xcf8,%ebx
        addr = next(addr);
   42a47:	bf 00 f0 05 00       	mov    $0x5f000,%edi
   42a4c:	e8 f1 fe ff ff       	call   42942 <pcistate::next(int) const>
   42a51:	89 c6                	mov    %eax,%esi
    while (addr >= 0 && !predicate(addr)) {
   42a53:	85 c0                	test   %eax,%eax
   42a55:	78 4d                	js     42aa4 <poweroff()+0x9b>
    assert(addr >= 0 && !(addr & 3));
   42a57:	40 f6 c6 03          	test   $0x3,%sil
   42a5b:	75 62                	jne    42abf <poweroff()+0xb6>
    outl(reg_host_bridge_config_addr, 0x80000000U | addr);
   42a5d:	89 f0                	mov    %esi,%eax
   42a5f:	0d 00 00 00 80       	or     $0x80000000,%eax
   42a64:	89 da                	mov    %ebx,%edx
   42a66:	ef                   	out    %eax,(%dx)
    asm volatile("inl %w1, %0" : "=a" (data) : "d" (port));
   42a67:	ba fc 0c 00 00       	mov    $0xcfc,%edx
   42a6c:	ed                   	in     (%dx),%eax
    while (addr >= 0 && !predicate(addr)) {
   42a6d:	3d 86 80 13 71       	cmp    $0x71138086,%eax
   42a72:	74 07                	je     42a7b <poweroff()+0x72>
   42a74:	3d 86 80 18 29       	cmp    $0x29188086,%eax
   42a79:	75 cc                	jne    42a47 <poweroff()+0x3e>
        int pm_io_base = pci.readl(addr + 0x40) & 0xFFC0;
   42a7b:	8d 46 40             	lea    0x40(%rsi),%eax
    assert(addr >= 0 && !(addr & 3));
   42a7e:	40 f6 c6 03          	test   $0x3,%sil
   42a82:	75 4f                	jne    42ad3 <poweroff()+0xca>
    outl(reg_host_bridge_config_addr, 0x80000000U | addr);
   42a84:	0d 00 00 00 80       	or     $0x80000000,%eax
    asm volatile("outl %0, %w1" : : "a" (data), "d" (port));
   42a89:	ba f8 0c 00 00       	mov    $0xcf8,%edx
   42a8e:	ef                   	out    %eax,(%dx)
    asm volatile("inl %w1, %0" : "=a" (data) : "d" (port));
   42a8f:	ba fc 0c 00 00       	mov    $0xcfc,%edx
   42a94:	ed                   	in     (%dx),%eax
   42a95:	25 c0 ff 00 00       	and    $0xffc0,%eax
        outw(pm_io_base + 4, 0x2000);
   42a9a:	8d 50 04             	lea    0x4(%rax),%edx
    asm volatile("outw %0, %w1" : : "a" (data), "d" (port));
   42a9d:	b8 00 20 00 00       	mov    $0x2000,%eax
   42aa2:	66 ef                	out    %ax,(%dx)
    console_printf(CPOS(24, 0), 0xC000, "Cannot power off!\n");
   42aa4:	ba 10 4a 04 00       	mov    $0x44a10,%edx
   42aa9:	be 00 c0 00 00       	mov    $0xc000,%esi
   42aae:	bf 80 07 00 00       	mov    $0x780,%edi
   42ab3:	b8 00 00 00 00       	mov    $0x0,%eax
   42ab8:	e8 b4 19 00 00       	call   44471 <console_printf(int, int, char const*, ...)>
    while (true) {
   42abd:	eb fe                	jmp    42abd <poweroff()+0xb4>
    assert(addr >= 0 && !(addr & 3));
   42abf:	ba d9 49 04 00       	mov    $0x449d9,%edx
   42ac4:	be 57 00 00 00       	mov    $0x57,%esi
   42ac9:	bf d0 49 04 00       	mov    $0x449d0,%edi
   42ace:	e8 75 f7 ff ff       	call   42248 <assert_fail(char const*, int, char const*)>
   42ad3:	ba d9 49 04 00       	mov    $0x449d9,%edx
   42ad8:	be 57 00 00 00       	mov    $0x57,%esi
   42add:	bf d0 49 04 00       	mov    $0x449d0,%edi
   42ae2:	e8 61 f7 ff ff       	call   42248 <assert_fail(char const*, int, char const*)>
        int pm_io_base = pci.readl(addr + 0x40) & 0xFFC0;
   42ae7:	b8 40 00 00 00       	mov    $0x40,%eax
   42aec:	eb 96                	jmp    42a84 <poweroff()+0x7b>

0000000000042aee <check_keyboard()>:
int check_keyboard() {
   42aee:	f3 0f 1e fa          	endbr64 
   42af2:	55                   	push   %rbp
   42af3:	48 89 e5             	mov    %rsp,%rbp
   42af6:	41 54                	push   %r12
   42af8:	53                   	push   %rbx
   42af9:	48 83 ec 20          	sub    $0x20,%rsp
    int c = keyboard_readc();
   42afd:	e8 e7 f3 ff ff       	call   41ee9 <keyboard_readc()>
   42b02:	41 89 c4             	mov    %eax,%r12d
    if (c == 'a' || c == 'f' || c == 'e') {
   42b05:	8d 40 9b             	lea    -0x65(%rax),%eax
   42b08:	83 f8 01             	cmp    $0x1,%eax
   42b0b:	76 1b                	jbe    42b28 <check_keyboard()+0x3a>
   42b0d:	41 83 fc 61          	cmp    $0x61,%r12d
   42b11:	74 15                	je     42b28 <check_keyboard()+0x3a>
    } else if (c == 0x03 || c == 'q') {
   42b13:	41 83 fc 03          	cmp    $0x3,%r12d
   42b17:	74 0a                	je     42b23 <check_keyboard()+0x35>
   42b19:	41 83 fc 71          	cmp    $0x71,%r12d
   42b1d:	0f 85 cc 00 00 00    	jne    42bef <check_keyboard()+0x101>
        poweroff();
   42b23:	e8 e1 fe ff ff       	call   42a09 <poweroff()>
   42b28:	b8 80 03 e0 fe       	mov    $0xfee00380,%eax
   42b2d:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
        memset(pt, 0, PAGESIZE * 2);
   42b33:	ba 00 20 00 00       	mov    $0x2000,%edx
   42b38:	be 00 00 00 00       	mov    $0x0,%esi
   42b3d:	bf 00 10 00 00       	mov    $0x1000,%edi
   42b42:	e8 22 0e 00 00       	call   43969 <memset>
        pt[0].entry[0] = 0x2000 | PTE_P | PTE_W;
   42b47:	48 c7 04 25 00 10 00 	movq   $0x2003,0x1000
   42b4e:	00 03 20 00 00 
        pt[1].entry[0] = PTE_P | PTE_W | PTE_PS;
   42b53:	48 c7 04 25 00 20 00 	movq   $0x83,0x2000
   42b5a:	00 83 00 00 00 
    asm volatile("movq %0, %%cr3" : : "r" (x) : "memory");
   42b5f:	b8 00 10 00 00       	mov    $0x1000,%eax
   42b64:	0f 22 d8             	mov    %rax,%cr3
        multiboot_info[0] = 4;
   42b67:	c7 45 dc 04 00 00 00 	movl   $0x4,-0x24(%rbp)
            argument = "allocators";
   42b6e:	b8 23 4a 04 00       	mov    $0x44a23,%eax
        if (c == 'a') {
   42b73:	41 83 fc 61          	cmp    $0x61,%r12d
   42b77:	74 12                	je     42b8b <check_keyboard()+0x9d>
            argument = "forkexit";
   42b79:	41 83 fc 65          	cmp    $0x65,%r12d
   42b7d:	b8 2e 4a 04 00       	mov    $0x44a2e,%eax
   42b82:	ba 33 4a 04 00       	mov    $0x44a33,%edx
   42b87:	48 0f 44 c2          	cmove  %rdx,%rax
        assert(argument_ptr < 0x100000000L);
   42b8b:	48 89 c1             	mov    %rax,%rcx
   42b8e:	48 c1 e9 20          	shr    $0x20,%rcx
   42b92:	75 67                	jne    42bfb <check_keyboard()+0x10d>
        multiboot_info[4] = (uint32_t) argument_ptr;
   42b94:	89 45 ec             	mov    %eax,-0x14(%rbp)
        stash_kernel_data(true);
   42b97:	bf 01 00 00 00       	mov    $0x1,%edi
   42b9c:	e8 90 f1 ff ff       	call   41d31 <stash_kernel_data(bool)>
        uintptr_t zero_size = (uintptr_t) &_kernel_end - (uintptr_t) &_edata;
   42ba1:	bb 98 f0 05 00       	mov    $0x5f098,%ebx
   42ba6:	48 81 eb a0 75 05 00 	sub    $0x575a0,%rbx
        uintptr_t data_size = (uintptr_t) &_edata - (uintptr_t) &_data_start;
   42bad:	ba a0 75 05 00       	mov    $0x575a0,%edx
   42bb2:	48 81 ea 00 60 04 00 	sub    $0x46000,%rdx
        uint8_t* data_stash = (uint8_t*) (SYMTAB_ADDR - data_size);
   42bb9:	be 00 60 04 01       	mov    $0x1046000,%esi
   42bbe:	48 81 ee a0 75 05 00 	sub    $0x575a0,%rsi
        memcpy(&_data_start, data_stash, data_size);
   42bc5:	bf 00 60 04 00       	mov    $0x46000,%edi
   42bca:	e8 29 0d 00 00       	call   438f8 <memcpy>
        memset(&_edata, 0, zero_size);
   42bcf:	48 89 da             	mov    %rbx,%rdx
   42bd2:	be 00 00 00 00       	mov    $0x0,%esi
   42bd7:	bf a0 75 05 00       	mov    $0x575a0,%edi
   42bdc:	e8 88 0d 00 00       	call   43969 <memset>
        asm volatile("movl $0x2BADB002, %%eax; jmp kernel_entry"
   42be1:	48 8d 5d dc          	lea    -0x24(%rbp),%rbx
   42be5:	b8 02 b0 ad 2b       	mov    $0x2badb002,%eax
   42bea:	e9 11 d4 ff ff       	jmp    40000 <_kernel_start>
}
   42bef:	44 89 e0             	mov    %r12d,%eax
   42bf2:	48 83 c4 20          	add    $0x20,%rsp
   42bf6:	5b                   	pop    %rbx
   42bf7:	41 5c                	pop    %r12
   42bf9:	5d                   	pop    %rbp
   42bfa:	c3                   	ret    
        assert(argument_ptr < 0x100000000L);
   42bfb:	ba 3c 4a 04 00       	mov    $0x44a3c,%edx
   42c00:	be f7 02 00 00       	mov    $0x2f7,%esi
   42c05:	bf a9 49 04 00       	mov    $0x449a9,%edi
   42c0a:	e8 39 f6 ff ff       	call   42248 <assert_fail(char const*, int, char const*)>

0000000000042c0f <panic(char const*, ...)>:
void panic(const char* format, ...) {
   42c0f:	f3 0f 1e fa          	endbr64 
   42c13:	55                   	push   %rbp
   42c14:	48 89 e5             	mov    %rsp,%rbp
   42c17:	53                   	push   %rbx
   42c18:	48 83 ec 58          	sub    $0x58,%rsp
   42c1c:	48 89 75 c8          	mov    %rsi,-0x38(%rbp)
   42c20:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
   42c24:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
   42c28:	4c 89 45 e0          	mov    %r8,-0x20(%rbp)
   42c2c:	4c 89 4d e8          	mov    %r9,-0x18(%rbp)
    va_start(val, format);
   42c30:	c7 45 a8 08 00 00 00 	movl   $0x8,-0x58(%rbp)
   42c37:	48 8d 45 10          	lea    0x10(%rbp),%rax
   42c3b:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
   42c3f:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
   42c43:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    panicking = true;
   42c47:	c6 05 ba 63 01 00 01 	movb   $0x1,0x163ba(%rip)        # 59008 <panicking>
    cursorpos = CPOS(23, 0);
   42c4e:	c7 05 a4 63 07 00 30 	movl   $0x730,0x763a4(%rip)        # b8ffc <cursorpos>
   42c55:	07 00 00 
    if (format) {
   42c58:	48 85 ff             	test   %rdi,%rdi
   42c5b:	74 5e                	je     42cbb <panic(char const*, ...)+0xac>
   42c5d:	48 89 fb             	mov    %rdi,%rbx
        error_printf(-1, COLOR_ERROR, "PANIC: ");
   42c60:	ba 58 4a 04 00       	mov    $0x44a58,%edx
   42c65:	be 00 c0 00 00       	mov    $0xc000,%esi
   42c6a:	bf ff ff ff ff       	mov    $0xffffffff,%edi
   42c6f:	b0 00                	mov    $0x0,%al
   42c71:	e8 49 f5 ff ff       	call   421bf <error_printf(int, int, char const*, ...)>
        error_vprintf(-1, COLOR_ERROR, format, val);
   42c76:	48 8d 4d a8          	lea    -0x58(%rbp),%rcx
   42c7a:	48 89 da             	mov    %rbx,%rdx
   42c7d:	be 00 c0 00 00       	mov    $0xc000,%esi
   42c82:	bf ff ff ff ff       	mov    $0xffffffff,%edi
   42c87:	e8 d3 f4 ff ff       	call   4215f <error_vprintf(int, int, char const*, __va_list_tag*)>
        if (CCOL(cursorpos)) {
   42c8c:	8b 05 6a 63 07 00    	mov    0x7636a(%rip),%eax        # b8ffc <cursorpos>
   42c92:	b9 50 00 00 00       	mov    $0x50,%ecx
   42c97:	99                   	cltd   
   42c98:	f7 f9                	idiv   %ecx
   42c9a:	85 d2                	test   %edx,%edx
   42c9c:	74 16                	je     42cb4 <panic(char const*, ...)+0xa5>
            error_printf(-1, COLOR_ERROR, "\n");
   42c9e:	ba d3 4c 04 00       	mov    $0x44cd3,%edx
   42ca3:	be 00 c0 00 00       	mov    $0xc000,%esi
   42ca8:	bf ff ff ff ff       	mov    $0xffffffff,%edi
   42cad:	b0 00                	mov    $0x0,%al
   42caf:	e8 0b f5 ff ff       	call   421bf <error_printf(int, int, char const*, ...)>
        check_keyboard();
   42cb4:	e8 35 fe ff ff       	call   42aee <check_keyboard()>
    while (true) {
   42cb9:	eb f9                	jmp    42cb4 <panic(char const*, ...)+0xa5>
        error_printf(-1, COLOR_ERROR, "PANIC");
   42cbb:	ba 60 4a 04 00       	mov    $0x44a60,%edx
   42cc0:	be 00 c0 00 00       	mov    $0xc000,%esi
   42cc5:	bf ff ff ff ff       	mov    $0xffffffff,%edi
   42cca:	b0 00                	mov    $0x0,%al
   42ccc:	e8 ee f4 ff ff       	call   421bf <error_printf(int, int, char const*, ...)>
        log_printf("\n");
   42cd1:	bf d3 4c 04 00       	mov    $0x44cd3,%edi
   42cd6:	b0 00                	mov    $0x0,%al
   42cd8:	e8 40 f4 ff ff       	call   4211d <log_printf(char const*, ...)>
[[noreturn]] void fail() {
   42cdd:	eb d5                	jmp    42cb4 <panic(char const*, ...)+0xa5>
   42cdf:	90                   	nop

0000000000042ce0 <program_loader::program_number(char const*)>:
int program_loader::program_number(const char* program_name) {
   42ce0:	f3 0f 1e fa          	endbr64 
   42ce4:	55                   	push   %rbp
   42ce5:	48 89 e5             	mov    %rsp,%rbp
   42ce8:	41 54                	push   %r12
   42cea:	53                   	push   %rbx
   42ceb:	49 89 fc             	mov    %rdi,%r12
    for (size_t i = 0; i != sizeof(ramimages) / sizeof(ramimages[0]); ++i) {
   42cee:	bb 00 00 00 00       	mov    $0x0,%ebx
        if (strcmp(program_name, ramimages[i].name) == 0) {
   42cf3:	48 8d 04 5b          	lea    (%rbx,%rbx,2),%rax
   42cf7:	48 8b 34 c5 00 60 04 	mov    0x46000(,%rax,8),%rsi
   42cfe:	00 
   42cff:	4c 89 e7             	mov    %r12,%rdi
   42d02:	e8 c7 0c 00 00       	call   439ce <strcmp>
   42d07:	85 c0                	test   %eax,%eax
   42d09:	74 14                	je     42d1f <program_loader::program_number(char const*)+0x3f>
    for (size_t i = 0; i != sizeof(ramimages) / sizeof(ramimages[0]); ++i) {
   42d0b:	48 83 c3 01          	add    $0x1,%rbx
   42d0f:	48 83 fb 06          	cmp    $0x6,%rbx
   42d13:	75 de                	jne    42cf3 <program_loader::program_number(char const*)+0x13>
    return -1;
   42d15:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
   42d1a:	5b                   	pop    %rbx
   42d1b:	41 5c                	pop    %r12
   42d1d:	5d                   	pop    %rbp
   42d1e:	c3                   	ret    
            return i;
   42d1f:	89 d8                	mov    %ebx,%eax
   42d21:	eb f7                	jmp    42d1a <program_loader::program_number(char const*)+0x3a>
   42d23:	90                   	nop

0000000000042d24 <program_loader::fix()>:
void program_loader::fix() {
   42d24:	f3 0f 1e fa          	endbr64 
    while (ph_ && ph_ != endph_ && ph_->p_type != ELF_PTYPE_LOAD) {
   42d28:	48 8b 47 08          	mov    0x8(%rdi),%rax
   42d2c:	48 85 c0             	test   %rax,%rax
   42d2f:	74 19                	je     42d4a <program_loader::fix()+0x26>
   42d31:	48 8b 57 10          	mov    0x10(%rdi),%rdx
   42d35:	eb 04                	jmp    42d3b <program_loader::fix()+0x17>
        ++ph_;
   42d37:	48 89 47 08          	mov    %rax,0x8(%rdi)
    while (ph_ && ph_ != endph_ && ph_->p_type != ELF_PTYPE_LOAD) {
   42d3b:	48 39 c2             	cmp    %rax,%rdx
   42d3e:	74 0a                	je     42d4a <program_loader::fix()+0x26>
   42d40:	48 83 c0 38          	add    $0x38,%rax
   42d44:	83 78 c8 01          	cmpl   $0x1,-0x38(%rax)
   42d48:	75 ed                	jne    42d37 <program_loader::fix()+0x13>
}
   42d4a:	c3                   	ret    
   42d4b:	90                   	nop

0000000000042d4c <program_loader::va() const>:
uintptr_t program_loader::va() const {
   42d4c:	f3 0f 1e fa          	endbr64 
    return ph_ != endph_ ? ph_->p_va : 0;
   42d50:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   42d54:	b8 00 00 00 00       	mov    $0x0,%eax
   42d59:	48 3b 57 10          	cmp    0x10(%rdi),%rdx
   42d5d:	74 04                	je     42d63 <program_loader::va() const+0x17>
   42d5f:	48 8b 42 10          	mov    0x10(%rdx),%rax
}
   42d63:	c3                   	ret    

0000000000042d64 <program_loader::size() const>:
size_t program_loader::size() const {
   42d64:	f3 0f 1e fa          	endbr64 
    return ph_ != endph_ ? ph_->p_memsz : 0;
   42d68:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   42d6c:	b8 00 00 00 00       	mov    $0x0,%eax
   42d71:	48 3b 57 10          	cmp    0x10(%rdi),%rdx
   42d75:	74 04                	je     42d7b <program_loader::size() const+0x17>
   42d77:	48 8b 42 28          	mov    0x28(%rdx),%rax
}
   42d7b:	c3                   	ret    

0000000000042d7c <program_loader::data() const>:
const char* program_loader::data() const {
   42d7c:	f3 0f 1e fa          	endbr64 
    return ph_ != endph_ ? (const char*) elf_ + ph_->p_offset : nullptr;
   42d80:	48 8b 47 08          	mov    0x8(%rdi),%rax
   42d84:	48 3b 47 10          	cmp    0x10(%rdi),%rax
   42d88:	74 08                	je     42d92 <program_loader::data() const+0x16>
   42d8a:	48 8b 40 08          	mov    0x8(%rax),%rax
   42d8e:	48 03 07             	add    (%rdi),%rax
   42d91:	c3                   	ret    
   42d92:	b8 00 00 00 00       	mov    $0x0,%eax
}
   42d97:	c3                   	ret    

0000000000042d98 <program_loader::data_size() const>:
size_t program_loader::data_size() const {
   42d98:	f3 0f 1e fa          	endbr64 
    return ph_ != endph_ ? ph_->p_filesz : 0;
   42d9c:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   42da0:	b8 00 00 00 00       	mov    $0x0,%eax
   42da5:	48 3b 57 10          	cmp    0x10(%rdi),%rdx
   42da9:	74 04                	je     42daf <program_loader::data_size() const+0x17>
   42dab:	48 8b 42 20          	mov    0x20(%rdx),%rax
}
   42daf:	c3                   	ret    

0000000000042db0 <program_loader::present() const>:
bool program_loader::present() const {
   42db0:	f3 0f 1e fa          	endbr64 
    return ph_ != endph_;
   42db4:	48 8b 47 10          	mov    0x10(%rdi),%rax
   42db8:	48 39 47 08          	cmp    %rax,0x8(%rdi)
   42dbc:	0f 95 c0             	setne  %al
}
   42dbf:	c3                   	ret    

0000000000042dc0 <program_loader::writable() const>:
bool program_loader::writable() const {
   42dc0:	f3 0f 1e fa          	endbr64 
    return ph_ != endph_ && (ph_->p_flags & ELF_PFLAG_WRITE);
   42dc4:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   42dc8:	b8 00 00 00 00       	mov    $0x0,%eax
   42dcd:	48 3b 57 10          	cmp    0x10(%rdi),%rdx
   42dd1:	74 08                	je     42ddb <program_loader::writable() const+0x1b>
   42dd3:	8b 42 04             	mov    0x4(%rdx),%eax
   42dd6:	d1 e8                	shr    %eax
   42dd8:	83 e0 01             	and    $0x1,%eax
}
   42ddb:	c3                   	ret    

0000000000042ddc <program_loader::entry() const>:
uintptr_t program_loader::entry() const {
   42ddc:	f3 0f 1e fa          	endbr64 
    return elf_ ? elf_->e_entry : 0;
   42de0:	48 8b 17             	mov    (%rdi),%rdx
   42de3:	b8 00 00 00 00       	mov    $0x0,%eax
   42de8:	48 85 d2             	test   %rdx,%rdx
   42deb:	74 04                	je     42df1 <program_loader::entry() const+0x15>
   42ded:	48 8b 42 18          	mov    0x18(%rdx),%rax
}
   42df1:	c3                   	ret    

0000000000042df2 <program_loader::operator++()>:
void program_loader::operator++() {
   42df2:	f3 0f 1e fa          	endbr64 
    if (ph_ != endph_) {
   42df6:	48 8b 47 08          	mov    0x8(%rdi),%rax
   42dfa:	48 3b 47 10          	cmp    0x10(%rdi),%rax
   42dfe:	74 13                	je     42e13 <program_loader::operator++()+0x21>
void program_loader::operator++() {
   42e00:	55                   	push   %rbp
   42e01:	48 89 e5             	mov    %rsp,%rbp
        ++ph_;
   42e04:	48 83 c0 38          	add    $0x38,%rax
   42e08:	48 89 47 08          	mov    %rax,0x8(%rdi)
        fix();
   42e0c:	e8 13 ff ff ff       	call   42d24 <program_loader::fix()>
}
   42e11:	5d                   	pop    %rbp
   42e12:	c3                   	ret    
   42e13:	c3                   	ret    

0000000000042e14 <program_loader::reset()>:
void program_loader::reset() {
   42e14:	f3 0f 1e fa          	endbr64 
    if (elf_) {
   42e18:	48 8b 07             	mov    (%rdi),%rax
   42e1b:	48 85 c0             	test   %rax,%rax
   42e1e:	74 49                	je     42e69 <program_loader::reset()+0x55>
void program_loader::reset() {
   42e20:	55                   	push   %rbp
   42e21:	48 89 e5             	mov    %rsp,%rbp
        assert(elf_->e_magic == ELF_MAGIC);
   42e24:	81 38 7f 45 4c 46    	cmpl   $0x464c457f,(%rax)
   42e2a:	75 29                	jne    42e55 <program_loader::reset()+0x41>
        ph_ = (elf_program*) ((uint8_t*) elf_ + elf_->e_phoff);
   42e2c:	48 89 c2             	mov    %rax,%rdx
   42e2f:	48 03 50 20          	add    0x20(%rax),%rdx
   42e33:	48 89 57 08          	mov    %rdx,0x8(%rdi)
        endph_ = ph_ + elf_->e_phnum;
   42e37:	0f b7 48 38          	movzwl 0x38(%rax),%ecx
   42e3b:	48 8d 04 cd 00 00 00 	lea    0x0(,%rcx,8),%rax
   42e42:	00 
   42e43:	48 29 c8             	sub    %rcx,%rax
   42e46:	48 8d 04 c2          	lea    (%rdx,%rax,8),%rax
   42e4a:	48 89 47 10          	mov    %rax,0x10(%rdi)
        fix();
   42e4e:	e8 d1 fe ff ff       	call   42d24 <program_loader::fix()>
}
   42e53:	5d                   	pop    %rbp
   42e54:	c3                   	ret    
        assert(elf_->e_magic == ELF_MAGIC);
   42e55:	ba 66 4a 04 00       	mov    $0x44a66,%edx
   42e5a:	be 98 03 00 00       	mov    $0x398,%esi
   42e5f:	bf a9 49 04 00       	mov    $0x449a9,%edi
   42e64:	e8 df f3 ff ff       	call   42248 <assert_fail(char const*, int, char const*)>
        ph_ = endph_ = nullptr;
   42e69:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
   42e70:	00 
   42e71:	48 c7 47 08 00 00 00 	movq   $0x0,0x8(%rdi)
   42e78:	00 
   42e79:	c3                   	ret    

0000000000042e7a <program_loader::program_loader(int)>:
program_loader::program_loader(int program_number) {
   42e7a:	f3 0f 1e fa          	endbr64 
   42e7e:	55                   	push   %rbp
   42e7f:	48 89 e5             	mov    %rsp,%rbp
    elf_ = nullptr;
   42e82:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
    if (program_number >= 0
   42e89:	83 fe 05             	cmp    $0x5,%esi
   42e8c:	77 12                	ja     42ea0 <program_loader::program_loader(int)+0x26>
        elf_ = (elf_header*) ramimages[program_number].begin;
   42e8e:	48 63 f6             	movslq %esi,%rsi
   42e91:	48 8d 04 76          	lea    (%rsi,%rsi,2),%rax
   42e95:	48 8b 04 c5 08 60 04 	mov    0x46008(,%rax,8),%rax
   42e9c:	00 
   42e9d:	48 89 07             	mov    %rax,(%rdi)
    reset();
   42ea0:	e8 6f ff ff ff       	call   42e14 <program_loader::reset()>
}
   42ea5:	5d                   	pop    %rbp
   42ea6:	c3                   	ret    
   42ea7:	90                   	nop

0000000000042ea8 <program_loader::program_loader(char const*)>:
program_loader::program_loader(const char* program_name)
   42ea8:	f3 0f 1e fa          	endbr64 
   42eac:	55                   	push   %rbp
   42ead:	48 89 e5             	mov    %rsp,%rbp
   42eb0:	53                   	push   %rbx
   42eb1:	48 83 ec 08          	sub    $0x8,%rsp
   42eb5:	48 89 fb             	mov    %rdi,%rbx
   42eb8:	48 89 f7             	mov    %rsi,%rdi
    : program_loader(program_number(program_name)) {
   42ebb:	e8 20 fe ff ff       	call   42ce0 <program_loader::program_number(char const*)>
   42ec0:	89 c6                	mov    %eax,%esi
   42ec2:	48 89 df             	mov    %rbx,%rdi
   42ec5:	e8 b0 ff ff ff       	call   42e7a <program_loader::program_loader(int)>
}
   42eca:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
   42ece:	c9                   	leave  
   42ecf:	c3                   	ret    

0000000000042ed0 <__cxa_guard_acquire>:
int __cxa_guard_acquire(long long* arg) {
   42ed0:	f3 0f 1e fa          	endbr64 
	return __atomic_load_n(&_M_i, int(__m));
   42ed4:	0f b6 17             	movzbl (%rdi),%edx
        return 0;
   42ed7:	b8 00 00 00 00       	mov    $0x0,%eax
    if (guard->load(std::memory_order_relaxed) == 2) {
   42edc:	80 fa 02             	cmp    $0x2,%dl
   42edf:	74 22                	je     42f03 <__cxa_guard_acquire+0x33>

      _GLIBCXX_ALWAYS_INLINE __int_type
      exchange(__int_type __i,
	       memory_order __m = memory_order_seq_cst) noexcept
      {
	return __atomic_exchange_n(&_M_i, __i, int(__m));
   42ee1:	ba 01 00 00 00       	mov    $0x1,%edx
   42ee6:	89 d0                	mov    %edx,%eax
   42ee8:	86 07                	xchg   %al,(%rdi)
        if (old_value == 2) {
   42eea:	3c 02                	cmp    $0x2,%al
   42eec:	74 08                	je     42ef6 <__cxa_guard_acquire+0x26>
        } else if (old_value == 1) {
   42eee:	3c 01                	cmp    $0x1,%al
   42ef0:	75 0c                	jne    42efe <__cxa_guard_acquire+0x2e>
    asm volatile("rdtsc" : "=a" (low), "=d" (high));
    return low | (high << 32);
}

__always_inline void pause() {
    asm volatile("pause" : : : "memory");
   42ef2:	f3 90                	pause  
}
   42ef4:	eb f0                	jmp    42ee6 <__cxa_guard_acquire+0x16>
   42ef6:	86 07                	xchg   %al,(%rdi)
            return 0;
   42ef8:	b8 00 00 00 00       	mov    $0x0,%eax
   42efd:	c3                   	ret    
            return 1;
   42efe:	b8 01 00 00 00       	mov    $0x1,%eax
}
   42f03:	c3                   	ret    

0000000000042f04 <__cxa_guard_release>:
void __cxa_guard_release(long long* arg) {
   42f04:	f3 0f 1e fa          	endbr64 
	__atomic_store_n(&_M_i, __i, int(__m));
   42f08:	b8 02 00 00 00       	mov    $0x2,%eax
   42f0d:	86 07                	xchg   %al,(%rdi)
}
   42f0f:	c3                   	ret    

0000000000042f10 <memusage::refresh()>:

// memusage::refresh()
//    Calculate the current physical usage map, using the current process
//    table.

void memusage::refresh() {
   42f10:	f3 0f 1e fa          	endbr64 
   42f14:	55                   	push   %rbp
   42f15:	48 89 e5             	mov    %rsp,%rbp
   42f18:	41 57                	push   %r15
   42f1a:	41 56                	push   %r14
   42f1c:	41 55                	push   %r13
   42f1e:	41 54                	push   %r12
   42f20:	53                   	push   %rbx
   42f21:	48 83 ec 48          	sub    $0x48,%rsp
   42f25:	49 89 fd             	mov    %rdi,%r13
    if (!v_) {
   42f28:	48 83 3f 00          	cmpq   $0x0,(%rdi)
   42f2c:	74 48                	je     42f76 <memusage::refresh()+0x66>
        v_ = reinterpret_cast<unsigned*>(kalloc(PAGESIZE));
        assert(v_ != nullptr);
    }

    memset(v_, 0, (maxpa / PAGESIZE) * sizeof(*v_));
   42f2e:	ba 00 10 00 00       	mov    $0x1000,%edx
   42f33:	be 00 00 00 00       	mov    $0x0,%esi
   42f38:	49 8b 7d 00          	mov    0x0(%r13),%rdi
   42f3c:	e8 28 0a 00 00       	call   43969 <memset>
inline int vmiter::try_map(void* kp, int perm) {
    return try_map((uintptr_t) kp, perm);
}

inline ptiter::ptiter(x86_64_pagetable* pt, uintptr_t va)
    : pt_(pt) {
   42f41:	48 c7 45 b0 00 a0 05 	movq   $0x5a000,-0x50(%rbp)
   42f48:	00 
    go(va);
   42f49:	be 00 00 00 00       	mov    $0x0,%esi
   42f4e:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   42f52:	e8 3d ed ff ff       	call   41c94 <ptiter::go(unsigned long)>

    // mark kernel page tables
    for (ptiter it(kernel_pagetable); it.active(); it.next()) {
   42f57:	48 b8 ff ff ff ff ff 	movabs $0xffffffffffff,%rax
   42f5e:	ff 00 00 
   42f61:	48 39 45 c8          	cmp    %rax,-0x38(%rbp)
   42f65:	77 6d                	ja     42fd4 <memusage::refresh()+0xc4>
}
inline void ptiter::next() {
    down(true);
}
inline uintptr_t ptiter::pa() const {
    return *pep_ & PTE_PAMASK;
   42f67:	49 bc 00 f0 ff ff ff 	movabs $0xffffffffff000,%r12
   42f6e:	ff 0f 00 
   42f71:	48 89 c3             	mov    %rax,%rbx
   42f74:	eb 3b                	jmp    42fb1 <memusage::refresh()+0xa1>
        v_ = reinterpret_cast<unsigned*>(kalloc(PAGESIZE));
   42f76:	bf 00 10 00 00       	mov    $0x1000,%edi
   42f7b:	e8 e4 db ff ff       	call   40b64 <kalloc(unsigned long)>
   42f80:	49 89 45 00          	mov    %rax,0x0(%r13)
        assert(v_ != nullptr);
   42f84:	48 85 c0             	test   %rax,%rax
   42f87:	75 a5                	jne    42f2e <memusage::refresh()+0x1e>
   42f89:	ba 20 4c 04 00       	mov    $0x44c20,%edx
   42f8e:	be 48 00 00 00       	mov    $0x48,%esi
   42f93:	bf 2e 4c 04 00       	mov    $0x44c2e,%edi
   42f98:	e8 ab f2 ff ff       	call   42248 <assert_fail(char const*, int, char const*)>
    down(true);
   42f9d:	be 01 00 00 00       	mov    $0x1,%esi
   42fa2:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   42fa6:	e8 e7 eb ff ff       	call   41b92 <ptiter::down(bool)>
    for (ptiter it(kernel_pagetable); it.active(); it.next()) {
   42fab:	48 39 5d c8          	cmp    %rbx,-0x38(%rbp)
   42faf:	77 23                	ja     42fd4 <memusage::refresh()+0xc4>
    return *pep_ & PTE_PAMASK;
   42fb1:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   42fb5:	4c 89 e1             	mov    %r12,%rcx
   42fb8:	48 23 08             	and    (%rax),%rcx
   42fbb:	48 89 c8             	mov    %rcx,%rax
        if (pa < maxpa) {
   42fbe:	48 81 f9 ff ff 3f 00 	cmp    $0x3fffff,%rcx
   42fc5:	77 d6                	ja     42f9d <memusage::refresh()+0x8d>
            v_[pa / PAGESIZE] |= flags;
   42fc7:	48 c1 e8 0a          	shr    $0xa,%rax
   42fcb:	49 03 45 00          	add    0x0(%r13),%rax
   42fcf:	83 08 01             	orl    $0x1,(%rax)
   42fd2:	eb c9                	jmp    42f9d <memusage::refresh()+0x8d>
        mark(it.pa(), f_kernel);
    }
    mark((uintptr_t) kernel_pagetable, f_kernel);
   42fd4:	b8 00 a0 05 00       	mov    $0x5a000,%eax
        if (pa < maxpa) {
   42fd9:	48 3d ff ff 3f 00    	cmp    $0x3fffff,%rax
   42fdf:	77 0c                	ja     42fed <memusage::refresh()+0xdd>
            v_[pa / PAGESIZE] |= flags;
   42fe1:	48 c1 e8 0c          	shr    $0xc,%rax
   42fe5:	49 8b 55 00          	mov    0x0(%r13),%rdx
   42fe9:	83 0c 82 01          	orl    $0x1,(%rdx,%rax,4)

    // mark pages accessible from each process's page table
    bool any = false;
    for (int pid = 1; pid < NPROC; ++pid) {
   42fed:	41 bc f0 82 05 00    	mov    $0x582f0,%r12d
void memusage::refresh() {
   42ff3:	bb 00 00 00 00       	mov    $0x0,%ebx
   42ff8:	be 00 00 00 00       	mov    $0x0,%esi
        if (p->state != P_FREE
            && p->pagetable
            && p->pagetable != kernel_pagetable) {
            any = true;

            for (ptiter it(p); it.active(); it.next()) {
   42ffd:	49 bf ff ff ff ff ff 	movabs $0xffffffffffff,%r15
   43004:	ff 00 00 
                mark(it.pa(), f_kernel | f_process(pid));
            }
            mark((uintptr_t) p->pagetable, f_kernel | f_process(pid));

            for (vmiter it(p); it.low(); ) {
   43007:	49 be ff ff ff ff ff 	movabs $0x7fffffffffff,%r14
   4300e:	7f 00 00 
   43011:	e9 a3 01 00 00       	jmp    431b9 <memusage::refresh()+0x2a9>
    down(true);
   43016:	be 01 00 00 00       	mov    $0x1,%esi
   4301b:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   4301f:	e8 6e eb ff ff       	call   41b92 <ptiter::down(bool)>
            for (ptiter it(p); it.active(); it.next()) {
   43024:	4c 39 7d c8          	cmp    %r15,-0x38(%rbp)
   43028:	77 31                	ja     4305b <memusage::refresh()+0x14b>
    return *pep_ & PTE_PAMASK;
   4302a:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   4302e:	48 b9 00 f0 ff ff ff 	movabs $0xffffffffff000,%rcx
   43035:	ff 0f 00 
   43038:	48 23 08             	and    (%rax),%rcx
   4303b:	48 89 c8             	mov    %rcx,%rax
        if (pa < maxpa) {
   4303e:	48 81 f9 ff ff 3f 00 	cmp    $0x3fffff,%rcx
   43045:	77 cf                	ja     43016 <memusage::refresh()+0x106>
            v_[pa / PAGESIZE] |= flags;
   43047:	48 c1 e8 0a          	shr    $0xa,%rax
   4304b:	49 03 45 00          	add    0x0(%r13),%rax
   4304f:	8b 55 98             	mov    -0x68(%rbp),%edx
   43052:	0b 10                	or     (%rax),%edx
   43054:	83 ca 01             	or     $0x1,%edx
   43057:	89 10                	mov    %edx,(%rax)
   43059:	eb bb                	jmp    43016 <memusage::refresh()+0x106>
            return 2U << pid;
   4305b:	b8 02 00 00 00       	mov    $0x2,%eax
   43060:	0f b6 4d ac          	movzbl -0x54(%rbp),%ecx
   43064:	d3 e0                	shl    %cl,%eax
   43066:	83 7d a8 1d          	cmpl   $0x1d,-0x58(%rbp)
   4306a:	ba 00 00 00 00       	mov    $0x0,%edx
   4306f:	0f 43 c2             	cmovae %edx,%eax
            mark((uintptr_t) p->pagetable, f_kernel | f_process(pid));
   43072:	48 8b 7d a0          	mov    -0x60(%rbp),%rdi
   43076:	48 8b 17             	mov    (%rdi),%rdx
        if (pa < maxpa) {
   43079:	48 81 fa ff ff 3f 00 	cmp    $0x3fffff,%rdx
   43080:	77 13                	ja     43095 <memusage::refresh()+0x185>
            v_[pa / PAGESIZE] |= flags;
   43082:	48 c1 ea 0c          	shr    $0xc,%rdx
   43086:	49 8b 4d 00          	mov    0x0(%r13),%rcx
   4308a:	48 8d 14 91          	lea    (%rcx,%rdx,4),%rdx
   4308e:	0b 02                	or     (%rdx),%eax
   43090:	83 c8 01             	or     $0x1,%eax
   43093:	89 02                	mov    %eax,(%rdx)
    : vmiter(p->pagetable, va) {
   43095:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
   43099:	48 8b 00             	mov    (%rax),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   4309c:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
   430a0:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
   430a4:	c7 45 c0 03 00 00 00 	movl   $0x3,-0x40(%rbp)
   430ab:	c7 45 c4 ff 0f 00 00 	movl   $0xfff,-0x3c(%rbp)
   430b2:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
   430b9:	00 
    real_find(va);
   430ba:	be 00 00 00 00       	mov    $0x0,%esi
   430bf:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   430c3:	e8 34 e8 ff ff       	call   418fc <vmiter::real_find(unsigned long)>
    return va_ <= VA_LOWMAX;
   430c8:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
            for (vmiter it(p); it.low(); ) {
   430cc:	4c 39 f7             	cmp    %r14,%rdi
   430cf:	0f 87 d4 00 00 00    	ja     431a9 <memusage::refresh()+0x299>
            return 2U << pid;
   430d5:	b8 02 00 00 00       	mov    $0x2,%eax
   430da:	0f b6 4d ac          	movzbl -0x54(%rbp),%ecx
   430de:	d3 e0                	shl    %cl,%eax
   430e0:	83 7d a8 1c          	cmpl   $0x1c,-0x58(%rbp)
   430e4:	ba 00 00 00 00       	mov    $0x0,%edx
   430e9:	0f 46 d0             	cmovbe %eax,%edx
   430ec:	89 55 ac             	mov    %edx,-0x54(%rbp)
   430ef:	eb 2c                	jmp    4311d <memusage::refresh()+0x20d>
            v_[pa / PAGESIZE] |= flags;
   430f1:	48 c1 e8 0c          	shr    $0xc,%rax
   430f5:	49 8b 55 00          	mov    0x0(%r13),%rdx
   430f9:	48 8d 14 82          	lea    (%rdx,%rax,4),%rdx
   430fd:	8b 45 ac             	mov    -0x54(%rbp),%eax
   43100:	0b 02                	or     (%rdx),%eax
   43102:	83 c8 02             	or     $0x2,%eax
   43105:	89 02                	mov    %eax,(%rdx)
                if (it.user()) {
                    mark(it.pa(), f_user | f_process(pid));
                    it.next();
   43107:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   4310b:	e8 9e e8 ff ff       	call   419ae <vmiter::next()>
   43110:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
            for (vmiter it(p); it.low(); ) {
   43114:	4c 39 f7             	cmp    %r14,%rdi
   43117:	0f 87 8c 00 00 00    	ja     431a9 <memusage::refresh()+0x299>
    return (*pep_ & perm_ & p) == p;
   4311d:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   43121:	48 8b 10             	mov    (%rax),%rdx
   43124:	48 63 45 c4          	movslq -0x3c(%rbp),%rax
   43128:	48 21 d0             	and    %rdx,%rax
   4312b:	83 e0 05             	and    $0x5,%eax
                if (it.user()) {
   4312e:	48 83 f8 05          	cmp    $0x5,%rax
   43132:	75 4d                	jne    43181 <memusage::refresh()+0x271>
    if (*pep_ & PTE_P) {
   43134:	f6 c2 01             	test   $0x1,%dl
   43137:	74 ce                	je     43107 <memusage::refresh()+0x1f7>
        if (level_ > 0) {
   43139:	8b 45 c0             	mov    -0x40(%rbp),%eax
        uintptr_t pa = *pep_ & PTE_PAMASK;
   4313c:	48 be 00 f0 ff ff ff 	movabs $0xffffffffff000,%rsi
   43143:	ff 0f 00 
   43146:	48 21 d6             	and    %rdx,%rsi
   43149:	48 b9 00 e0 ff ff ff 	movabs $0xfffffffffe000,%rcx
   43150:	ff 0f 00 
   43153:	48 21 ca             	and    %rcx,%rdx
   43156:	85 c0                	test   %eax,%eax
   43158:	48 0f 4f f2          	cmovg  %rdx,%rsi
    return (1UL << (PAGEOFFBITS + level * PAGEINDEXBITS)) - 1;
   4315c:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   43160:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   43167:	48 d3 e0             	shl    %cl,%rax
   4316a:	48 f7 d0             	not    %rax
   4316d:	48 21 f8             	and    %rdi,%rax
   43170:	48 01 f0             	add    %rsi,%rax
        if (pa < maxpa) {
   43173:	48 3d ff ff 3f 00    	cmp    $0x3fffff,%rax
   43179:	0f 86 72 ff ff ff    	jbe    430f1 <memusage::refresh()+0x1e1>
   4317f:	eb 86                	jmp    43107 <memusage::refresh()+0x1f7>
   43181:	8b 45 c0             	mov    -0x40(%rbp),%eax
   43184:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   43188:	be 01 00 00 00       	mov    $0x1,%esi
   4318d:	48 d3 e6             	shl    %cl,%rsi
   43190:	48 83 ee 01          	sub    $0x1,%rsi
    return (va_ | pageoffmask(level_)) + 1;
   43194:	48 09 fe             	or     %rdi,%rsi
   43197:	48 83 c6 01          	add    $0x1,%rsi
    real_find(last_va());
   4319b:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   4319f:	e8 58 e7 ff ff       	call   418fc <vmiter::real_find(unsigned long)>
}
   431a4:	e9 67 ff ff ff       	jmp    43110 <memusage::refresh()+0x200>
            any = true;
   431a9:	0f b6 75 9f          	movzbl -0x61(%rbp),%esi
    for (int pid = 1; pid < NPROC; ++pid) {
   431ad:	49 81 c4 d0 00 00 00 	add    $0xd0,%r12
   431b4:	83 fb 0f             	cmp    $0xf,%ebx
   431b7:	74 6a                	je     43223 <memusage::refresh()+0x313>
   431b9:	89 5d a8             	mov    %ebx,-0x58(%rbp)
   431bc:	83 c3 01             	add    $0x1,%ebx
   431bf:	89 5d ac             	mov    %ebx,-0x54(%rbp)
        if (p->state != P_FREE
   431c2:	4c 89 65 a0          	mov    %r12,-0x60(%rbp)
   431c6:	41 83 7c 24 0c 00    	cmpl   $0x0,0xc(%r12)
   431cc:	74 df                	je     431ad <memusage::refresh()+0x29d>
            && p->pagetable
   431ce:	49 8b 04 24          	mov    (%r12),%rax
            && p->pagetable != kernel_pagetable) {
   431d2:	48 3d 00 a0 05 00    	cmp    $0x5a000,%rax
   431d8:	0f 95 c1             	setne  %cl
            && p->pagetable
   431db:	48 85 c0             	test   %rax,%rax
   431de:	0f 95 c2             	setne  %dl
            && p->pagetable != kernel_pagetable) {
   431e1:	20 d1                	and    %dl,%cl
   431e3:	88 4d 9f             	mov    %cl,-0x61(%rbp)
   431e6:	74 c5                	je     431ad <memusage::refresh()+0x29d>
    : pt_(pt) {
   431e8:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    go(va);
   431ec:	be 00 00 00 00       	mov    $0x0,%esi
   431f1:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   431f5:	e8 9a ea ff ff       	call   41c94 <ptiter::go(unsigned long)>
            for (ptiter it(p); it.active(); it.next()) {
   431fa:	4c 39 7d c8          	cmp    %r15,-0x38(%rbp)
   431fe:	0f 87 57 fe ff ff    	ja     4305b <memusage::refresh()+0x14b>
            return 2U << pid;
   43204:	b8 02 00 00 00       	mov    $0x2,%eax
   43209:	0f b6 4d ac          	movzbl -0x54(%rbp),%ecx
   4320d:	d3 e0                	shl    %cl,%eax
   4320f:	83 7d a8 1c          	cmpl   $0x1c,-0x58(%rbp)
   43213:	ba 00 00 00 00       	mov    $0x0,%edx
   43218:	0f 46 d0             	cmovbe %eax,%edx
   4321b:	89 55 98             	mov    %edx,-0x68(%rbp)
   4321e:	e9 07 fe ff ff       	jmp    4302a <memusage::refresh()+0x11a>
            }
        }
    }

    // if no different process page tables, use physical address instead
    if (!any) {
   43223:	40 84 f6             	test   %sil,%sil
   43226:	74 26                	je     4324e <memusage::refresh()+0x33e>
        }
    }

    // mark my own memory
    if (any) {
        mark((uintptr_t) v_, f_kernel);
   43228:	49 8b 45 00          	mov    0x0(%r13),%rax
        if (pa < maxpa) {
   4322c:	48 3d ff ff 3f 00    	cmp    $0x3fffff,%rax
   43232:	77 0b                	ja     4323f <memusage::refresh()+0x32f>
            v_[pa / PAGESIZE] |= flags;
   43234:	48 89 c2             	mov    %rax,%rdx
   43237:	48 c1 ea 0c          	shr    $0xc,%rdx
   4323b:	83 0c 90 01          	orl    $0x1,(%rax,%rdx,4)
    }
}
   4323f:	48 83 c4 48          	add    $0x48,%rsp
   43243:	5b                   	pop    %rbx
   43244:	41 5c                	pop    %r12
   43246:	41 5d                	pop    %r13
   43248:	41 5e                	pop    %r14
   4324a:	41 5f                	pop    %r15
   4324c:	5d                   	pop    %rbp
   4324d:	c3                   	ret    
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   4324e:	48 c7 45 b0 00 a0 05 	movq   $0x5a000,-0x50(%rbp)
   43255:	00 
   43256:	48 c7 45 b8 00 a0 05 	movq   $0x5a000,-0x48(%rbp)
   4325d:	00 
   4325e:	c7 45 c0 03 00 00 00 	movl   $0x3,-0x40(%rbp)
   43265:	c7 45 c4 ff 0f 00 00 	movl   $0xfff,-0x3c(%rbp)
   4326c:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
   43273:	00 
    real_find(va);
   43274:	be 00 00 00 00       	mov    $0x0,%esi
   43279:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   4327d:	e8 7a e6 ff ff       	call   418fc <vmiter::real_find(unsigned long)>
    return va_ <= VA_LOWMAX;
   43282:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
        for (vmiter it(kernel_pagetable); it.low(); ) {
   43286:	48 89 d0             	mov    %rdx,%rax
   43289:	48 c1 e8 2f          	shr    $0x2f,%rax
   4328d:	75 b0                	jne    4323f <memusage::refresh()+0x32f>
   4328f:	41 bc 01 00 00 00    	mov    $0x1,%r12d
            pa &= ~0x1000UL;
   43295:	49 be 00 e0 ff ff ff 	movabs $0xfffffffffe000,%r14
   4329c:	ff 0f 00 
        uintptr_t pa = *pep_ & PTE_PAMASK;
   4329f:	49 bf 00 f0 ff ff ff 	movabs $0xffffffffff000,%r15
   432a6:	ff 0f 00 
   432a9:	48 bb ff ff ff ff ff 	movabs $0x7fffffffffff,%rbx
   432b0:	7f 00 00 
   432b3:	eb 2e                	jmp    432e3 <memusage::refresh()+0x3d3>
   432b5:	8b 45 c0             	mov    -0x40(%rbp),%eax
   432b8:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   432bc:	4c 89 e6             	mov    %r12,%rsi
   432bf:	48 d3 e6             	shl    %cl,%rsi
   432c2:	48 83 ee 01          	sub    $0x1,%rsi
    return (va_ | pageoffmask(level_)) + 1;
   432c6:	48 09 d6             	or     %rdx,%rsi
   432c9:	48 83 c6 01          	add    $0x1,%rsi
    real_find(last_va());
   432cd:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   432d1:	e8 26 e6 ff ff       	call   418fc <vmiter::real_find(unsigned long)>
    return va_ <= VA_LOWMAX;
   432d6:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
   432da:	48 39 da             	cmp    %rbx,%rdx
   432dd:	0f 87 5c ff ff ff    	ja     4323f <memusage::refresh()+0x32f>
    return (*pep_ & perm_ & p) == p;
   432e3:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   432e7:	48 8b 08             	mov    (%rax),%rcx
   432ea:	48 63 45 c4          	movslq -0x3c(%rbp),%rax
   432ee:	48 21 c8             	and    %rcx,%rax
   432f1:	83 e0 05             	and    $0x5,%eax
                && pages[it.pa() / PAGESIZE].used()) {
   432f4:	48 83 f8 05          	cmp    $0x5,%rax
   432f8:	75 bb                	jne    432b5 <memusage::refresh()+0x3a5>
    if (*pep_ & PTE_P) {
   432fa:	f6 c1 01             	test   $0x1,%cl
   432fd:	74 b6                	je     432b5 <memusage::refresh()+0x3a5>
        if (level_ > 0) {
   432ff:	8b 45 c0             	mov    -0x40(%rbp),%eax
            pa &= ~0x1000UL;
   43302:	48 89 cf             	mov    %rcx,%rdi
   43305:	4c 21 f7             	and    %r14,%rdi
        uintptr_t pa = *pep_ & PTE_PAMASK;
   43308:	48 89 ce             	mov    %rcx,%rsi
   4330b:	4c 21 fe             	and    %r15,%rsi
   4330e:	85 c0                	test   %eax,%eax
   43310:	48 0f 4f f7          	cmovg  %rdi,%rsi
   43314:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   43318:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   4331f:	48 d3 e0             	shl    %cl,%rax
   43322:	48 f7 d0             	not    %rax
   43325:	48 21 d0             	and    %rdx,%rax
   43328:	48 01 f0             	add    %rsi,%rax
                && it.pa() < MEMSIZE_PHYSICAL
   4332b:	48 3d ff ff 1f 00    	cmp    $0x1fffff,%rax
   43331:	77 82                	ja     432b5 <memusage::refresh()+0x3a5>
                && pages[it.pa() / PAGESIZE].used()) {
   43333:	48 89 c6             	mov    %rax,%rsi
   43336:	48 c1 ee 0c          	shr    $0xc,%rsi
   4333a:	80 be 00 80 05 00 00 	cmpb   $0x0,0x58000(%rsi)
   43341:	0f 84 6e ff ff ff    	je     432b5 <memusage::refresh()+0x3a5>
                unsigned owner = (it.pa() - PROC_START_ADDR) / 0x40000;
   43347:	48 2d 00 00 10 00    	sub    $0x100000,%rax
   4334d:	48 c1 e8 12          	shr    $0x12,%rax
        } else if (pid >= 1) {
   43351:	83 f8 1c             	cmp    $0x1c,%eax
   43354:	76 22                	jbe    43378 <memusage::refresh()+0x468>
            return 0;
   43356:	b8 00 00 00 00       	mov    $0x0,%eax
            v_[pa / PAGESIZE] |= flags;
   4335b:	49 8b 55 00          	mov    0x0(%r13),%rdx
   4335f:	48 8d 14 b2          	lea    (%rdx,%rsi,4),%rdx
   43363:	0b 02                	or     (%rdx),%eax
   43365:	83 c8 02             	or     $0x2,%eax
   43368:	89 02                	mov    %eax,(%rdx)
                it.next();
   4336a:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   4336e:	e8 3b e6 ff ff       	call   419ae <vmiter::next()>
   43373:	e9 5e ff ff ff       	jmp    432d6 <memusage::refresh()+0x3c6>
                mark(it.pa(), f_user | f_process(owner + 1));
   43378:	8d 48 01             	lea    0x1(%rax),%ecx
            return 2U << pid;
   4337b:	b8 02 00 00 00       	mov    $0x2,%eax
   43380:	d3 e0                	shl    %cl,%eax
   43382:	eb d7                	jmp    4335b <memusage::refresh()+0x44b>

0000000000043384 <memusage::page_error(unsigned long, char const*, int) const>:

void memusage::page_error(uintptr_t pa, const char* desc, int pid) const {
   43384:	f3 0f 1e fa          	endbr64 
   43388:	55                   	push   %rbp
   43389:	48 89 e5             	mov    %rsp,%rbp
   4338c:	41 56                	push   %r14
   4338e:	41 55                	push   %r13
   43390:	41 54                	push   %r12
   43392:	53                   	push   %rbx
   43393:	49 89 f5             	mov    %rsi,%r13
   43396:	49 89 d6             	mov    %rdx,%r14
   43399:	89 cb                	mov    %ecx,%ebx
    const char* fmt = pid >= 0
        ? "PAGE TABLE ERROR: %lx: %s (pid %d)\n"
   4339b:	85 c9                	test   %ecx,%ecx
   4339d:	41 bc d8 4c 04 00    	mov    $0x44cd8,%r12d
   433a3:	b8 3d 4c 04 00       	mov    $0x44c3d,%eax
   433a8:	4c 0f 48 e0          	cmovs  %rax,%r12
        : "PAGE TABLE ERROR: %lx: %s\n";
    error_printf(CPOS(22, 0), COLOR_ERROR, fmt, pa, desc, pid);
   433ac:	41 89 c9             	mov    %ecx,%r9d
   433af:	49 89 d0             	mov    %rdx,%r8
   433b2:	48 89 f1             	mov    %rsi,%rcx
   433b5:	4c 89 e2             	mov    %r12,%rdx
   433b8:	be 00 c0 00 00       	mov    $0xc000,%esi
   433bd:	bf e0 06 00 00       	mov    $0x6e0,%edi
   433c2:	b8 00 00 00 00       	mov    $0x0,%eax
   433c7:	e8 f3 ed ff ff       	call   421bf <error_printf(int, int, char const*, ...)>
    log_printf(fmt, pa, desc, pid);
   433cc:	89 d9                	mov    %ebx,%ecx
   433ce:	4c 89 f2             	mov    %r14,%rdx
   433d1:	4c 89 ee             	mov    %r13,%rsi
   433d4:	4c 89 e7             	mov    %r12,%rdi
   433d7:	b8 00 00 00 00       	mov    $0x0,%eax
   433dc:	e8 3c ed ff ff       	call   4211d <log_printf(char const*, ...)>
}
   433e1:	5b                   	pop    %rbx
   433e2:	41 5c                	pop    %r12
   433e4:	41 5d                	pop    %r13
   433e6:	41 5e                	pop    %r14
   433e8:	5d                   	pop    %rbp
   433e9:	c3                   	ret    

00000000000433ea <memusage::symbol_at(unsigned long) const>:

uint16_t memusage::symbol_at(uintptr_t pa) const {
   433ea:	f3 0f 1e fa          	endbr64 
   433ee:	55                   	push   %rbp
   433ef:	48 89 e5             	mov    %rsp,%rbp
   433f2:	41 55                	push   %r13
   433f4:	41 54                	push   %r12
   433f6:	53                   	push   %rbx
   433f7:	48 83 ec 08          	sub    $0x8,%rsp
   433fb:	49 89 fd             	mov    %rdi,%r13
   433fe:	48 89 f3             	mov    %rsi,%rbx
    bool is_reserved = reserved_physical_address(pa);
   43401:	48 89 f7             	mov    %rsi,%rdi
   43404:	e8 a6 e9 ff ff       	call   41daf <reserved_physical_address(unsigned long)>
   43409:	41 89 c4             	mov    %eax,%r12d
    bool is_kernel = !is_reserved && !allocatable_physical_address(pa);
   4340c:	84 c0                	test   %al,%al
   4340e:	74 3e                	je     4344e <memusage::symbol_at(unsigned long) const+0x64>

    if (pa >= maxpa) {
        if (is_kernel) {
            return 'K' | 0x4000;
        } else if (is_reserved) {
            return '?' | 0x4000;
   43410:	b8 3f 40 00 00       	mov    $0x403f,%eax
    if (pa >= maxpa) {
   43415:	48 81 fb ff ff 3f 00 	cmp    $0x3fffff,%rbx
   4341c:	77 56                	ja     43474 <memusage::symbol_at(unsigned long) const+0x8a>
        } else {
            return '?' | 0xF000;
        }
    }

    auto v = v_[pa / PAGESIZE];
   4341e:	48 89 da             	mov    %rbx,%rdx
   43421:	48 c1 ea 0c          	shr    $0xc,%rdx
   43425:	49 8b 45 00          	mov    0x0(%r13),%rax
   43429:	8b 14 90             	mov    (%rax,%rdx,4),%edx
    if (pa >= (uintptr_t) console && pa < (uintptr_t) console + PAGESIZE) {
   4342c:	b8 00 80 0b 00       	mov    $0xb8000,%eax
   43431:	48 39 d8             	cmp    %rbx,%rax
   43434:	77 49                	ja     4347f <memusage::symbol_at(unsigned long) const+0x95>
    bool is_kernel = !is_reserved && !allocatable_physical_address(pa);
   43436:	b9 00 00 00 00       	mov    $0x0,%ecx
    if (pa >= (uintptr_t) console && pa < (uintptr_t) console + PAGESIZE) {
   4343b:	48 8d b0 00 10 00 00 	lea    0x1000(%rax),%rsi
        return 'C' | 0x0700;
   43442:	b8 43 07 00 00       	mov    $0x743,%eax
    if (pa >= (uintptr_t) console && pa < (uintptr_t) console + PAGESIZE) {
   43447:	48 39 de             	cmp    %rbx,%rsi
   4344a:	76 38                	jbe    43484 <memusage::symbol_at(unsigned long) const+0x9a>
   4344c:	eb 26                	jmp    43474 <memusage::symbol_at(unsigned long) const+0x8a>
    bool is_kernel = !is_reserved && !allocatable_physical_address(pa);
   4344e:	48 89 df             	mov    %rbx,%rdi
   43451:	e8 7a e9 ff ff       	call   41dd0 <allocatable_physical_address(unsigned long)>
   43456:	83 f0 01             	xor    $0x1,%eax
   43459:	89 c1                	mov    %eax,%ecx
    if (pa >= maxpa) {
   4345b:	48 81 fb ff ff 3f 00 	cmp    $0x3fffff,%rbx
   43462:	0f 86 97 01 00 00    	jbe    435ff <memusage::symbol_at(unsigned long) const+0x215>
            return 'K' | 0x4000;
   43468:	3c 01                	cmp    $0x1,%al
   4346a:	19 c0                	sbb    %eax,%eax
   4346c:	66 25 f4 af          	and    $0xaff4,%ax
   43470:	66 05 4b 40          	add    $0x404b,%ax
                ch |= names[pid];
            }
            return ch;
        }
    }
}
   43474:	48 83 c4 08          	add    $0x8,%rsp
   43478:	5b                   	pop    %rbx
   43479:	41 5c                	pop    %r12
   4347b:	41 5d                	pop    %r13
   4347d:	5d                   	pop    %rbp
   4347e:	c3                   	ret    
    bool is_kernel = !is_reserved && !allocatable_physical_address(pa);
   4347f:	b9 00 00 00 00       	mov    $0x0,%ecx
    } else if (is_reserved && v > (f_kernel | f_user)) {
   43484:	83 fa 03             	cmp    $0x3,%edx
   43487:	40 0f 97 c6          	seta   %sil
   4348b:	76 09                	jbe    43496 <memusage::symbol_at(unsigned long) const+0xac>
   4348d:	45 84 e4             	test   %r12b,%r12b
   43490:	0f 85 b7 00 00 00    	jne    4354d <memusage::symbol_at(unsigned long) const+0x163>
        return 'R' | 0x0700;
   43496:	b8 52 07 00 00       	mov    $0x752,%eax
    } else if (is_reserved) {
   4349b:	45 84 e4             	test   %r12b,%r12b
   4349e:	75 d4                	jne    43474 <memusage::symbol_at(unsigned long) const+0x8a>
    } else if (is_kernel && v > (f_kernel | f_user)) {
   434a0:	40 84 f6             	test   %sil,%sil
   434a3:	74 08                	je     434ad <memusage::symbol_at(unsigned long) const+0xc3>
   434a5:	84 c9                	test   %cl,%cl
   434a7:	0f 85 c6 00 00 00    	jne    43573 <memusage::symbol_at(unsigned long) const+0x189>
        return 'K' | 0x0D00;
   434ad:	b8 4b 0d 00 00       	mov    $0xd4b,%eax
    } else if (is_kernel) {
   434b2:	84 c9                	test   %cl,%cl
   434b4:	75 be                	jne    43474 <memusage::symbol_at(unsigned long) const+0x8a>
        return ' ' | 0x0700;
   434b6:	b8 20 07 00 00       	mov    $0x720,%eax
    } else if (pa >= MEMSIZE_PHYSICAL) {
   434bb:	48 81 fb ff ff 1f 00 	cmp    $0x1fffff,%rbx
   434c2:	77 b0                	ja     43474 <memusage::symbol_at(unsigned long) const+0x8a>
            return '.' | 0x0700;
   434c4:	b8 2e 07 00 00       	mov    $0x72e,%eax
        if (v == 0) {
   434c9:	85 d2                	test   %edx,%edx
   434cb:	74 a7                	je     43474 <memusage::symbol_at(unsigned long) const+0x8a>
        } else if (v == f_kernel) {
   434cd:	83 fa 01             	cmp    $0x1,%edx
   434d0:	0f 84 15 01 00 00    	je     435eb <memusage::symbol_at(unsigned long) const+0x201>
        } else if (v == f_user) {
   434d6:	83 fa 02             	cmp    $0x2,%edx
   434d9:	0f 84 16 01 00 00    	je     435f5 <memusage::symbol_at(unsigned long) const+0x20b>
        } else if ((v & f_kernel) && (v & f_user)) {
   434df:	89 d0                	mov    %edx,%eax
   434e1:	83 e0 03             	and    $0x3,%eax
   434e4:	83 f8 03             	cmp    $0x3,%eax
   434e7:	0f 84 ac 00 00 00    	je     43599 <memusage::symbol_at(unsigned long) const+0x1af>
        return lsb(v >> 2);
   434ed:	89 d7                	mov    %edx,%edi
   434ef:	c1 ef 02             	shr    $0x2,%edi
//    Returns 0 if `x == 0`.
inline constexpr int lsb(int x) {
    return __builtin_ffs(x);
}
inline constexpr int lsb(unsigned x) {
    return __builtin_ffs(x);
   434f2:	0f bc cf             	bsf    %edi,%ecx
   434f5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   434fa:	0f 44 c8             	cmove  %eax,%ecx
   434fd:	83 c1 01             	add    $0x1,%ecx
            uint16_t ch = colors[pid % 5] << 8;
   43500:	48 63 c1             	movslq %ecx,%rax
   43503:	48 69 c0 67 66 66 66 	imul   $0x66666667,%rax,%rax
   4350a:	48 c1 f8 21          	sar    $0x21,%rax
   4350e:	89 ce                	mov    %ecx,%esi
   43510:	c1 fe 1f             	sar    $0x1f,%esi
   43513:	29 f0                	sub    %esi,%eax
   43515:	8d 34 80             	lea    (%rax,%rax,4),%esi
   43518:	89 c8                	mov    %ecx,%eax
   4351a:	29 f0                	sub    %esi,%eax
   4351c:	48 98                	cltq   
   4351e:	0f b6 b0 81 4d 04 00 	movzbl 0x44d81(%rax),%esi
   43525:	c1 e6 08             	shl    $0x8,%esi
                ch |= 0x4000;
   43528:	89 f0                	mov    %esi,%eax
   4352a:	80 cc 40             	or     $0x40,%ah
   4352d:	f6 c2 01             	test   $0x1,%dl
   43530:	0f 45 f0             	cmovne %eax,%esi
        } else if (pid >= 1) {
   43533:	85 ff                	test   %edi,%edi
   43535:	0f 84 89 00 00 00    	je     435c4 <memusage::symbol_at(unsigned long) const+0x1da>
   4353b:	83 f9 1d             	cmp    $0x1d,%ecx
   4353e:	0f 8f 80 00 00 00    	jg     435c4 <memusage::symbol_at(unsigned long) const+0x1da>
            return 2U << pid;
   43544:	bf 02 00 00 00       	mov    $0x2,%edi
   43549:	d3 e7                	shl    %cl,%edi
   4354b:	eb 7c                	jmp    435c9 <memusage::symbol_at(unsigned long) const+0x1df>
        return lsb(v >> 2);
   4354d:	c1 ea 02             	shr    $0x2,%edx
   43550:	31 c9                	xor    %ecx,%ecx
   43552:	f3 0f bc ca          	tzcnt  %edx,%ecx
   43556:	83 c1 01             	add    $0x1,%ecx
        page_error(pa, "reserved page mapped for user", marked_pid(v));
   43559:	ba 58 4c 04 00       	mov    $0x44c58,%edx
   4355e:	48 89 de             	mov    %rbx,%rsi
   43561:	4c 89 ef             	mov    %r13,%rdi
   43564:	e8 1b fe ff ff       	call   43384 <memusage::page_error(unsigned long, char const*, int) const>
        return 'R' | 0x0C00;
   43569:	b8 52 0c 00 00       	mov    $0xc52,%eax
   4356e:	e9 01 ff ff ff       	jmp    43474 <memusage::symbol_at(unsigned long) const+0x8a>
        return lsb(v >> 2);
   43573:	c1 ea 02             	shr    $0x2,%edx
   43576:	31 c9                	xor    %ecx,%ecx
   43578:	f3 0f bc ca          	tzcnt  %edx,%ecx
   4357c:	83 c1 01             	add    $0x1,%ecx
        page_error(pa, "kernel data page mapped for user", marked_pid(v));
   4357f:	ba 00 4d 04 00       	mov    $0x44d00,%edx
   43584:	48 89 de             	mov    %rbx,%rsi
   43587:	4c 89 ef             	mov    %r13,%rdi
   4358a:	e8 f5 fd ff ff       	call   43384 <memusage::page_error(unsigned long, char const*, int) const>
        return 'K' | 0xCD00;
   4358f:	b8 4b cd ff ff       	mov    $0xffffcd4b,%eax
   43594:	e9 db fe ff ff       	jmp    43474 <memusage::symbol_at(unsigned long) const+0x8a>
        return lsb(v >> 2);
   43599:	c1 ea 02             	shr    $0x2,%edx
   4359c:	0f bc ca             	bsf    %edx,%ecx
   4359f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   435a4:	0f 44 c8             	cmove  %eax,%ecx
   435a7:	83 c1 01             	add    $0x1,%ecx
            page_error(pa, "kernel allocated page mapped for user",
   435aa:	ba 28 4d 04 00       	mov    $0x44d28,%edx
   435af:	48 89 de             	mov    %rbx,%rsi
   435b2:	4c 89 ef             	mov    %r13,%rdi
   435b5:	e8 ca fd ff ff       	call   43384 <memusage::page_error(unsigned long, char const*, int) const>
            return '*' | 0xF400;
   435ba:	b8 2a f4 ff ff       	mov    $0xfffff42a,%eax
   435bf:	e9 b0 fe ff ff       	jmp    43474 <memusage::symbol_at(unsigned long) const+0x8a>
            return 0;
   435c4:	bf 00 00 00 00       	mov    $0x0,%edi
            if (v > (f_process(pid) | f_kernel | f_user)) {
   435c9:	83 cf 03             	or     $0x3,%edi
                ch = 0x0F00 | 'S';
   435cc:	b8 53 0f 00 00       	mov    $0xf53,%eax
            if (v > (f_process(pid) | f_kernel | f_user)) {
   435d1:	39 d7                	cmp    %edx,%edi
   435d3:	0f 82 9b fe ff ff    	jb     43474 <memusage::symbol_at(unsigned long) const+0x8a>
                ch |= names[pid];
   435d9:	48 63 c9             	movslq %ecx,%rcx
   435dc:	66 0f be 81 60 4d 04 	movsbw 0x44d60(%rcx),%ax
   435e3:	00 
   435e4:	09 f0                	or     %esi,%eax
   435e6:	e9 89 fe ff ff       	jmp    43474 <memusage::symbol_at(unsigned long) const+0x8a>
            return 'K' | 0x0D00;
   435eb:	b8 4b 0d 00 00       	mov    $0xd4b,%eax
   435f0:	e9 7f fe ff ff       	jmp    43474 <memusage::symbol_at(unsigned long) const+0x8a>
            return '.' | 0x0700;
   435f5:	b8 2e 07 00 00       	mov    $0x72e,%eax
   435fa:	e9 75 fe ff ff       	jmp    43474 <memusage::symbol_at(unsigned long) const+0x8a>
    auto v = v_[pa / PAGESIZE];
   435ff:	48 89 da             	mov    %rbx,%rdx
   43602:	48 c1 ea 0c          	shr    $0xc,%rdx
   43606:	49 8b 45 00          	mov    0x0(%r13),%rax
   4360a:	8b 14 90             	mov    (%rax,%rdx,4),%edx
    if (pa >= (uintptr_t) console && pa < (uintptr_t) console + PAGESIZE) {
   4360d:	b8 00 80 0b 00       	mov    $0xb8000,%eax
   43612:	48 39 c3             	cmp    %rax,%rbx
   43615:	0f 83 20 fe ff ff    	jae    4343b <memusage::symbol_at(unsigned long) const+0x51>
    } else if (is_reserved && v > (f_kernel | f_user)) {
   4361b:	83 fa 03             	cmp    $0x3,%edx
   4361e:	40 0f 97 c6          	seta   %sil
   43622:	e9 79 fe ff ff       	jmp    434a0 <memusage::symbol_at(unsigned long) const+0xb6>

0000000000043627 <console_memviewer(proc*, bool)>:
        console[CPOS(11 + pn/64, 12 + pn%64)] = ch;
    }
}


void console_memviewer(proc* vmp, bool output_autograder) {
   43627:	f3 0f 1e fa          	endbr64 
   4362b:	55                   	push   %rbp
   4362c:	48 89 e5             	mov    %rsp,%rbp
   4362f:	41 57                	push   %r15
   43631:	41 56                	push   %r14
   43633:	41 55                	push   %r13
   43635:	41 54                	push   %r12
   43637:	53                   	push   %rbx
   43638:	48 83 ec 28          	sub    $0x28,%rsp
    (void) output_autograder;
    // Process 0 must never be used.
    assert(ptable[0].state == P_FREE);
   4363c:	8b 1d ea 4b 01 00    	mov    0x14bea(%rip),%ebx        # 5822c <ptable+0xc>
   43642:	85 db                	test   %ebx,%ebx
   43644:	75 3c                	jne    43682 <console_memviewer(proc*, bool)+0x5b>
   43646:	49 89 fd             	mov    %rdi,%r13

    // track physical memory
    static memusage mu;
   43649:	0f b6 05 38 ba 01 00 	movzbl 0x1ba38(%rip),%eax        # 5f088 <guard variable for console_memviewer(proc*, bool)::mu>
   43650:	84 c0                	test   %al,%al
   43652:	74 42                	je     43696 <console_memviewer(proc*, bool)+0x6f>
    mu.refresh();
   43654:	bf 90 f0 05 00       	mov    $0x5f090,%edi
   43659:	e8 b2 f8 ff ff       	call   42f10 <memusage::refresh()>

    // print physical memory
    console_printf(CPOS(0, 32), 0x0F00, "PHYSICAL MEMORY\n");
   4365e:	ba 90 4c 04 00       	mov    $0x44c90,%edx
   43663:	be 00 0f 00 00       	mov    $0xf00,%esi
   43668:	bf 20 00 00 00       	mov    $0x20,%edi
   4366d:	b8 00 00 00 00       	mov    $0x0,%eax
   43672:	e8 fa 0d 00 00       	call   44471 <console_printf(int, int, char const*, ...)>
   43677:	41 bc 00 00 00 00    	mov    $0x0,%r12d
   4367d:	e9 8b 00 00 00       	jmp    4370d <console_memviewer(proc*, bool)+0xe6>
    assert(ptable[0].state == P_FREE);
   43682:	ba 76 4c 04 00       	mov    $0x44c76,%edx
   43687:	be e7 00 00 00       	mov    $0xe7,%esi
   4368c:	bf 2e 4c 04 00       	mov    $0x44c2e,%edi
   43691:	e8 b2 eb ff ff       	call   42248 <assert_fail(char const*, int, char const*)>
    static memusage mu;
   43696:	bf 88 f0 05 00       	mov    $0x5f088,%edi
   4369b:	e8 30 f8 ff ff       	call   42ed0 <__cxa_guard_acquire>
   436a0:	85 c0                	test   %eax,%eax
   436a2:	74 b0                	je     43654 <console_memviewer(proc*, bool)+0x2d>
        : v_(nullptr) {
   436a4:	48 c7 05 e1 b9 01 00 	movq   $0x0,0x1b9e1(%rip)        # 5f090 <console_memviewer(proc*, bool)::mu>
   436ab:	00 00 00 00 
    static memusage mu;
   436af:	bf 88 f0 05 00       	mov    $0x5f088,%edi
   436b4:	e8 4b f8 ff ff       	call   42f04 <__cxa_guard_release>
   436b9:	eb 99                	jmp    43654 <console_memviewer(proc*, bool)+0x2d>

    for (int pn = 0; pn * PAGESIZE < memusage::max_view_pa; ++pn) {
        if (pn % 64 == 0) {
            console_printf(CPOS(1 + pn/64, 3), 0x0F00, "0x%06X ", pn << 12);
        }
        console[CPOS(1 + pn/64, 12 + pn%64)] = mu.symbol_at(pn * PAGESIZE);
   436bb:	8d 43 3f             	lea    0x3f(%rbx),%eax
   436be:	85 db                	test   %ebx,%ebx
   436c0:	0f 49 c3             	cmovns %ebx,%eax
   436c3:	c1 f8 06             	sar    $0x6,%eax
   436c6:	8d 4c 80 05          	lea    0x5(%rax,%rax,4),%ecx
   436ca:	c1 e1 04             	shl    $0x4,%ecx
   436cd:	89 da                	mov    %ebx,%edx
   436cf:	c1 fa 1f             	sar    $0x1f,%edx
   436d2:	c1 ea 1a             	shr    $0x1a,%edx
   436d5:	8d 04 13             	lea    (%rbx,%rdx,1),%eax
   436d8:	83 e0 3f             	and    $0x3f,%eax
   436db:	29 d0                	sub    %edx,%eax
   436dd:	44 8d 74 01 0c       	lea    0xc(%rcx,%rax,1),%r14d
   436e2:	4c 89 e6             	mov    %r12,%rsi
   436e5:	bf 90 f0 05 00       	mov    $0x5f090,%edi
   436ea:	e8 fb fc ff ff       	call   433ea <memusage::symbol_at(unsigned long) const>
   436ef:	4d 63 f6             	movslq %r14d,%r14
   436f2:	66 43 89 84 36 00 80 	mov    %ax,0xb8000(%r14,%r14,1)
   436f9:	0b 00 
    for (int pn = 0; pn * PAGESIZE < memusage::max_view_pa; ++pn) {
   436fb:	83 c3 01             	add    $0x1,%ebx
   436fe:	49 81 c4 00 10 00 00 	add    $0x1000,%r12
   43705:	81 fb 00 02 00 00    	cmp    $0x200,%ebx
   4370b:	74 36                	je     43743 <console_memviewer(proc*, bool)+0x11c>
        if (pn % 64 == 0) {
   4370d:	f6 c3 3f             	test   $0x3f,%bl
   43710:	75 a9                	jne    436bb <console_memviewer(proc*, bool)+0x94>
            console_printf(CPOS(1 + pn/64, 3), 0x0F00, "0x%06X ", pn << 12);
   43712:	8d 43 3f             	lea    0x3f(%rbx),%eax
   43715:	85 db                	test   %ebx,%ebx
   43717:	0f 49 c3             	cmovns %ebx,%eax
   4371a:	c1 f8 06             	sar    $0x6,%eax
   4371d:	8d 7c 80 05          	lea    0x5(%rax,%rax,4),%edi
   43721:	c1 e7 04             	shl    $0x4,%edi
   43724:	83 c7 03             	add    $0x3,%edi
   43727:	44 89 e1             	mov    %r12d,%ecx
   4372a:	ba a1 4c 04 00       	mov    $0x44ca1,%edx
   4372f:	be 00 0f 00 00       	mov    $0xf00,%esi
   43734:	b8 00 00 00 00       	mov    $0x0,%eax
   43739:	e8 33 0d 00 00       	call   44471 <console_printf(int, int, char const*, ...)>
   4373e:	e9 78 ff ff ff       	jmp    436bb <console_memviewer(proc*, bool)+0x94>
    }

    // print virtual memory
    if (vmp && vmp->pagetable) {
   43743:	4d 85 ed             	test   %r13,%r13
   43746:	0f 84 84 01 00 00    	je     438d0 <console_memviewer(proc*, bool)+0x2a9>
   4374c:	49 83 7d 00 00       	cmpq   $0x0,0x0(%r13)
   43751:	0f 84 79 01 00 00    	je     438d0 <console_memviewer(proc*, bool)+0x2a9>
    console_printf(CPOS(10, 26), 0x0F00,
   43757:	41 8b 4d 08          	mov    0x8(%r13),%ecx
   4375b:	ba a9 4c 04 00       	mov    $0x44ca9,%edx
   43760:	be 00 0f 00 00       	mov    $0xf00,%esi
   43765:	bf 3a 03 00 00       	mov    $0x33a,%edi
   4376a:	b8 00 00 00 00       	mov    $0x0,%eax
   4376f:	e8 fd 0c 00 00       	call   44471 <console_printf(int, int, char const*, ...)>
    : vmiter(p->pagetable, va) {
   43774:	49 8b 45 00          	mov    0x0(%r13),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   43778:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
   4377c:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
   43780:	c7 45 c0 03 00 00 00 	movl   $0x3,-0x40(%rbp)
   43787:	c7 45 c4 ff 0f 00 00 	movl   $0xfff,-0x3c(%rbp)
   4378e:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
   43795:	00 
    real_find(va);
   43796:	be 00 00 00 00       	mov    $0x0,%esi
   4379b:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   4379f:	e8 58 e1 ff ff       	call   418fc <vmiter::real_find(unsigned long)>
    return va_;
   437a4:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
         it.va() < memusage::max_view_va;
   437a8:	48 81 fb ff ff 2f 00 	cmp    $0x2fffff,%rbx
   437af:	0f 87 34 01 00 00    	ja     438e9 <console_memviewer(proc*, bool)+0x2c2>
            pa &= ~0x1000UL;
   437b5:	49 bd 00 e0 ff ff ff 	movabs $0xfffffffffe000,%r13
   437bc:	ff 0f 00 
        return pa + (va_ & pageoffmask(level_));
   437bf:	49 c7 c7 ff ff ff ff 	mov    $0xffffffffffffffff,%r15
        uintptr_t pa = *pep_ & PTE_PAMASK;
   437c6:	49 be 00 f0 ff ff ff 	movabs $0xffffffffff000,%r14
   437cd:	ff 0f 00 
   437d0:	e9 88 00 00 00       	jmp    4385d <console_memviewer(proc*, bool)+0x236>
            console_printf(CPOS(11 + pn / 64, 3), 0x0F00,
   437d5:	48 89 d8             	mov    %rbx,%rax
   437d8:	48 c1 e8 12          	shr    $0x12,%rax
   437dc:	8d 3c 80             	lea    (%rax,%rax,4),%edi
   437df:	c1 e7 04             	shl    $0x4,%edi
   437e2:	81 c7 73 03 00 00    	add    $0x373,%edi
   437e8:	48 89 d9             	mov    %rbx,%rcx
   437eb:	ba a1 4c 04 00       	mov    $0x44ca1,%edx
   437f0:	be 00 0f 00 00       	mov    $0xf00,%esi
   437f5:	b8 00 00 00 00       	mov    $0x0,%eax
   437fa:	e8 72 0c 00 00       	call   44471 <console_printf(int, int, char const*, ...)>
   437ff:	eb 6d                	jmp    4386e <console_memviewer(proc*, bool)+0x247>
                uint16_t z = (ch & 0x0F00) ^ ((ch & 0xF000) >> 4);
   43801:	89 d0                	mov    %edx,%eax
   43803:	66 c1 e8 04          	shr    $0x4,%ax
   43807:	31 d0                	xor    %edx,%eax
   43809:	89 c1                	mov    %eax,%ecx
   4380b:	66 81 e1 00 0f       	and    $0xf00,%cx
                ch ^= z | (z << 4);
   43810:	25 00 0f 00 00       	and    $0xf00,%eax
   43815:	c1 e0 04             	shl    $0x4,%eax
   43818:	09 c8                	or     %ecx,%eax
   4381a:	31 c2                	xor    %eax,%edx
        console[CPOS(11 + pn/64, 12 + pn%64)] = ch;
   4381c:	48 c1 eb 12          	shr    $0x12,%rbx
   43820:	48 8d 04 9b          	lea    (%rbx,%rbx,4),%rax
   43824:	48 c1 e0 04          	shl    $0x4,%rax
   43828:	49 8d 84 04 7c 03 00 	lea    0x37c(%r12,%rax,1),%rax
   4382f:	00 
   43830:	66 89 94 00 00 80 0b 	mov    %dx,0xb8000(%rax,%rax,1)
   43837:	00 
    return find(va_ + delta);
   43838:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
   4383c:	48 8d b0 00 10 00 00 	lea    0x1000(%rax),%rsi
    real_find(va);
   43843:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   43847:	e8 b0 e0 ff ff       	call   418fc <vmiter::real_find(unsigned long)>
    return va_;
   4384c:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
         it.va() < memusage::max_view_va;
   43850:	48 81 fb ff ff 2f 00 	cmp    $0x2fffff,%rbx
   43857:	0f 87 8c 00 00 00    	ja     438e9 <console_memviewer(proc*, bool)+0x2c2>
        unsigned long pn = it.va() / PAGESIZE;
   4385d:	49 89 dc             	mov    %rbx,%r12
   43860:	49 c1 ec 0c          	shr    $0xc,%r12
        if (pn % 64 == 0) {
   43864:	41 83 e4 3f          	and    $0x3f,%r12d
   43868:	0f 84 67 ff ff ff    	je     437d5 <console_memviewer(proc*, bool)+0x1ae>
    return (*pep_ & PTE_P) != 0;
   4386e:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   43872:	48 8b 00             	mov    (%rax),%rax
            ch = ' ';
   43875:	ba 20 00 00 00       	mov    $0x20,%edx
        if (!it.present()) {
   4387a:	a8 01                	test   $0x1,%al
   4387c:	74 9e                	je     4381c <console_memviewer(proc*, bool)+0x1f5>
        if (level_ > 0) {
   4387e:	8b 4d c0             	mov    -0x40(%rbp),%ecx
            pa &= ~0x1000UL;
   43881:	48 89 c6             	mov    %rax,%rsi
   43884:	4c 21 ee             	and    %r13,%rsi
        uintptr_t pa = *pep_ & PTE_PAMASK;
   43887:	48 89 c2             	mov    %rax,%rdx
   4388a:	4c 21 f2             	and    %r14,%rdx
   4388d:	85 c9                	test   %ecx,%ecx
   4388f:	48 0f 4f d6          	cmovg  %rsi,%rdx
   43893:	8d 4c c9 0c          	lea    0xc(%rcx,%rcx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   43897:	4c 89 fe             	mov    %r15,%rsi
   4389a:	48 d3 e6             	shl    %cl,%rsi
   4389d:	48 f7 d6             	not    %rsi
   438a0:	48 23 75 c8          	and    -0x38(%rbp),%rsi
   438a4:	48 01 d6             	add    %rdx,%rsi
            ch = mu.symbol_at(it.pa());
   438a7:	bf 90 f0 05 00       	mov    $0x5f090,%edi
   438ac:	e8 39 fb ff ff       	call   433ea <memusage::symbol_at(unsigned long) const>
   438b1:	89 c2                	mov    %eax,%edx
    return (*pep_ & perm_ & p) == p;
   438b3:	48 63 45 c4          	movslq -0x3c(%rbp),%rax
   438b7:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
   438bb:	48 23 01             	and    (%rcx),%rax
   438be:	83 e0 05             	and    $0x5,%eax
            if (it.user()) { // switch foreground & background colors
   438c1:	48 83 f8 05          	cmp    $0x5,%rax
   438c5:	0f 85 51 ff ff ff    	jne    4381c <console_memviewer(proc*, bool)+0x1f5>
   438cb:	e9 31 ff ff ff       	jmp    43801 <console_memviewer(proc*, bool)+0x1da>
        console_memviewer_virtual(mu, vmp);
    } else {
        console_printf(CPOS(10, 0), 0x0F00, "\n\n\n\n\n\n\n\n\n\n\n\n\n");
   438d0:	ba c7 4c 04 00       	mov    $0x44cc7,%edx
   438d5:	be 00 0f 00 00       	mov    $0xf00,%esi
   438da:	bf 20 03 00 00       	mov    $0x320,%edi
   438df:	b8 00 00 00 00       	mov    $0x0,%eax
   438e4:	e8 88 0b 00 00       	call   44471 <console_printf(int, int, char const*, ...)>
    }
}
   438e9:	48 83 c4 28          	add    $0x28,%rsp
   438ed:	5b                   	pop    %rbx
   438ee:	41 5c                	pop    %r12
   438f0:	41 5d                	pop    %r13
   438f2:	41 5e                	pop    %r14
   438f4:	41 5f                	pop    %r15
   438f6:	5d                   	pop    %rbp
   438f7:	c3                   	ret    

00000000000438f8 <memcpy>:

// memcpy, memmove, memset, memcmp, memchr, strlen, strnlen, strcpy, strcmp,
// strncmp, strchr, strtoul, strtol
//    We must provide our own implementations.

void* memcpy(void* dst, const void* src, size_t n) {
   438f8:	f3 0f 1e fa          	endbr64 
   438fc:	48 89 f8             	mov    %rdi,%rax
    const char* s = (const char*) src;
    for (char* d = (char*) dst; n > 0; --n, ++s, ++d) {
   438ff:	48 85 d2             	test   %rdx,%rdx
   43902:	74 17                	je     4391b <memcpy+0x23>
   43904:	b9 00 00 00 00       	mov    $0x0,%ecx
        *d = *s;
   43909:	44 0f b6 04 0e       	movzbl (%rsi,%rcx,1),%r8d
   4390e:	44 88 04 08          	mov    %r8b,(%rax,%rcx,1)
    for (char* d = (char*) dst; n > 0; --n, ++s, ++d) {
   43912:	48 83 c1 01          	add    $0x1,%rcx
   43916:	48 39 d1             	cmp    %rdx,%rcx
   43919:	75 ee                	jne    43909 <memcpy+0x11>
    }
    return dst;
}
   4391b:	c3                   	ret    

000000000004391c <memmove>:

void* memmove(void* dst, const void* src, size_t n) {
   4391c:	f3 0f 1e fa          	endbr64 
   43920:	48 89 f8             	mov    %rdi,%rax
    const char* s = (const char*) src;
    char* d = (char*) dst;
    if (s < d && s + n > d) {
   43923:	48 39 fe             	cmp    %rdi,%rsi
   43926:	72 1d                	jb     43945 <memmove+0x29>
        s += n, d += n;
        while (n-- > 0) {
            *--d = *--s;
        }
    } else {
        while (n-- > 0) {
   43928:	b9 00 00 00 00       	mov    $0x0,%ecx
   4392d:	48 85 d2             	test   %rdx,%rdx
   43930:	74 12                	je     43944 <memmove+0x28>
            *d++ = *s++;
   43932:	0f b6 3c 0e          	movzbl (%rsi,%rcx,1),%edi
   43936:	40 88 3c 08          	mov    %dil,(%rax,%rcx,1)
        while (n-- > 0) {
   4393a:	48 83 c1 01          	add    $0x1,%rcx
   4393e:	48 39 ca             	cmp    %rcx,%rdx
   43941:	75 ef                	jne    43932 <memmove+0x16>
        }
    }
    return dst;
}
   43943:	c3                   	ret    
   43944:	c3                   	ret    
    if (s < d && s + n > d) {
   43945:	48 8d 0c 16          	lea    (%rsi,%rdx,1),%rcx
   43949:	48 39 cf             	cmp    %rcx,%rdi
   4394c:	73 da                	jae    43928 <memmove+0xc>
        while (n-- > 0) {
   4394e:	48 8d 4a ff          	lea    -0x1(%rdx),%rcx
   43952:	48 85 d2             	test   %rdx,%rdx
   43955:	74 ec                	je     43943 <memmove+0x27>
            *--d = *--s;
   43957:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
   4395b:	88 14 08             	mov    %dl,(%rax,%rcx,1)
        while (n-- > 0) {
   4395e:	48 83 e9 01          	sub    $0x1,%rcx
   43962:	48 83 f9 ff          	cmp    $0xffffffffffffffff,%rcx
   43966:	75 ef                	jne    43957 <memmove+0x3b>
   43968:	c3                   	ret    

0000000000043969 <memset>:

void* memset(void* v, int c, size_t n) {
   43969:	f3 0f 1e fa          	endbr64 
   4396d:	48 89 f8             	mov    %rdi,%rax
    for (char* p = (char*) v; n > 0; ++p, --n) {
   43970:	48 85 d2             	test   %rdx,%rdx
   43973:	74 12                	je     43987 <memset+0x1e>
   43975:	48 01 fa             	add    %rdi,%rdx
   43978:	48 89 f9             	mov    %rdi,%rcx
        *p = c;
   4397b:	40 88 31             	mov    %sil,(%rcx)
    for (char* p = (char*) v; n > 0; ++p, --n) {
   4397e:	48 83 c1 01          	add    $0x1,%rcx
   43982:	48 39 ca             	cmp    %rcx,%rdx
   43985:	75 f4                	jne    4397b <memset+0x12>
    }
    return v;
}
   43987:	c3                   	ret    

0000000000043988 <strlen>:
        }
    }
    return nullptr;
}

size_t strlen(const char* s) {
   43988:	f3 0f 1e fa          	endbr64 
    size_t n;
    for (n = 0; *s != '\0'; ++s) {
   4398c:	80 3f 00             	cmpb   $0x0,(%rdi)
   4398f:	74 10                	je     439a1 <strlen+0x19>
   43991:	b8 00 00 00 00       	mov    $0x0,%eax
        ++n;
   43996:	48 83 c0 01          	add    $0x1,%rax
    for (n = 0; *s != '\0'; ++s) {
   4399a:	80 3c 07 00          	cmpb   $0x0,(%rdi,%rax,1)
   4399e:	75 f6                	jne    43996 <strlen+0xe>
   439a0:	c3                   	ret    
   439a1:	b8 00 00 00 00       	mov    $0x0,%eax
    }
    return n;
}
   439a6:	c3                   	ret    

00000000000439a7 <strnlen>:

size_t strnlen(const char* s, size_t maxlen) {
   439a7:	f3 0f 1e fa          	endbr64 
   439ab:	48 89 f0             	mov    %rsi,%rax
    size_t n;
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
   439ae:	ba 00 00 00 00       	mov    $0x0,%edx
   439b3:	48 85 f6             	test   %rsi,%rsi
   439b6:	74 11                	je     439c9 <strnlen+0x22>
   439b8:	80 3c 17 00          	cmpb   $0x0,(%rdi,%rdx,1)
   439bc:	74 0c                	je     439ca <strnlen+0x23>
        ++n;
   439be:	48 83 c2 01          	add    $0x1,%rdx
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
   439c2:	48 39 d0             	cmp    %rdx,%rax
   439c5:	75 f1                	jne    439b8 <strnlen+0x11>
   439c7:	eb 04                	jmp    439cd <strnlen+0x26>
   439c9:	c3                   	ret    
   439ca:	48 89 d0             	mov    %rdx,%rax
    }
    return n;
}
   439cd:	c3                   	ret    

00000000000439ce <strcmp>:
        *d++ = *src++;
    } while (d[-1]);
    return dst;
}

int strcmp(const char* a, const char* b) {
   439ce:	f3 0f 1e fa          	endbr64 
    while (true) {
        unsigned char ac = *a, bc = *b;
   439d2:	0f b6 17             	movzbl (%rdi),%edx
   439d5:	0f b6 0e             	movzbl (%rsi),%ecx
        if (ac == 0 || bc == 0 || ac != bc) {
   439d8:	84 d2                	test   %dl,%dl
   439da:	0f 94 c0             	sete   %al
   439dd:	38 ca                	cmp    %cl,%dl
   439df:	41 0f 95 c0          	setne  %r8b
   439e3:	44 08 c0             	or     %r8b,%al
   439e6:	75 2a                	jne    43a12 <strcmp+0x44>
   439e8:	b8 01 00 00 00       	mov    $0x1,%eax
   439ed:	84 c9                	test   %cl,%cl
   439ef:	74 21                	je     43a12 <strcmp+0x44>
        unsigned char ac = *a, bc = *b;
   439f1:	0f b6 14 07          	movzbl (%rdi,%rax,1),%edx
   439f5:	0f b6 0c 06          	movzbl (%rsi,%rax,1),%ecx
        if (ac == 0 || bc == 0 || ac != bc) {
   439f9:	48 83 c0 01          	add    $0x1,%rax
   439fd:	84 d2                	test   %dl,%dl
   439ff:	41 0f 94 c0          	sete   %r8b
   43a03:	84 c9                	test   %cl,%cl
   43a05:	41 0f 94 c1          	sete   %r9b
   43a09:	45 08 c8             	or     %r9b,%r8b
   43a0c:	75 04                	jne    43a12 <strcmp+0x44>
   43a0e:	38 ca                	cmp    %cl,%dl
   43a10:	74 df                	je     439f1 <strcmp+0x23>
            return (ac > bc) - (ac < bc);
   43a12:	38 ca                	cmp    %cl,%dl
   43a14:	0f 97 c0             	seta   %al
   43a17:	0f b6 c0             	movzbl %al,%eax
   43a1a:	83 d8 00             	sbb    $0x0,%eax
        }
        ++a, ++b;
    }
}
   43a1d:	c3                   	ret    

0000000000043a1e <strchr>:
        }
        ++a, ++b, --n;
    }
}

char* strchr(const char* s, int c) {
   43a1e:	f3 0f 1e fa          	endbr64 
    while (*s && *s != (char) c) {
   43a22:	0f b6 07             	movzbl (%rdi),%eax
   43a25:	84 c0                	test   %al,%al
   43a27:	74 10                	je     43a39 <strchr+0x1b>
   43a29:	40 38 f0             	cmp    %sil,%al
   43a2c:	74 18                	je     43a46 <strchr+0x28>
        ++s;
   43a2e:	48 83 c7 01          	add    $0x1,%rdi
    while (*s && *s != (char) c) {
   43a32:	0f b6 07             	movzbl (%rdi),%eax
   43a35:	84 c0                	test   %al,%al
   43a37:	75 f0                	jne    43a29 <strchr+0xb>
    }
    if (*s == (char) c) {
        return (char*) s;
    } else {
        return nullptr;
   43a39:	40 84 f6             	test   %sil,%sil
   43a3c:	b8 00 00 00 00       	mov    $0x0,%eax
   43a41:	48 0f 44 c7          	cmove  %rdi,%rax
    }
}
   43a45:	c3                   	ret    
   43a46:	48 89 f8             	mov    %rdi,%rax
   43a49:	c3                   	ret    

0000000000043a4a <printer::vprintf(int, char const*, __va_list_tag*)>:
#define FLAG_NUMERIC            (1<<5)
#define FLAG_SIGNED             (1<<6)
#define FLAG_NEGATIVE           (1<<7)
#define FLAG_ALT2               (1<<8)

void printer::vprintf(int color, const char* format, va_list val) {
   43a4a:	f3 0f 1e fa          	endbr64 
   43a4e:	55                   	push   %rbp
   43a4f:	48 89 e5             	mov    %rsp,%rbp
   43a52:	41 57                	push   %r15
   43a54:	41 56                	push   %r14
   43a56:	41 55                	push   %r13
   43a58:	41 54                	push   %r12
   43a5a:	53                   	push   %rbx
   43a5b:	48 83 ec 58          	sub    $0x58,%rsp
   43a5f:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
#define NUMBUFSIZ 24
    char numbuf[NUMBUFSIZ];

    for (; *format; ++format) {
   43a63:	0f b6 02             	movzbl (%rdx),%eax
   43a66:	84 c0                	test   %al,%al
   43a68:	0f 84 c8 07 00 00    	je     44236 <printer::vprintf(int, char const*, __va_list_tag*)+0x7ec>
   43a6e:	49 89 fe             	mov    %rdi,%r14
   43a71:	49 89 d4             	mov    %rdx,%r12
   43a74:	41 89 f7             	mov    %esi,%r15d
   43a77:	e9 89 05 00 00       	jmp    44005 <printer::vprintf(int, char const*, __va_list_tag*)+0x5bb>
            continue;
        }

        // process flags
        int flags = 0;
        for (++format; *format; ++format) {
   43a7c:	49 8d 5c 24 01       	lea    0x1(%r12),%rbx
   43a81:	45 0f b6 64 24 01    	movzbl 0x1(%r12),%r12d
   43a87:	45 84 e4             	test   %r12b,%r12b
   43a8a:	0f 84 87 07 00 00    	je     44217 <printer::vprintf(int, char const*, __va_list_tag*)+0x7cd>
        int flags = 0;
   43a90:	41 bd 00 00 00 00    	mov    $0x0,%r13d
            const char* flagc = strchr(flag_chars, *format);
   43a96:	41 0f be f4          	movsbl %r12b,%esi
   43a9a:	bf 70 54 04 00       	mov    $0x45470,%edi
   43a9f:	e8 7a ff ff ff       	call   43a1e <strchr>
   43aa4:	48 89 c1             	mov    %rax,%rcx
            if (flagc) {
   43aa7:	48 85 c0             	test   %rax,%rax
   43aaa:	74 70                	je     43b1c <printer::vprintf(int, char const*, __va_list_tag*)+0xd2>
                flags |= 1 << (flagc - flag_chars);
   43aac:	48 81 e9 70 54 04 00 	sub    $0x45470,%rcx
   43ab3:	b8 01 00 00 00       	mov    $0x1,%eax
   43ab8:	d3 e0                	shl    %cl,%eax
   43aba:	41 09 c5             	or     %eax,%r13d
        for (++format; *format; ++format) {
   43abd:	48 83 c3 01          	add    $0x1,%rbx
   43ac1:	44 0f b6 23          	movzbl (%rbx),%r12d
   43ac5:	45 84 e4             	test   %r12b,%r12b
   43ac8:	75 cc                	jne    43a96 <printer::vprintf(int, char const*, __va_list_tag*)+0x4c>
   43aca:	44 89 6d a8          	mov    %r13d,-0x58(%rbp)
                break;
            }
        }

        // process width
        int width = -1;
   43ace:	41 bd ff ff ff ff    	mov    $0xffffffff,%r13d
            width = va_arg(val, int);
            ++format;
        }

        // process precision
        int precision = -1;
   43ad4:	c7 45 9c ff ff ff ff 	movl   $0xffffffff,-0x64(%rbp)
        if (*format == '.') {
   43adb:	80 3b 2e             	cmpb   $0x2e,(%rbx)
   43ade:	0f 84 c7 00 00 00    	je     43bab <printer::vprintf(int, char const*, __va_list_tag*)+0x161>
            }
        }

        // process length
        int length = 0;
        switch (*format) {
   43ae4:	0f b6 03             	movzbl (%rbx),%eax
   43ae7:	3c 6c                	cmp    $0x6c,%al
   43ae9:	0f 84 4f 01 00 00    	je     43c3e <printer::vprintf(int, char const*, __va_list_tag*)+0x1f4>
   43aef:	0f 8f 3d 01 00 00    	jg     43c32 <printer::vprintf(int, char const*, __va_list_tag*)+0x1e8>
   43af5:	3c 68                	cmp    $0x68,%al
   43af7:	0f 85 60 01 00 00    	jne    43c5d <printer::vprintf(int, char const*, __va_list_tag*)+0x213>
        case 'z': // size_t, ssize_t
            length = 1;
            ++format;
            break;
        case 'h':
            ++format;
   43afd:	48 8d 4b 01          	lea    0x1(%rbx),%rcx
        // process main conversion character
        int base = 10;
        unsigned long num = 0;
        const char* data = "";

        switch (*format) {
   43b01:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
   43b05:	8d 50 bd             	lea    -0x43(%rax),%edx
   43b08:	80 fa 35             	cmp    $0x35,%dl
   43b0b:	0f 87 ac 05 00 00    	ja     440bd <printer::vprintf(int, char const*, __va_list_tag*)+0x673>
   43b11:	0f b6 d2             	movzbl %dl,%edx
   43b14:	3e ff 24 d5 b0 4d 04 	notrack jmp *0x44db0(,%rdx,8)
   43b1b:	00 
        if (*format >= '1' && *format <= '9') {
   43b1c:	44 89 6d a8          	mov    %r13d,-0x58(%rbp)
   43b20:	41 8d 44 24 cf       	lea    -0x31(%r12),%eax
   43b25:	3c 08                	cmp    $0x8,%al
   43b27:	77 32                	ja     43b5b <printer::vprintf(int, char const*, __va_list_tag*)+0x111>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
   43b29:	0f b6 03             	movzbl (%rbx),%eax
   43b2c:	8d 50 d0             	lea    -0x30(%rax),%edx
   43b2f:	80 fa 09             	cmp    $0x9,%dl
   43b32:	77 61                	ja     43b95 <printer::vprintf(int, char const*, __va_list_tag*)+0x14b>
   43b34:	41 bd 00 00 00 00    	mov    $0x0,%r13d
                width = 10 * width + *format++ - '0';
   43b3a:	48 83 c3 01          	add    $0x1,%rbx
   43b3e:	43 8d 54 ad 00       	lea    0x0(%r13,%r13,4),%edx
   43b43:	0f be c0             	movsbl %al,%eax
   43b46:	44 8d 6c 50 d0       	lea    -0x30(%rax,%rdx,2),%r13d
            for (width = 0; *format >= '0' && *format <= '9'; ) {
   43b4b:	0f b6 03             	movzbl (%rbx),%eax
   43b4e:	8d 50 d0             	lea    -0x30(%rax),%edx
   43b51:	80 fa 09             	cmp    $0x9,%dl
   43b54:	76 e4                	jbe    43b3a <printer::vprintf(int, char const*, __va_list_tag*)+0xf0>
   43b56:	e9 79 ff ff ff       	jmp    43ad4 <printer::vprintf(int, char const*, __va_list_tag*)+0x8a>
        } else if (*format == '*') {
   43b5b:	41 80 fc 2a          	cmp    $0x2a,%r12b
   43b5f:	75 3f                	jne    43ba0 <printer::vprintf(int, char const*, __va_list_tag*)+0x156>
            width = va_arg(val, int);
   43b61:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   43b65:	8b 01                	mov    (%rcx),%eax
   43b67:	83 f8 2f             	cmp    $0x2f,%eax
   43b6a:	77 17                	ja     43b83 <printer::vprintf(int, char const*, __va_list_tag*)+0x139>
   43b6c:	89 c2                	mov    %eax,%edx
   43b6e:	48 03 51 10          	add    0x10(%rcx),%rdx
   43b72:	83 c0 08             	add    $0x8,%eax
   43b75:	89 01                	mov    %eax,(%rcx)
   43b77:	44 8b 2a             	mov    (%rdx),%r13d
            ++format;
   43b7a:	48 83 c3 01          	add    $0x1,%rbx
   43b7e:	e9 51 ff ff ff       	jmp    43ad4 <printer::vprintf(int, char const*, __va_list_tag*)+0x8a>
            width = va_arg(val, int);
   43b83:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   43b87:	48 8b 51 08          	mov    0x8(%rcx),%rdx
   43b8b:	48 8d 42 08          	lea    0x8(%rdx),%rax
   43b8f:	48 89 41 08          	mov    %rax,0x8(%rcx)
   43b93:	eb e2                	jmp    43b77 <printer::vprintf(int, char const*, __va_list_tag*)+0x12d>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
   43b95:	41 bd 00 00 00 00    	mov    $0x0,%r13d
   43b9b:	e9 34 ff ff ff       	jmp    43ad4 <printer::vprintf(int, char const*, __va_list_tag*)+0x8a>
        int width = -1;
   43ba0:	41 bd ff ff ff ff    	mov    $0xffffffff,%r13d
   43ba6:	e9 29 ff ff ff       	jmp    43ad4 <printer::vprintf(int, char const*, __va_list_tag*)+0x8a>
            ++format;
   43bab:	48 8d 53 01          	lea    0x1(%rbx),%rdx
            if (*format >= '0' && *format <= '9') {
   43baf:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
   43bb3:	8d 48 d0             	lea    -0x30(%rax),%ecx
   43bb6:	80 f9 09             	cmp    $0x9,%cl
   43bb9:	76 13                	jbe    43bce <printer::vprintf(int, char const*, __va_list_tag*)+0x184>
            } else if (*format == '*') {
   43bbb:	3c 2a                	cmp    $0x2a,%al
   43bbd:	74 33                	je     43bf2 <printer::vprintf(int, char const*, __va_list_tag*)+0x1a8>
            ++format;
   43bbf:	48 89 d3             	mov    %rdx,%rbx
                precision = 0;
   43bc2:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%rbp)
   43bc9:	e9 16 ff ff ff       	jmp    43ae4 <printer::vprintf(int, char const*, __va_list_tag*)+0x9a>
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
   43bce:	b9 00 00 00 00       	mov    $0x0,%ecx
                    precision = 10 * precision + *format++ - '0';
   43bd3:	48 83 c2 01          	add    $0x1,%rdx
   43bd7:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
   43bda:	0f be c0             	movsbl %al,%eax
   43bdd:	8d 4c 48 d0          	lea    -0x30(%rax,%rcx,2),%ecx
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
   43be1:	0f b6 02             	movzbl (%rdx),%eax
   43be4:	8d 70 d0             	lea    -0x30(%rax),%esi
   43be7:	40 80 fe 09          	cmp    $0x9,%sil
   43beb:	76 e6                	jbe    43bd3 <printer::vprintf(int, char const*, __va_list_tag*)+0x189>
                    precision = 10 * precision + *format++ - '0';
   43bed:	48 89 d3             	mov    %rdx,%rbx
   43bf0:	eb 1c                	jmp    43c0e <printer::vprintf(int, char const*, __va_list_tag*)+0x1c4>
                precision = va_arg(val, int);
   43bf2:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   43bf6:	8b 01                	mov    (%rcx),%eax
   43bf8:	83 f8 2f             	cmp    $0x2f,%eax
   43bfb:	77 23                	ja     43c20 <printer::vprintf(int, char const*, __va_list_tag*)+0x1d6>
   43bfd:	89 c2                	mov    %eax,%edx
   43bff:	48 03 51 10          	add    0x10(%rcx),%rdx
   43c03:	83 c0 08             	add    $0x8,%eax
   43c06:	89 01                	mov    %eax,(%rcx)
   43c08:	8b 0a                	mov    (%rdx),%ecx
                ++format;
   43c0a:	48 83 c3 02          	add    $0x2,%rbx
            if (precision < 0) {
   43c0e:	85 c9                	test   %ecx,%ecx
   43c10:	b8 00 00 00 00       	mov    $0x0,%eax
   43c15:	0f 49 c1             	cmovns %ecx,%eax
   43c18:	89 45 9c             	mov    %eax,-0x64(%rbp)
   43c1b:	e9 c4 fe ff ff       	jmp    43ae4 <printer::vprintf(int, char const*, __va_list_tag*)+0x9a>
                precision = va_arg(val, int);
   43c20:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   43c24:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   43c28:	48 8d 42 08          	lea    0x8(%rdx),%rax
   43c2c:	48 89 47 08          	mov    %rax,0x8(%rdi)
   43c30:	eb d6                	jmp    43c08 <printer::vprintf(int, char const*, __va_list_tag*)+0x1be>
        switch (*format) {
   43c32:	3c 74                	cmp    $0x74,%al
   43c34:	74 08                	je     43c3e <printer::vprintf(int, char const*, __va_list_tag*)+0x1f4>
   43c36:	3c 7a                	cmp    $0x7a,%al
   43c38:	0f 85 e5 05 00 00    	jne    44223 <printer::vprintf(int, char const*, __va_list_tag*)+0x7d9>
            ++format;
   43c3e:	48 8d 4b 01          	lea    0x1(%rbx),%rcx
        switch (*format) {
   43c42:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
   43c46:	8d 50 bd             	lea    -0x43(%rax),%edx
   43c49:	80 fa 35             	cmp    $0x35,%dl
   43c4c:	0f 87 6b 04 00 00    	ja     440bd <printer::vprintf(int, char const*, __va_list_tag*)+0x673>
   43c52:	0f b6 d2             	movzbl %dl,%edx
   43c55:	3e ff 24 d5 60 4f 04 	notrack jmp *0x44f60(,%rdx,8)
   43c5c:	00 
   43c5d:	8d 50 bd             	lea    -0x43(%rax),%edx
   43c60:	80 fa 35             	cmp    $0x35,%dl
   43c63:	0f 87 51 04 00 00    	ja     440ba <printer::vprintf(int, char const*, __va_list_tag*)+0x670>
   43c69:	0f b6 d2             	movzbl %dl,%edx
   43c6c:	3e ff 24 d5 10 51 04 	notrack jmp *0x45110(,%rdx,8)
   43c73:	00 
        case 'd':
        case 'i': {
            long x = length ? va_arg(val, long) : va_arg(val, int);
   43c74:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   43c78:	8b 07                	mov    (%rdi),%eax
   43c7a:	83 f8 2f             	cmp    $0x2f,%eax
   43c7d:	77 3b                	ja     43cba <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
   43c7f:	89 c2                	mov    %eax,%edx
   43c81:	48 03 57 10          	add    0x10(%rdi),%rdx
   43c85:	83 c0 08             	add    $0x8,%eax
   43c88:	89 07                	mov    %eax,(%rdi)
   43c8a:	48 8b 12             	mov    (%rdx),%rdx
   43c8d:	48 89 cb             	mov    %rcx,%rbx
            int negative = x < 0 ? FLAG_NEGATIVE : 0;
   43c90:	48 89 d0             	mov    %rdx,%rax
   43c93:	48 c1 f8 38          	sar    $0x38,%rax
            num = negative ? -x : x;
   43c97:	49 89 d0             	mov    %rdx,%r8
   43c9a:	49 f7 d8             	neg    %r8
   43c9d:	25 80 00 00 00       	and    $0x80,%eax
   43ca2:	4c 0f 44 c2          	cmove  %rdx,%r8
            flags |= FLAG_NUMERIC | FLAG_SIGNED | negative;
   43ca6:	0b 45 a8             	or     -0x58(%rbp),%eax
   43ca9:	83 c8 60             	or     $0x60,%eax
   43cac:	89 45 a8             	mov    %eax,-0x58(%rbp)
        const char* data = "";
   43caf:	41 bc d4 4c 04 00    	mov    $0x44cd4,%r12d
            break;
   43cb5:	e9 c9 01 00 00       	jmp    43e83 <printer::vprintf(int, char const*, __va_list_tag*)+0x439>
            long x = length ? va_arg(val, long) : va_arg(val, int);
   43cba:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   43cbe:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   43cc2:	48 8d 42 08          	lea    0x8(%rdx),%rax
   43cc6:	48 89 47 08          	mov    %rax,0x8(%rdi)
   43cca:	eb be                	jmp    43c8a <printer::vprintf(int, char const*, __va_list_tag*)+0x240>
        switch (*format) {
   43ccc:	48 89 cb             	mov    %rcx,%rbx
            long x = length ? va_arg(val, long) : va_arg(val, int);
   43ccf:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   43cd3:	8b 01                	mov    (%rcx),%eax
   43cd5:	83 f8 2f             	cmp    $0x2f,%eax
   43cd8:	77 10                	ja     43cea <printer::vprintf(int, char const*, __va_list_tag*)+0x2a0>
   43cda:	89 c2                	mov    %eax,%edx
   43cdc:	48 03 51 10          	add    0x10(%rcx),%rdx
   43ce0:	83 c0 08             	add    $0x8,%eax
   43ce3:	89 01                	mov    %eax,(%rcx)
   43ce5:	48 63 12             	movslq (%rdx),%rdx
   43ce8:	eb a6                	jmp    43c90 <printer::vprintf(int, char const*, __va_list_tag*)+0x246>
   43cea:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   43cee:	48 8b 51 08          	mov    0x8(%rcx),%rdx
   43cf2:	48 8d 42 08          	lea    0x8(%rdx),%rax
   43cf6:	48 89 41 08          	mov    %rax,0x8(%rcx)
   43cfa:	eb e9                	jmp    43ce5 <printer::vprintf(int, char const*, __va_list_tag*)+0x29b>
        switch (*format) {
   43cfc:	48 89 cb             	mov    %rcx,%rbx
   43cff:	b8 01 00 00 00       	mov    $0x1,%eax
   43d04:	be 0a 00 00 00       	mov    $0xa,%esi
   43d09:	e9 a8 00 00 00       	jmp    43db6 <printer::vprintf(int, char const*, __va_list_tag*)+0x36c>
   43d0e:	48 89 cb             	mov    %rcx,%rbx
   43d11:	b8 00 00 00 00       	mov    $0x0,%eax
   43d16:	be 0a 00 00 00       	mov    $0xa,%esi
   43d1b:	e9 96 00 00 00       	jmp    43db6 <printer::vprintf(int, char const*, __va_list_tag*)+0x36c>
   43d20:	b8 00 00 00 00       	mov    $0x0,%eax
   43d25:	be 0a 00 00 00       	mov    $0xa,%esi
   43d2a:	e9 87 00 00 00       	jmp    43db6 <printer::vprintf(int, char const*, __va_list_tag*)+0x36c>
   43d2f:	b8 00 00 00 00       	mov    $0x0,%eax
   43d34:	be 0a 00 00 00       	mov    $0xa,%esi
   43d39:	eb 7b                	jmp    43db6 <printer::vprintf(int, char const*, __va_list_tag*)+0x36c>
        }
        case 'u':
        format_unsigned:
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
   43d3b:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   43d3f:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   43d43:	48 8d 42 08          	lea    0x8(%rdx),%rax
   43d47:	48 89 47 08          	mov    %rax,0x8(%rdi)
   43d4b:	e9 84 00 00 00       	jmp    43dd4 <printer::vprintf(int, char const*, __va_list_tag*)+0x38a>
   43d50:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   43d54:	8b 07                	mov    (%rdi),%eax
   43d56:	83 f8 2f             	cmp    $0x2f,%eax
   43d59:	77 10                	ja     43d6b <printer::vprintf(int, char const*, __va_list_tag*)+0x321>
   43d5b:	89 c2                	mov    %eax,%edx
   43d5d:	48 03 57 10          	add    0x10(%rdi),%rdx
   43d61:	83 c0 08             	add    $0x8,%eax
   43d64:	89 07                	mov    %eax,(%rdi)
   43d66:	44 8b 02             	mov    (%rdx),%r8d
   43d69:	eb 6c                	jmp    43dd7 <printer::vprintf(int, char const*, __va_list_tag*)+0x38d>
   43d6b:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   43d6f:	48 8b 51 08          	mov    0x8(%rcx),%rdx
   43d73:	48 8d 42 08          	lea    0x8(%rdx),%rax
   43d77:	48 89 41 08          	mov    %rax,0x8(%rcx)
   43d7b:	eb e9                	jmp    43d66 <printer::vprintf(int, char const*, __va_list_tag*)+0x31c>
   43d7d:	41 89 f1             	mov    %esi,%r9d
                format--;
            }
            break;
        }

        if (flags & FLAG_NUMERIC) {
   43d80:	c7 45 8c 20 00 00 00 	movl   $0x20,-0x74(%rbp)
    const char* digits = upper_digits;
   43d87:	bf a0 54 04 00       	mov    $0x454a0,%edi
   43d8c:	e9 5f 03 00 00       	jmp    440f0 <printer::vprintf(int, char const*, __va_list_tag*)+0x6a6>
        switch (*format) {
   43d91:	48 89 cb             	mov    %rcx,%rbx
   43d94:	b8 01 00 00 00       	mov    $0x1,%eax
   43d99:	eb 16                	jmp    43db1 <printer::vprintf(int, char const*, __va_list_tag*)+0x367>
   43d9b:	48 89 cb             	mov    %rcx,%rbx
   43d9e:	b8 00 00 00 00       	mov    $0x0,%eax
   43da3:	eb 0c                	jmp    43db1 <printer::vprintf(int, char const*, __va_list_tag*)+0x367>
   43da5:	b8 00 00 00 00       	mov    $0x0,%eax
   43daa:	eb 05                	jmp    43db1 <printer::vprintf(int, char const*, __va_list_tag*)+0x367>
   43dac:	b8 00 00 00 00       	mov    $0x0,%eax
            base = -16;
   43db1:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
   43db6:	85 c0                	test   %eax,%eax
   43db8:	74 96                	je     43d50 <printer::vprintf(int, char const*, __va_list_tag*)+0x306>
   43dba:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   43dbe:	8b 07                	mov    (%rdi),%eax
   43dc0:	83 f8 2f             	cmp    $0x2f,%eax
   43dc3:	0f 87 72 ff ff ff    	ja     43d3b <printer::vprintf(int, char const*, __va_list_tag*)+0x2f1>
   43dc9:	89 c2                	mov    %eax,%edx
   43dcb:	48 03 57 10          	add    0x10(%rdi),%rdx
   43dcf:	83 c0 08             	add    $0x8,%eax
   43dd2:	89 07                	mov    %eax,(%rdi)
   43dd4:	4c 8b 02             	mov    (%rdx),%r8
            flags |= FLAG_NUMERIC;
   43dd7:	83 4d a8 20          	orl    $0x20,-0x58(%rbp)
    if (base < 0) {
   43ddb:	85 f6                	test   %esi,%esi
   43ddd:	79 9e                	jns    43d7d <printer::vprintf(int, char const*, __va_list_tag*)+0x333>
        base = -base;
   43ddf:	41 89 f1             	mov    %esi,%r9d
   43de2:	f7 de                	neg    %esi
   43de4:	c7 45 8c 20 00 00 00 	movl   $0x20,-0x74(%rbp)
        digits = lower_digits;
   43deb:	bf 80 54 04 00       	mov    $0x45480,%edi
   43df0:	e9 fb 02 00 00       	jmp    440f0 <printer::vprintf(int, char const*, __va_list_tag*)+0x6a6>
        switch (*format) {
   43df5:	48 89 cb             	mov    %rcx,%rbx
   43df8:	b8 01 00 00 00       	mov    $0x1,%eax
   43dfd:	eb 16                	jmp    43e15 <printer::vprintf(int, char const*, __va_list_tag*)+0x3cb>
   43dff:	48 89 cb             	mov    %rcx,%rbx
   43e02:	b8 00 00 00 00       	mov    $0x0,%eax
   43e07:	eb 0c                	jmp    43e15 <printer::vprintf(int, char const*, __va_list_tag*)+0x3cb>
   43e09:	b8 00 00 00 00       	mov    $0x0,%eax
   43e0e:	eb 05                	jmp    43e15 <printer::vprintf(int, char const*, __va_list_tag*)+0x3cb>
   43e10:	b8 00 00 00 00       	mov    $0x0,%eax
            base = 16;
   43e15:	be 10 00 00 00       	mov    $0x10,%esi
            goto format_unsigned;
   43e1a:	eb 9a                	jmp    43db6 <printer::vprintf(int, char const*, __va_list_tag*)+0x36c>
        switch (*format) {
   43e1c:	48 89 cb             	mov    %rcx,%rbx
            num = (uintptr_t) va_arg(val, void*);
   43e1f:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   43e23:	8b 01                	mov    (%rcx),%eax
   43e25:	83 f8 2f             	cmp    $0x2f,%eax
   43e28:	77 21                	ja     43e4b <printer::vprintf(int, char const*, __va_list_tag*)+0x401>
   43e2a:	89 c2                	mov    %eax,%edx
   43e2c:	48 03 51 10          	add    0x10(%rcx),%rdx
   43e30:	83 c0 08             	add    $0x8,%eax
   43e33:	89 01                	mov    %eax,(%rcx)
   43e35:	4c 8b 02             	mov    (%rdx),%r8
            flags |= FLAG_ALT | FLAG_ALT2 | FLAG_NUMERIC;
   43e38:	81 4d a8 21 01 00 00 	orl    $0x121,-0x58(%rbp)
            base = -16;
   43e3f:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
   43e44:	eb 99                	jmp    43ddf <printer::vprintf(int, char const*, __va_list_tag*)+0x395>
        switch (*format) {
   43e46:	48 89 cb             	mov    %rcx,%rbx
   43e49:	eb d4                	jmp    43e1f <printer::vprintf(int, char const*, __va_list_tag*)+0x3d5>
            num = (uintptr_t) va_arg(val, void*);
   43e4b:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   43e4f:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   43e53:	48 8d 42 08          	lea    0x8(%rdx),%rax
   43e57:	48 89 47 08          	mov    %rax,0x8(%rdi)
   43e5b:	eb d8                	jmp    43e35 <printer::vprintf(int, char const*, __va_list_tag*)+0x3eb>
        switch (*format) {
   43e5d:	48 89 cb             	mov    %rcx,%rbx
            data = va_arg(val, char*);
   43e60:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   43e64:	8b 07                	mov    (%rdi),%eax
   43e66:	83 f8 2f             	cmp    $0x2f,%eax
   43e69:	0f 87 b9 01 00 00    	ja     44028 <printer::vprintf(int, char const*, __va_list_tag*)+0x5de>
   43e6f:	89 c2                	mov    %eax,%edx
   43e71:	48 03 57 10          	add    0x10(%rdi),%rdx
   43e75:	83 c0 08             	add    $0x8,%eax
   43e78:	89 07                	mov    %eax,(%rdi)
   43e7a:	4c 8b 22             	mov    (%rdx),%r12
        unsigned long num = 0;
   43e7d:	41 b8 00 00 00 00    	mov    $0x0,%r8d
        if (flags & FLAG_NUMERIC) {
   43e83:	8b 45 a8             	mov    -0x58(%rbp),%eax
   43e86:	83 e0 20             	and    $0x20,%eax
   43e89:	89 45 8c             	mov    %eax,-0x74(%rbp)
   43e8c:	41 b9 0a 00 00 00    	mov    $0xa,%r9d
   43e92:	0f 85 48 02 00 00    	jne    440e0 <printer::vprintf(int, char const*, __va_list_tag*)+0x696>
            data = fill_numbuf(numbuf + NUMBUFSIZ, num, base);
        }

        const char* prefix = "";
        if ((flags & FLAG_NUMERIC) && (flags & FLAG_SIGNED)) {
   43e98:	8b 45 a8             	mov    -0x58(%rbp),%eax
   43e9b:	89 45 88             	mov    %eax,-0x78(%rbp)
   43e9e:	83 e0 60             	and    $0x60,%eax
   43ea1:	83 f8 60             	cmp    $0x60,%eax
   43ea4:	0f 84 7b 02 00 00    	je     44125 <printer::vprintf(int, char const*, __va_list_tag*)+0x6db>
            } else if (flags & FLAG_PLUSPOSITIVE) {
                prefix = "+";
            } else if (flags & FLAG_SPACEPOSITIVE) {
                prefix = " ";
            }
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
   43eaa:	8b 45 a8             	mov    -0x58(%rbp),%eax
   43ead:	83 e0 21             	and    $0x21,%eax
        const char* prefix = "";
   43eb0:	48 c7 45 a0 d4 4c 04 	movq   $0x44cd4,-0x60(%rbp)
   43eb7:	00 
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
   43eb8:	83 f8 21             	cmp    $0x21,%eax
   43ebb:	0f 84 a0 02 00 00    	je     44161 <printer::vprintf(int, char const*, __va_list_tag*)+0x717>
                   && (num || (flags & FLAG_ALT2))) {
            prefix = (base == -16 ? "0x" : "0X");
        }

        int datalen;
        if (precision >= 0 && !(flags & FLAG_NUMERIC)) {
   43ec1:	8b 4d 9c             	mov    -0x64(%rbp),%ecx
   43ec4:	89 c8                	mov    %ecx,%eax
   43ec6:	f7 d0                	not    %eax
   43ec8:	c1 e8 1f             	shr    $0x1f,%eax
   43ecb:	89 45 84             	mov    %eax,-0x7c(%rbp)
   43ece:	83 7d 8c 00          	cmpl   $0x0,-0x74(%rbp)
   43ed2:	0f 85 c5 02 00 00    	jne    4419d <printer::vprintf(int, char const*, __va_list_tag*)+0x753>
   43ed8:	84 c0                	test   %al,%al
   43eda:	0f 84 bd 02 00 00    	je     4419d <printer::vprintf(int, char const*, __va_list_tag*)+0x753>
            datalen = strnlen(data, precision);
   43ee0:	48 63 f1             	movslq %ecx,%rsi
   43ee3:	4c 89 e7             	mov    %r12,%rdi
   43ee6:	e8 bc fa ff ff       	call   439a7 <strnlen>
   43eeb:	89 45 98             	mov    %eax,-0x68(%rbp)
        if ((flags & FLAG_NUMERIC)
            && precision >= 0) {
            zeros = precision > datalen ? precision - datalen : 0;
        } else if ((flags & FLAG_NUMERIC)
                   && (flags & FLAG_ZERO)
                   && !(flags & FLAG_LEFTJUSTIFY)
   43eee:	8b 45 88             	mov    -0x78(%rbp),%eax
   43ef1:	83 e0 26             	and    $0x26,%eax
                   && datalen + (int) strlen(prefix) < width) {
            zeros = width - datalen - strlen(prefix);
        } else {
            zeros = 0;
   43ef4:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%rbp)
                   && datalen + (int) strlen(prefix) < width) {
   43efb:	83 f8 22             	cmp    $0x22,%eax
   43efe:	0f 84 d1 02 00 00    	je     441d5 <printer::vprintf(int, char const*, __va_list_tag*)+0x78b>
        }

        width -= datalen + zeros + strlen(prefix);
   43f04:	48 8b 7d a0          	mov    -0x60(%rbp),%rdi
   43f08:	e8 7b fa ff ff       	call   43988 <strlen>
   43f0d:	8b 55 9c             	mov    -0x64(%rbp),%edx
   43f10:	03 55 98             	add    -0x68(%rbp),%edx
   43f13:	44 89 e9             	mov    %r13d,%ecx
   43f16:	29 d1                	sub    %edx,%ecx
   43f18:	29 c1                	sub    %eax,%ecx
   43f1a:	89 4d 8c             	mov    %ecx,-0x74(%rbp)
   43f1d:	41 89 cd             	mov    %ecx,%r13d
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
   43f20:	f6 45 a8 04          	testb  $0x4,-0x58(%rbp)
   43f24:	75 2f                	jne    43f55 <printer::vprintf(int, char const*, __va_list_tag*)+0x50b>
   43f26:	85 c9                	test   %ecx,%ecx
   43f28:	7e 2b                	jle    43f55 <printer::vprintf(int, char const*, __va_list_tag*)+0x50b>
            putc(' ', color);
   43f2a:	49 8b 06             	mov    (%r14),%rax
   43f2d:	44 89 fa             	mov    %r15d,%edx
   43f30:	be 20 00 00 00       	mov    $0x20,%esi
   43f35:	4c 89 f7             	mov    %r14,%rdi
   43f38:	ff 10                	call   *(%rax)
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
   43f3a:	41 83 ed 01          	sub    $0x1,%r13d
   43f3e:	45 85 ed             	test   %r13d,%r13d
   43f41:	7f e7                	jg     43f2a <printer::vprintf(int, char const*, __va_list_tag*)+0x4e0>
   43f43:	8b 7d 8c             	mov    -0x74(%rbp),%edi
   43f46:	85 ff                	test   %edi,%edi
   43f48:	b8 01 00 00 00       	mov    $0x1,%eax
   43f4d:	0f 4f c7             	cmovg  %edi,%eax
   43f50:	29 c7                	sub    %eax,%edi
   43f52:	41 89 fd             	mov    %edi,%r13d
        }
        for (; *prefix; ++prefix) {
   43f55:	48 8b 7d a0          	mov    -0x60(%rbp),%rdi
   43f59:	0f b6 07             	movzbl (%rdi),%eax
   43f5c:	84 c0                	test   %al,%al
   43f5e:	74 24                	je     43f84 <printer::vprintf(int, char const*, __va_list_tag*)+0x53a>
   43f60:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
   43f64:	48 89 fb             	mov    %rdi,%rbx
            putc(*prefix, color);
   43f67:	0f b6 f0             	movzbl %al,%esi
   43f6a:	49 8b 06             	mov    (%r14),%rax
   43f6d:	44 89 fa             	mov    %r15d,%edx
   43f70:	4c 89 f7             	mov    %r14,%rdi
   43f73:	ff 10                	call   *(%rax)
        for (; *prefix; ++prefix) {
   43f75:	48 83 c3 01          	add    $0x1,%rbx
   43f79:	0f b6 03             	movzbl (%rbx),%eax
   43f7c:	84 c0                	test   %al,%al
   43f7e:	75 e7                	jne    43f67 <printer::vprintf(int, char const*, __va_list_tag*)+0x51d>
   43f80:	48 8b 5d a8          	mov    -0x58(%rbp),%rbx
        }
        for (; zeros > 0; --zeros) {
   43f84:	8b 45 9c             	mov    -0x64(%rbp),%eax
   43f87:	85 c0                	test   %eax,%eax
   43f89:	7e 1f                	jle    43faa <printer::vprintf(int, char const*, __va_list_tag*)+0x560>
   43f8b:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
   43f8f:	89 c3                	mov    %eax,%ebx
            putc('0', color);
   43f91:	49 8b 06             	mov    (%r14),%rax
   43f94:	44 89 fa             	mov    %r15d,%edx
   43f97:	be 30 00 00 00       	mov    $0x30,%esi
   43f9c:	4c 89 f7             	mov    %r14,%rdi
   43f9f:	ff 10                	call   *(%rax)
        for (; zeros > 0; --zeros) {
   43fa1:	83 eb 01             	sub    $0x1,%ebx
   43fa4:	75 eb                	jne    43f91 <printer::vprintf(int, char const*, __va_list_tag*)+0x547>
   43fa6:	48 8b 5d a8          	mov    -0x58(%rbp),%rbx
        }
        for (; datalen > 0; ++data, --datalen) {
   43faa:	8b 45 98             	mov    -0x68(%rbp),%eax
   43fad:	85 c0                	test   %eax,%eax
   43faf:	7e 29                	jle    43fda <printer::vprintf(int, char const*, __va_list_tag*)+0x590>
   43fb1:	89 c0                	mov    %eax,%eax
   43fb3:	4c 01 e0             	add    %r12,%rax
   43fb6:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
   43fba:	48 89 c3             	mov    %rax,%rbx
            putc(*data, color);
   43fbd:	41 0f b6 34 24       	movzbl (%r12),%esi
   43fc2:	49 8b 06             	mov    (%r14),%rax
   43fc5:	44 89 fa             	mov    %r15d,%edx
   43fc8:	4c 89 f7             	mov    %r14,%rdi
   43fcb:	ff 10                	call   *(%rax)
        for (; datalen > 0; ++data, --datalen) {
   43fcd:	49 83 c4 01          	add    $0x1,%r12
   43fd1:	49 39 dc             	cmp    %rbx,%r12
   43fd4:	75 e7                	jne    43fbd <printer::vprintf(int, char const*, __va_list_tag*)+0x573>
   43fd6:	48 8b 5d a8          	mov    -0x58(%rbp),%rbx
        }
        for (; width > 0; --width) {
   43fda:	45 85 ed             	test   %r13d,%r13d
   43fdd:	7e 16                	jle    43ff5 <printer::vprintf(int, char const*, __va_list_tag*)+0x5ab>
            putc(' ', color);
   43fdf:	49 8b 06             	mov    (%r14),%rax
   43fe2:	44 89 fa             	mov    %r15d,%edx
   43fe5:	be 20 00 00 00       	mov    $0x20,%esi
   43fea:	4c 89 f7             	mov    %r14,%rdi
   43fed:	ff 10                	call   *(%rax)
        for (; width > 0; --width) {
   43fef:	41 83 ed 01          	sub    $0x1,%r13d
   43ff3:	75 ea                	jne    43fdf <printer::vprintf(int, char const*, __va_list_tag*)+0x595>
    for (; *format; ++format) {
   43ff5:	4c 8d 63 01          	lea    0x1(%rbx),%r12
   43ff9:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
   43ffd:	84 c0                	test   %al,%al
   43fff:	0f 84 31 02 00 00    	je     44236 <printer::vprintf(int, char const*, __va_list_tag*)+0x7ec>
        if (*format != '%') {
   44005:	3c 25                	cmp    $0x25,%al
   44007:	0f 84 6f fa ff ff    	je     43a7c <printer::vprintf(int, char const*, __va_list_tag*)+0x32>
            putc(*format, color);
   4400d:	0f b6 f0             	movzbl %al,%esi
   44010:	49 8b 06             	mov    (%r14),%rax
   44013:	44 89 fa             	mov    %r15d,%edx
   44016:	4c 89 f7             	mov    %r14,%rdi
   44019:	ff 10                	call   *(%rax)
            continue;
   4401b:	4c 89 e3             	mov    %r12,%rbx
   4401e:	eb d5                	jmp    43ff5 <printer::vprintf(int, char const*, __va_list_tag*)+0x5ab>
        switch (*format) {
   44020:	48 89 cb             	mov    %rcx,%rbx
   44023:	e9 38 fe ff ff       	jmp    43e60 <printer::vprintf(int, char const*, __va_list_tag*)+0x416>
            data = va_arg(val, char*);
   44028:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   4402c:	48 8b 51 08          	mov    0x8(%rcx),%rdx
   44030:	48 8d 42 08          	lea    0x8(%rdx),%rax
   44034:	48 89 41 08          	mov    %rax,0x8(%rcx)
   44038:	e9 3d fe ff ff       	jmp    43e7a <printer::vprintf(int, char const*, __va_list_tag*)+0x430>
        switch (*format) {
   4403d:	48 89 cb             	mov    %rcx,%rbx
            color = va_arg(val, int);
   44040:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   44044:	8b 01                	mov    (%rcx),%eax
   44046:	83 f8 2f             	cmp    $0x2f,%eax
   44049:	77 15                	ja     44060 <printer::vprintf(int, char const*, __va_list_tag*)+0x616>
   4404b:	89 c2                	mov    %eax,%edx
   4404d:	48 03 51 10          	add    0x10(%rcx),%rdx
   44051:	83 c0 08             	add    $0x8,%eax
   44054:	89 01                	mov    %eax,(%rcx)
   44056:	44 8b 3a             	mov    (%rdx),%r15d
            continue;
   44059:	eb 9a                	jmp    43ff5 <printer::vprintf(int, char const*, __va_list_tag*)+0x5ab>
        switch (*format) {
   4405b:	48 89 cb             	mov    %rcx,%rbx
   4405e:	eb e0                	jmp    44040 <printer::vprintf(int, char const*, __va_list_tag*)+0x5f6>
            color = va_arg(val, int);
   44060:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   44064:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   44068:	48 8d 42 08          	lea    0x8(%rdx),%rax
   4406c:	48 89 47 08          	mov    %rax,0x8(%rdi)
   44070:	eb e4                	jmp    44056 <printer::vprintf(int, char const*, __va_list_tag*)+0x60c>
        switch (*format) {
   44072:	48 89 cb             	mov    %rcx,%rbx
            numbuf[0] = va_arg(val, int);
   44075:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   44079:	8b 07                	mov    (%rdi),%eax
   4407b:	83 f8 2f             	cmp    $0x2f,%eax
   4407e:	77 28                	ja     440a8 <printer::vprintf(int, char const*, __va_list_tag*)+0x65e>
   44080:	89 c2                	mov    %eax,%edx
   44082:	48 03 57 10          	add    0x10(%rdi),%rdx
   44086:	83 c0 08             	add    $0x8,%eax
   44089:	89 07                	mov    %eax,(%rdi)
   4408b:	8b 02                	mov    (%rdx),%eax
   4408d:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
   44090:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
   44094:	4c 8d 65 b8          	lea    -0x48(%rbp),%r12
        unsigned long num = 0;
   44098:	41 b8 00 00 00 00    	mov    $0x0,%r8d
            break;
   4409e:	e9 e0 fd ff ff       	jmp    43e83 <printer::vprintf(int, char const*, __va_list_tag*)+0x439>
        switch (*format) {
   440a3:	48 89 cb             	mov    %rcx,%rbx
   440a6:	eb cd                	jmp    44075 <printer::vprintf(int, char const*, __va_list_tag*)+0x62b>
            numbuf[0] = va_arg(val, int);
   440a8:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   440ac:	48 8b 51 08          	mov    0x8(%rcx),%rdx
   440b0:	48 8d 42 08          	lea    0x8(%rdx),%rax
   440b4:	48 89 41 08          	mov    %rax,0x8(%rcx)
   440b8:	eb d1                	jmp    4408b <printer::vprintf(int, char const*, __va_list_tag*)+0x641>
        switch (*format) {
   440ba:	48 89 d9             	mov    %rbx,%rcx
            numbuf[0] = (*format ? *format : '%');
   440bd:	84 c0                	test   %al,%al
   440bf:	0f 85 39 01 00 00    	jne    441fe <printer::vprintf(int, char const*, __va_list_tag*)+0x7b4>
   440c5:	c6 45 b8 25          	movb   $0x25,-0x48(%rbp)
            numbuf[1] = '\0';
   440c9:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
                format--;
   440cd:	48 8d 59 ff          	lea    -0x1(%rcx),%rbx
            data = numbuf;
   440d1:	4c 8d 65 b8          	lea    -0x48(%rbp),%r12
        unsigned long num = 0;
   440d5:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   440db:	e9 a3 fd ff ff       	jmp    43e83 <printer::vprintf(int, char const*, __va_list_tag*)+0x439>
        if (flags & FLAG_NUMERIC) {
   440e0:	41 b9 0a 00 00 00    	mov    $0xa,%r9d
    const char* digits = upper_digits;
   440e6:	bf a0 54 04 00       	mov    $0x454a0,%edi
        if (flags & FLAG_NUMERIC) {
   440eb:	be 0a 00 00 00       	mov    $0xa,%esi
    *--numbuf_end = '\0';
   440f0:	c6 45 cf 00          	movb   $0x0,-0x31(%rbp)
   440f4:	4c 89 c1             	mov    %r8,%rcx
   440f7:	4c 8d 65 cf          	lea    -0x31(%rbp),%r12
        *--numbuf_end = digits[val % base];
   440fb:	48 63 f6             	movslq %esi,%rsi
   440fe:	49 83 ec 01          	sub    $0x1,%r12
   44102:	48 89 c8             	mov    %rcx,%rax
   44105:	ba 00 00 00 00       	mov    $0x0,%edx
   4410a:	48 f7 f6             	div    %rsi
   4410d:	0f b6 14 17          	movzbl (%rdi,%rdx,1),%edx
   44111:	41 88 14 24          	mov    %dl,(%r12)
        val /= base;
   44115:	48 89 ca             	mov    %rcx,%rdx
   44118:	48 89 c1             	mov    %rax,%rcx
    } while (val != 0);
   4411b:	48 39 d6             	cmp    %rdx,%rsi
   4411e:	76 de                	jbe    440fe <printer::vprintf(int, char const*, __va_list_tag*)+0x6b4>
   44120:	e9 73 fd ff ff       	jmp    43e98 <printer::vprintf(int, char const*, __va_list_tag*)+0x44e>
                prefix = "-";
   44125:	48 c7 45 a0 9d 4d 04 	movq   $0x44d9d,-0x60(%rbp)
   4412c:	00 
            if (flags & FLAG_NEGATIVE) {
   4412d:	8b 45 a8             	mov    -0x58(%rbp),%eax
   44130:	a8 80                	test   $0x80,%al
   44132:	0f 85 89 fd ff ff    	jne    43ec1 <printer::vprintf(int, char const*, __va_list_tag*)+0x477>
                prefix = "+";
   44138:	48 c7 45 a0 98 4d 04 	movq   $0x44d98,-0x60(%rbp)
   4413f:	00 
            } else if (flags & FLAG_PLUSPOSITIVE) {
   44140:	a8 10                	test   $0x10,%al
   44142:	0f 85 79 fd ff ff    	jne    43ec1 <printer::vprintf(int, char const*, __va_list_tag*)+0x477>
                prefix = " ";
   44148:	a8 08                	test   $0x8,%al
   4414a:	ba d4 4c 04 00       	mov    $0x44cd4,%edx
   4414f:	b8 5e 4a 04 00       	mov    $0x44a5e,%eax
   44154:	48 0f 44 c2          	cmove  %rdx,%rax
   44158:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
   4415c:	e9 60 fd ff ff       	jmp    43ec1 <printer::vprintf(int, char const*, __va_list_tag*)+0x477>
                   && (base == 16 || base == -16)
   44161:	41 8d 41 10          	lea    0x10(%r9),%eax
   44165:	a9 df ff ff ff       	test   $0xffffffdf,%eax
   4416a:	0f 85 51 fd ff ff    	jne    43ec1 <printer::vprintf(int, char const*, __va_list_tag*)+0x477>
                   && (num || (flags & FLAG_ALT2))) {
   44170:	4d 85 c0             	test   %r8,%r8
   44173:	75 0d                	jne    44182 <printer::vprintf(int, char const*, __va_list_tag*)+0x738>
   44175:	f7 45 a8 00 01 00 00 	testl  $0x100,-0x58(%rbp)
   4417c:	0f 84 3f fd ff ff    	je     43ec1 <printer::vprintf(int, char const*, __va_list_tag*)+0x477>
            prefix = (base == -16 ? "0x" : "0X");
   44182:	41 83 f9 f0          	cmp    $0xfffffff0,%r9d
   44186:	ba 9f 4d 04 00       	mov    $0x44d9f,%edx
   4418b:	b8 9a 4d 04 00       	mov    $0x44d9a,%eax
   44190:	48 0f 44 c2          	cmove  %rdx,%rax
   44194:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
   44198:	e9 24 fd ff ff       	jmp    43ec1 <printer::vprintf(int, char const*, __va_list_tag*)+0x477>
            datalen = strlen(data);
   4419d:	4c 89 e7             	mov    %r12,%rdi
   441a0:	e8 e3 f7 ff ff       	call   43988 <strlen>
   441a5:	89 45 98             	mov    %eax,-0x68(%rbp)
            && precision >= 0) {
   441a8:	83 7d 8c 00          	cmpl   $0x0,-0x74(%rbp)
   441ac:	0f 84 3c fd ff ff    	je     43eee <printer::vprintf(int, char const*, __va_list_tag*)+0x4a4>
   441b2:	80 7d 84 00          	cmpb   $0x0,-0x7c(%rbp)
   441b6:	0f 84 32 fd ff ff    	je     43eee <printer::vprintf(int, char const*, __va_list_tag*)+0x4a4>
            zeros = precision > datalen ? precision - datalen : 0;
   441bc:	8b 7d 9c             	mov    -0x64(%rbp),%edi
   441bf:	89 fa                	mov    %edi,%edx
   441c1:	29 c2                	sub    %eax,%edx
   441c3:	39 c7                	cmp    %eax,%edi
   441c5:	b8 00 00 00 00       	mov    $0x0,%eax
   441ca:	0f 4f c2             	cmovg  %edx,%eax
   441cd:	89 45 9c             	mov    %eax,-0x64(%rbp)
   441d0:	e9 2f fd ff ff       	jmp    43f04 <printer::vprintf(int, char const*, __va_list_tag*)+0x4ba>
                   && datalen + (int) strlen(prefix) < width) {
   441d5:	48 8b 7d a0          	mov    -0x60(%rbp),%rdi
   441d9:	e8 aa f7 ff ff       	call   43988 <strlen>
   441de:	8b 7d 98             	mov    -0x68(%rbp),%edi
   441e1:	8d 14 07             	lea    (%rdi,%rax,1),%edx
            zeros = width - datalen - strlen(prefix);
   441e4:	44 89 e9             	mov    %r13d,%ecx
   441e7:	29 f9                	sub    %edi,%ecx
   441e9:	29 c1                	sub    %eax,%ecx
   441eb:	44 39 ea             	cmp    %r13d,%edx
   441ee:	b8 00 00 00 00       	mov    $0x0,%eax
   441f3:	0f 4c c1             	cmovl  %ecx,%eax
   441f6:	89 45 9c             	mov    %eax,-0x64(%rbp)
   441f9:	e9 06 fd ff ff       	jmp    43f04 <printer::vprintf(int, char const*, __va_list_tag*)+0x4ba>
   441fe:	48 89 cb             	mov    %rcx,%rbx
            numbuf[0] = (*format ? *format : '%');
   44201:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
   44204:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
   44208:	4c 8d 65 b8          	lea    -0x48(%rbp),%r12
        unsigned long num = 0;
   4420c:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   44212:	e9 6c fc ff ff       	jmp    43e83 <printer::vprintf(int, char const*, __va_list_tag*)+0x439>
        int flags = 0;
   44217:	c7 45 a8 00 00 00 00 	movl   $0x0,-0x58(%rbp)
   4421e:	e9 ab f8 ff ff       	jmp    43ace <printer::vprintf(int, char const*, __va_list_tag*)+0x84>
        switch (*format) {
   44223:	8d 50 bd             	lea    -0x43(%rax),%edx
   44226:	80 fa 35             	cmp    $0x35,%dl
   44229:	77 d6                	ja     44201 <printer::vprintf(int, char const*, __va_list_tag*)+0x7b7>
   4422b:	0f b6 d2             	movzbl %dl,%edx
   4422e:	3e ff 24 d5 c0 52 04 	notrack jmp *0x452c0(,%rdx,8)
   44235:	00 
        }
    }
}
   44236:	48 83 c4 58          	add    $0x58,%rsp
   4423a:	5b                   	pop    %rbx
   4423b:	41 5c                	pop    %r12
   4423d:	41 5d                	pop    %r13
   4423f:	41 5e                	pop    %r14
   44241:	41 5f                	pop    %r15
   44243:	5d                   	pop    %rbp
   44244:	c3                   	ret    

0000000000044245 <console_clear()>:


// console_clear
//    Erases the console and moves the cursor to the upper left (CPOS(0, 0)).

void console_clear() {
   44245:	f3 0f 1e fa          	endbr64 
    for (int i = 0; i < CONSOLE_ROWS * CONSOLE_COLUMNS; ++i) {
   44249:	b8 00 80 0b 00       	mov    $0xb8000,%eax
   4424e:	ba a0 8f 0b 00       	mov    $0xb8fa0,%edx
        console[i] = ' ' | 0x0700;
   44253:	66 c7 00 20 07       	movw   $0x720,(%rax)
    for (int i = 0; i < CONSOLE_ROWS * CONSOLE_COLUMNS; ++i) {
   44258:	48 83 c0 02          	add    $0x2,%rax
   4425c:	48 39 d0             	cmp    %rdx,%rax
   4425f:	75 f2                	jne    44253 <console_clear()+0xe>
    }
    cursorpos = 0;
   44261:	c7 05 91 4d 07 00 00 	movl   $0x0,0x74d91(%rip)        # b8ffc <cursorpos>
   44268:	00 00 00 
}
   4426b:	c3                   	ret    

000000000004426c <console_printer::console_printer(int, bool)>:
    void scroll();
    void move_cursor();
};

__noinline
console_printer::console_printer(int cpos, bool scroll)
   4426c:	f3 0f 1e fa          	endbr64 
    : cell_(console), scroll_(scroll) {
   44270:	48 c7 07 28 55 04 00 	movq   $0x45528,(%rdi)
   44277:	48 c7 47 08 00 80 0b 	movq   $0xb8000,0x8(%rdi)
   4427e:	00 
   4427f:	88 57 10             	mov    %dl,0x10(%rdi)
    if (cpos < 0) {
   44282:	85 f6                	test   %esi,%esi
   44284:	78 18                	js     4429e <console_printer::console_printer(int, bool)+0x32>
        cell_ += cursorpos;
    } else if (cpos <= CONSOLE_ROWS * CONSOLE_COLUMNS) {
   44286:	81 fe d0 07 00 00    	cmp    $0x7d0,%esi
   4428c:	7f 0f                	jg     4429d <console_printer::console_printer(int, bool)+0x31>
        cell_ += cpos;
   4428e:	48 63 f6             	movslq %esi,%rsi
   44291:	48 8d 84 36 00 80 0b 	lea    0xb8000(%rsi,%rsi,1),%rax
   44298:	00 
   44299:	48 89 47 08          	mov    %rax,0x8(%rdi)
    }
}
   4429d:	c3                   	ret    
        cell_ += cursorpos;
   4429e:	8b 05 58 4d 07 00    	mov    0x74d58(%rip),%eax        # b8ffc <cursorpos>
   442a4:	48 98                	cltq   
   442a6:	48 8d 84 00 00 80 0b 	lea    0xb8000(%rax,%rax,1),%rax
   442ad:	00 
   442ae:	48 89 47 08          	mov    %rax,0x8(%rdi)
   442b2:	c3                   	ret    
   442b3:	90                   	nop

00000000000442b4 <console_printer::scroll()>:

__noinline
void console_printer::scroll() {
   442b4:	f3 0f 1e fa          	endbr64 
   442b8:	55                   	push   %rbp
   442b9:	48 89 e5             	mov    %rsp,%rbp
   442bc:	53                   	push   %rbx
   442bd:	48 83 ec 08          	sub    $0x8,%rsp
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
   442c1:	48 81 7f 08 a0 8f 0b 	cmpq   $0xb8fa0,0x8(%rdi)
   442c8:	00 
   442c9:	72 18                	jb     442e3 <console_printer::scroll()+0x2f>
   442cb:	48 89 fb             	mov    %rdi,%rbx
    if (scroll_) {
   442ce:	b8 00 80 0b 00       	mov    $0xb8000,%eax
   442d3:	80 7f 10 00          	cmpb   $0x0,0x10(%rdi)
   442d7:	75 1e                	jne    442f7 <console_printer::scroll()+0x43>
        memmove(console, console + CONSOLE_COLUMNS,
                (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS * sizeof(*console));
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
               0, CONSOLE_COLUMNS * sizeof(*console));
        cell_ -= CONSOLE_COLUMNS;
   442d9:	48 89 43 08          	mov    %rax,0x8(%rbx)
    } else {
        cell_ = console;
    }
}
   442dd:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
   442e1:	c9                   	leave  
   442e2:	c3                   	ret    
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
   442e3:	ba b8 54 04 00       	mov    $0x454b8,%edx
   442e8:	be 1f 02 00 00       	mov    $0x21f,%esi
   442ed:	bf 91 4d 04 00       	mov    $0x44d91,%edi
   442f2:	e8 51 df ff ff       	call   42248 <assert_fail(char const*, int, char const*)>
        memmove(console, console + CONSOLE_COLUMNS,
   442f7:	ba 00 0f 00 00       	mov    $0xf00,%edx
   442fc:	be a0 80 0b 00       	mov    $0xb80a0,%esi
   44301:	48 89 c7             	mov    %rax,%rdi
   44304:	e8 13 f6 ff ff       	call   4391c <memmove>
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
   44309:	ba a0 00 00 00       	mov    $0xa0,%edx
   4430e:	be 00 00 00 00       	mov    $0x0,%esi
   44313:	bf 00 8f 0b 00       	mov    $0xb8f00,%edi
   44318:	e8 4c f6 ff ff       	call   43969 <memset>
        cell_ -= CONSOLE_COLUMNS;
   4431d:	48 8b 43 08          	mov    0x8(%rbx),%rax
   44321:	48 2d a0 00 00 00    	sub    $0xa0,%rax
   44327:	eb b0                	jmp    442d9 <console_printer::scroll()+0x25>
   44329:	90                   	nop

000000000004432a <console_printer::putc(unsigned char, int)>:
    extern void console_show_cursor(int);
    console_show_cursor(cursorpos);
#endif
}

inline void console_printer::putc(unsigned char c, int color) {
   4432a:	f3 0f 1e fa          	endbr64 
   4432e:	55                   	push   %rbp
   4432f:	48 89 e5             	mov    %rsp,%rbp
   44332:	41 55                	push   %r13
   44334:	41 54                	push   %r12
   44336:	53                   	push   %rbx
   44337:	48 83 ec 08          	sub    $0x8,%rsp
   4433b:	48 89 fb             	mov    %rdi,%rbx
   4433e:	41 89 f5             	mov    %esi,%r13d
   44341:	41 89 d4             	mov    %edx,%r12d
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
   44344:	48 8b 47 08          	mov    0x8(%rdi),%rax
   44348:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
   4434e:	72 14                	jb     44364 <console_printer::putc(unsigned char, int)+0x3a>
        scroll();
   44350:	48 89 df             	mov    %rbx,%rdi
   44353:	e8 5c ff ff ff       	call   442b4 <console_printer::scroll()>
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
   44358:	48 8b 43 08          	mov    0x8(%rbx),%rax
   4435c:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
   44362:	73 ec                	jae    44350 <console_printer::putc(unsigned char, int)+0x26>
    }
    if (c == '\n') {
   44364:	41 80 fd 0a          	cmp    $0xa,%r13b
   44368:	74 1e                	je     44388 <console_printer::putc(unsigned char, int)+0x5e>
        while (pos != 80) {
            *cell_++ = ' ' | color;
            ++pos;
        }
    } else {
        *cell_++ = c | color;
   4436a:	48 8d 50 02          	lea    0x2(%rax),%rdx
   4436e:	48 89 53 08          	mov    %rdx,0x8(%rbx)
   44372:	45 0f b6 ed          	movzbl %r13b,%r13d
   44376:	45 09 e5             	or     %r12d,%r13d
   44379:	66 44 89 28          	mov    %r13w,(%rax)
    }
}
   4437d:	48 83 c4 08          	add    $0x8,%rsp
   44381:	5b                   	pop    %rbx
   44382:	41 5c                	pop    %r12
   44384:	41 5d                	pop    %r13
   44386:	5d                   	pop    %rbp
   44387:	c3                   	ret    
        int pos = (cell_ - console) % 80;
   44388:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
   4438e:	48 89 c1             	mov    %rax,%rcx
   44391:	48 89 c6             	mov    %rax,%rsi
   44394:	48 d1 fe             	sar    %rsi
   44397:	48 ba 67 66 66 66 66 	movabs $0x6666666666666667,%rdx
   4439e:	66 66 66 
   443a1:	48 89 f0             	mov    %rsi,%rax
   443a4:	48 f7 ea             	imul   %rdx
   443a7:	48 c1 fa 05          	sar    $0x5,%rdx
   443ab:	48 89 c8             	mov    %rcx,%rax
   443ae:	48 c1 f8 3f          	sar    $0x3f,%rax
   443b2:	48 29 c2             	sub    %rax,%rdx
   443b5:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   443b9:	48 c1 e2 04          	shl    $0x4,%rdx
   443bd:	89 f0                	mov    %esi,%eax
   443bf:	29 d0                	sub    %edx,%eax
            *cell_++ = ' ' | color;
   443c1:	41 83 cc 20          	or     $0x20,%r12d
   443c5:	48 8b 53 08          	mov    0x8(%rbx),%rdx
   443c9:	48 8d 4a 02          	lea    0x2(%rdx),%rcx
   443cd:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
   443d1:	66 44 89 22          	mov    %r12w,(%rdx)
            ++pos;
   443d5:	83 c0 01             	add    $0x1,%eax
        while (pos != 80) {
   443d8:	83 f8 50             	cmp    $0x50,%eax
   443db:	75 e8                	jne    443c5 <console_printer::putc(unsigned char, int)+0x9b>
   443dd:	eb 9e                	jmp    4437d <console_printer::putc(unsigned char, int)+0x53>
   443df:	90                   	nop

00000000000443e0 <console_printer::move_cursor()>:
void console_printer::move_cursor() {
   443e0:	f3 0f 1e fa          	endbr64 
   443e4:	55                   	push   %rbp
   443e5:	48 89 e5             	mov    %rsp,%rbp
    cursorpos = cell_ - console;
   443e8:	48 8b 47 08          	mov    0x8(%rdi),%rax
   443ec:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
   443f2:	48 d1 f8             	sar    %rax
   443f5:	89 05 01 4c 07 00    	mov    %eax,0x74c01(%rip)        # b8ffc <cursorpos>
    console_show_cursor(cursorpos);
   443fb:	8b 3d fb 4b 07 00    	mov    0x74bfb(%rip),%edi        # b8ffc <cursorpos>
   44401:	e8 92 da ff ff       	call   41e98 <console_show_cursor(int)>
}
   44406:	5d                   	pop    %rbp
   44407:	c3                   	ret    

0000000000044408 <console_vprintf(int, int, char const*, __va_list_tag*)>:

// console_vprintf, console_printf
//    Print a message onto the console, starting at the given cursor position.

__noinline
int console_vprintf(int cpos, int color, const char* format, va_list val) {
   44408:	f3 0f 1e fa          	endbr64 
   4440c:	55                   	push   %rbp
   4440d:	48 89 e5             	mov    %rsp,%rbp
   44410:	41 56                	push   %r14
   44412:	41 55                	push   %r13
   44414:	41 54                	push   %r12
   44416:	53                   	push   %rbx
   44417:	48 83 ec 20          	sub    $0x20,%rsp
   4441b:	89 fb                	mov    %edi,%ebx
   4441d:	41 89 f4             	mov    %esi,%r12d
   44420:	49 89 d5             	mov    %rdx,%r13
   44423:	49 89 ce             	mov    %rcx,%r14
    console_printer cp(cpos, cpos < 0);
   44426:	89 fa                	mov    %edi,%edx
   44428:	c1 ea 1f             	shr    $0x1f,%edx
   4442b:	89 fe                	mov    %edi,%esi
   4442d:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   44431:	e8 36 fe ff ff       	call   4426c <console_printer::console_printer(int, bool)>
    cp.vprintf(color, format, val);
   44436:	4c 89 f1             	mov    %r14,%rcx
   44439:	4c 89 ea             	mov    %r13,%rdx
   4443c:	44 89 e6             	mov    %r12d,%esi
   4443f:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   44443:	e8 02 f6 ff ff       	call   43a4a <printer::vprintf(int, char const*, __va_list_tag*)>
    if (cpos < 0) {
   44448:	85 db                	test   %ebx,%ebx
   4444a:	78 1a                	js     44466 <console_vprintf(int, int, char const*, __va_list_tag*)+0x5e>
        cp.move_cursor();
    }
    return cp.cell_ - console;
   4444c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   44450:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
   44456:	48 d1 f8             	sar    %rax
}
   44459:	48 83 c4 20          	add    $0x20,%rsp
   4445d:	5b                   	pop    %rbx
   4445e:	41 5c                	pop    %r12
   44460:	41 5d                	pop    %r13
   44462:	41 5e                	pop    %r14
   44464:	5d                   	pop    %rbp
   44465:	c3                   	ret    
        cp.move_cursor();
   44466:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   4446a:	e8 71 ff ff ff       	call   443e0 <console_printer::move_cursor()>
   4446f:	eb db                	jmp    4444c <console_vprintf(int, int, char const*, __va_list_tag*)+0x44>

0000000000044471 <console_printf(int, int, char const*, ...)>:

__noinline
int console_printf(int cpos, int color, const char* format, ...) {
   44471:	f3 0f 1e fa          	endbr64 
   44475:	55                   	push   %rbp
   44476:	48 89 e5             	mov    %rsp,%rbp
   44479:	48 83 ec 50          	sub    $0x50,%rsp
   4447d:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
   44481:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
   44485:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_list val;
    va_start(val, format);
   44489:	c7 45 b8 18 00 00 00 	movl   $0x18,-0x48(%rbp)
   44490:	48 8d 45 10          	lea    0x10(%rbp),%rax
   44494:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   44498:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   4449c:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    cpos = console_vprintf(cpos, color, format, val);
   444a0:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
   444a4:	e8 5f ff ff ff       	call   44408 <console_vprintf(int, int, char const*, __va_list_tag*)>
    va_end(val);
    return cpos;
}
   444a9:	c9                   	leave  
   444aa:	c3                   	ret    
