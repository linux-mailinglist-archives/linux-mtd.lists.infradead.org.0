Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C947BB31
	for <lists+linux-mtd@lfdr.de>; Wed, 31 Jul 2019 10:09:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CSZcXPc9euGQmYW/2BFUmohxk5NJiUUohGlNtYbNeyA=; b=envxZnq/kChTB6
	fK2UaVg+tn1OqQ6UrNhFy8FI2LJs6Z2c4et5cYQCtnpAvO4VbpgOC8MGo4JCsUTrxFcW0EmNk8JPB
	gKOdQkmBHtap4wVzyaiu9jN0fNm8mfi9HAJm9lvLgvzRKEg9eenHdcVp1dacW3tuyihM5i0wVwuDi
	99jnabpH76/fvkyPOz+CYFyWWmCDIiYLc+9VRZv+ntdQCvCcSHczdHpKE/dNRoULb7IHEGrwcLY1e
	wpzruWGk6TWpI9KUwOyuKiRugrzLfWusnL2JWMuWVLFxB7q10nSPJrKuAWzpehp7vEAUckjTfPzG0
	liz76Sqhiq7iERcpJkDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsjfU-0007Vt-Sm; Wed, 31 Jul 2019 08:09:05 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsjdg-0007UY-Md
 for linux-mtd@lists.infradead.org; Wed, 31 Jul 2019 08:07:24 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 93328B03F;
 Wed, 31 Jul 2019 08:07:08 +0000 (UTC)
Date: Wed, 31 Jul 2019 10:07:06 +0200
From: Jean Delvare <jdelvare@suse.de>
To: Vignesh Raghavendra <vigneshr@ti.com>, Miquel Raynal
 <miquel.raynal@bootlin.com>
Subject: [PATCH] mtd: hyperbus: Add hardware dependency to AM654 driver
Message-ID: <20190731100706.724654c0@endymion>
Organization: SUSE Linux
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-suse-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_010716_575049_05B8D94A 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The hbmc-am654 driver is for the TI AM654, which is an ARM64 SoC, so
don't propose this driver on other architectures unless
build-testing.

Signed-off-by: Jean Delvare <jdelvare@suse.de>
Cc: Vignesh Raghavendra <vigneshr@ti.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/hyperbus/Kconfig |    1 +
 1 file changed, 1 insertion(+)

--- linux-5.3-rc2.orig/drivers/mtd/hyperbus/Kconfig	2019-07-28 21:47:02.000000000 +0200
+++ linux-5.3-rc2/drivers/mtd/hyperbus/Kconfig	2019-07-31 09:31:39.155086783 +0200
@@ -14,6 +14,7 @@ if MTD_HYPERBUS
 
 config HBMC_AM654
 	tristate "HyperBus controller driver for AM65x SoC"
+	depends on ARM64 || COMPILE_TEST
 	select MULTIPLEXER
 	select MUX_MMIO
 	help


-- 
Jean Delvare
SUSE L3 Support

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
