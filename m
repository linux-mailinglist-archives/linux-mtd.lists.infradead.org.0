Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D41B1DB002
	for <lists+linux-mtd@lfdr.de>; Wed, 20 May 2020 12:22:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hqmzm+KVsMDy9dlqnK8LB2yvXn9ggwfU2exj6cM16jk=; b=iljQ8QKfQm+iqL
	oeREf12f+xfIaeQYI9ufIpKNrXiG54LBEhOk7nMZFWNGW669vnNaMwfnup7ejSDGbSUy+VEGVTmr9
	vr3is41lg7wQfFIO7jK03yA6Il3s9l/ooein5K6DP4XQHe5Vobn8IKb12JuZocREhWM0PWuLQU79r
	k09mvvuyCwFcD+q+jd8TEaHdkin7je166qnaLjI0JGvDGKv9oSUPIuUy8fB5Pp9fh3H3Eo3H5r23+
	WeHiBRLR+UDeapTLrXTTomlOARMC+U95zS+e8FfxLA5X7UUlNcYNTMWzmaIJWGwZDon/CuqTKp7Ki
	VBxq4xIngxslWUTQwxvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbLrc-0004xN-PO; Wed, 20 May 2020 10:22:16 +0000
Received: from smtp10.smtpout.orange.fr ([80.12.242.132]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbLrM-0004v2-AO
 for linux-mtd@lists.infradead.org; Wed, 20 May 2020 10:22:02 +0000
Received: from belgarion.home ([86.210.245.36]) by mwinf5d33 with ME
 id gyMk220040nqnCN03yMw31; Wed, 20 May 2020 12:21:56 +0200
X-ME-Helo: belgarion.home
X-ME-Auth: amFyem1pay5yb2JlcnRAb3JhbmdlLmZy
X-ME-Date: Wed, 20 May 2020 12:21:56 +0200
X-ME-IP: 86.210.245.36
From: Robert Jarzmik <robert.jarzmik@free.fr>
To: Arnd Bergmann <arnd@arndb.de>, Miquel Raynal <miquel.raynal@bootlin.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Mike Rapoport <mike@compulab.co.il>
Subject: [PATCH v2 2/3] MAINTAINERS: pxa: remove Compulab arm/pxa support
Date: Wed, 20 May 2020 12:21:24 +0200
Message-Id: <20200520102125.8934-2-robert.jarzmik@free.fr>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200520102125.8934-1-robert.jarzmik@free.fr>
References: <20200520102125.8934-1-robert.jarzmik@free.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_032200_635575_BE05715A 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.132 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.132 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robert.jarzmik[at]free.fr]
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
Cc: Robert Jarzmik <robert.jarzmik@free.fr>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

These boards support is removed from the kernel, so remove the
MAINTAINERS entry for them.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 MAINTAINERS | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 091ec22c1a23..ad58388fa822 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1684,11 +1684,6 @@ S:	Maintained
 T:	git git://git.armlinux.org.uk/~rmk/linux-arm.git clkdev
 F:	drivers/clk/clkdev.c
 
-ARM/COMPULAB CM-X270/EM-X270 and CM-X300 MACHINE SUPPORT
-M:	Mike Rapoport <mike@compulab.co.il>
-L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
-S:	Maintained
-
 ARM/CONEXANT DIGICOLOR MACHINE SUPPORT
 M:	Baruch Siach <baruch@tkos.co.il>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
-- 
2.26.2


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
