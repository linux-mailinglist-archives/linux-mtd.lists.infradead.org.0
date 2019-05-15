Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 959291FB5A
	for <lists+linux-mtd@lfdr.de>; Wed, 15 May 2019 22:04:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=oYfDplBR/upYj0++tXishORuMTZCLQDokSfUooRwtdo=; b=SeM
	fr78bfg1se3aJxArs9di9g3eF7RqOmrOB2UKfq6vyuV4oI21dYc3+R8vzUn3WBGnyMESI4D4tSDpW
	CfNPb6/lQSRhTCXt/KfLGuscc6B1ciPWMrE+dNplR4RVHHwjhc/DvPXVhIOqwj7GTdy7x9EkHBS9A
	53+PTWCjXBVMP0efYunofuaY8QIEcLlV9B2PuxpQMhG4iYKEEKbjt/QPW1GBSuwVyz9PUaiMx65TE
	m/B+SqYboWachjx0r/ZzqSgu0yG0QzDwh3IpgVHY5DdvUPrsJbUIjMc/dg3AmT5/YL68cHr2hA6wY
	r9K73bZFF0bRMb+ZGgrHGSTcjAy4bCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR08l-0007KZ-Ed; Wed, 15 May 2019 20:04:39 +0000
Received: from lilium.sigma-star.at ([109.75.188.150])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR08d-0007KB-L6
 for linux-mtd@lists.infradead.org; Wed, 15 May 2019 20:04:33 +0000
Received: from localhost (localhost [127.0.0.1])
 by lilium.sigma-star.at (Postfix) with ESMTP id 4CEC81812B800;
 Wed, 15 May 2019 22:04:30 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: linux-mtd@lists.infradead.org
Subject: [PATCH] MAINTAINERS: Update UBI/UBIFS git tree location
Date: Wed, 15 May 2019 22:04:23 +0200
Message-Id: <20190515200423.17809-1-richard@nod.at>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_130431_836027_D6D4DD7F 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Linus asked to use kernel.org.

Signed-off-by: Richard Weinberger <richard@nod.at>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 5c38f21aee78..ba428cd613b8 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15879,7 +15879,7 @@ M:	Richard Weinberger <richard@nod.at>
 M:	Artem Bityutskiy <dedekind1@gmail.com>
 M:	Adrian Hunter <adrian.hunter@intel.com>
 L:	linux-mtd@lists.infradead.org
-T:	git git://git.infradead.org/ubifs-2.6.git
+T:	git://git.kernel.org/pub/scm/linux/kernel/git/rw/ubifs.git
 W:	http://www.linux-mtd.infradead.org/doc/ubifs.html
 S:	Supported
 F:	Documentation/filesystems/ubifs.txt
-- 
2.16.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
