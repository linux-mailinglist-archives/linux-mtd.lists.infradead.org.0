Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A3F8D2EE
	for <lists+linux-mtd@lfdr.de>; Wed, 14 Aug 2019 14:21:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oqOUB2QeQPW+ILWukmCeqIescwElxsq96vqigcM1dzk=; b=mGvXBT1dvVaJEt
	ERNtxOwXJ+X6W506dZBzLGO8HzJ6EIi/UnL1xkJ4JZnwuG7bm9TfHsnFUzZi2CCM7NGTDMtBgzHe1
	i2At0mvieIAfz6F7K+4muCpHvEEjx5MiC4Ae91d7FDvZO7ncw6USvG/4YOxi33POiyNfGEedhn6DL
	li39u+nplQ5MbDC9eBCsNvCpNIwjQ34WknVs7zlN+4TIgnsXEiWIEDmxeSJGnSUjeMTcbZMiM/H2e
	Tor1VBxqA0pIv+z/7xwghaBUbT37APmk6R1Vbczhqmgj0j4V9dOFERndgzAIg3gwRpVH5VB5rxPOB
	6ZWoJk3IwMa05dlE1bWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxsHa-0004Nz-CE; Wed, 14 Aug 2019 12:21:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxsFV-0001II-0m
 for linux-mtd@lists.infradead.org; Wed, 14 Aug 2019 12:19:30 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1hxsEp-0005kB-EW; Wed, 14 Aug 2019 14:18:47 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1hxsEm-00081Q-MC; Wed, 14 Aug 2019 14:18:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-fsdevel@vger.kernel.org
Subject: [PATCH 02/11] quota: Only module_put the format when existing
Date: Wed, 14 Aug 2019 14:18:25 +0200
Message-Id: <20190814121834.13983-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190814121834.13983-1-s.hauer@pengutronix.de>
References: <20190814121834.13983-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_051929_062164_DA47A5EB 
X-CRM114-Status: GOOD (  11.10  )
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
 linux-mtd@lists.infradead.org, kernel@pengutronix.de, Jan Kara <jack@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

For filesystems which do not have a quota_format_type such as upcoming
UBIFS quota fmt may be NULL. Only put the format when it's non NULL.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/quota/dquot.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/fs/quota/dquot.c b/fs/quota/dquot.c
index 3cb836351c22..b043468e53f2 100644
--- a/fs/quota/dquot.c
+++ b/fs/quota/dquot.c
@@ -218,6 +218,9 @@ static struct quota_format_type *find_quota_format(int id)
 
 static void put_quota_format(struct quota_format_type *fmt)
 {
+	if (!fmt)
+		return;
+
 	module_put(fmt->qf_owner);
 }
 
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
