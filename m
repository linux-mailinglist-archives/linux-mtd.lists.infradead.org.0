Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AEBD176B4
	for <lists+linux-mtd@lfdr.de>; Wed,  8 May 2019 13:24:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qrRoQ3jLaeCTZUnSXfQ4gN/fhd2N12FNzWcPGweJB+o=; b=rtfBNc7VzeUkuQ
	ntvrN7DdCIE8FHHK4PuxGPig61Z4Lma+mRndIqpllbksmhau3MggUy9lNK+AKlYECQlQ812tMvqag
	kvh00Glq0djvfLGNdCYuh1PMG0S2vf/K9v6LzhJd93wZFWpzhNakjzTpffY1l9NmqcSNjmbaqeGIl
	MXrqkoDvr4eron6BbTH71DtuLei6e5nqKH/BrSvsL5bBpd3T6iln/T+IqwNSztcdNqNmoA43//Hve
	sPrX1csmEVMY9CLEBeM7iZX6QcA5YLHEOSmiYhl/I37VaCcFJNZ5vCMYE5I/GR3ER012NhG5oE8j0
	++qnBHjBqXJo4WrmP76Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOKgD-00047H-FO; Wed, 08 May 2019 11:24:09 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOKg4-00046Z-Tz
 for linux-mtd@lists.infradead.org; Wed, 08 May 2019 11:24:02 +0000
Received: by mail-io1-xd41.google.com with SMTP id m14so16783028ion.13
 for <linux-mtd@lists.infradead.org>; Wed, 08 May 2019 04:23:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=d644zZtPZpj+iL/O+tRuouNZQQ4CHCP7vp/WgV362Xc=;
 b=I9dBQ1b9fZElQqTaOP/mLPnw/WHMH+3+vU3bKIBkdC5z+XDjpa5XW4+pqXDH2Yirdh
 lVHzKExZIKY1Ce90rffFlZEQOt7jMAWQDbUiDjF5HE0wViOga6ncr88kIutVR58iaZfI
 uBxquUEK9MRuMZHslVRyiLW4gSD0PFci7RYj/GjHSR2fEsT0p6KUYmpHs9nEJm4GOPee
 P5n38Gxn2qoo8db7HRhafcb3w8Ond4eCsOz5YITIB4/LcaolMrlLzcOTxkK8B/BauI/8
 tDXgrbveQcxNc+yCfGXlJcZyA3yJOhjkjI+gGv2K2W3q5+YO2mflV0dVTUXcBuviIMnU
 7K6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=d644zZtPZpj+iL/O+tRuouNZQQ4CHCP7vp/WgV362Xc=;
 b=Gfcf3CLG37fIJXGzjfGNbSRjvwphAkBkjz4GMk3c2faL3bjCexzxOkVCAxcpKtn2sJ
 +OFSVIhN+ETwV6cXKtTz1ijkg9iHuLJMUvEIoxp3WuvAuN4ERKD0C/xma5dTEbyeRlib
 rECD27+8z4myP6LrEzot/4On4nNS9DMiJXMpSaD0qczNUBQAIsj4A4Mw0CSh58GQdtWT
 Vyv8s/WTX/+kgfm+AehVzjZJOQeOehFGPCD/L3rmnilC0MqUolCtCuZ4JnW3jo2cm6HA
 Dm2G7bd5U0R7d4zh/poYUtxqmQhj/HtkBSTjGKfaeIeuYaQ2Xml6CteAMw6fcgDdc32O
 cVvA==
X-Gm-Message-State: APjAAAUTUCPjAie2iIIoyAUDkm52/b1cCTQEZSpKD96HD6YLf4HUxQ5f
 zLpijqzzg//7LG1mTJ5wYCcJlmEbYMIPKtVTwlIT+Q==
X-Google-Smtp-Source: APXvYqwg7I6hW8AKf3IWv5UtmdgFgvMUcDZ+7raMWEIqgiSPe/rVBGmNOr28sn4pxVkFKWiOMyzK697YC3urwpXbK9E=
X-Received: by 2002:a6b:f305:: with SMTP id m5mr17786558ioh.271.1557314637068; 
 Wed, 08 May 2019 04:23:57 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000fb78720587d46fe9@google.com>
 <20190502023426.GA804@sol.localdomain>
 <20190501231051.50eeccd6@oasis.local.home>
In-Reply-To: <20190501231051.50eeccd6@oasis.local.home>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 8 May 2019 13:23:45 +0200
Message-ID: <CACT4Y+a=yA56CgQqGGSSQRqF9z8y-et=t-uwrjCDYiG8p-BCzQ@mail.gmail.com>
Subject: Re: BUG: soft lockup in kvm_vm_ioctl
To: Steven Rostedt <rostedt@goodmis.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_042400_988367_9C490132 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
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
 jbaron@redhat.com,
 syzbot <syzbot+8d9bb6157e7b379f740e@syzkaller.appspotmail.com>,
 Rik van Riel <riel@surriel.com>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>, adrian.hunter@intel.com,
 LKML <linux-kernel@vger.kernel.org>, Eric Biggers <ebiggers@kernel.org>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Andy Lutomirski <luto@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Steven Rostedt <rostedt@goodmis.org>
Date: Thu, May 2, 2019 at 5:10 AM
To: Eric Biggers
Cc: syzbot, Dmitry Vyukov, <kvm@vger.kernel.org>,
<adrian.hunter@intel.com>, <davem@davemloft.net>,
<dedekind1@gmail.com>, <jbaron@redhat.com>, <jpoimboe@redhat.com>,
<linux-kernel@vger.kernel.org>, <linux-mtd@lists.infradead.org>,
<luto@kernel.org>, <mingo@kernel.org>, <peterz@infradead.org>,
<richard@nod.at>, <riel@surriel.com>,
<syzkaller-bugs@googlegroups.com>, <tglx@linutronix.de>

> On Wed, 1 May 2019 19:34:27 -0700
> Eric Biggers <ebiggers@kernel.org> wrote:
>
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
>
> >
> > I'm also curious how syzbot found the list of people to send this to, as it
> > seems very random.  This should obviously have gone to the kvm mailing list, but
> > it wasn't sent there; I had to manually add it.
>
> My guess is that it went down the call stack, and picked those that
> deal with the functions that are listed at the deepest part of the
> stack. kvm doesn't appear for 12 functions up from the crash. It
> probably stopped its search before that.

Hi,

What we do now is the following. We take all filenames in the report
starting from top to bottom, and then apply a blacklist to filter out
utility functions and bug detection facilities:
https://github.com/google/syzkaller/blob/master/pkg/report/linux.go#L59-L89
The first file name that is not blacklisted is used with get_maintainers.pl.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
