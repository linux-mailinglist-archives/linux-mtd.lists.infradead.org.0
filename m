Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 346A812FAB3
	for <lists+linux-mtd@lfdr.de>; Fri,  3 Jan 2020 17:42:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=btSIOgwM7Eaw/KCqccx4kovpmWCCvV5RNhx24KbtFSQ=; b=QJK
	k0+xROXkqHbzSUavzYtKs/CkZQ0Ey6H+Ldbr+/mhsl75k3zaxAaOl/gkK5ykcXOr4mYZ0j2YfbGlU
	RTBukK1sHv6cabkLTKYDf6ud91f7v7ts9NB6K8FCKig1SE4nkjC1A9UXCO/RRPZLC21HObd9a3gHD
	F/jKvREgZdcHi8O79fQCaJ2IE/8dt/5LaX6G/ZvlAdVxUsLoKDAxIjTsSYpsh9dy9accN6yfr3zf8
	sPaL0gtre6xO5IYLNi9hSZ01PkUMpbfj3c1sRZpFz4Whw64uNGUYziMHsh4lHQX4VqO62wfIJD7WL
	HpeSnW+B6f/kKK14wS5lBoSdNu74Zaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inQ1r-0004EB-Ok; Fri, 03 Jan 2020 16:42:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inQ1Z-00046S-Ay; Fri, 03 Jan 2020 16:42:10 +0000
Received: from localhost.localdomain (unknown [194.230.155.149])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EB45B206E6;
 Fri,  3 Jan 2020 16:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578069728;
 bh=I2X9wjbrKwZTwaNS0KDtFqqXOyBgCetpHii98gM1AAM=;
 h=From:To:Cc:Subject:Date:From;
 b=aqrGsRlS2a621b+qKkT9kA3CrJ0vUkHCKsZZgkB1nM1geNG3RJGDoLiCZT8zqrbrQ
 llKtHd1JgitrcTWJgiWv7twH24pj/UAICZ8jsT8KwBakzdZYtD0siuKnZ8bK6tjBya
 FYIFRkLblGT/5giZ3DnbMlXsVXDIE9JpgjLwhbpA=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kyungmin Park <kyungmin.park@samsung.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Subject: [RFT] mtd: onenand: samsung: Fix iomem access with regular memcpy
Date: Fri,  3 Jan 2020 17:41:58 +0100
Message-Id: <20200103164158.4265-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_084209_402752_B489DE7F 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The __iomem memory should be copied with memcpy_fromio.  This fixes
Sparse warnings like:

    drivers/mtd/nand/onenand/samsung_mtd.c:678:40: warning: incorrect type in argument 2 (different address spaces)
    drivers/mtd/nand/onenand/samsung_mtd.c:678:40:    expected void const *from
    drivers/mtd/nand/onenand/samsung_mtd.c:678:40:    got void [noderef] <asn:2> *[assigned] p
    drivers/mtd/nand/onenand/samsung_mtd.c:679:19: warning: incorrect type in assignment (different address spaces)
    drivers/mtd/nand/onenand/samsung_mtd.c:679:19:    expected void [noderef] <asn:2> *[assigned] p
    drivers/mtd/nand/onenand/samsung_mtd.c:679:19:    got unsigned char *

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---

Not tested

---
 drivers/mtd/nand/onenand/samsung_mtd.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/onenand/samsung_mtd.c b/drivers/mtd/nand/onenand/samsung_mtd.c
index 4a78c0aed6dd..01899f8bdfa7 100644
--- a/drivers/mtd/nand/onenand/samsung_mtd.c
+++ b/drivers/mtd/nand/onenand/samsung_mtd.c
@@ -675,12 +675,12 @@ static int s5pc110_read_bufferram(struct mtd_info *mtd, int area,
 normal:
 	if (count != mtd->writesize) {
 		/* Copy the bufferram to memory to prevent unaligned access */
-		memcpy(this->page_buf, p, mtd->writesize);
-		p = this->page_buf + offset;
+		memcpy_fromio(this->page_buf, p, mtd->writesize);
+		memcpy(buffer, this->page_buf + offset, count);
+	} else {
+		memcpy_fromio(buffer, p, count);
 	}
 
-	memcpy(buffer, p, count);
-
 	return 0;
 }
 
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
