Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF85217EA4
	for <lists+linux-mtd@lfdr.de>; Wed,  8 May 2019 18:58:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jxdx0XdbO3fJg8y2oPetTysib8QLb6QGFy7Iz0+N7vw=; b=IMxyAbBjsuJyW/
	BqkzoI0JTYKcG//g0H++kO5D0kE/x1BQha/R7qOXqBcYteij9Q/TbSHHalGH48E/7yB1LJiPEAm2K
	Axtgz5+LwPyqsbKl/z/fXCUjgnInycxRIJQujSbO/ervVk3eEl2qR6RgazH4HDJ8jA1a0rRTXhL6L
	BTeKvoHZT/gWPevIkPXsFFpqcZs1UT7w4htOknUDWySaM87uETRiuGpBbHnHL6feWA2fXtrZWPLky
	7Lc31giWLEctjKE/kO1o1uYZHIHxE8xx8puGheSfaHaBfkl6BSMr8EjvrdLUSqLQDxzFes0HkMqBF
	CwL2O+zzn3LC0bGdJs5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOPu6-0003AQ-QO; Wed, 08 May 2019 16:58:50 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOPtx-00039j-Qo
 for linux-mtd@lists.infradead.org; Wed, 08 May 2019 16:58:44 +0000
Received: by mail-it1-x143.google.com with SMTP id a190so5212252ite.4
 for <linux-mtd@lists.infradead.org>; Wed, 08 May 2019 09:58:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=c7SeVSug1d6hFQ88Hj9iAuTem9szKnl9bSHrdwwQow8=;
 b=KoDn5evk1r6DhlfC/aQNu13BeFGPdeTqTdb4rZKpEN6q7vnWvthDzE1+ylPHgO0Wh/
 IbpPkjGkKiu9k9aMPsXt6A5Jz63ubDHcLBSKH7XUPzyk1Cj1MWxg4og78sL8tXXQS4EP
 A0/xO723KBBX4riHn3tRNvSHZWW+XJqnIt7B/YQ+T17qfuFyN9Jh+FY1ayTdpBUCgyi9
 wqKs3/cEkVE97ZCEHc3yxFWqAgGkTNw04XQFfhuyA1oudHweWfU3Fz0u5ivFwNlo5GMl
 ObvXM+jXEIMmgb4Ga+ZRE3z506uqa3PZ1zDsqZWRmHFiB8XYTvER0XBhlbUfb43m+rvB
 1bzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=c7SeVSug1d6hFQ88Hj9iAuTem9szKnl9bSHrdwwQow8=;
 b=X8djSgmTcysV8OST4ilclP13jqB+YLpg+aPU+ujNiAdIrTYLUaWbxrXFvezZykggkS
 Jl2EsKwSwclAu7SzqY/TpzGnmXw+9E3HGFeG49USmYz8kAO7sOWdXrZeAh+0kXkr3/t7
 Ac5wmjkO+50z0IDo70/0gL3z8y5K+A/oiig8MsKEYT9ehWNbUcl0RS26z0scy/g/19CW
 ThSeooSVjbdSccEjBO7IOSqwVKg0lomg6XYgeDe63r2IbGP5+8kFBjijOo9ITH5QkKNl
 F4ijrxTLbjVglNY0WqF5fo6r5aS5TX690l+cM/HyPEtWU/dkH9mF48fCiDJ3oiP5Uk7T
 teHw==
X-Gm-Message-State: APjAAAWWDz5yvZe8SWF+/ef8A0Ed3RKC5PJcrTPHUeXjXBFcybX9FjY+
 9c0u8PyJJMkF+YVp8hyJHd0K4KQA/LIhG9gf71Xecg==
X-Google-Smtp-Source: APXvYqwLMPa3BKWvXa5MJL2EM4lKooWFkZmYoTe5uOHS/2+gHSSGqnC6qpSkeIIZNsZA1hu3cluJOP8xoAfskcZmftc=
X-Received: by 2002:a02:b88b:: with SMTP id p11mr28344236jam.82.1557334720593; 
 Wed, 08 May 2019 09:58:40 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000fb78720587d46fe9@google.com>
 <20190502023426.GA804@sol.localdomain>
 <CACT4Y+YHFH8GAhDaNdNNTVFFx6YfKSL19cLPx2vpP-YngzS6kQ@mail.gmail.com>
