Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB9D180957
	for <lists+linux-mtd@lfdr.de>; Tue, 10 Mar 2020 21:41:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1YxaP9tWQ2jbUdJIpe1vVFDgqmI+Q7AqCUeiZ9jmABI=; b=Hbz5NRJ7D8WLGg
	aMUQzWMdG7/ZVleI/fPLK3RtKRMK3rBl0bNGwqmcP/tykL45sE4Slhdg4MdDDp6RjAeggzQ2SMOde
	1vDI6vukGOapQoGKBDGzQauyqjy/ZR+WvQDqbYGjPBTVJh5LX/tsP4jZpnreLEQEu/Hb93Fkva0fD
	+rWicW0Zd657iRqhrAxPZSiu/jHjtg3cYc+YigYgW1FNMpvsfOQFvU8Pld/EPrSAUeBrYd7meAJCI
	zfU4fuDWh1zykKxw0Wf3/BMFXZvbSq/Vawk6l2O//ptFiX9LcE6+n+1apzqTE3Gmuxzz+vBYc3eIn
	VDcHa7BA3PtsjIcNaopQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBlgs-0004ss-T1; Tue, 10 Mar 2020 20:41:26 +0000
Received: from shelob.oktetlabs.ru ([91.220.146.113])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBlgl-0004sA-89
 for linux-mtd@lists.infradead.org; Tue, 10 Mar 2020 20:41:20 +0000
Received: by shelob.oktetlabs.ru (Postfix, from userid 122)
 id 3F3847F5AD; Tue, 10 Mar 2020 23:33:28 +0300 (MSK)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on shelob.oktetlabs.ru
X-Spam-Level: 
X-Spam-Status: No, score=0.8 required=5.0 tests=ALL_TRUSTED, DKIM_ADSP_DISCARD
 autolearn=no autolearn_force=no version=3.4.2
Received: from varda.oktetlabs.ru (varda.oktetlabs.ru [192.168.37.38])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by shelob.oktetlabs.ru (Postfix) with ESMTPS id 7FA067F536;
 Tue, 10 Mar 2020 23:33:23 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 shelob.oktetlabs.ru 7FA067F536
Authentication-Results: shelob.oktetlabs.ru/7FA067F536; dkim=none;
 dkim-atps=neutral
Received: from mkshevetskiy by varda.oktetlabs.ru with local (Exim 4.92)
 (envelope-from <mkshevetskiy@varda.oktetlabs.ru>)
 id 1jBlZ5-001in5-AX; Tue, 10 Mar 2020 23:33:23 +0300
From: Mikhail Kshevetskiy <mikhail.kshevetskiy@oktetlabs.ru>
To: miquel.raynal@bootlin.com,
	richard@nod.at
Subject: [PATCH 1/2] mtd: spinand: wait for erase completion before writing
 bad block maker
Date: Tue, 10 Mar 2020 23:32:23 +0300
Message-Id: <20200310203224.410198-1-mikhail.kshevetskiy@oktetlabs.ru>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_134119_469567_9E63EF7C 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.8 DKIM_ADSP_DISCARD      No valid author signature, domain signs all
 mail and suggests discarding the rest
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 Mikhail Kshevetskiy <mikhail.kshevetskiy@oktetlabs.ru>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SPI flash will discard any write operation while it is busy with block
erasing. As result bad block marker will not be writed to a flash.
To fix it just wait for completion of erase operation.

The erasing code is almost the same as in spinand_erase(). The only
difference is: we ignore ERASE_FAILED status.

This patch also improve error handling a bit.

Signed-off-by: Mikhail Kshevetskiy <mikhail.kshevetskiy@oktetlabs.ru>
---
 drivers/mtd/nand/spi/core.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/spi/core.c b/drivers/mtd/nand/spi/core.c
index 89f6beefb01c..bb4eac400b0f 100644
--- a/drivers/mtd/nand/spi/core.c
+++ b/drivers/mtd/nand/spi/core.c
@@ -610,6 +610,7 @@ static int spinand_markbad(struct nand_device *nand, const struct nand_pos *pos)
 		.oobbuf.out = spinand->oobbuf,
 	};
 	int ret;
+	u8 status;
 
 	/* Erase block before marking it bad. */
 	ret = spinand_select_target(spinand, pos->target);
@@ -620,7 +621,14 @@ static int spinand_markbad(struct nand_device *nand, const struct nand_pos *pos)
 	if (ret)
 		return ret;
 
-	spinand_erase_op(spinand, pos);
+	ret = spinand_erase_op(spinand, pos);
+	if (ret)
+		return ret;
+
+	/* ignore status as erase may fail for bad blocks */
+	spinand_wait(spinand, &status);
+	if (ret)
+		return ret;
 
 	memset(spinand->oobbuf, 0, 2);
 	return spinand_write_page(spinand, &req);
-- 
2.25.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
