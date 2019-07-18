Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F366CC19
	for <lists+linux-mtd@lfdr.de>; Thu, 18 Jul 2019 11:43:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kqZB9sxNjuES4IwzAm+ZLq5EIUZoZOCkDkfuUegC2bc=; b=FFsMsRhl4NRLwR
	YMqUJVxy97QhpJFRxmdlMD2Vg70VDtBHetDsc6AXCVGeqwdChEAuQrjS0WkeriC1oGjJ77xBSij3o
	T5Gk2/nWqnEd93NDlnJrMNoNcIVq/zCUiVw25ALw5ujZTHW0gP0OgCUfSgvgjTDhntYZStV7r8zb/
	khiOYDMHNnRwLMyHB1WOvf2qF1OrSBmIqceP/4GkP+f6sPbGV2hJJ6DnVUVwnU8H3tB/TCZ0xXcE+
	f7gw6hfC0KrB53Gws07yoxRZ7xCe1wBW/eti5EzPREGSwIfwrE4YxnKuK2es0kHE7SVm+B11k+tJe
	fdfENJv+gOtwWH04BNCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho2wk-0008Oy-Tc; Thu, 18 Jul 2019 09:43:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho2wS-0008OE-27
 for linux-mtd@lists.infradead.org; Thu, 18 Jul 2019 09:43:13 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1ho2wO-0007Wt-FE; Thu, 18 Jul 2019 11:43:08 +0200
Received: from ukl by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1ho2wO-0002EH-6w; Thu, 18 Jul 2019 11:43:08 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: linux-mtd@lists.infradead.org
Subject: [PATCH mtd-utils] mkfs.ubifs: fix description of favor_lzo
Date: Thu, 18 Jul 2019 11:42:58 +0200
Message-Id: <20190718094258.8521-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_024312_112852_5D7A2537 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

"favor_lzo" uses "lzo" unless the space savings when using "zlib" are
big. The current wording got this wrong.
---
 ubifs-utils/mkfs.ubifs/mkfs.ubifs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/ubifs-utils/mkfs.ubifs/mkfs.ubifs.c b/ubifs-utils/mkfs.ubifs/mkfs.ubifs.c
index 6d8e55dc32c0..58ebf8ce9d48 100644
--- a/ubifs-utils/mkfs.ubifs/mkfs.ubifs.c
+++ b/ubifs-utils/mkfs.ubifs/mkfs.ubifs.c
@@ -250,8 +250,8 @@ static const char *helptext =
 "really a separate compressor. It is just a method of combining \"lzo\" and \"zlib\"\n"
 "compressors. Namely, mkfs.ubifs tries to compress data with both \"lzo\" and \"zlib\"\n"
 "compressors, then it compares which compressor is better. If \"zlib\" compresses 20\n"
-"or more percent better than \"lzo\", mkfs.ubifs chooses \"lzo\", otherwise it chooses\n"
-"\"zlib\". The \"--favor-percent\" may specify arbitrary threshold instead of the\n"
+"or more percent better than \"lzo\", mkfs.ubifs chooses \"zlib\", otherwise it chooses\n"
+"\"lzo\". The \"--favor-percent\" may specify arbitrary threshold instead of the\n"
 "default 20%.\n\n"
 "The -F parameter is used to set the \"fix up free space\" flag in the superblock,\n"
 "which forces UBIFS to \"fixup\" all the free space which it is going to use. This\n"
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
