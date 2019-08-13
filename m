Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 935218C498
	for <lists+linux-mtd@lfdr.de>; Wed, 14 Aug 2019 01:03:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/x22BhdiybLEC/meL8sfhZs6EkkcLiss6hBAONsuWNc=; b=jcjpTxjD3oFueo
	qqbMxqPZkE7KBvJxRolA7o8TBoDJTdEC/m1uOwyTcUbCLcnCDJpV5GrEk9Fn2qbo4eR3YWAqS+/9q
	MzlxUhcOkhKKDT65ulMGsmBV8AYwKeWYaeSSw2+FDpVn/DOgINiW9Szn7P3p75G7SpsXwe9gwsUT1
	7JZh5EDuhrfqoUH6gMbkhDaZW410wHtGhQhUVb292x/6JQid0ymBa4NoK+DFiPA3p4+FazXshUsib
	gUU/7hCup6tyCVClWpFvxKxY2C4E35UnNexaNpwlLOVuk6R+seQreSjBa0iqekviKz7L8jNAfEgjH
	t0INgJPATPlQENYTo7IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxfp6-0005lw-Nf; Tue, 13 Aug 2019 23:03:24 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxfp1-0005lY-2C
 for linux-mtd@bombadil.infradead.org; Tue, 13 Aug 2019 23:03:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Date:Message-ID:Subject:From:Cc:To:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yX10QZC5JyqYP3DGZkKpoS4jwO5AlhcSiOXMZNp6/Bc=; b=0GBwz/E5mcU1mtaPloBgoq6N0v
 SVplbZMnG1hEHt72Cm7M9FrbNkOauzIRRiVUEgJPUReBZZD7aEH8rUbN3ZkxfMI0OnArjWG89qOU4
 0dvgGh46UWO4sBHJIgYe4Ibbc3mWzpFuBreMr44QZPCPPC0d5/3Q+gKKXxkO9vIjSE8abgv7wOKHn
 B2wtA16JktTw0HadJuWb4AdBgW84m0dPHch7qTRDDbQGT5CCnhrgcmv1b6w69+rcF5iVq9xWU4Qxs
 ED3VcNnUlQDBQ8Rn+5SnJwQrzDP1p75UZfbzTbNeSXnoKaPF6H2XFuasW8CA+pbiBgQPTrczPYYwA
 Hu2pkhQw==;
Received: from static-50-53-52-16.bvtn.or.frontiernet.net ([50.53.52.16]
 helo=[192.168.1.17])
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hxfox-0007Az-AP; Tue, 13 Aug 2019 23:03:15 +0000
To: linux-mtd@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>
From: Randy Dunlap <rdunlap@infradead.org>
Subject: [PATCH] mtd: hyperbus: fix dependency and build error
Message-ID: <9b1b4ab1-681f-0ef9-7b5c-b6545f7464d2@infradead.org>
Date: Tue, 13 Aug 2019 16:03:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
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
Cc: Geert Uytterhoeven <geert@linux-m68k.org>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Randy Dunlap <rdunlap@infradead.org>

lib/devres.c, which implements devm_ioremap_resource(), is only built
when CONFIG_HAS_IOMEM is set/enabled, so MTD_HYPERBUS should depend
on HAS_IOMEM.  Fixes a build error and a Kconfig warning (as seen on
UML builds):

WARNING: unmet direct dependencies detected for MTD_COMPLEX_MAPPINGS
  Depends on [n]: MTD [=m] && HAS_IOMEM [=n]
  Selected by [m]:
  - MTD_HYPERBUS [=m] && MTD [=m]

ERROR: "devm_ioremap_resource" [drivers/mtd/hyperbus/hyperbus-core.ko] undefined!

Fixes: dcc7d3446a0f ("mtd: Add support for HyperBus memory devices")
Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Vignesh Raghavendra <vigneshr@ti.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: linux-mtd@lists.infradead.org
---
 drivers/mtd/hyperbus/Kconfig |    1 +
 1 file changed, 1 insertion(+)

--- lnx-53-rc4.orig/drivers/mtd/hyperbus/Kconfig
+++ lnx-53-rc4/drivers/mtd/hyperbus/Kconfig
@@ -1,5 +1,6 @@
 menuconfig MTD_HYPERBUS
 	tristate "HyperBus support"
+	depends on HAS_IOMEM
 	select MTD_CFI
 	select MTD_MAP_BANK_WIDTH_2
 	select MTD_CFI_AMDSTD



______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
