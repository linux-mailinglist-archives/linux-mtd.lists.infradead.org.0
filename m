Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C090DF69C8
	for <lists+linux-mtd@lfdr.de>; Sun, 10 Nov 2019 16:35:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w9c5/yZIW6gelmo1tiV3gU7GghI8fLnkj5tXec1uSGg=; b=uU8eThViiraiVB
	shXpyo6g6Zxj+0jABSxLezkGcsynYNezcdiIzkHMSE/az6nwrLRJq+Pt0A0u4dpjUZd3uj+Blg+iK
	v61OUCPqkAUo2RcJS8Q618w2b7f0DJdG1EGpnV/3zaDMYfkWGLzvswhbY1AR1hB9q8akIg44CRHTj
	rbUafElOk/L2OiGG4FR4gpnrLkK91ZERqmH8eIClXeu3zkhiNILX/kGEHWMEt572DHU9raELhtDNO
	tD4VycUpd4N5mEnJF9/WlPU5jT/DwMcTnbOaDCdjfQgZUWy3l3QfOZRcjj3Yi5CfBNremsNk0NDxJ
	1zYblFM43KuHoA/P2Mnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTpFf-0001UD-Rz; Sun, 10 Nov 2019 15:35:43 +0000
Received: from lilium.sigma-star.at ([109.75.188.150])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTpCI-0005c0-DB
 for linux-mtd@lists.infradead.org; Sun, 10 Nov 2019 15:32:17 +0000
Received: from localhost (localhost [127.0.0.1])
 by lilium.sigma-star.at (Postfix) with ESMTP id 6CC54181099FE;
 Sun, 10 Nov 2019 16:32:12 +0100 (CET)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id s6x3_3QDE3MS; Sun, 10 Nov 2019 16:32:11 +0100 (CET)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id FzWQzVR8gSQo; Sun, 10 Nov 2019 16:32:10 +0100 (CET)
From: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
To: linux-mtd@lists.infradead.org
Subject: [PATCH 11/15] ubiformat: don't leak file descriptors
Date: Sun, 10 Nov 2019 16:30:55 +0100
Message-Id: <20191110153059.28878-12-david.oberhollenzer@sigma-star.at>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191110153059.28878-1-david.oberhollenzer@sigma-star.at>
References: <20191110153059.28878-1-david.oberhollenzer@sigma-star.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_073214_675018_D6D35B42 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: richard@nod.at, David Oberhollenzer <david.oberhollenzer@sigma-star.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The original code had a 'goto out_close' directly after a return error
code, which is obviously not what was intended.

Signed-off-by: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
---
 ubi-utils/ubiformat.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/ubi-utils/ubiformat.c b/ubi-utils/ubiformat.c
index a90627c..64afad2 100644
--- a/ubi-utils/ubiformat.c
+++ b/ubi-utils/ubiformat.c
@@ -426,8 +426,8 @@ static int flash_image(libmtd_t libmtd, const struct mtd_dev_info *mtd,
 	}
 
 	if (st_size % mtd->eb_size) {
-		return sys_errmsg("file \"%s\" (size %lld bytes) is not multiple of ""eraseblock size (%d bytes)",
-				  args.image, (long long)st_size, mtd->eb_size);
+		sys_errmsg("file \"%s\" (size %lld bytes) is not multiple of ""eraseblock size (%d bytes)",
+			  args.image, (long long)st_size, mtd->eb_size);
 		goto out_close;
 	}
 
-- 
2.21.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
