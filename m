Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB85C272DB
	for <lists+linux-mtd@lfdr.de>; Thu, 23 May 2019 01:20:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eIUxKei+KHk0mXabSyDIxZrTTXqpHA0aDiD3lbE38v4=; b=lKjc/+/7ikB3pb
	tks/I6/67JtNemfoFY0jyvKQ3Dc7EmEYAuZJjAA/V8qsEUlCQ1m69BAH0i7VWKcuE8Ky7jDwJA9HK
	5wpI/PVu+Pl/bRjai89U/9UudiFugAZqVwuT/e/iKrP1i4Ayx9ZDe5EIudNn90/YSziBVPZVgA/bY
	4x9CNGg6EP+xOnfT4N8kb9k4szcB3Si5fpzVN5F/uUaMOxX3LnWh283P8hxn/sLzmKPVsbjPHPx3Q
	0EGY0kmQMBNdr9i3SICvvHTjphQ7AVCWTh2p1hqFY9WnjGeBEo3CDELbJ78emwX64hb+LJIiOkj39
	cmjmEWCCf9jXwdY2DFgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTaWx-0004Vg-5V; Wed, 22 May 2019 23:20:19 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTaWa-0003fF-T7
 for linux-mtd@lists.infradead.org; Wed, 22 May 2019 23:19:59 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 2F5A5891A9;
 Thu, 23 May 2019 11:19:51 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1558567191;
 bh=imFlaRrpR3dMR0zUD0PJ2j4weZ85YEMqw1I1qdD35d4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=D8CL520uGaBH6rVHmSQCVRm0yT+9oya/gIxGmR8R2ZhwIOcKa/LgjGRLwAAIhnAT/
 XXx826QdgJpjx6/fjExYyqyIe3ZQJA090OvKZcGfT2Yr3WPByWlZ7n0XYM9i3ebl50
 pVXDrTugcGrg5epMUgrm6AtBuPk+Vvys6SAz8FT2H8lzMrvwf+mlX6bgdF7aNmdzvB
 s6BscHuzZV/PqGGcr9P2QTQRJlSplwdaBWLQGhE/jIr7ojnlbsdxmIZ0cycWt4ipJu
 XIKmDL6xztLen1WKzpUZNXikCmJGTYjrCqR1XncmsqcBtSc2783eFPX1RTRvc/1Iz7
 6hqjavFXeo2Vw==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5ce5d9140002>; Thu, 23 May 2019 11:19:48 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
 by smtp (Postfix) with ESMTP id 245BD13EEB6;
 Thu, 23 May 2019 11:19:51 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 792F51E1D5B; Thu, 23 May 2019 11:19:50 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: dwmw2@infradead.org, computersforpeace@gmail.com, marek.vasut@gmail.com,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com
Subject: [PATCH v2 2/2] mtd: concat: implement _is_locked mtd operation
Date: Thu, 23 May 2019 11:19:48 +1200
Message-Id: <20190522231948.17559-2-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190522231948.17559-1-chris.packham@alliedtelesis.co.nz>
References: <20190522231948.17559-1-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_161957_323150_BBD41574 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Add an implementation of the _is_locked operation for concatenated mtd
devices. This doesn't handle getting the lock status of a range that
spans chips, which is consistent with cfi_ppb_is_locked and
cfi_intelext_is_locked which only look at the first block in the range.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---
Changes in v2:
- Don't re-use the xxlock helper.
- Explicitly disallow ranges that span chips.

 drivers/mtd/mtdconcat.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/mtd/mtdconcat.c b/drivers/mtd/mtdconcat.c
index 6cb60dea509a..eef0612c2e94 100644
--- a/drivers/mtd/mtdconcat.c
+++ b/drivers/mtd/mtdconcat.c
@@ -499,6 +499,28 @@ static int concat_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 	return concat_xxlock(mtd, ofs, len, false);
 }
 
+static int concat_is_locked(struct mtd_info *mtd, loff_t ofs, uint64_t len)
+{
+	struct mtd_concat *concat = CONCAT(mtd);
+	int i, err = -EINVAL;
+
+	for (i = 0; i < concat->num_subdev; i++) {
+		struct mtd_info *subdev = concat->subdev[i];
+
+		if (ofs >= subdev->size) {
+			ofs -= subdev->size;
+			continue;
+		}
+
+		if (ofs + len > subdev->size)
+			break;
+
+		return mtd_is_locked(subdev, ofs, len);
+	}
+
+	return err;
+}
+
 static void concat_sync(struct mtd_info *mtd)
 {
 	struct mtd_concat *concat = CONCAT(mtd);
@@ -698,6 +720,7 @@ struct mtd_info *mtd_concat_create(struct mtd_info *subdev[],	/* subdevices to c
 	concat->mtd._sync = concat_sync;
 	concat->mtd._lock = concat_lock;
 	concat->mtd._unlock = concat_unlock;
+	concat->mtd._is_locked = concat_is_locked;
 	concat->mtd._suspend = concat_suspend;
 	concat->mtd._resume = concat_resume;
 
-- 
2.21.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
