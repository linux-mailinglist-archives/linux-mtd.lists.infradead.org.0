Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C72137A26
	for <lists+linux-mtd@lfdr.de>; Sat, 11 Jan 2020 00:24:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:From:Subject:Message-ID:Date:MIME-Version:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m8/i6QXgfeXppUw8wV2M04NFOvPrDGXkMepgyPXfwVU=; b=QOOY7b4cxzv69k
	ttoNH6AXv+FHtiHyzgtCnuEb0ArCNWo76Mtw2ckMbMlbO9AdktfPKJRffs8SO7cirVe8h43FwpzUI
	0wZ09EnyjSSVt7b7UfMRFrldlhXCq031878cRqiZjt7Y+SN8JcnBP6zd9OeWpQWew+Q0q4zp1coFO
	FS/5aQ/SfGqfoc54frTIEf5yxT2YTH2ocvY5GrdZ+u1e9z1/vk7l/gg7KrT3Vvp03tbRm61fyhgvx
	cJs8BBsIKFHKaBDs2fbioy45NPsPX8gRh0QuYCKm3tNzj8Rr6So6fIjSnFJ059LDq8MBYAyxBn3Ys
	EOq+oXQ8SLyh/2Y9ECuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq3dg-0003rp-AI; Fri, 10 Jan 2020 23:24:24 +0000
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iq3dU-0003pz-7c
 for linux-mtd@lists.infradead.org; Fri, 10 Jan 2020 23:24:14 +0000
Received: by mail-io1-f69.google.com with SMTP id p6so2545835iol.6
 for <linux-mtd@lists.infradead.org>; Fri, 10 Jan 2020 15:24:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=CBqkx40trNOqSJr2z4heknSxZxpX9JhLXjra6ZNokbM=;
 b=n3SFMOnk/vmaav3GJIT6bt050HZXHSs8jcGHyfeXVwmZOVANa429RW5dK2jnUkieGJ
 tCJ8cuzF1dC5f9PZ+DEGuX6N4OV7DRAaB96tyakjJt09k+U7MtD2a69oPHz0cCyJVLbL
 tpz+vHNIjGm4De4umIxxzeA2QnKF3nSoaXcmA29e9ppfjt4QvIHtE7ckSRL6CzQbVnrQ
 PF6NKW9ybVKvlQfYHbS/IwqvHY5j8E3lPIMCPugFAnPkJTeEy/iOblGbkO8Wkft91S6v
 mqfTnkTZbuaDPEvXuNn3X/vOrF4H9+SZhDUuxyOJDgoRJ/gRz3xKWabZO/JthT05mk4v
 kRtA==
X-Gm-Message-State: APjAAAXOih+gejiWE9/uJDqelvxRps98+g9yDiILj8BPeGgF1OcNHeJz
 2TWsLMeelZ7VobKxW1guAN/OHsrpUwmqpAebzF7odhMySEKb
X-Google-Smtp-Source: APXvYqzf8D11boq1clS4U31QjBbvcGvW8klhp0baZrrWXNhhwjefDCakkbps6HwXlHNnaPG05rGMCPkFKzi4yx3QnoitX1sEIW33
MIME-Version: 1.0
X-Received: by 2002:a02:b897:: with SMTP id p23mr5310711jam.58.1578698649333; 
 Fri, 10 Jan 2020 15:24:09 -0800 (PST)
Date: Fri, 10 Jan 2020 15:24:09 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000337c5e059bd16c9d@google.com>
Subject: INFO: task hung in ctrl_cdev_ioctl
From: syzbot <syzbot+12eda31c0851e1cdabf4@syzkaller.appspotmail.com>
To: linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org, 
 miquel.raynal@bootlin.com, richard@nod.at, syzkaller-bugs@googlegroups.com, 
 vigneshr@ti.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_152412_284592_FA3FE1D0 
