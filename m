Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3967818093A
	for <lists+linux-mtd@lfdr.de>; Tue, 10 Mar 2020 21:34:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bYVqUOc+0LNiv6LEKCtvMDbFRJ40rD4xxldtLIklA3Q=; b=PHiDtjKrRgO3rM
	jmH1jvb6sdxAXdXfQXSe0apJBGf/6UEcbJXq7gFqRbnph+Hk/hiIFo6/+r//1URKVF/4QqcIhKSlr
	IV4CRYnLGnm67szifTyg59yS+124tLyGbl7zWfay5Ag5ZkMX6tWJMajPdycR32Y4gPZ5xyTwPcEHF
	0lgR6/MPiAd+RbQRIhWPUlmHJAES7BTGWwqEGDA8ET2mTMpklx+Kz92b0oEwodrmdE5W8dj4BCTVf
	JMIHY3K4eEfAH7mpWNK8QrWS1mVuc/SCktWplxcuUHWbW1s4HRM1BOzitOWnCnNG3IYbeh+68TLt4
	xBrBnRZHlrZ4N/Fw3yBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBlZl-0001ED-HM; Tue, 10 Mar 2020 20:34:05 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBlZg-0001E2-H9
 for linux-mtd@bombadil.infradead.org; Tue, 10 Mar 2020 20:34:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=Gb9Me0FHgo1hSCQmc9uU0ziOdZaqTlUK0/td1UGjr8w=; b=tfGdi/R6e3OKxgmc8HgKWUbUhh
 17jIc2Q2xm21BBR2yL+ehbiBSMQkO9JigiOlqw4kuuKvJ8XIuowc6khl5lmDWuKTGpe4Z457VP34Z
 UYEpg+07uHM/i1aTnwH9H2kFlb9A1CsHfrhuS0sfURaOwhRDOtO1T1Oxul01cSPUqNacin4t52EFS
 AdqjAOCot3HeEGLAZUI0qkt7jHqhX7hQO12vT1a0MtKB51Wopcf25CGloJ2jABcR6d6DGcXuelVea
 mj+1FDJiP1bAVxQG/Dn1qmFnXiENnLfQy6u7C5CPwKyl9g+Ak8TloppGHcXRmDRDlbYSATrLWvU+n
 ENFSBy6g==;
Received: from shelob.oktetlabs.ru ([91.220.146.113])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBlZc-0004SC-Hh
 for linux-mtd@lists.infradead.org; Tue, 10 Mar 2020 20:33:59 +0000
Received: by shelob.oktetlabs.ru (Postfix, from userid 122)
 id 02BD77F53F; Tue, 10 Mar 2020 23:33:34 +0300 (MSK)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on shelob.oktetlabs.ru
X-Spam-Level: 
X-Spam-Status: No, score=0.8 required=5.0 tests=ALL_TRUSTED, DKIM_ADSP_DISCARD
 autolearn=no autolearn_force=no version=3.4.2
Received: from varda.oktetlabs.ru (varda.oktetlabs.ru [192.168.37.38])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by shelob.oktetlabs.ru (Postfix) with ESMTPS id 8B5F37F594;
 Tue, 10 Mar 2020 23:33:26 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 shelob.oktetlabs.ru 8B5F37F594
Authentication-Results: shelob.oktetlabs.ru/8B5F37F594; dkim=none;
 dkim-atps=neutral
Received: from mkshevetskiy by varda.oktetlabs.ru with local (Exim 4.92)
 (envelope-from <mkshevetskiy@varda.oktetlabs.ru>)
 id 1jBlZ8-001inJ-AD; Tue, 10 Mar 2020 23:33:26 +0300
From: Mikhail Kshevetskiy <mikhail.kshevetskiy@oktetlabs.ru>
To: miquel.raynal@bootlin.com,
	richard@nod.at
Subject: [PATCH 2/2] mtd: spinand: fix bad block marker writing
Date: Tue, 10 Mar 2020 23:32:24 +0300
Message-Id: <20200310203224.410198-2-mikhail.kshevetskiy@oktetlabs.ru>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200310203224.410198-1-mikhail.kshevetskiy@oktetlabs.ru>
References: <20200310203224.410198-1-mikhail.kshevetskiy@oktetlabs.ru>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_203356_749960_0D23859A 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-0.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.8 DKIM_ADSP_DISCARD      No valid author signature, domain signs all
 mail and suggests discarding the rest
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 Mikhail Kshevetskiy <mikhail.kshevetskiy@oktetlabs.ru>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

In spinand_markbad() we use spinand->oobbuf as a bad block marker, fill
it with zeroes and issue spinand_write_page() operation:

        struct nand_page_io_req req = {
                .pos = *pos,
                .ooboffs = 0,
                .ooblen = 2,
                .oobbuf.out = spinand->oobbuf,
        };
        ...
        memset(spinand->oobbuf, 0, 2);
        return spinand_write_page(spinand, &req);

spinand_write_page() will call spinand_write_to_cache_op() at some
moment. In spinand_write_to_cache_op() we have:

        nbytes = nanddev_page_size(nand) + nanddev_per_page_oobsize(nand);
        memset(spinand->databuf, 0xff, nbytes);

This will fill spinand->databuf with 0xff, but spinand->oobbuf is the
part of spinand->databuf (see spinand_init()):

        spinand->oobbuf = spinand->databuf + nanddev_page_size(nand);

As result bad block marker will be overwrited by 0xff values, hence
bad block will NOT be marked.

A separate buffer for bad block marker used to fix this issue.

Signed-off-by: Mikhail Kshevetskiy <mikhail.kshevetskiy@oktetlabs.ru>
---
 drivers/mtd/nand/spi/core.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/spi/core.c b/drivers/mtd/nand/spi/core.c
index bb4eac400b0f..d1355773d484 100644
--- a/drivers/mtd/nand/spi/core.c
+++ b/drivers/mtd/nand/spi/core.c
@@ -603,11 +603,12 @@ static int spinand_mtd_block_isbad(struct mtd_info *mtd, loff_t offs)
 static int spinand_markbad(struct nand_device *nand, const struct nand_pos *pos)
 {
 	struct spinand_device *spinand = nand_to_spinand(nand);
+	char bad_block_marker[2] = {0, 0};
 	struct nand_page_io_req req = {
 		.pos = *pos,
 		.ooboffs = 0,
-		.ooblen = 2,
-		.oobbuf.out = spinand->oobbuf,
+		.ooblen = sizeof(bad_block_marker),
+		.oobbuf.out = bad_block_marker,
 	};
 	int ret;
 	u8 status;
@@ -630,7 +631,6 @@ static int spinand_markbad(struct nand_device *nand, const struct nand_pos *pos)
 	if (ret)
 		return ret;
 
-	memset(spinand->oobbuf, 0, 2);
 	return spinand_write_page(spinand, &req);
 }
 
-- 
2.25.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
