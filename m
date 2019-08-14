Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C17CA8D2E5
	for <lists+linux-mtd@lfdr.de>; Wed, 14 Aug 2019 14:20:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QgF8rMSh0iLH+J0Exguf8g9Pzcw4vP0sPby+Fb29duE=; b=qvVB+xu3sEoZtx
	oS+MKMY36X58cBE5iepCdq6wm2OEfgSpEXgxW2tq4ZzFed9OgHP8Kw/8PwdukB6DYrkoUvR+VZSwA
	KgSFSG/flb1XU0M6SOB+7QV4RdBINcFMutlycwuvxLwrEQzxenzOHyVLDpTGX8kuBQckJdV0eWSk6
	xTNtHHFgGzJNtJ47C7zVD5Ae+umNmgn8Cbqx6ZD/FHXZ2NMbnuMjPEmm4x/2V+aylbVFFBFXR7RLk
	GNBtSx18jpkrp+3PUroBTN++eszeCVdk8E7b4lPR4/tZlyPGVMxw0Sk7wh6MSvzEtlj9AWCmU5k8t
	vuE4ki8twWrqzSH/0a8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxsGF-0001oW-Bv; Wed, 14 Aug 2019 12:20:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxsF6-0000qe-UY
 for linux-mtd@lists.infradead.org; Wed, 14 Aug 2019 12:19:06 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1hxsEp-0005kA-Ea; Wed, 14 Aug 2019 14:18:47 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1hxsEm-000816-LW; Wed, 14 Aug 2019 14:18:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-fsdevel@vger.kernel.org
Subject: [PATCH 01/11] quota: Make inode optional
Date: Wed, 14 Aug 2019 14:18:24 +0200
Message-Id: <20190814121834.13983-2-s.hauer@pengutronix.de>
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
X-CRM114-CacheID: sfid-20190814_051905_040162_CF27E05D 
X-CRM114-Status: GOOD (  10.94  )
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

To add support for filesystems which do not store quota informations in
an inode make the inode optional.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/quota/dquot.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/fs/quota/dquot.c b/fs/quota/dquot.c
index be9c471cdbc8..3cb836351c22 100644
--- a/fs/quota/dquot.c
+++ b/fs/quota/dquot.c
@@ -2800,8 +2800,10 @@ int dquot_get_state(struct super_block *sb, struct qc_state *state)
 			tstate->flags |= QCI_LIMITS_ENFORCED;
 		tstate->spc_timelimit = mi->dqi_bgrace;
 		tstate->ino_timelimit = mi->dqi_igrace;
-		tstate->ino = dqopt->files[type]->i_ino;
-		tstate->blocks = dqopt->files[type]->i_blocks;
+		if (dqopt->files[type]) {
+			tstate->ino = dqopt->files[type]->i_ino;
+			tstate->blocks = dqopt->files[type]->i_blocks;
+		}
 		tstate->nextents = 1;	/* We don't know... */
 		spin_unlock(&dq_data_lock);
 	}
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