In-Reply-To: <CACT4Y+YHFH8GAhDaNdNNTVFFx6YfKSL19cLPx2vpP-YngzS6kQ@mail.gmail.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 8 May 2019 18:58:28 +0200
Message-ID: <CACT4Y+biO9GEN16Rak_1F+UdvhTe3fUwVf_VWRup2xrgvr9WKA@mail.gmail.com>
Subject: Re: BUG: soft lockup in kvm_vm_ioctl
To: Eric Biggers <ebiggers@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_095841_897475_EF36D745 
X-CRM114-Status: GOOD (  18.29  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: Ingo Molnar <mingo@kernel.org>, KVM list <kvm@vger.kernel.org>,
 Artem Bityutskiy <dedekind1@gmail.com>, Peter Zijlstra <peterz@infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, jbaron@redhat.com,
 Rik van Riel <riel@surriel.com>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>, adrian.hunter@intel.com,
 Steven Rostedt <rostedt@goodmis.org>, David Miller <davem@davemloft.net>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Andy Lutomirski <luto@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 syzbot <syzbot+8d9bb6157e7b379f740e@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, May 8, 2019 at 1:25 PM
To: Eric Biggers
Cc: syzbot, KVM list, <adrian.hunter@intel.com>, David Miller, Artem
Bityutskiy, <jbaron@redhat.com>, Josh Poimboeuf, LKML,
<linux-mtd@lists.infradead.org>, Andy Lutomirski, Ingo Molnar, Peter
Zijlstra, Richard Weinberger, Rik van Riel, Steven Rostedt,
syzkaller-bugs, Thomas Gleixner

> From: Eric Biggers <ebiggers@kernel.org>
> Date: Thu, May 2, 2019 at 4:34 AM
> To: syzbot, Dmitry Vyukov, <kvm@vger.kernel.org>
> Cc: <adrian.hunter@intel.com>, <davem@davemloft.net>,
> <dedekind1@gmail.com>, <jbaron@redhat.com>, <jpoimboe@redhat.com>,
> <linux-kernel@vger.kernel.org>, <linux-mtd@lists.infradead.org>,
> <luto@kernel.org>, <mingo@kernel.org>, <peterz@infradead.org>,
> <richard@nod.at>, <riel@surriel.com>, <rostedt@goodmis.org>,
> <syzkaller-bugs@googlegroups.com>, <tglx@linutronix.de>
>
> > On Wed, May 01, 2019 at 07:36:05AM -0700, syzbot wrote:
> > > Hello,
> > >
> > > syzbot found the following crash on:
> > >
> > > HEAD commit:    baf76f0c slip: make slhc_free() silently accept an error p..
> > > git tree:       upstream
> > > console output: https://syzkaller.appspot.com/x/log.txt?x=1407f57f200000
> > > kernel config:  https://syzkaller.appspot.com/x/.config?x=a42d110b47dd6b36
> > > dashboard link: https://syzkaller.appspot.com/bug?extid=8d9bb6157e7b379f740e
> > > compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
> > > syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1266a588a00000
> > >
> > > The bug was bisected to:
> > >
> > > commit 252153ba518ac0bcde6b7152c63380d4415bfe5d
> > > Author: Eric Biggers <ebiggers@google.com>
> > > Date:   Wed Nov 29 20:43:17 2017 +0000
> > >
> > >     ubifs: switch to fscrypt_prepare_setattr()
> > >
> > > bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1448f588a00000
> > > final crash:    https://syzkaller.appspot.com/x/report.txt?x=1648f588a00000
> > > console output: https://syzkaller.appspot.com/x/log.txt?x=1248f588a00000
> > >
> > > IMPORTANT: if you fix the bug, please add the following tag to the commit:
> > > Reported-by: syzbot+8d9bb6157e7b379f740e@syzkaller.appspotmail.com
> > > Fixes: 252153ba518a ("ubifs: switch to fscrypt_prepare_setattr()")
> > >
> > > watchdog: BUG: soft lockup - CPU#0 stuck for 123s! [syz-executor.3:22023]
> > > Modules linked in:
> > > irq event stamp: 26556
> > > hardirqs last  enabled at (26555): [<ffffffff81006673>]
> > > trace_hardirqs_on_thunk+0x1a/0x1c
> > > hardirqs last disabled at (26556): [<ffffffff8100668f>]
> > > trace_hardirqs_off_thunk+0x1a/0x1c
> > > softirqs last  enabled at (596): [<ffffffff87400662>]
> > > __do_softirq+0x662/0x95a kernel/softirq.c:320
> > > softirqs last disabled at (517): [<ffffffff8144e4e0>] invoke_softirq
> > > kernel/softirq.c:374 [inline]
> > > softirqs last disabled at (517): [<ffffffff8144e4e0>] irq_exit+0x180/0x1d0
> > > kernel/softirq.c:414
> > > CPU: 0 PID: 22023 Comm: syz-executor.3 Not tainted 5.1.0-rc6+ #89
> > > Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS
> > > Google 01/01/2011
> > > RIP: 0010:csd_lock_wait kernel/smp.c:108 [inline]
> > > RIP: 0010:smp_call_function_single+0x13e/0x420 kernel/smp.c:302
> > > Code: 00 48 8b 4c 24 08 48 8b 54 24 10 48 8d 74 24 40 8b 7c 24 1c e8 23 fa
> > > ff ff 41 89 c5 eb 07 e8 e9 87 0a 00 f3 90 44 8b 64 24 58 <31> ff 41 83 e4 01
> > > 44 89 e6 e8 54 89 0a 00 45 85 e4 75 e1 e8 ca 87
> > > RSP: 0018:ffff88809277f3e0 EFLAGS: 00000293 ORIG_RAX: ffffffffffffff13
> > > RAX: ffff8880a8bfc040 RBX: 1ffff110124efe80 RCX: ffffffff8166051c
> > > RDX: 0000000000000000 RSI: ffffffff81660507 RDI: 0000000000000005
> > > RBP: ffff88809277f4b8 R08: ffff8880a8bfc040 R09: ffffed1015d25be9
> > > R10: ffffed1015d25be8 R11: ffff8880ae92df47 R12: 0000000000000003
> > > R13: 0000000000000000 R14: 0000000000000001 R15: 0000000000000000
> > > FS:  00007fd569980700(0000) GS:ffff8880ae800000(0000) knlGS:0000000000000000
> > > CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > > CR2: 00007fd56997e178 CR3: 00000000a4fd2000 CR4: 00000000001426f0
> > > DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> > > DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> > > Call Trace:
> > >  smp_call_function_many+0x750/0x8c0 kernel/smp.c:434
> > >  smp_call_function+0x42/0x90 kernel/smp.c:492
> > >  on_each_cpu+0x31/0x200 kernel/smp.c:602
> > >  text_poke_bp+0x107/0x19b arch/x86/kernel/alternative.c:821
> > >  __jump_label_transform+0x263/0x330 arch/x86/kernel/jump_label.c:91
> > >  arch_jump_label_transform+0x2b/0x40 arch/x86/kernel/jump_label.c:99
> > >  __jump_label_update+0x16a/0x210 kernel/jump_label.c:389
> > >  jump_label_update kernel/jump_label.c:752 [inline]
> > >  jump_label_update+0x1ce/0x3d0 kernel/jump_label.c:731
> > >  static_key_slow_inc_cpuslocked+0x1c1/0x250 kernel/jump_label.c:129
> > >  static_key_slow_inc+0x1b/0x30 kernel/jump_label.c:144
> > >  kvm_arch_vcpu_init+0x6b7/0x870 arch/x86/kvm/x86.c:9068
> > >  kvm_vcpu_init+0x272/0x370 arch/x86/kvm/../../../virt/kvm/kvm_main.c:320
> > >  vmx_create_vcpu+0x191/0x2540 arch/x86/kvm/vmx/vmx.c:6577
> > >  kvm_arch_vcpu_create+0x80/0x120 arch/x86/kvm/x86.c:8755
> > >  kvm_vm_ioctl_create_vcpu arch/x86/kvm/../../../virt/kvm/kvm_main.c:2569
> > > [inline]
> > >  kvm_vm_ioctl+0x5ce/0x19c0 arch/x86/kvm/../../../virt/kvm/kvm_main.c:3105
> > >  vfs_ioctl fs/ioctl.c:46 [inline]
> > >  file_ioctl fs/ioctl.c:509 [inline]
> > >  do_vfs_ioctl+0xd6e/0x1390 fs/ioctl.c:696
> > >  ksys_ioctl+0xab/0xd0 fs/ioctl.c:713
> > >  __do_sys_ioctl fs/ioctl.c:720 [inline]
> > >  __se_sys_ioctl fs/ioctl.c:718 [inline]
> > >  __x64_sys_ioctl+0x73/0xb0 fs/ioctl.c:718
> > >  do_syscall_64+0x103/0x610 arch/x86/entry/common.c:290
> > >  entry_SYSCALL_64_after_hwframe+0x49/0xbe
> > > RIP: 0033:0x458da9
> > > Code: ad b8 fb ff c3 66 2e 0f 1f 84 00 00 00 00 00 66 90 48 89 f8 48 89 f7
> > > 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff
> > > 0f 83 7b b8 fb ff c3 66 2e 0f 1f 84 00 00 00 00
> > > RSP: 002b:00007fd56997fc78 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
> > > RAX: ffffffffffffffda RBX: 0000000000000003 RCX: 0000000000458da9
> > > RDX: 0000000000000000 RSI: 000000000000ae41 RDI: 0000000000000005
> > > RBP: 000000000073bfa0 R08: 0000000000000000 R09: 0000000000000000
> > > R10: 0000000000000000 R11: 0000000000000246 R12: 00007fd5699806d4
> > > R13: 00000000004c1905 R14: 00000000004d40d0 R15: 00000000ffffffff
> > > Sending NMI from CPU 0 to CPUs 1:
>
> > Can the KVM maintainers take a look at this?  This doesn't have anything to do
> > with my commit that syzbot bisected it to.
> >
> > +Dmitry, statistics lession: if a crash occurs only 1 in 10 times, as was the
> > case here, then often it will happen 0 in 10 times by chance.  syzbot needs to
> > run the reproducer more times if it isn't working reliably.  Otherwise it ends
> > up blaming some random commit.
>
> Added a note to https://github.com/google/syzkaller/issues/1051
> Thanks

As we increase number of instances, we increase chances of hitting
unrelated bugs. E.g. take a look at the bisection log for:
https://syzkaller.appspot.com/bug?extid=f14868630901fc6151d3
What is the optimum number of tests is a good question. I suspect that
the current 10 instances is close to optimum. If we use significantly
more we may break every other bisection on unrelated bugs...

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
