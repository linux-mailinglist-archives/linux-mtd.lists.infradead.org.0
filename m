Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD67E75BF
	for <lists+linux-mtd@lfdr.de>; Mon, 28 Oct 2019 17:03:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mRRIsYsoj852fGbPJTSrxQV6eoIoYNCQR86+JpAvIjI=; b=ZLJDTnjn4pZ7da
	DcT70esSfsmxaOw7todUsYXiIU6kKXpbpbZtAZjZL1TUybM2tjaMbGKOOY8S5cfaFWK7H7Iq05WZk
	WvDDZ1r2PUcWv8QOsSLjqGfcTgAHTGhmFVZYNWBi8l3gZF/t8RFLbeC/R7UiCn5LgTwZZscT5WcM6
	OGh5a2AciNAhd7Sg37/I8kWr8CUljwbxbuYxGbJFshkFWpS1nNZazLGmr5+VoITpPGLpL/7wNwUPd
	OLMfmzZtX67ycOeCl5SfeWmX0oWc8nqiU3PfT1iVknDokhY6dLtklWkenc7tPtyMpSUlnsWX+iFBO
	09Q47c2C5e+RiE+/c6TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP7Tq-0003Cg-5g; Mon, 28 Oct 2019 16:02:54 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP7Tf-0003Br-Bc
 for linux-mtd@lists.infradead.org; Mon, 28 Oct 2019 16:02:45 +0000
X-Originating-IP: 81.185.174.70
Received: from localhost.localdomain (70.174.185.81.rev.sfr.net
 [81.185.174.70]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id C5BE540017;
 Mon, 28 Oct 2019 16:02:28 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH] MAINTAINERS: ubi/ubifs: Update the Git repository
Date: Mon, 28 Oct 2019 17:02:08 +0100
Message-Id: <20191028160208.1110-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_090243_533464_E565BE9C 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
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
Cc: linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

UBI/UBIFS development now happens on Richard Weinberger's kernel.org
'ubifs' repository.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 MAINTAINERS | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 0e5e0736ee55..b5ca53312c2a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -16578,7 +16578,8 @@ F:	drivers/media/pci/tw686x/
 UBI FILE SYSTEM (UBIFS)
 M:	Richard Weinberger <richard@nod.at>
 L:	linux-mtd@lists.infradead.org
-T:	git git://git.infradead.org/ubifs-2.6.git
+T:	git git://git.kernel.org/pub/scm/linux/kernel/git/rw/ubifs.git next
+T:	git git://git.kernel.org/pub/scm/linux/kernel/git/rw/ubifs.git fixes
 W:	http://www.linux-mtd.infradead.org/doc/ubifs.html
 S:	Supported
 F:	Documentation/filesystems/ubifs.txt
@@ -16696,7 +16697,8 @@ UNSORTED BLOCK IMAGES (UBI)
 M:	Richard Weinberger <richard@nod.at>
 W:	http://www.linux-mtd.infradead.org/
 L:	linux-mtd@lists.infradead.org
-T:	git git://git.infradead.org/ubifs-2.6.git
+T:	git git://git.kernel.org/pub/scm/linux/kernel/git/rw/ubifs.git next
+T:	git git://git.kernel.org/pub/scm/linux/kernel/git/rw/ubifs.git fixes
 S:	Supported
 F:	drivers/mtd/ubi/
 F:	include/linux/mtd/ubi.h
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
