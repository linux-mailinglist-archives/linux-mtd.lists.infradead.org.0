Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B25BD8DA4
	for <lists+linux-mtd@lfdr.de>; Wed, 16 Oct 2019 12:16:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=99zcR6DrxTSlMjr+57FbRVjbX5/0zQvPEDxYb1PFX4M=; b=YdThakOfeyYMPj
	5vGFkAckHAbiekJ9PxiQR17oEpeHEYXr/WzOqZGFV35Zi3DyOiF3BNd/waByFUgYz4jnoSmewQ7Wp
	8Idusv57kgFHRuqEbHg4ilD4+XW7EhD3+G/LfbbtqGHJrTQ7dgtt+3UQY+b6l3LN/wZMaDhOFUJ6e
	bSazB21LaF9H4Qsttl/hrUlZ94LHVrCzVr+6tX+h7SSLH9mpCWG3y/jY3rwV6i9W4lUc78Sm/1m0Y
	T/p04gxIr7znY7JF8v2pBvj9wjuOrDe94wYOP3JBhIJRbOfqX0QIYM/dcCFue/PcbCcHDstKfS6yZ
	gCGcFXtThTkeIikiZswg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKgLb-0003qE-Uz; Wed, 16 Oct 2019 10:16:03 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKgKk-0002hh-8v
 for linux-mtd@lists.infradead.org; Wed, 16 Oct 2019 10:15:11 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iKgKf-00037D-3d; Wed, 16 Oct 2019 11:15:05 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iKgKe-0008GZ-Dh; Wed, 16 Oct 2019 11:15:04 +0100
From: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
To: linux-kernel@lists.codethink.co.uk
Subject: [PATCH] ubifs: fix type of sup->hash_algo
Date: Wed, 16 Oct 2019 11:15:03 +0100
Message-Id: <20191016101503.31731-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_031510_477821_20729283 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
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
Cc: Artem Bityutskiy <dedekind1@gmail.com>, Richard Weinberger <richard@nod.at>,
 Adrian Hunter <adrian.hunter@intel.com>, linux-kernel@vger.kernel.org,
 "Ben Dooks \(Codethink\)" <ben.dooks@codethink.co.uk>,
 linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The sup->hash_algo is a __le16, and whilst 0xffff is
the same in __le16 and u16, it would be better to use
cpu_to_le16() anyway (which should deal with constants)
and silence the following sparse warning:

fs/ubifs/sb.c:187:32: warning: incorrect type in assignment (different base types)
fs/ubifs/sb.c:187:32:    expected restricted __le16 [usertype] hash_algo
fs/ubifs/sb.c:187:32:    got int

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
Cc: Richard Weinberger <richard@nod.at>
Cc: Artem Bityutskiy <dedekind1@gmail.com>
Cc: Adrian Hunter <adrian.hunter@intel.com>
Cc: linux-mtd@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 fs/ubifs/sb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ubifs/sb.c b/fs/ubifs/sb.c
index a551eb3e9b89..2b7c04bf8983 100644
--- a/fs/ubifs/sb.c
+++ b/fs/ubifs/sb.c
@@ -184,7 +184,7 @@ static int create_default_filesystem(struct ubifs_info *c)
 		if (err)
 			goto out;
 	} else {
-		sup->hash_algo = 0xffff;
+		sup->hash_algo = cpu_to_le16(0xffff);
 	}
 
 	sup->ch.node_type  = UBIFS_SB_NODE;
-- 
2.23.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
