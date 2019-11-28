Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C895A10D00A
	for <lists+linux-mtd@lfdr.de>; Fri, 29 Nov 2019 01:00:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=byNdYAlhHcehelstW9YFcKe7vJVNfkOJfz8oCe3eeoY=; b=S4GoKhzfCwObUF
	XBCy+YiZlP3vYbZcQ1beKClgfG8g5DRS+d/LPrYcjhDIcXq1G4NVw5E8wYcozXuyTiWG7ZuCwKVYT
	lBTBSUIMxt6kE6aQ7rTpMCUtAGwy6KgbJmOV4dgRM/SQ8LE1qf7AmiqoFDFjlIhB3Qms3OOLodN65
	v7pfUUVAKXtPqiRtQ7xu3PlwJFXj4/c46G0XjZlT5M5j12qrzEkehGk0DCvH5s9VkxJikjxvLMklE
	j4nBOt4IH+iey0H7PAR2di5nQWGFdChwDqJ2lchyiBu+BMeGCHzwGrFUptXQQc7NyVOlmv/huj9E6
	kM+fNVEZ2K0m5JQrG1dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaThV-00076V-NU; Thu, 28 Nov 2019 23:59:57 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaThN-00076B-A1
 for linux-mtd@lists.infradead.org; Thu, 28 Nov 2019 23:59:50 +0000
Received: by mail-qt1-x841.google.com with SMTP id z22so9833752qto.7
 for <linux-mtd@lists.infradead.org>; Thu, 28 Nov 2019 15:59:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hQwL4adBgXITc3PkYkwHn1sVmJQxAI5c44/ZAMQ909k=;
 b=SzvDGgqDbhXRLCNx2yAvCitr/MeJnBLqu0VZWKbEKIIM6e/tradTFioO2kNcvyLsDS
 N1GjfKiKATmESqzIG7MV0zf+Ge17s3lu8rITgQzXVgMQDvZ7/L80K/eSJeNsAmbp7g6C
 Rp5dEWUc98LpgXd+0f6qCXoBTHbIhl2BKWCIo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hQwL4adBgXITc3PkYkwHn1sVmJQxAI5c44/ZAMQ909k=;
 b=LHQbiNufkPJjWnGS9TVjOAI1J5/KjSDNNV6H8/6T7wLJBawlggLRPwmPYKH/9uYb98
 NSJt1gs4w5/hBGCfVkmA+3J8ocCZnFNHnSj7xKFwOOJtweSfsD+LzwwgOHnIiOU/00ih
 CAas1gxjpoislgZ0Odc4ARVuLy9JMsnselguHK//1Z0U8mCBTbH6bauJgldGb34t4BjE
 lk0uKdVHbkiaJFtXD7HzQo5W4vQOsd5cwX7OBmaNM0g+XOaWtWNcr9ztBjMeOBK14+15
 oNTdSuCXoeY2Mn4bnhq+u5yvD6W5X/bweiFXrxdAYG4PYFAbkYXmnZ6qNWd/oZtmDxAu
 uqCA==
X-Gm-Message-State: APjAAAWpxvVfOugJ+gTpgfA0ykgIRO5LZa8WbygHiNrTlZHib8Ba21em
 nF07gi77janB6HfEb/fo283HLAiUSdnyqvNytsA=
X-Google-Smtp-Source: APXvYqzXePwMmNs55hixBu4+IfrZ4gkETYPVrExEHD2UWD0h2FOIELUjUmdNdLDG9KQCXq8x8FQZdxVZh7rv0QNJ1Yc=
X-Received: by 2002:ac8:7292:: with SMTP id v18mr1945327qto.169.1574985585624; 
 Thu, 28 Nov 2019 15:59:45 -0800 (PST)
MIME-Version: 1.0
References: <156950767876.30879.17024491763471689960.stgit@warthog.procyon.org.uk>
 <f34aaf61-955a-7867-ef93-f22d3d8732c3@cogentembedded.com>
 <CA+EcR22=7F7X-9qYXb94dAp6w0_3FoKJPMRhFht+VWgKonoing@mail.gmail.com>
 <2758feea-8d6e-c690-5cac-d42213f2024b@huawei.com>
In-Reply-To: <2758feea-8d6e-c690-5cac-d42213f2024b@huawei.com>
From: Joel Stanley <joel@jms.id.au>
Date: Thu, 28 Nov 2019 23:59:33 +0000
Message-ID: <CACPK8Xcv=sm94jA7+g144TMUpy=t=0juKochCvkb2AcG9e-u-g@mail.gmail.com>
Subject: Re: [PATCH] jffs2: Fix mounting under new mount API
To: Hou Tao <houtao1@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_155949_348959_9B60758A 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Han Xu <xhnjupt@gmail.com>,
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 Andrew Jeffery <andrew@aj.id.au>, Richard Weinberger <richard@nod.at>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>, linux-mtd <linux-mtd@lists.infradead.org>,
 viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, 14 Nov 2019 at 12:05, Hou Tao <houtao1@huawei.com> wrote:
>
> Hi,
>
> On 2019/11/14 4:38, Han Xu wrote:
> > Tested the JFFS2 on 5.4 kernel as the instruction said, still got some
> > errors, any ideas?
> >
>
> >
> > With the patch,
> >
> > root@imx8mmevk:~# cat /proc/mtd
> > dev:    size   erasesize  name
> > mtd0: 00400000 00020000 "mtdram test device"
> > mtd1: 04000000 00020000 "5d120000.spi"
> > root@imx8mmevk:~# mtd_debug info /dev/mtd0
> > mtd.type = MTD_RAM
> > mtd.flags = MTD_CAP_RAM
> > mtd.size = 4194304 (4M)
> > mtd.erasesize = 131072 (128K)
> > mtd.writesize = 1
> > mtd.oobsize = 0
> > regions = 0
> >
> > root@imx8mmevk:~# flash_erase /dev/mtd0 0 0
> > Erasing 128 Kibyte @ 3e0000 -- 100 % complete
> > root@imx8mmevk:~# mount -t jffs2 /dev/mtdblock0 test_dir/
> > root@imx8mmevk:~# mount
> > /dev/mtdblock0 on /home/root/test_dir type jffs2 (rw,relatime)
> >
> > BUT, it's not writable.
>
> You should revert the following commit to make it work:
>
> commit f2538f999345405f7d2e1194c0c8efa4e11f7b3a
> Author: Jia-Ju Bai <baijiaju1990@gmail.com>
> Date:   Wed Jul 24 10:46:58 2019 +0800
>
>     jffs2: Fix possible null-pointer dereferences in jffs2_add_frag_to_fragtree()
>
> The revert needs to get into v5.4. Maybe Richard has forget about it ?

I hit this today. The error I saw was:

[    4.975868] jffs2: error: (77) jffs2_build_inode_fragtree: Add node
to tree failed -22
[    4.983923] jffs2: error: (77) jffs2_do_read_inode_internal: Failed
to build final fragtree for inode #5377: error -22
[    4.994709] jffs2: Returned error for crccheck of ino #5377. Expect
badness...

Reverting the f2538f999345 commit fixed things.

Is the revert queued for stable?

Cheers,

Joel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
