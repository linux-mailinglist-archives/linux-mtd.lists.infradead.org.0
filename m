Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB02E1703
	for <lists+linux-mtd@lfdr.de>; Wed, 23 Oct 2019 11:58:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YNZSj3D3xZIrmFObEPm/nb0NKcsa7AUquKk8xkcLmUo=; b=ui00ldAnPQukuI
	P4uMhpOiPX+mLMnTNcPmiZm6HBtRriShEkivSwiKorKlm3MqqJJPrRl9KG7oplbFhZpxGWaEAsHvJ
	RUIaz7RGsGgLHCE8OpCylVxAiW6XOVJKOj7CI1NZOv3yueRYZQUzm3d4jGH/xa3ov5aGQqmNH+jvh
	rqHh6wh7PNCOwWfABEXBGUZ3MGpECFv9c0nQ0lPfykZi4ujD1J2WVBHASagMbQiu1BA/ARmkk5/gD
	YxBESCWVX+FVlIoZDP4mzS5tK7RbKT6ZYt7dAip5wMe4f2JGF9QPtUw0NLU0nnaVFUvD/9rHKzx0T
	L5ktuZSCS+aao7dI4Uig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNDPT-000469-7H; Wed, 23 Oct 2019 09:58:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNDPL-00045X-Bb
 for linux-mtd@lists.infradead.org; Wed, 23 Oct 2019 09:58:25 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1iNDPJ-00007a-Jh; Wed, 23 Oct 2019 11:58:21 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1iNDPI-0008Aj-Pm; Wed, 23 Oct 2019 11:58:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-mtd@lists.infradead.org
Subject: [PATCH] ubi: fastmap: fix inverted logic in seen selfcheck
Date: Wed, 23 Oct 2019 11:58:12 +0200
Message-Id: <20191023095812.27470-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_025823_394221_523879DF 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Richard Weinberger <richard@nod.at>, Sascha Hauer <s.hauer@pengutronix.de>,
 kernel@pengutronix.de, Artem Bityutskiy <dedekind1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

set_seen() sets the bit corresponding to the PEB number in the bitmap,
so when self_check_seen() wants to find PEBs that haven't been seen we
have to print the PEBs that have their bit cleared, not the ones which
have it set.

Fixes: 5d71afb00840 ("ubi: Use bitmaps in Fastmap self-check code")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/fastmap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index 30621c67721a..b74888b5c2d6 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -64,7 +64,7 @@ static int self_check_seen(struct ubi_device *ubi, unsigned long *seen)
 		return 0;
 
 	for (pnum = 0; pnum < ubi->peb_count; pnum++) {
-		if (test_bit(pnum, seen) && ubi->lookuptbl[pnum]) {
+		if (!test_bit(pnum, seen) && ubi->lookuptbl[pnum]) {
 			ubi_err(ubi, "self-check failed for PEB %d, fastmap didn't see it", pnum);
 			ret = -EINVAL;
 		}
-- 
2.23.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
