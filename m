Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DEF177002
	for <lists+linux-mtd@lfdr.de>; Tue,  3 Mar 2020 08:23:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jwUwtU/a/pENzY5cpOO/O5LDG/XPcHOKRVcsvXWmWJY=; b=FN+wda9LtQXCWOsPpCKGRBgttY
	Xfx9/EhMTFX4Wh0lkmg8eaGHSjMtrEw5cpbpazB3/1SwxwVMjCXtDNbSsnRbkol+6rVyu1wK8kdEp
	Pqx0SG1rU66GYtnMJk/HbVPOOLjcQf2Js+q0X7oUtCh9e3kplsGX1duSjQ69/TwBvBZmzCAwtfzXV
	cyUDRG0hPyy+pvUm3ddkVJ6FB6auNBEkORDyKGZ2KndyXBMoyQ6/+IkMs/n+DKgFQMw3gCPY0iPOv
	tvkRdwI/KJXUq+9epTfsf9A2F4a04ZTPzy/98pklInoVFrj+bosskVrkXBbJARExZO/iJW873v3rM
	noLSA6cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j91tW-0000A8-U1; Tue, 03 Mar 2020 07:23:10 +0000
Received: from twhmllg3.macronix.com ([122.147.135.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j91sw-0008As-Sa
 for linux-mtd@lists.infradead.org; Tue, 03 Mar 2020 07:22:38 +0000
Received: from localhost.localdomain ([172.17.195.96])
 by TWHMLLG3.macronix.com with ESMTP id 0237LRLC023026;
 Tue, 3 Mar 2020 15:21:31 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
From: Mason Yang <masonccyang@mxic.com.tw>
To: miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com
Subject: [PATCH v3 3/4] mtd: rawnand: Add support manufacturer specific
 suspend/resume operation
Date: Tue,  3 Mar 2020 15:21:23 +0800
Message-Id: <1583220084-10890-4-git-send-email-masonccyang@mxic.com.tw>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1583220084-10890-1-git-send-email-masonccyang@mxic.com.tw>
References: <1583220084-10890-1-git-send-email-masonccyang@mxic.com.tw>
X-MAIL: TWHMLLG3.macronix.com 0237LRLC023026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_232235_355716_C99BF28E 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [122.147.135.201 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: bbrezillon@kernel.org, juliensu@mxic.com.tw, s.hauer@pengutronix.de,
 yuehaibing@huawei.com, linux-kernel@vger.kernel.org, stefan@agner.ch,
 rfontana@redhat.com, linux-mtd@lists.infradead.org,
 frieder.schrempf@kontron.de, tglx@linutronix.de,
 Mason Yang <masonccyang@mxic.com.tw>, allison@lohutok.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Patch nand_suspend() & nand_resume() for manufacturer specific
suspend/resume operation.

Signed-off-by: Mason Yang <masonccyang@mxic.com.tw>
Reported-by: kbuild test robot <lkp@intel.com>
Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nand_base.c | 11 ++++++++---
 include/linux/mtd/rawnand.h      |  4 ++++
 2 files changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 769be81..b44e460 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -4327,7 +4327,9 @@ static int nand_suspend(struct mtd_info *mtd)
 	struct nand_chip *chip = mtd_to_nand(mtd);
 
 	mutex_lock(&chip->lock);
-	chip->suspended = 1;
+	if (chip->_suspend)
+		if (!chip->_suspend(chip))
+			chip->suspended = 1;
 	mutex_unlock(&chip->lock);
 
 	return 0;
@@ -4342,11 +4344,14 @@ static void nand_resume(struct mtd_info *mtd)
 	struct nand_chip *chip = mtd_to_nand(mtd);
 
 	mutex_lock(&chip->lock);
-	if (chip->suspended)
+	if (chip->suspended) {
+		if (chip->_resume)
+			chip->_resume(chip);
 		chip->suspended = 0;
-	else
+	} else {
 		pr_err("%s called for a chip which is not in suspended state\n",
 			__func__);
+	}
 	mutex_unlock(&chip->lock);
 }
 
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index bc2fa3c..c0055ed 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -1064,6 +1064,8 @@ struct nand_legacy {
  * @lock:		lock protecting the suspended field. Also used to
  *			serialize accesses to the NAND device.
  * @suspended:		set to 1 when the device is suspended, 0 when it's not.
+ * @_suspend:		[REPLACEABLE] specific NAND device suspend operation
+ * @_resume:		[REPLACEABLE] specific NAND device resume operation
  * @bbt:		[INTERN] bad block table pointer
  * @bbt_td:		[REPLACEABLE] bad block table descriptor for flash
  *			lookup.
@@ -1119,6 +1121,8 @@ struct nand_chip {
 
 	struct mutex lock;
 	unsigned int suspended : 1;
+	int (*_suspend)(struct nand_chip *chip);
+	void (*_resume)(struct nand_chip *chip);
 
 	uint8_t *oob_poi;
 	struct nand_controller *controller;
-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
