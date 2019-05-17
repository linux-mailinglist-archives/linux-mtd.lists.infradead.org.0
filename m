Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16CB721D56
	for <lists+linux-mtd@lfdr.de>; Fri, 17 May 2019 20:34:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JZLwBD85YEn4qcNeU1oMaJDbicpPOip+HV887K8FL4A=; b=Ec6j0ccWJx1qGNE1X6kRBtioa+
	SQVvqHd5M3BuVZlmVeM2iZKpFIbRpL/yqFcRTiTzbhQPqVfAyYUOMkZETVFV11EhhWo7d5uyIWGVC
	TGBiBZru3MUWdZ05AU5bhCND6wM5gQaPKUp4oFvEiDumhrhXe9qriEessVieTRb/8M9YLNo0gtFrl
	1iWe3EKW14r3IFhq+TKVFumvK445lZPuVQ+gXE0zOsYd/dg1lxoYRfe+auIU5TtDXxZv+bEKu1Pbr
	lFBicMg/ONCOMtk0A+6CAAaUZIiSmpp3ZZP1/yD6dWVenuOYqxtlqJQdE1dtzQHcBz4FDaa9HnSF4
	SkDD4VGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRhgP-0007V5-Nj; Fri, 17 May 2019 18:34:17 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRhgH-0007Tv-G8
 for linux-mtd@lists.infradead.org; Fri, 17 May 2019 18:34:10 +0000
Received: by mail-ed1-x541.google.com with SMTP id e24so11878760edq.6
 for <linux-mtd@lists.infradead.org>; Fri, 17 May 2019 11:34:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+gGOM25ejTAKC+1qNs9h6JfI5r6nDsWbjQN0oopbMfI=;
 b=IoRnPB9B/JvU2nVCjPBjm+QyRjCJATFpPzZTek4Czv27WRcWJsEtRjPM2+TSX4Iwzv
 XOWZ2ByePcAYpARXG09zDrAenkZJ0ZuxV9OifqMRs0WSyerZZRk69nOpqD+kEsQqHHPJ
 5RI5i9/bBE8E0QNtx7xTr/0l5lz3MV9jt/CSqaAo6NkzilmM5YpOs9bEpmVHLJ/84j2H
 n9QquJlBW/qslnNWalXd3h40wncOQADzLXe/0RdKQVFwubTL3D9n5IWt5VIxAz/iohxO
 1EdCC7btpM0vffDLRhzAo5pRwUlHIHzn1l3KZLG4ws/QsxSHDfcVxz/7C0kxlAsE+Sge
 2H5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+gGOM25ejTAKC+1qNs9h6JfI5r6nDsWbjQN0oopbMfI=;
 b=qeP+BBODKLKj7IQKAD7b4m5awuDgR2JnX8pvjcLrGoEzDU1RP6OqsVFxHEfcMkLj09
 K2W1oHMO5uFt7arGM1UlchMGnTkuuEpqYSrUOfI4RwFz0aFEwdbQNTe8+/MULl06duC8
 uJkZlzMk/C8I8RfAj2tjVTxw3Oh8h8FBnY79skXieg5RXBW2Limt7BpkVcmn14KkEjQQ
 5MoXYEFeQCijeUL2j5zr1nvHF4OEXdIxpMGBxxMJ0BXWZThvNAHQsj/Ev3Uju4VT//5p
 sFA/De9Zjr2dqiTRT5POjVrslqgU3ECNgtwP841yFbhlRsgfHUmpXYbk121uVwCiqWJJ
 9AJA==
X-Gm-Message-State: APjAAAVjh7q486lR1mRaxvd52keiP0UIKFT8THsZeS2Csa9ev08DZDJf
 /uQDIw42wWTSwl6KYM9rxl07gApg
X-Google-Smtp-Source: APXvYqwEQ8lwC+r7D0x+J0BZChabjhiB5CbgmhW9M3zWYPJLDaOuT5i8dikb7f+4TZ1Y70rxTdj/kw==
X-Received: by 2002:a17:906:6c15:: with SMTP id
 j21mr34177085ejr.33.1558118047713; 
 Fri, 17 May 2019 11:34:07 -0700 (PDT)
Received: from mail.broadcom.com ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id q19sm1687127eja.59.2019.05.17.11.34.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 11:34:07 -0700 (PDT)
From: Kamal Dasu <kdasu.kdev@gmail.com>
To: linux-mtd@lists.infradead.org
Subject: [PATCH 2/2] mtd: nand: raw: brcmnand: fallback to detected
 ecc-strength, ecc-step-size
Date: Fri, 17 May 2019 14:29:55 -0400
Message-Id: <1558117914-35807-2-git-send-email-kdasu.kdev@gmail.com>
X-Mailer: git-send-email 1.9.0.138.g2de3478
In-Reply-To: <1558117914-35807-1-git-send-email-kdasu.kdev@gmail.com>
References: <1558117914-35807-1-git-send-email-kdasu.kdev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_113409_542464_D1FC06B1 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kdasu.kdev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Marek Vasut <marek.vasut@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This change supports nand-ecc-step-size and nand-ecc-strenght fields in
brcmnand dt node to be  optional.
see: Documentation/devicetree/bindings/mtd/brcm,brcmnand.txt

If both nand-ecc-strength and nand-ecc-step-size are not specified in
device tree node for NAND, nand_base driver does detect onfi ext ecc
info from ONFI extended parameter page for parts using ONFI >= 2.1. In
case of non-onfi NAND there could be a nand_id table entry with the ecc
info. If there is a valid  device tree entry for nand-ecc-strength and
nand-ecc-step-size fields it still shall override the detected values.

Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
---
 drivers/mtd/nand/raw/brcmnand/brcmnand.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/mtd/nand/raw/brcmnand/brcmnand.c b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
index ce0b8ff..e967b30 100644
--- a/drivers/mtd/nand/raw/brcmnand/brcmnand.c
+++ b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
@@ -2144,6 +2144,16 @@ static int brcmnand_setup_dev(struct brcmnand_host *host)
 		return -EINVAL;
 	}
 
+	if (!(chip->ecc.size > 0 && chip->ecc.strength > 0) &&
+	    (chip->base.eccreq.strength > 0 &&
+	     chip->base.eccreq.step_size > 0)) {
+		/* use detected ecc parameters */
+		chip->ecc.size = chip->base.eccreq.step_size;
+		chip->ecc.strength = chip->base.eccreq.strength;
+		pr_info("Using detected nand-ecc-step-size %d, nand-ecc-strength %d\n",
+			chip->ecc.size, chip->ecc.strength);
+	}
+
 	switch (chip->ecc.size) {
 	case 512:
 		if (chip->ecc.algo == NAND_ECC_HAMMING)
-- 
1.9.0.138.g2de3478


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
