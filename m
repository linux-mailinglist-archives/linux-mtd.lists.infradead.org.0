Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 889FA156408
	for <lists+linux-mtd@lfdr.de>; Sat,  8 Feb 2020 12:36:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mgCBV5aEXO45w+Yr2t9ovSnWexLnHHCCusFoO4QXoHM=; b=Yzo8H8gh+UN39K
	12PE2prPzxbiUFQgx9JP4pweCSWhfkPrCcAtF1IrUE5BuTcYMNFaag8aToGeJKi3jlOzRbSH7eksE
	akO4CvAXKMoww87gkE5GT/ciAk6H0bDUXvzEBmkRcWnRj5dxXc220/ycwVqDS9XbFdNXv2mYsUQfL
	6BxBPwrCLB7CEdn5yD+kmeCkZI+flwEvFQlho9VtsrjxoqbeW8LFrdNjJHCup6znQCExRooyPgeqD
	9NRtniiYoFU01uZ62EzCzLnxTd/XZkTay3ubvB5uvDvjUrIO9SbNWrvjhsqBSi4Te/Kyfv793uCeS
	ZAjNubQ9AxRvxSa5ii1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0OPU-0006ve-BZ; Sat, 08 Feb 2020 11:36:28 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0OPL-0006v9-Hf
 for linux-mtd@lists.infradead.org; Sat, 08 Feb 2020 11:36:21 +0000
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1j0OPE-000160-FI; Sat, 08 Feb 2020 11:36:12 +0000
From: Colin King <colin.king@canonical.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 linux-mtd@lists.infradead.org
Subject: [PATCH] mtd: fix spelling mistake "BlockMultiplerBits" ->
 "BlockMultiplierBits"
Date: Sat,  8 Feb 2020 11:36:12 +0000
Message-Id: <20200208113612.817988-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_033619_722845_91720507 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Colin Ian King <colin.king@canonical.com>

There is a spelling mistake (missing i) in pr_info messages. Fix these.

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/mtd/inftlmount.c          | 2 +-
 drivers/mtd/nand/raw/diskonchip.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/inftlmount.c b/drivers/mtd/inftlmount.c
index 54b176d4319f..af16d3485de0 100644
--- a/drivers/mtd/inftlmount.c
+++ b/drivers/mtd/inftlmount.c
@@ -130,7 +130,7 @@ static int find_boot_record(struct INFTLrecord *inftl)
 			 "    NoOfBootImageBlocks   = %d\n"
 			 "    NoOfBinaryPartitions  = %d\n"
 			 "    NoOfBDTLPartitions    = %d\n"
-			 "    BlockMultiplerBits    = %d\n"
+			 "    BlockMultiplierBits   = %d\n"
 			 "    FormatFlgs            = %d\n"
 			 "    OsakVersion           = 0x%x\n"
 			 "    PercentUsed           = %d\n",
diff --git a/drivers/mtd/nand/raw/diskonchip.c b/drivers/mtd/nand/raw/diskonchip.c
index c0e1a8ebe820..2833c49c1378 100644
--- a/drivers/mtd/nand/raw/diskonchip.c
+++ b/drivers/mtd/nand/raw/diskonchip.c
@@ -1169,7 +1169,7 @@ static inline int __init inftl_partscan(struct mtd_info *mtd, struct mtd_partiti
 		"    NoOfBootImageBlocks   = %d\n"
 		"    NoOfBinaryPartitions  = %d\n"
 		"    NoOfBDTLPartitions    = %d\n"
-		"    BlockMultiplerBits    = %d\n"
+		"    BlockMultiplierBits   = %d\n"
 		"    FormatFlgs            = %d\n"
 		"    OsakVersion           = %d.%d.%d.%d\n"
 		"    PercentUsed           = %d\n",
-- 
2.25.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