X-CRM114-Status: UNSURE (   4.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.69 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello,

syzbot found the following crash on:

HEAD commit:    b07f636f Merge tag 'tpmdd-next-20200108' of git://git.infr..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=1622069ee00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=18698c0c240ba616
dashboard link: https://syzkaller.appspot.com/bug?extid=12eda31c0851e1cdabf4
compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=13bb85c6e00000

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+12eda31c0851e1cdabf4@syzkaller.appspotmail.com

INFO: task syz-executor.3:13404 blocked for more than 143 seconds.
       Not tainted 5.5.0-rc5-syzkaller #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
syz-executor.3  D27816 13404   9705 0x00004004
Call Trace:
  context_switch kernel/sched/core.c:3385 [inline]
  __schedule+0x934/0x1f90 kernel/sched/core.c:4081
  schedule+0xdc/0x2b0 kernel/sched/core.c:4155
  schedule_preempt_disabled+0x13/0x20 kernel/sched/core.c:4214
  __mutex_lock_common kernel/locking/mutex.c:1033 [inline]
  __mutex_lock+0x7ab/0x13c0 kernel/locking/mutex.c:1103
  mutex_lock_nested+0x16/0x20 kernel/locking/mutex.c:1118
  ctrl_cdev_ioctl+0x22b/0x2d0 drivers/mtd/ubi/cdev.c:1042
  vfs_ioctl fs/ioctl.c:47 [inline]
  file_ioctl fs/ioctl.c:545 [inline]
  do_vfs_ioctl+0x977/0x14e0 fs/ioctl.c:732
  ksys_ioctl+0xab/0xd0 fs/ioctl.c:749
  __do_sys_ioctl fs/ioctl.c:756 [inline]
  __se_sys_ioctl fs/ioctl.c:754 [inline]
  __x64_sys_ioctl+0x73/0xb0 fs/ioctl.c:754
  do_syscall_64+0xfa/0x790 arch/x86/entry/common.c:294
  entry_SYSCALL_64_after_hwframe+0x49/0xbe
RIP: 0033:0x45af49
Code: cc e9 1b c6 ff ff cc cc cc cc cc cc cc cc cc cc cc 8b 7c 24 08 b8 e7  
00 00 00 0f 05 c3 cc cc cc cc 48 8b 44 24 08 c7 00 00 00 <00> 00 bf 00 00  
00 00 b8 3c 00 00 00 0f 05 cd 03 eb fe cc cc cc cc
RSP: 002b:00007fdf84a75c78 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
RAX: ffffffffffffffda RBX: 0000000000000003 RCX: 000000000045af49
RDX: 000000000076006e RSI: 0000000040186f40 RDI: 0000000000000003
RBP: 000000000075bf20 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00007fdf84a766d4
R13: 00000000004c288a R14: 00000000004d8b90 R15: 00000000ffffffff
INFO: task syz-executor.0:13413 blocked for more than 143 seconds.
       Not tainted 5.5.0-rc5-syzkaller #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
syz-executor.0  D28536 13413   9712 0x00004004
Call Trace:
  context_switch kernel/sched/core.c:3385 [inline]
  __schedule+0x934/0x1f90 kernel/sched/core.c:4081
  schedule+0xdc/0x2b0 kernel/sched/core.c:4155
  schedule_preempt_disabled+0x13/0x20 kernel/sched/core.c:4214
  __mutex_lock_common kernel/locking/mutex.c:1033 [inline]
  __mutex_lock+0x7ab/0x13c0 kernel/locking/mutex.c:1103
  mutex_lock_nested+0x16/0x20 kernel/locking/mutex.c:1118
  ctrl_cdev_ioctl+0x22b/0x2d0 drivers/mtd/ubi/cdev.c:1042
  vfs_ioctl fs/ioctl.c:47 [inline]
  file_ioctl fs/ioctl.c:545 [inline]
  do_vfs_ioctl+0x977/0x14e0 fs/ioctl.c:732
  ksys_ioctl+0xab/0xd0 fs/ioctl.c:749
  __do_sys_ioctl fs/ioctl.c:756 [inline]
  __se_sys_ioctl fs/ioctl.c:754 [inline]
  __x64_sys_ioctl+0x73/0xb0 fs/ioctl.c:754
  do_syscall_64+0xfa/0x790 arch/x86/entry/common.c:294
  entry_SYSCALL_64_after_hwframe+0x49/0xbe
RIP: 0033:0x45af49
Code: cc e9 1b c6 ff ff cc cc cc cc cc cc cc cc cc cc cc 8b 7c 24 08 b8 e7  
00 00 00 0f 05 c3 cc cc cc cc 48 8b 44 24 08 c7 00 00 00 <00> 00 bf 00 00  
00 00 b8 3c 00 00 00 0f 05 cd 03 eb fe cc cc cc cc
RSP: 002b:00007fbe949bbc78 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
RAX: ffffffffffffffda RBX: 0000000000000003 RCX: 000000000045af49
RDX: 000000000076006e RSI: 0000000040186f40 RDI: 0000000000000003
RBP: 000000000075bf20 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00007fbe949bc6d4
R13: 00000000004c288a R14: 00000000004d8b90 R15: 00000000ffffffff
INFO: task syz-executor.1:13418 blocked for more than 143 seconds.
       Not tainted 5.5.0-rc5-syzkaller #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
syz-executor.1  D27816 13418   9711 0x00000004
Call Trace:
  context_switch kernel/sched/core.c:3385 [inline]
  __schedule+0x934/0x1f90 kernel/sched/core.c:4081
  schedule+0xdc/0x2b0 kernel/sched/core.c:4155
  schedule_preempt_disabled+0x13/0x20 kernel/sched/core.c:4214
  __mutex_lock_common kernel/locking/mutex.c:1033 [inline]
  __mutex_lock+0x7ab/0x13c0 kernel/locking/mutex.c:1103
  mutex_lock_nested+0x16/0x20 kernel/locking/mutex.c:1118
  ctrl_cdev_ioctl+0x22b/0x2d0 drivers/mtd/ubi/cdev.c:1042
  vfs_ioctl fs/ioctl.c:47 [inline]
  file_ioctl fs/ioctl.c:545 [inline]
  do_vfs_ioctl+0x977/0x14e0 fs/ioctl.c:732
  ksys_ioctl+0xab/0xd0 fs/ioctl.c:749
  __do_sys_ioctl fs/ioctl.c:756 [inline]
  __se_sys_ioctl fs/ioctl.c:754 [inline]
  __x64_sys_ioctl+0x73/0xb0 fs/ioctl.c:754
  do_syscall_64+0xfa/0x790 arch/x86/entry/common.c:294
  entry_SYSCALL_64_after_hwframe+0x49/0xbe
RIP: 0033:0x45af49
Code: cc e9 1b c6 ff ff cc cc cc cc cc cc cc cc cc cc cc 8b 7c 24 08 b8 e7  
00 00 00 0f 05 c3 cc cc cc cc 48 8b 44 24 08 c7 00 00 00 <00> 00 bf 00 00  
00 00 b8 3c 00 00 00 0f 05 cd 03 eb fe cc cc cc cc
RSP: 002b:00007f3b1600dc78 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
RAX: ffffffffffffffda RBX: 0000000000000003 RCX: 000000000045af49
RDX: 000000000076006e RSI: 0000000040186f40 RDI: 0000000000000003
RBP: 000000000075bf20 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00007f3b1600e6d4
R13: 00000000004c288a R14: 00000000004d8b90 R15: 00000000ffffffff
INFO: task syz-executor.5:13424 blocked for more than 144 seconds.
       Not tainted 5.5.0-rc5-syzkaller #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
syz-executor.5  D27816 13424   9713 0x00000004
Call Trace:
  context_switch kernel/sched/core.c:3385 [inline]
  __schedule+0x934/0x1f90 kernel/sched/core.c:4081
  schedule+0xdc/0x2b0 kernel/sched/core.c:4155
  schedule_preempt_disabled+0x13/0x20 kernel/sched/core.c:4214
  __mutex_lock_common kernel/locking/mutex.c:1033 [inline]
  __mutex_lock+0x7ab/0x13c0 kernel/locking/mutex.c:1103
  mutex_lock_nested+0x16/0x20 kernel/locking/mutex.c:1118
  ctrl_cdev_ioctl+0x22b/0x2d0 drivers/mtd/ubi/cdev.c:1042
  vfs_ioctl fs/ioctl.c:47 [inline]
  file_ioctl fs/ioctl.c:545 [inline]
  do_vfs_ioctl+0x977/0x14e0 fs/ioctl.c:732
  ksys_ioctl+0xab/0xd0 fs/ioctl.c:749
  __do_sys_ioctl fs/ioctl.c:756 [inline]
  __se_sys_ioctl fs/ioctl.c:754 [inline]
  __x64_sys_ioctl+0x73/0xb0 fs/ioctl.c:754
  do_syscall_64+0xfa/0x790 arch/x86/entry/common.c:294
  entry_SYSCALL_64_after_hwframe+0x49/0xbe
RIP: 0033:0x45af49
Code: cc e9 1b c6 ff ff cc cc cc cc cc cc cc cc cc cc cc 8b 7c 24 08 b8 e7  
00 00 00 0f 05 c3 cc cc cc cc 48 8b 44 24 08 c7 00 00 00 <00> 00 bf 00 00  
00 00 b8 3c 00 00 00 0f 05 cd 03 eb fe cc cc cc cc
RSP: 002b:00007fd996268c78 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
RAX: ffffffffffffffda RBX: 0000000000000003 RCX: 000000000045af49
RDX: 000000000076006e RSI: 0000000040186f40 RDI: 0000000000000003
RBP: 000000000075bf20 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00007fd9962696d4
R13: 00000000004c288a R14: 00000000004d8b90 R15: 00000000ffffffff
INFO: task syz-executor.5:13425 blocked for more than 144 seconds.
       Not tainted 5.5.0-rc5-syzkaller #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
syz-executor.5  D28536 13425   9713 0x00004004
Call Trace:
  context_switch kernel/sched/core.c:3385 [inline]
  __schedule+0x934/0x1f90 kernel/sched/core.c:4081
  schedule+0xdc/0x2b0 kernel/sched/core.c:4155
  schedule_timeout+0x717/0xc50 kernel/time/timer.c:1871
  do_wait_for_common kernel/sched/completion.c:83 [inline]
  __wait_for_common kernel/sched/completion.c:104 [inline]
  wait_for_common kernel/sched/completion.c:115 [inline]
  wait_for_completion+0x29c/0x440 kernel/sched/completion.c:136
  kthread_stop+0x187/0x800 kernel/kthread.c:559
  ubi_detach_mtd_dev+0x219/0x402 drivers/mtd/ubi/build.c:1080
  ctrl_cdev_ioctl+0x1d6/0x2d0 drivers/mtd/ubi/cdev.c:1068
  vfs_ioctl fs/ioctl.c:47 [inline]
  file_ioctl fs/ioctl.c:545 [inline]
  do_vfs_ioctl+0x977/0x14e0 fs/ioctl.c:732
  ksys_ioctl+0xab/0xd0 fs/ioctl.c:749
  __do_sys_ioctl fs/ioctl.c:756 [inline]
  __se_sys_ioctl fs/ioctl.c:754 [inline]
  __x64_sys_ioctl+0x73/0xb0 fs/ioctl.c:754
  do_syscall_64+0xfa/0x790 arch/x86/entry/common.c:294
  entry_SYSCALL_64_after_hwframe+0x49/0xbe
RIP: 0033:0x45af49
Code: cc e9 1b c6 ff ff cc cc cc cc cc cc cc cc cc cc cc 8b 7c 24 08 b8 e7  
00 00 00 0f 05 c3 cc cc cc cc 48 8b 44 24 08 c7 00 00 00 <00> 00 bf 00 00  
00 00 b8 3c 00 00 00 0f 05 cd 03 eb fe cc cc cc cc
RSP: 002b:00007fd996247c78 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
RAX: ffffffffffffffda RBX: 0000000000000003 RCX: 000000000045af49
RDX: 000000000076006e RSI: 0000000040046f41 RDI: 0000000000000004
RBP: 000000000075bfc8 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00007fd9962486d4
R13: 00000000004c288a R14: 00000000004d8b90 R15: 00000000ffffffff
INFO: task syz-executor.4:13428 blocked for more than 144 seconds.
       Not tainted 5.5.0-rc5-syzkaller #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
syz-executor.4  D28536 13428   9703 0x00000004
Call Trace:
  context_switch kernel/sched/core.c:3385 [inline]
  __schedule+0x934/0x1f90 kernel/sched/core.c:4081
  schedule+0xdc/0x2b0 kernel/sched/core.c:4155
  schedule_preempt_disabled+0x13/0x20 kernel/sched/core.c:4214
  __mutex_lock_common kernel/locking/mutex.c:1033 [inline]
  __mutex_lock+0x7ab/0x13c0 kernel/locking/mutex.c:1103
  mutex_lock_nested+0x16/0x20 kernel/locking/mutex.c:1118
  ctrl_cdev_ioctl+0x22b/0x2d0 drivers/mtd/ubi/cdev.c:1042
  vfs_ioctl fs/ioctl.c:47 [inline]
  file_ioctl fs/ioctl.c:545 [inline]
  do_vfs_ioctl+0x977/0x14e0 fs/ioctl.c:732
  ksys_ioctl+0xab/0xd0 fs/ioctl.c:749
  __do_sys_ioctl fs/ioctl.c:756 [inline]
  __se_sys_ioctl fs/ioctl.c:754 [inline]
  __x64_sys_ioctl+0x73/0xb0 fs/ioctl.c:754
  do_syscall_64+0xfa/0x790 arch/x86/entry/common.c:294
  entry_SYSCALL_64_after_hwframe+0x49/0xbe
RIP: 0033:0x45af49
Code: cc e9 1b c6 ff ff cc cc cc cc cc cc cc cc cc cc cc 8b 7c 24 08 b8 e7  
00 00 00 0f 05 c3 cc cc cc cc 48 8b 44 24 08 c7 00 00 00 <00> 00 bf 00 00  
00 00 b8 3c 00 00 00 0f 05 cd 03 eb fe cc cc cc cc
RSP: 002b:00007f3b65a23c78 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
RAX: ffffffffffffffda RBX: 0000000000000003 RCX: 000000000045af49
RDX: 000000000076006e RSI: 0000000040186f40 RDI: 0000000000000003
RBP: 000000000075bf20 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00007f3b65a246d4
R13: 00000000004c288a R14: 00000000004d8b90 R15: 00000000ffffffff
INFO: task syz-executor.4:13430 blocked for more than 144 seconds.
       Not tainted 5.5.0-rc5-syzkaller #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
syz-executor.4  D28536 13430   9703 0x00000004
Call Trace:
  context_switch kernel/sched/core.c:3385 [inline]
  __schedule+0x934/0x1f90 kernel/sched/core.c:4081
  schedule+0xdc/0x2b0 kernel/sched/core.c:4155
  schedule_preempt_disabled+0x13/0x20 kernel/sched/core.c:4214
  __mutex_lock_common kernel/locking/mutex.c:1033 [inline]
  __mutex_lock+0x7ab/0x13c0 kernel/locking/mutex.c:1103
  mutex_lock_nested+0x16/0x20 kernel/locking/mutex.c:1118
  ctrl_cdev_ioctl+0x1cd/0x2d0 drivers/mtd/ubi/cdev.c:1067
  vfs_ioctl fs/ioctl.c:47 [inline]
  file_ioctl fs/ioctl.c:545 [inline]
  do_vfs_ioctl+0x977/0x14e0 fs/ioctl.c:732
  ksys_ioctl+0xab/0xd0 fs/ioctl.c:749
  __do_sys_ioctl fs/ioctl.c:756 [inline]
  __se_sys_ioctl fs/ioctl.c:754 [inline]
  __x64_sys_ioctl+0x73/0xb0 fs/ioctl.c:754
  do_syscall_64+0xfa/0x790 arch/x86/entry/common.c:294
  entry_SYSCALL_64_after_hwframe+0x49/0xbe
RIP: 0033:0x45af49
Code: cc e9 1b c6 ff ff cc cc cc cc cc cc cc cc cc cc cc 8b 7c 24 08 b8 e7  
00 00 00 0f 05 c3 cc cc cc cc 48 8b 44 24 08 c7 00 00 00 <00> 00 bf 00 00  
00 00 b8 3c 00 00 00 0f 05 cd 03 eb fe cc cc cc cc
RSP: 002b:00007f3b65a02c78 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
RAX: ffffffffffffffda RBX: 0000000000000003 RCX: 000000000045af49
RDX: 000000000076006e RSI: 0000000040046f41 RDI: 0000000000000004
RBP: 000000000075bfc8 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00007f3b65a036d4
R13: 00000000004c288a R14: 00000000004d8b90 R15: 00000000ffffffff
INFO: task syz-executor.4:13440 blocked for more than 145 seconds.
       Not tainted 5.5.0-rc5-syzkaller #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
syz-executor.4  D29712 13440   9703 0x00000004
Call Trace:
  context_switch kernel/sched/core.c:3385 [inline]
  __schedule+0x934/0x1f90 kernel/sched/core.c:4081
  schedule+0xdc/0x2b0 kernel/sched/core.c:4155
  schedule_preempt_disabled+0x13/0x20 kernel/sched/core.c:4214
  __mutex_lock_common kernel/locking/mutex.c:1033 [inline]
  __mutex_lock+0x7ab/0x13c0 kernel/locking/mutex.c:1103
  mutex_lock_nested+0x16/0x20 kernel/locking/mutex.c:1118
  ctrl_cdev_ioctl+0x22b/0x2d0 drivers/mtd/ubi/cdev.c:1042
  vfs_ioctl fs/ioctl.c:47 [inline]
  file_ioctl fs/ioctl.c:545 [inline]
  do_vfs_ioctl+0x977/0x14e0 fs/ioctl.c:732
  ksys_ioctl+0xab/0xd0 fs/ioctl.c:749
  __do_sys_ioctl fs/ioctl.c:756 [inline]
  __se_sys_ioctl fs/ioctl.c:754 [inline]
  __x64_sys_ioctl+0x73/0xb0 fs/ioctl.c:754
  do_syscall_64+0xfa/0x790 arch/x86/entry/common.c:294
  entry_SYSCALL_64_after_hwframe+0x49/0xbe
RIP: 0033:0x45af49
Code: cc e9 1b c6 ff ff cc cc cc cc cc cc cc cc cc cc cc 8b 7c 24 08 b8 e7  
00 00 00 0f 05 c3 cc cc cc cc 48 8b 44 24 08 c7 00 00 00 <00> 00 bf 00 00  
00 00 b8 3c 00 00 00 0f 05 cd 03 eb fe cc cc cc cc
RSP: 002b:00007f3b659e1c78 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
RAX: ffffffffffffffda RBX: 0000000000000003 RCX: 000000000045af49
RDX: 000000000076006e RSI: 0000000040186f40 RDI: 0000000000000003
RBP: 000000000075c070 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00007f3b659e26d4
R13: 00000000004c288a R14: 00000000004d8b90 R15: 00000000ffffffff
INFO: task syz-executor.2:13435 blocked for more than 145 seconds.
       Not tainted 5.5.0-rc5-syzkaller #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
syz-executor.2  D28536 13435   9707 0x00000004
Call Trace:
  context_switch kernel/sched/core.c:3385 [inline]
  __schedule+0x934/0x1f90 kernel/sched/core.c:4081
  schedule+0xdc/0x2b0 kernel/sched/core.c:4155
  schedule_preempt_disabled+0x13/0x20 kernel/sched/core.c:4214
  __mutex_lock_common kernel/locking/mutex.c:1033 [inline]
  __mutex_lock+0x7ab/0x13c0 kernel/locking/mutex.c:1103
  mutex_lock_nested+0x16/0x20 kernel/locking/mutex.c:1118
  ctrl_cdev_ioctl+0x22b/0x2d0 drivers/mtd/ubi/cdev.c:1042
  vfs_ioctl fs/ioctl.c:47 [inline]
  file_ioctl fs/ioctl.c:545 [inline]
  do_vfs_ioctl+0x977/0x14e0 fs/ioctl.c:732
  ksys_ioctl+0xab/0xd0 fs/ioctl.c:749
  __do_sys_ioctl fs/ioctl.c:756 [inline]
  __se_sys_ioctl fs/ioctl.c:754 [inline]
  __x64_sys_ioctl+0x73/0xb0 fs/ioctl.c:754
  do_syscall_64+0xfa/0x790 arch/x86/entry/common.c:294
  entry_SYSCALL_64_after_hwframe+0x49/0xbe
RIP: 0033:0x45af49
Code: cc e9 1b c6 ff ff cc cc cc cc cc cc cc cc cc cc cc 8b 7c 24 08 b8 e7  
00 00 00 0f 05 c3 cc cc cc cc 48 8b 44 24 08 c7 00 00 00 <00> 00 bf 00 00  
00 00 b8 3c 00 00 00 0f 05 cd 03 eb fe cc cc cc cc
RSP: 002b:00007f0382d55c78 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
RAX: ffffffffffffffda RBX: 0000000000000003 RCX: 000000000045af49
RDX: 000000000076006e RSI: 0000000040186f40 RDI: 0000000000000003
RBP: 000000000075bf20 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00007f0382d566d4
R13: 00000000004c288a R14: 00000000004d8b90 R15: 00000000ffffffff
INFO: task syz-executor.2:13436 blocked for more than 145 seconds.
       Not tainted 5.5.0-rc5-syzkaller #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
syz-executor.2  D28536 13436   9707 0x00000004
Call Trace:
  context_switch kernel/sched/core.c:3385 [inline]
  __schedule+0x934/0x1f90 kernel/sched/core.c:4081
  schedule+0xdc/0x2b0 kernel/sched/core.c:4155
  schedule_preempt_disabled+0x13/0x20 kernel/sched/core.c:4214
  __mutex_lock_common kernel/locking/mutex.c:1033 [inline]
  __mutex_lock+0x7ab/0x13c0 kernel/locking/mutex.c:1103
  mutex_lock_nested+0x16/0x20 kernel/locking/mutex.c:1118
  ctrl_cdev_ioctl+0x1cd/0x2d0 drivers/mtd/ubi/cdev.c:1067
  vfs_ioctl fs/ioctl.c:47 [inline]
  file_ioctl fs/ioctl.c:545 [inline]
  do_vfs_ioctl+0x977/0x14e0 fs/ioctl.c:732
  ksys_ioctl+0xab/0xd0 fs/ioctl.c:749
  __do_sys_ioctl fs/ioctl.c:756 [inline]
  __se_sys_ioctl fs/ioctl.c:754 [inline]
  __x64_sys_ioctl+0x73/0xb0 fs/ioctl.c:754
  do_syscall_64+0xfa/0x790 arch/x86/entry/common.c:294
  entry_SYSCALL_64_after_hwframe+0x49/0xbe
RIP: 0033:0x45af49
Code: cc e9 1b c6 ff ff cc cc cc cc cc cc cc cc cc cc cc 8b 7c 24 08 b8 e7  
00 00 00 0f 05 c3 cc cc cc cc 48 8b 44 24 08 c7 00 00 00 <00> 00 bf 00 00  
00 00 b8 3c 00 00 00 0f 05 cd 03 eb fe cc cc cc cc
RSP: 002b:00007f0382d34c78 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
RAX: ffffffffffffffda RBX: 0000000000000003 RCX: 000000000045af49
RDX: 000000000076006e RSI: 0000000040046f41 RDI: 0000000000000004
RBP: 000000000075bfc8 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00007f0382d356d4
R13: 00000000004c288a R14: 00000000004d8b90 R15: 00000000ffffffff

Showing all locks held in the system:
1 lock held by khungtaskd/1115:
  #0: ffffffff899a5340 (rcu_read_lock){....}, at:  
debug_show_all_locks+0x5f/0x279 kernel/locking/lockdep.c:5334
2 locks held by getty/9655:
  #0: ffff88808f490090 (&tty->ldisc_sem){++++}, at:  
ldsem_down_read+0x33/0x40 drivers/tty/tty_ldsem.c:340
  #1: ffffc9000178b2e0 (&ldata->atomic_read_lock){+.+.}, at:  
n_tty_read+0x220/0x1bf0 drivers/tty/n_tty.c:2156
2 locks held by getty/9656:
  #0: ffff88809fa7f090 (&tty->ldisc_sem){++++}, at:  
ldsem_down_read+0x33/0x40 drivers/tty/tty_ldsem.c:340
  #1: ffffc9000177b2e0 (&ldata->atomic_read_lock){+.+.}, at:  
n_tty_read+0x220/0x1bf0 drivers/tty/n_tty.c:2156
2 locks held by getty/9657:
  #0: ffff8880a0677090 (&tty->ldisc_sem){++++}, at:  
ldsem_down_read+0x33/0x40 drivers/tty/tty_ldsem.c:340
  #1: ffffc900017cb2e0 (&ldata->atomic_read_lock){+.+.}, at:  
n_tty_read+0x220/0x1bf0 drivers/tty/n_tty.c:2156
2 locks held by getty/9658:
  #0: ffff8880a2e1f090 (&tty->ldisc_sem){++++}, at:  
ldsem_down_read+0x33/0x40 drivers/tty/tty_ldsem.c:340
  #1: ffffc900017bb2e0 (&ldata->atomic_read_lock){+.+.}, at:  
n_tty_read+0x220/0x1bf0 drivers/tty/n_tty.c:2156
2 locks held by getty/9659:
  #0: ffff8880a1bdd090 (&tty->ldisc_sem){++++}, at:  
ldsem_down_read+0x33/0x40 drivers/tty/tty_ldsem.c:340
  #1: ffffc900017db2e0 (&ldata->atomic_read_lock){+.+.}, at:  
n_tty_read+0x220/0x1bf0 drivers/tty/n_tty.c:2156
2 locks held by getty/9660:
  #0: ffff8880940c4090 (&tty->ldisc_sem){++++}, at:  
ldsem_down_read+0x33/0x40 drivers/tty/tty_ldsem.c:340
  #1: ffffc900017eb2e0 (&ldata->atomic_read_lock){+.+.}, at:  
n_tty_read+0x220/0x1bf0 drivers/tty/n_tty.c:2156
2 locks held by getty/9661:
  #0: ffff8880a874e090 (&tty->ldisc_sem){++++}, at:  
ldsem_down_read+0x33/0x40 drivers/tty/tty_ldsem.c:340
  #1: ffffc900017232e0 (&ldata->atomic_read_lock){+.+.}, at:  
n_tty_read+0x220/0x1bf0 drivers/tty/n_tty.c:2156
1 lock held by syz-executor.3/13404:
  #0: ffffffff8a0dc340 (ubi_devices_mutex){+.+.}, at:  
ctrl_cdev_ioctl+0x22b/0x2d0 drivers/mtd/ubi/cdev.c:1042
1 lock held by syz-executor.0/13413:
  #0: ffffffff8a0dc340 (ubi_devices_mutex){+.+.}, at:  
ctrl_cdev_ioctl+0x22b/0x2d0 drivers/mtd/ubi/cdev.c:1042
1 lock held by syz-executor.1/13418:
  #0: ffffffff8a0dc340 (ubi_devices_mutex){+.+.}, at:  
ctrl_cdev_ioctl+0x22b/0x2d0 drivers/mtd/ubi/cdev.c:1042
1 lock held by syz-executor.5/13424:
  #0: ffffffff8a0dc340 (ubi_devices_mutex){+.+.}, at:  
ctrl_cdev_ioctl+0x22b/0x2d0 drivers/mtd/ubi/cdev.c:1042
1 lock held by syz-executor.5/13425:
  #0: ffffffff8a0dc340 (ubi_devices_mutex){+.+.}, at:  
ctrl_cdev_ioctl+0x1cd/0x2d0 drivers/mtd/ubi/cdev.c:1067
1 lock held by syz-executor.4/13428:
  #0: ffffffff8a0dc340 (ubi_devices_mutex){+.+.}, at:  
ctrl_cdev_ioctl+0x22b/0x2d0 drivers/mtd/ubi/cdev.c:1042
1 lock held by syz-executor.4/13430:
  #0: ffffffff8a0dc340 (ubi_devices_mutex){+.+.}, at:  
ctrl_cdev_ioctl+0x1cd/0x2d0 drivers/mtd/ubi/cdev.c:1067
1 lock held by syz-executor.4/13440:
  #0: ffffffff8a0dc340 (ubi_devices_mutex){+.+.}, at:  
ctrl_cdev_ioctl+0x22b/0x2d0 drivers/mtd/ubi/cdev.c:1042
1 lock held by syz-executor.2/13435:
  #0: ffffffff8a0dc340 (ubi_devices_mutex){+.+.}, at:  
ctrl_cdev_ioctl+0x22b/0x2d0 drivers/mtd/ubi/cdev.c:1042
1 lock held by syz-executor.2/13436:
  #0: ffffffff8a0dc340 (ubi_devices_mutex){+.+.}, at:  
ctrl_cdev_ioctl+0x1cd/0x2d0 drivers/mtd/ubi/cdev.c:1067
1 lock held by syz-executor.2/13442:
  #0: ffffffff8a0dc340 (ubi_devices_mutex){+.+.}, at:  
ctrl_cdev_ioctl+0x22b/0x2d0 drivers/mtd/ubi/cdev.c:1042

=============================================

NMI backtrace for cpu 0
CPU: 0 PID: 1115 Comm: khungtaskd Not tainted 5.5.0-rc5-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS  
Google 01/01/2011
Call Trace:
  __dump_stack lib/dump_stack.c:77 [inline]
  dump_stack+0x197/0x210 lib/dump_stack.c:118
  nmi_cpu_backtrace.cold+0x70/0xb2 lib/nmi_backtrace.c:101
  nmi_trigger_cpumask_backtrace+0x23b/0x28b lib/nmi_backtrace.c:62
  arch_trigger_cpumask_backtrace+0x14/0x20 arch/x86/kernel/apic/hw_nmi.c:38
  trigger_all_cpu_backtrace include/linux/nmi.h:146 [inline]
  check_hung_uninterruptible_tasks kernel/hung_task.c:205 [inline]
  watchdog+0xb11/0x10c0 kernel/hung_task.c:289
  kthread+0x361/0x430 kernel/kthread.c:255
  ret_from_fork+0x24/0x30 arch/x86/entry/entry_64.S:352
Sending NMI from CPU 0 to CPUs 1:
NMI backtrace for cpu 1
CPU: 1 PID: 451 Comm: kworker/u4:5 Not tainted 5.5.0-rc5-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS  
Google 01/01/2011
Workqueue: bat_events batadv_nc_worker
RIP: 0010:rcu_read_lock include/linux/rcupdate.h:618 [inline]
RIP: 0010:batadv_nc_purge_orig_hash net/batman-adv/network-coding.c:407  
[inline]
RIP: 0010:batadv_nc_worker+0x128/0x760 net/batman-adv/network-coding.c:718
Code: d2 31 f6 b9 02 00 00 00 68 03 2f b9 87 48 c7 c7 40 53 9a 89 e8 09 da  
a1 f9 e8 d4 30 a8 f9 31 ff 41 89 c4 89 c6 e8 28 f9 bb f9 <45> 85 e4 58 74  
20 e8 9d f7 bb f9 44 0f b6 25 65 bf bd 02 31 ff 44
RSP: 0018:ffffc90002747cd8 EFLAGS: 00000293
RAX: 0000000000000000 RBX: ffff8880a6abe900 RCX: ffffffff87b92f48
RDX: 0000000000000001 RSI: 0000000000000000 RDI: 0000000000000005
RBP: ffffc90002747d30 R08: ffff8880a87e0340 R09: fffffbfff165eba5
R10: ffff8880a87e0c28 R11: ffff8880a87e0340 R12: 0000000000000001
R13: 000000000000008a R14: ffff88808e188450 R15: dffffc0000000000
FS:  0000000000000000(0000) GS:ffff8880ae900000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: ffffffffff600400 CR3: 000000009ec9c000 CR4: 00000000001406e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
  process_one_work+0x9af/0x1740 kernel/workqueue.c:2264
  worker_thread+0x98/0xe40 kernel/workqueue.c:2410
  kthread+0x361/0x430 kernel/kthread.c:255
  ret_from_fork+0x24/0x30 arch/x86/entry/entry_64.S:352


---
This bug is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this bug report. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
syzbot can test patches for this bug, for details see:
https://goo.gl/tpsmEJ#testing-patches

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
