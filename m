Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 159EB272DA
	for <lists+linux-mtd@lfdr.de>; Thu, 23 May 2019 01:20:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qdUgXmb2aiJ5dAmqQPwjV9vaLqEjAG03pQ7WCdV8m2o=; b=Z+a1UqJmwr0gY3
	34UngS1gxc0VF143s8UY0O+5wYlHyFB5jU7ltihanp5ltt1t8hRUWV20JKMMTLJiclcpr8Io5+e5T
	pQ8DSSfTA9WCWp/FsY23thT3vRhkZjz55bBzuTdisMcUvomCeSQfEhi2B3uwKNw3FiqIof9Ez35y/
	mGynMhwjZAWqVQ8Wqj3ArA4nLqs5L6R1zbW3RP+BSVIyl+KqG9MPaXPIv/MYsZb21YKhotj4lznsx
	gKlVSeecztpJPSLZXzHNmAKPbHNV1/0OEVnWo8+mxFAmrETaCFu5kR+oyjPtn1tymXqh20n92Y1CE
	j0Qfpo8/teyeidIA3Yaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTaWn-0003hF-RQ; Wed, 22 May 2019 23:20:09 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTaWa-0003fG-T6
 for linux-mtd@lists.infradead.org; Wed, 22 May 2019 23:19:59 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 24A96886BF;
 Thu, 23 May 2019 11:19:51 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1558567191;
 bh=dtuLuNHN5PQXizzBuOQOvLynHSt8GJ82TtRR1qtMiT4=;
 h=From:To:Cc:Subject:Date;
 b=SpQUo2kHmD9iW+Med7PaWO1niPYiux1juSNW5zZ+hmTaQegqk6dRKUW2/a2F6F/6R
 UCFcsFHG90w2vrERyM4A1Tl5dzIAjNyZmluapsp2A+ijCXkUd2orNVBWzBUxobvqOD
 PYqhcCWnJFmkbdcZ5X7Zd3Tl9e2A/RGvnw0XRl25gt/c7VB62DbiGklci2typO0AKJ
 ZEAP9j5n13dDd8ZbcqwRZt8S+rElczc89r7+wGeWhX7H5SMR7r6ZpRr6pZEQZonGMt
 CStO64/uSfoKsbcAJt5hutzpPxyFEAL0x50gFK2pNg3GmvoHcWixo+qXUPLjTnGi8t
 H2TGANI+Z2+0w==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5ce5d9140001>; Thu, 23 May 2019 11:19:48 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
 by smtp (Postfix) with ESMTP id 0EA9413EE11;
 Thu, 23 May 2019 11:19:51 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 601B51E1D5B; Thu, 23 May 2019 11:19:50 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: dwmw2@infradead.org, computersforpeace@gmail.com, marek.vasut@gmail.com,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com
Subject: [PATCH v2 1/2] mtd: concat: refactor concat_lock/concat_unlock
Date: Thu, 23 May 2019 11:19:47 +1200
Message-Id: <20190522231948.17559-1-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_161957_325173_C0C33697 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
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

concat_lock() and concat_unlock() only differed in terms of the mtd_xx
operation they called. Refactor them to use a common helper function and
pass a boolean flag to indicate whether lock or unlock is needed.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---
Changes in v2:
- Use a boolean flag instead of passing a function pointer.

 drivers/mtd/mtdconcat.c | 44 +++++++++++------------------------------
 1 file changed, 12 insertions(+), 32 deletions(-)

diff --git a/drivers/mtd/mtdconcat.c b/drivers/mtd/mtdconcat.c
index cbc5925e6440..6cb60dea509a 100644
--- a/drivers/mtd/mtdconcat.c
+++ b/drivers/mtd/mtdconcat.c
@@ -451,7 +451,8 @@ static int concat_erase(struct mtd_info *mtd, struct erase_info *instr)
 	return err;
 }
 
-static int concat_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
+static int concat_xxlock(struct mtd_info *mtd, loff_t ofs, uint64_t len,
+			 bool is_lock)
 {
 	struct mtd_concat *concat = CONCAT(mtd);
 	int i, err = -EINVAL;
@@ -470,7 +471,10 @@ static int concat_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 		else
 			size = len;
 
-		err = mtd_lock(subdev, ofs, size);
+		if (is_lock)
+			err = mtd_lock(subdev, ofs, size);
+		else
+			err = mtd_unlock(subdev, ofs, size);
 		if (err)
 			break;
 
@@ -485,38 +489,14 @@ static int concat_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 	return err;
 }
 
-static int concat_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
+static int concat_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 {
-	struct mtd_concat *concat = CONCAT(mtd);
-	int i, err = 0;
-
-	for (i = 0; i < concat->num_subdev; i++) {
-		struct mtd_info *subdev = concat->subdev[i];
-		uint64_t size;
-
-		if (ofs >= subdev->size) {
-			size = 0;
-			ofs -= subdev->size;
-			continue;
-		}
-		if (ofs + len > subdev->size)
-			size = subdev->size - ofs;
-		else
-			size = len;
-
-		err = mtd_unlock(subdev, ofs, size);
-		if (err)
-			break;
-
-		len -= size;
-		if (len == 0)
-			break;
-
-		err = -EINVAL;
-		ofs = 0;
-	}
+	return concat_xxlock(mtd, ofs, len, true);
+}
 
-	return err;
+static int concat_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
+{
+	return concat_xxlock(mtd, ofs, len, false);
 }
 
 static void concat_sync(struct mtd_info *mtd)
-- 
2.21.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
