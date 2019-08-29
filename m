Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6410EA1A31
	for <lists+linux-mtd@lfdr.de>; Thu, 29 Aug 2019 14:37:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EFLRsZdLOzknwTcI1MxdDv8Pgcuz+Nqo7O7ahjU3fNg=; b=tA99bvDP1rYeEI
	I5Nfg2Osi6+LC4L34+h867dByD3rMQnf8vX2l6H2sXGcTk190LI9gA2huX2qEeLPpq9/YgCWY1+DO
	4ZmEDLVNiO/KCqLq819gha+XSqRfn85drav3q9WO6y5qP23DsXzU/Zmn89STecAwRogess1j2L55U
	65e0s9PvXXPyYqFF28iQtzJFaLiJSNqN19HRBauXNMLoBwUppc2o9775huR/XnB9SCWUARZQSei+N
	quR4nYO8Sx6ba5iZN3XPYXicCAn27xY6eOv9etqNULJY12L0DmtW9HqyfXSXbDE/rtY1cfSKKynyT
	dMprlGyPTqz4Mm8omq0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Jfk-0007eU-Uq; Thu, 29 Aug 2019 12:37:04 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3JfZ-0007dh-A4
 for linux-mtd@lists.infradead.org; Thu, 29 Aug 2019 12:36:55 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 6BA9C240002;
 Thu, 29 Aug 2019 12:36:40 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Randy Dunlap <rdunlap@infradead.org>, linux-mtd@lists.infradead.org,
 LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] mtd: hyperbus: fix dependency and build error
Date: Thu, 29 Aug 2019 14:36:35 +0200
Message-Id: <20190829123635.27645-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <9b1b4ab1-681f-0ef9-7b5c-b6545f7464d2@infradead.org>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: dc9cfd2692225a2164f4f20b7deaf38ca8645de3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_053653_500333_E9B70E46 
X-CRM114-Status: UNSURE (   7.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
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
Cc: Geert Uytterhoeven <geert@linux-m68k.org>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 2019-08-13 at 23:03:13 UTC, Randy Dunlap wrote:
> From: Randy Dunlap <rdunlap@infradead.org>
> 
> lib/devres.c, which implements devm_ioremap_resource(), is only built
> when CONFIG_HAS_IOMEM is set/enabled, so MTD_HYPERBUS should depend
> on HAS_IOMEM.  Fixes a build error and a Kconfig warning (as seen on
> UML builds):
> 
> WARNING: unmet direct dependencies detected for MTD_COMPLEX_MAPPINGS
>   Depends on [n]: MTD [=m] && HAS_IOMEM [=n]
>   Selected by [m]:
>   - MTD_HYPERBUS [=m] && MTD [=m]
> 
> ERROR: "devm_ioremap_resource" [drivers/mtd/hyperbus/hyperbus-core.ko] undefined!
> 
> Fixes: dcc7d3446a0f ("mtd: Add support for HyperBus memory devices")
> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> Cc: Vignesh Raghavendra <vigneshr@ti.com>
> Cc: Miquel Raynal <miquel.raynal@bootlin.com>
> Cc: Geert Uytterhoeven <geert@linux-m68k.org>
> Cc: linux-mtd@lists.infradead.org
> Acked-by: Vignesh Raghavendra <vigneshr@ti.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git mtd/fixes, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
