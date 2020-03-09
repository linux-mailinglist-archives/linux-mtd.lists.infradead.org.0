Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 482BE17DF21
	for <lists+linux-mtd@lfdr.de>; Mon,  9 Mar 2020 12:56:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pSm2gdjhdqNbDLmPqXLrUDxQ//B2RmgKgeK/BCcaUqo=; b=IxBKli1G1BOjdMU6dwu6dzS21Q
	C4XYa65GyUyiuhZUtb+ppGF+ouJ8K3Ppvsc4KC6I2lmTtpBJL8vtog9axnFpFSAhNR0PO/wVBEbEb
	2Oe8eQz504dUUMf+MhocaaxT93B8SESSCeodU7Rf/nkWy88v/Kue2tjklEWexpnCFJS5L1RogetdS
	ninBdwYfR1B6KOfHQ9X5te6ABOCQiDp6fqVwWMMTdWjUozTZYcpWEgO4vNqlNp4n9vX/l5hGZe0K3
	xwhtkLvLvYBpBbdWSwjwLLSyahNfI3q/J06ZvFMcnygTSieo6RI2hIHZvLhvg0HMDkHw4Y2caZ+Vv
	GTDgnXCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBH1J-00089K-RF; Mon, 09 Mar 2020 11:56:29 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBH0V-0007T3-Bt
 for linux-mtd@lists.infradead.org; Mon, 09 Mar 2020 11:55:40 +0000
Received: by mail-wr1-x443.google.com with SMTP id 6so10713848wre.4
 for <linux-mtd@lists.infradead.org>; Mon, 09 Mar 2020 04:55:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=z66mLROcRb3dfNo7Pup4ya4KCgpDgjiDJSKhfyea8EI=;
 b=C5LI8m8XGg1Da5YEMZokiczeYXHDjbtXmogn0yFNebuJYcxWCAzewHRqGcjvTHxGZ7
 o8qpUoBMpO3KvnqC540gtySoZ9HVSLcNMJ1fEE96pxJV31UjaSB80ayRSwzwRsSUwfoE
 6J8qWiU4UU5U8UA0exmkktcjI3SusYLLmH+fcEKkB8vhbThvyjSA2sXmX6lPWpnhe7/h
 zubFc1sQqQWDNRprFfbST3DYQHH6r7wGiM24Dj/RhAfXB4TPdnadO8pKx7LHaUvyukdt
 Mpv+CJIwUhElZ1lxxbrMRwj/eRUbMK8FZ0QPMB0gLUqr6oUj/jIVY4XywgOfXVIINHho
 RWww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=z66mLROcRb3dfNo7Pup4ya4KCgpDgjiDJSKhfyea8EI=;
 b=QKOIF7rZsrVkV+I9P2fRZ61Fx+pTH24e0oToB78kmjhkOOeQd2ET1Us3WawaqkvCsc
 KxAZ2P7r1B7coUyemAB9AGqKjZZXAQpeR8DTd39PXwKoe4fKYZyFLDfIf3wJE8zdh7TQ
 ul52rtlDCyUsGvnls+e9YRlf+Kfo4Jk+EV+MXXlQ3mEDF8Hir4WRMkWS8bKXxZhEeT1A
 jByDO3S8Wir7f0/cpckOTrwr2yaJzSJRNYgr3pMuMW1b1olvCOAAcEe45Ox08Iy7ye90
 pyjpp8J3KVQIuPfrtAR8zOlZrsPFL9YL85XFIYKPSi77ZHzdoXa4hUdLpKfUkvBcWc7L
 4QKw==
X-Gm-Message-State: ANhLgQ2qCUQdUhIjNUp4qP7qk3YWaOrgyo9nuOQJj1qF+8aEKDHu5wbM
 cffPfhe+ciP+whmQWqBRXio=
X-Google-Smtp-Source: ADFU+vuFhLKerED7/hwBHARTqvsG0m5QiOg9kGgkhvKZSqKwWDcZkDRZx3aa74XyqUaBz0k4PW1kmw==
X-Received: by 2002:adf:ee52:: with SMTP id w18mr14485829wro.369.1583754938144; 
 Mon, 09 Mar 2020 04:55:38 -0700 (PDT)
Received: from opensdev.fritz.box
 (business-178-015-117-054.static.arcor-ip.net. [178.15.117.54])
 by smtp.gmail.com with ESMTPSA id m21sm25035226wmi.27.2020.03.09.04.55.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Mar 2020 04:55:37 -0700 (PDT)
From: shiva.linuxworks@gmail.com
X-Google-Original-From: sshivamurthy@micron.com
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 3/6] mtd: spinand: micron: Add new Micron SPI NAND devices
Date: Mon,  9 Mar 2020 12:52:27 +0100
Message-Id: <20200309115230.7207-4-sshivamurthy@micron.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200309115230.7207-1-sshivamurthy@micron.com>
References: <20200309115230.7207-1-sshivamurthy@micron.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_045539_419420_361F2688 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shiva.linuxworks[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Shivamurthy Shastri <sshivamurthy@micron.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Shivamurthy Shastri <sshivamurthy@micron.com>

Add device table for M79A and M78A series Micron SPI NAND devices.

Signed-off-by: Shivamurthy Shastri <sshivamurthy@micron.com>
---
 drivers/mtd/nand/spi/micron.c | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/mtd/nand/spi/micron.c b/drivers/mtd/nand/spi/micron.c
index e4aeafc56f4e..5fd1f921ef12 100644
--- a/drivers/mtd/nand/spi/micron.c
+++ b/drivers/mtd/nand/spi/micron.c
@@ -101,6 +101,36 @@ static const struct spinand_info micron_spinand_table[] = {
 		     0,
 		     SPINAND_ECCINFO(&micron_8_ooblayout,
 				     micron_8_ecc_get_status)),
+	/* M79A 2Gb 1.8V */
+	SPINAND_INFO("MT29F2G01ABBGD", 0x25,
+		     NAND_MEMORG(1, 2048, 128, 64, 2048, 40, 2, 1, 1),
+		     NAND_ECCREQ(8, 512),
+		     SPINAND_INFO_OP_VARIANTS(&read_cache_variants,
+					      &write_cache_variants,
+					      &update_cache_variants),
+		     0,
+		     SPINAND_ECCINFO(&micron_8_ooblayout,
+				     micron_8_ecc_get_status)),
+	/* M78A 1Gb 3.3V */
+	SPINAND_INFO("MT29F1G01ABAFD", 0x14,
+		     NAND_MEMORG(1, 2048, 128, 64, 1024, 20, 1, 1, 1),
+		     NAND_ECCREQ(8, 512),
+		     SPINAND_INFO_OP_VARIANTS(&read_cache_variants,
+					      &write_cache_variants,
+					      &update_cache_variants),
+		     0,
+		     SPINAND_ECCINFO(&micron_8_ooblayout,
+				     micron_8_ecc_get_status)),
+	/* M78A 1Gb 1.8V */
+	SPINAND_INFO("MT29F1G01ABAFD", 0x15,
+		     NAND_MEMORG(1, 2048, 128, 64, 1024, 20, 1, 1, 1),
+		     NAND_ECCREQ(8, 512),
+		     SPINAND_INFO_OP_VARIANTS(&read_cache_variants,
+					      &write_cache_variants,
+					      &update_cache_variants),
+		     0,
+		     SPINAND_ECCINFO(&micron_8_ooblayout,
+				     micron_8_ecc_get_status)),
 };
 
 static int micron_spinand_detect(struct spinand_device *spinand)
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
