Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 209A95D67F
	for <lists+linux-mtd@lfdr.de>; Tue,  2 Jul 2019 21:00:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3dhJ+i+YKo50OGr0ot3U36JMv0V+6li9a2EK1ufzjak=; b=Cq3M1hh8MFsXSL
	BXeEIbVh4GZGwkZStnLvfGyriIyIKHeKZupelZo76kqg2xLzU/wRthwq+3ENwZi9YT377i2BTRSyO
	oIPgq/2FRt+zrT9HhWm1Hcb5M5rDrKqMYyhzOKAZTMu14LbGh0IFdVaPI58JBeqip+lC4wLnBpj2S
	GaHY5sEhQJzZi0J0ySVy4J1SusfoFihtKA1NZ9rDI3NGbedzltSqFnIGZk7GEqSA0hdKFZCm7ZV+W
	j/FbJeUl2JlQ0abT80R0UrXXikN1vcRsK2EaVqGjK5oVt/IPHwcb/9NbJ1tS1o2ABcg3EWG1DF3o2
	uQkQegn/kgkJxAShL0rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiO1N-0003Dt-B4; Tue, 02 Jul 2019 19:00:53 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiO0W-0001eQ-SU
 for linux-mtd@lists.infradead.org; Tue, 02 Jul 2019 19:00:02 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id B91032639CD;
 Tue,  2 Jul 2019 19:59:57 +0100 (BST)
Date: Tue, 2 Jul 2019 20:59:55 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: nvmem creates multiple devices with the same name
Message-ID: <20190702205955.65f1bce2@collabora.com>
In-Reply-To: <20190521085641.i6g5aijwa5zbolah@pengutronix.de>
References: <20190521085641.i6g5aijwa5zbolah@pengutronix.de>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_120001_055260_4A38F8F6 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 21 May 2019 10:56:41 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> Hi all,
> 
> nvmem derives the device name directly from the partition name of the
> underlying device. IMO this is wrong since it's not possible to create
> two partitions with the same name on different devices. In my case I
> have a NAND device and a SPI NOR device which both happen to have a
> partition named 'barebox'. This ends up with:

Hm, I think I had suggested to use dev_name(&mtd->dev) instead of
mtd->name at some point. But then you have the problem that MTD
numbering is dependent on the probe order which is not guaranteed to
stay the same, so exposing nvmem devices using "mtdXX" name is not super
user-friendly.

> 
> [   11.222196] sysfs: cannot create duplicate filename '/bus/nvmem/devices/barebox'
> [   11.230136] CPU: 0 PID: 1 Comm: swapper/0 Tainted: G        W         5.2.0-rc1-00014-g793f23e5adb0-dirty #676
> [   11.240414] Hardware name: Freescale i.MX6 Quad/DualLite (Device Tree)
> [   11.247174] [<c0112928>] (unwind_backtrace) from [<c010d140>] (show_stack+0x10/0x14)
> [   11.255171] [<c010d140>] (show_stack) from [<c0bd65cc>] (dump_stack+0xd8/0x110)
> [   11.262722] [<c0bd65cc>] (dump_stack) from [<c031682c>] (sysfs_warn_dup+0x50/0x64)
> [   11.270527] [<c031682c>] (sysfs_warn_dup) from [<c0316b34>] (sysfs_do_create_link_sd+0xcc/0xd8)
> [   11.279487] [<c0316b34>] (sysfs_do_create_link_sd) from [<c06792a0>] (bus_add_device+0x80/0xfc)
> [   11.288441] [<c06792a0>] (bus_add_device) from [<c0676208>] (device_add+0x328/0x608)
> [   11.296423] [<c0676208>] (device_add) from [<c08bde64>] (nvmem_register.part.1+0x168/0x5e4)
> [   11.305030] [<c08bde64>] (nvmem_register.part.1) from [<c06edb34>] (add_mtd_device+0x1e8/0x404)
> [   11.313988] [<c06edb34>] (add_mtd_device) from [<c06f1004>] (add_mtd_partitions+0x74/0x15c)
> [   11.322589] [<c06f1004>] (add_mtd_partitions) from [<c06f0da8>] (parse_mtd_partitions+0x180/0x368)
> [   11.331807] [<c06f0da8>] (parse_mtd_partitions) from [<c06ede68>] (mtd_device_parse_register+0x40/0x164)
> [   11.341560] [<c06ede68>] (mtd_device_parse_register) from [<c070654c>] (m25p_probe+0x118/0x200)
> [   11.350513] [<c070654c>] (m25p_probe) from [<c073863c>] (spi_drv_probe+0x80/0xa4)
> 
> While it's easy to rename the partitions I see no reason why it should
> be illegal to have two different (mtd) devices with eqeally named
> partitions. Are there any suggestions how to register the nvmem devices
> with a different name?

Note that some MTD users are expecting MTD names to be unique to work
properly, the example I have in mind is UBI that can be passed the
partition to attach to using the ubi:<part-name> format, but I'm pretty
sure we have other places making the same assumption. I guess not
enforcing mtd->name uniqueness was a bad idea, but I'm not sure we can
change that now.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
