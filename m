Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B09C1BA68F
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 16:37:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IyUVIodq8ZpbZ7mh2JTChRHW+KBzRuAF9ooF+sU8UUQ=; b=l+rHptm5SiY+Z1
	+o5m0aM7ksiiAjNjwc6Oh1uk9Zkqqsrkaxgb/2pLg1iMFDpvtQrrrAfDc5qlDqCyIjtOkR71cZWPY
	JDSkYREjBJ4PqRAHMnIZkxeiWE8/aqZ+GpvWECKRSM+DWiuYtzEjIwA0UxI67/kBkXOrqe9XxNdMo
	j9EbOqPydl+hzyvYLTT5IAzM3QQwEAX5RQK/JWNTKXDSx1hf0OMJEbVXHRBXiWxOR/o902Fsi1pXu
	W2QlkLJV/PlyDcuGVk+8gpANh5QAajNElnvtTft6xjsz6H/ylw1e2XswocLTTk84Bw4lB09wGPw4G
	liLphG8MohkP4ylUtmTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT4t5-0004lV-0w; Mon, 27 Apr 2020 14:37:35 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT4sm-0004jf-RP
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 14:37:20 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 43A212A074A;
 Mon, 27 Apr 2020 15:37:15 +0100 (BST)
Date: Mon, 27 Apr 2020 16:37:11 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v2] mtd: Fix mtd not the same name not registered if nvmem
Message-ID: <20200427163711.07614619@collabora.com>
In-Reply-To: <20200427162222.1c2b2c85@xps13>
References: <20200401100240.445447-1-ribalda@kernel.org>
 <20200402065953.9974-1-ribalda@kernel.org>
 <CAPybu_34nSmbu4JMK-uA3SWrj_eMUftZ8S6zf1Vpg3Etkz3SPw@mail.gmail.com>
 <20200427162222.1c2b2c85@xps13>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_073717_024587_2F706140 
X-CRM114-Status: GOOD (  22.17  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Ricardo Ribalda Delgado <ribalda@kernel.org>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, LKML <linux-kernel@vger.kernel.org>,
 linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, 27 Apr 2020 16:22:22 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Hi Ricardo,
> 
> Ricardo Ribalda Delgado <ribalda@kernel.org> wrote on Tue, 14 Apr 2020
> 15:47:23 +0200:
> 
> > Ping?
> > 
> > On Thu, Apr 2, 2020 at 8:59 AM Ricardo Ribalda Delgado
> > <ribalda@kernel.org> wrote:  
> > >
> > > When the nvmem framework is enabled, a nvmem device is created per mtd
> > > device/partition.
> > >
> > > It is not uncommon that a device can have multiple mtd devices with
> > > partitions that have the same name. Eg, when there DT overlay is allowed
> > > and the same device with mtd is attached twice.
> > >
> > > Under that circumstances, the mtd fails to register due to a name
> > > duplication on the nvmem framework.
> > >
> > > With this patch we add a _1, _2, _X to the subsequent names if there is
> > > a collition, and throw a warning, instead of not starting the mtd
> > > device.
> > >
> > > [    8.948991] sysfs: cannot create duplicate filename '/bus/nvmem/devices/Production Data'
> > > [    8.948992] CPU: 7 PID: 246 Comm: systemd-udevd Not tainted 5.5.0-qtec-standard #13
> > > [    8.948993] Hardware name: AMD Dibbler/Dibbler, BIOS 05.22.04.0019 10/26/2019
> > > [    8.948994] Call Trace:
> > > [    8.948996]  dump_stack+0x50/0x70
> > > [    8.948998]  sysfs_warn_dup.cold+0x17/0x2d
> > > [    8.949000]  sysfs_do_create_link_sd.isra.0+0xc2/0xd0
> > > [    8.949002]  bus_add_device+0x74/0x140
> > > [    8.949004]  device_add+0x34b/0x850
> > > [    8.949006]  nvmem_register.part.0+0x1bf/0x640
> > > ...
> > > [    8.948926] mtd mtd8: Failed to register NVMEM device
> > >
> > > Signed-off-by: Ricardo Ribalda Delgado <ribalda@kernel.org>  
> 
> Thanks for proposing this change. Indeed we are aware of the problem
> and the best solution that we could come up with was to create an
> additional "unique_name" field to the mtd_info structure. This new
> field would have the form:
> 
>     [<parent-unique-name><separator>]<mtd-name>
> 
> The separator might be '~' (but I am completely open on that), and that
> would give for instance:
> 
>     my-controller~my-device~my-part~mysub-part

I'd prefer something slightly more standard for the separator, like '/',
which is what we usually use when we want to represent a path in a tree.
I do agree on the general approach though.

Note that controller name is normally hidden in the root MTD device
name, and it's the driver responsibility to come up with a name that
does not collide with other MTD drivers. We can of course try to pick a
different name if we see another device with the same name, but we
should definitely warn about that so drivers are patched accordingly.


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
