Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D4C15950E
	for <lists+linux-mtd@lfdr.de>; Tue, 11 Feb 2020 17:36:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=irpuA8shcNtaxQNodjS0wJ439ubf0ULQvxGTovpEbv8=; b=rxqFmWmhKUfTTS
	SMX78AypgbvyUpdlwfRYtPFSkUZzqwDDpbcfDVoYy3vQJ8zLMckr1/MznpKZlUZyNi4ph5kcWSf7d
	4lCnj+WgfT9TrNRbR/dzobqrOzifIFeQcFfaWRCL6QmhJ90YtgWs860gXmJFEJ6kmCTWEV2qTaVnf
	B+b2i8iSASEfIf7X9OrpDnTZJyuG+IzYtn/mRkWmKFwRPDFmM5YHQvmQjZcpz65WLGM0i/omcDsZ0
	cJdO3IBLIPJ2+vGxc8omWGf4XT9WCzg0FLJ27Usb3V4IVk8HaVau6eEtraJnpm1XdhkJszzFnBhsT
	KXTiSUdwcn+SraA+P4sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1YWG-0007Bj-0o; Tue, 11 Feb 2020 16:36:16 +0000
Received: from skedge04.snt-world.com ([91.208.41.69])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1YVo-0006xX-OA
 for linux-mtd@lists.infradead.org; Tue, 11 Feb 2020 16:35:50 +0000
Received: from sntmail11s.snt-is.com (unknown [10.203.32.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge04.snt-world.com (Postfix) with ESMTPS id 9272667A884;
 Tue, 11 Feb 2020 17:35:44 +0100 (CET)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail11s.snt-is.com
 (10.203.32.181) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Tue, 11 Feb
 2020 17:35:44 +0100
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1913.005; Tue, 11 Feb 2020 17:35:44 +0100
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Boris Brezillon <bbrezillon@kernel.org>, Schrempf Frieder
 <frieder.schrempf@kontron.de>, Jeff Kletsky <git-commits@allycomm.com>,
 liaoweixiong <liaoweixiong@allwinnertech.com>, Miquel Raynal
 <miquel.raynal@bootlin.com>, Peter Pan <peterpandong@micron.com>
Subject: [PATCH 2/3] mtd: spinand: Explicitly use MTD_OPS_RAW to write the bad
 block marker to OOB
Thread-Topic: [PATCH 2/3] mtd: spinand: Explicitly use MTD_OPS_RAW to write
 the bad block marker to OOB
Thread-Index: AQHV4PlOqIGXKiRg80yCZpwMCvXHKw==
Date: Tue, 11 Feb 2020 16:35:43 +0000
Message-ID: <20200211163452.25442-3-frieder.schrempf@kontron.de>
References: <20200211163452.25442-1-frieder.schrempf@kontron.de>
In-Reply-To: <20200211163452.25442-1-frieder.schrempf@kontron.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 9272667A884.AE3E8
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: bbrezillon@kernel.org, git-commits@allycomm.com,
 liaoweixiong@allwinnertech.com, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 peterpandong@micron.com, richard@nod.at
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_083548_966935_5500FE04 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.208.41.69 listed in list.dnswl.org]
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
Cc: Richard Weinberger <richard@nod.at>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Frieder Schrempf <frieder.schrempf@kontron.de>

When writing the bad block marker to the OOB area the access mode
should be set to MTD_OPS_RAW as it is done for reading the marker.
Currently this only works because req.mode is initialized to
MTD_OPS_PLACE_OOB (0) and spinand_write_to_cache_op() checks for
req.mode != MTD_OPS_AUTO_OOB.

Fix this by explicitly setting req.mode to MTD_OPS_RAW.

Fixes: 7529df465248 ("mtd: nand: Add core infrastructure to support SPI NANDs")
Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
---
 drivers/mtd/nand/spi/core.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/nand/spi/core.c b/drivers/mtd/nand/spi/core.c
index 5d267a67a5f7..925db6269861 100644
--- a/drivers/mtd/nand/spi/core.c
+++ b/drivers/mtd/nand/spi/core.c
@@ -609,6 +609,7 @@ static int spinand_markbad(struct nand_device *nand, const struct nand_pos *pos)
 		.ooboffs = 0,
 		.ooblen = 2,
 		.oobbuf.out = marker,
+		.mode = MTD_OPS_RAW,
 	};
 	int ret;
 
-- 
2.17.1

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
