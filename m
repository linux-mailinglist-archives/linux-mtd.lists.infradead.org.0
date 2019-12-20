Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA92C1279FF
	for <lists+linux-mtd@lfdr.de>; Fri, 20 Dec 2019 12:33:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ymkfW0/kT4DLfjgzY62/eUV4aeAkjPEDeT7JpJPNNPI=; b=gJke6ZQ4yRyrSsHEI0p8/PXHHI
	SfI+4gia0SjNrsFQbhEMOahcFWB8ipabyT+kF/IXjwfyE644D2wKn8+HrUsa3dXE3aY45tVhrMaDm
	bzCKhStN7gr6e2I7P/LRWbvn/hOzDpcxqEPkIibEHJUHVTCfoeoyVzl35iL40rHr/MB7Uak3lxW8U
	x1L1ygcUmtsbRgCXx+1C7prRQacZDq56Ju0nbXqMo5RAGOC/FLAqTQfJyBI79MTiB+EfqrGnoJu/r
	y+VXwRYR07wAeeF1UlCg4Z3bNgltHetVaNlDGvD9CNTy5ebwMU5NkhcX9XPofmj74eqWHBHhb04uL
	jieKKSBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiGXA-0000n4-CZ; Fri, 20 Dec 2019 11:33:28 +0000
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiGWH-000082-DC
 for linux-mtd@lists.infradead.org; Fri, 20 Dec 2019 11:32:36 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-08.nifty.com with ESMTP id xBKBW2X0010984;
 Fri, 20 Dec 2019 20:32:09 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com xBKBW2X0010984
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1576841529;
 bh=FaE1Dy6PORZJLZr2fPoSaDCJ2/3nG0fTHRJYBhAtI20=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=vJ9ZNkKccYowU4XwyMyk1kgJ+wlThcFKimxyMyfxqOs5uY6exrWz0FoCHerjFbbLW
 39Dm0r+sC3zkRT2yGDJLLnwnN6qRFzDNm7NvgGGEv5LoDj3q5WbqsXQdUhQZs2piXI
 HViI9D9pFxujyGfh70LFHdYUvPpKeG9UmtuaxdN9I/HUQsjbKXUYOwds2ig+ef/Ltk
 tW9CzTGmWIJj+8GIsTswmHvcYoSdiYjNiV93VpDUvqljwt7guxUynFuDFzzIdyoeYh
 HONq89bXg5O55aqmuGvaVOVJpuW9z4t35HgkeZBSLOXvcH3r8Z617ZuQUgEr12tZiN
 olIjV5eQNagRw==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-mtd@lists.infradead.org
Subject: [PATCH v3 5/5] mtd: rawnand: denali: remove hard-coded
 DENALI_DEFAULT_OOB_SKIP_BYTES
Date: Fri, 20 Dec 2019 20:31:55 +0900
Message-Id: <20191220113155.28177-6-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191220113155.28177-1-yamada.masahiro@socionext.com>
References: <20191220113155.28177-1-yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_033233_779159_2C86F378 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Marek Vasut <marex@denx.de>, Vignesh Raghavendra <vigneshr@ti.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Ley Foon Tan <ley.foon.tan@intel.com>, Dinh Nguyen <dinguyen@kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

As commit 0d55c668b218 (mtd: rawnand: denali: set SPARE_AREA_SKIP_BYTES
register to 8 if unset") says, there were three solutions discussed:

  [1] Add a DT property to specify the skipped bytes in OOB
  [2] Associate the preferred value with compatible
  [3] Hard-code the default value in the driver

At that time, [3] was chosen because I did not have enough information
about the other platforms than UniPhier.

That commit also says "The preferred value may vary by platform. If so,
please trade up to a different solution." My intention was to replace
[3] with [2], not keep both [2] and [3].

Now that we have switched to [2] for SOCFPGA's SPARE_AREA_SKIP_BYTES=2,
[3] should be removed. This should be OK because denali_pci.c just
gets back to the original behavior.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

Changes in v3:
  - New patch

Changes in v2: None

 drivers/mtd/nand/raw/denali.c | 21 +++++++--------------
 1 file changed, 7 insertions(+), 14 deletions(-)

diff --git a/drivers/mtd/nand/raw/denali.c b/drivers/mtd/nand/raw/denali.c
index b6c463d02167..fafd0a0aa8e2 100644
--- a/drivers/mtd/nand/raw/denali.c
+++ b/drivers/mtd/nand/raw/denali.c
@@ -21,7 +21,6 @@
 #include "denali.h"
 
 #define DENALI_NAND_NAME    "denali-nand"
-#define DENALI_DEFAULT_OOB_SKIP_BYTES	8
 
 /* for Indexed Addressing */
 #define DENALI_INDEXED_CTRL	0x00
@@ -1302,22 +1301,16 @@ int denali_init(struct denali_controller *denali)
 
 	/*
 	 * Set how many bytes should be skipped before writing data in OOB.
-	 * If a non-zero value has already been configured, update it in HW.
-	 * If a non-zero value has already been set (by firmware or something),
-	 * just use it. Otherwise, set the driver's default.
+	 * If a platform requests a non-zero value, set it to the register.
+	 * Otherwise, read the value out, expecting it has already been set up
+	 * by firmware.
 	 */
-	if (denali->oob_skip_bytes) {
+	if (denali->oob_skip_bytes)
 		iowrite32(denali->oob_skip_bytes,
 			  denali->reg + SPARE_AREA_SKIP_BYTES);
-	} else {
-		denali->oob_skip_bytes =
-			ioread32(denali->reg + SPARE_AREA_SKIP_BYTES);
-		if (!denali->oob_skip_bytes) {
-			denali->oob_skip_bytes = DENALI_DEFAULT_OOB_SKIP_BYTES;
-			iowrite32(denali->oob_skip_bytes,
-				  denali->reg + SPARE_AREA_SKIP_BYTES);
-		}
-	}
+	else
+		denali->oob_skip_bytes = ioread32(denali->reg +
+						  SPARE_AREA_SKIP_BYTES);
 
 	iowrite32(0, denali->reg + TRANSFER_SPARE_REG);
 	iowrite32(GENMASK(denali->nbanks - 1, 0), denali->reg + RB_PIN_ENABLED);
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
