Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C90D5B4785
	for <lists+linux-mtd@lfdr.de>; Tue, 17 Sep 2019 08:31:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jD799Pf2UugUn0HEj7v3F4mLTj+mGvARI1psKntyii8=; b=JC+bZVyFOXRnww
	JyuIMf7eD5nknCv8vNUOCKPly/XjdmiN4NF/Wet6vEIp3iQ1XzjMPBecsCNiJgGrTYvsRJg+w/6GR
	dbLlYjN5Z1wcDDLD0YKfO2wPlamOHBVspZTypRjN8x+PjrqI8P3i1TYbdX6mKFrzfMqsBVbcld3xl
	VUf0KnQMXjVCINRuBm7ThI2HDDQKqKQPJvdJ5IRI694LiE9gdBsGPZM5vLMI86RvDA7lWKG2GiDPJ
	2VTeMK0E7jQubqBmMIIOFWVc6mGp9LnjrwIgNXB1l5UQMm3qavXX15ztzzcmxijQEFVYcdl+8UF2o
	e0cKaJDC1PueNH+dOZOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA71a-0002pA-6F; Tue, 17 Sep 2019 06:31:42 +0000
Received: from mx2a.mailbox.org ([80.241.60.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA71G-0002oh-LY
 for linux-mtd@lists.infradead.org; Tue, 17 Sep 2019 06:31:24 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 63FA5A0184;
 Tue, 17 Sep 2019 08:31:12 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de
 [80.241.56.116]) (amavisd-new, port 10030)
 with ESMTP id 6drgLF4q_fAv; Tue, 17 Sep 2019 08:31:09 +0200 (CEST)
From: Stefan Roese <sr@denx.de>
To: linux-mtd@lists.infradead.org
Subject: [PATCH] ubi: Print skip_check in ubi_dump_vol_info()
Date: Tue, 17 Sep 2019 08:31:08 +0200
Message-Id: <20190917063108.28165-1-sr@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_233122_858230_2EE9BB4C 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.219 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Boris Brezillon <boris.brezillon@collabora.com>, Heiko Schocher <hs@denx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

It might be interesting, if "skip_check" is set or not, so lets print
this flag in ubi_dump_vol_info() as well.

Signed-off-by: Stefan Roese <sr@denx.de>
Cc: Richard Weinberger <richard@nod.at>
Cc: Boris Brezillon <boris.brezillon@collabora.com>
Cc: Heiko Schocher <hs@denx.de>
---
 drivers/mtd/ubi/debug.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/ubi/debug.c b/drivers/mtd/ubi/debug.c
index a1dff92ceedf..72808a5c4b62 100644
--- a/drivers/mtd/ubi/debug.c
+++ b/drivers/mtd/ubi/debug.c
@@ -107,6 +107,7 @@ void ubi_dump_vol_info(const struct ubi_volume *vol)
 	pr_err("\tlast_eb_bytes   %d\n", vol->last_eb_bytes);
 	pr_err("\tcorrupted       %d\n", vol->corrupted);
 	pr_err("\tupd_marker      %d\n", vol->upd_marker);
+	pr_err("\tskip_check      %d\n", vol->skip_check);
 
 	if (vol->name_len <= UBI_VOL_NAME_MAX &&
 	    strnlen(vol->name, vol->name_len + 1) == vol->name_len) {
-- 
2.23.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
