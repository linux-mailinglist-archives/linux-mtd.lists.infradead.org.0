Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C20141EA7
	for <lists+linux-mtd@lfdr.de>; Sun, 19 Jan 2020 15:57:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/oeQOCUR3H7PryJqMJXjxY/f7aBXxkeparTVfip1tbQ=; b=AG1q9GwQBd8VSlky1Qj/nsIcZz
	I7QmMfKVIeJx057ebP5VYfYXhqdoioWflp6Gxu9NEEoJAcFxVOCdEoqyQ6M4Ba/yZlvVnLHi4N9yd
	yaHsTFO8ABQOX+IFJvtV5tVDwV4FGU9G+tUXvDkt0dTP6r/bCuLaem25XGJ3kbJzh+1OjYdb72fyW
	AvRGLtl36I249HjrOBcsNC+7FhLrdmE1DHcpbblIKl6YtePoCMrRcRkZc17hgP0HWXr/btIVkAjom
	5xtjZxWWzlKBAzyR5RWSU1/QZIhgAYw6lWQvyiCjVMbr5NQw+3FDNVCy1UT5VKLmLeA47PrzT4AWt
	TyTb3LeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itC11-0001Qs-9f; Sun, 19 Jan 2020 14:57:27 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itC0Q-00014z-MX
 for linux-mtd@lists.infradead.org; Sun, 19 Jan 2020 14:56:52 +0000
Received: by mail-wr1-x444.google.com with SMTP id c9so26953307wrw.8
 for <linux-mtd@lists.infradead.org>; Sun, 19 Jan 2020 06:56:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=WK+KzBfTuQqE2Bcx0psUGki6jAtzDkPOrrhY+kNzNrw=;
 b=ocEEjur2qdRmr4lVyh8MGSAlo7vilPkyZS0yf5IljHlpYW/CQmZ6ymYBz4554MEqth
 uBCUlp05Q+3TXQBkcbThe8wCoPDu64Lo/tsyeYNb/fjOa1Bqs5btCCDCMvo9OZaQckYC
 eQg6kokH5BFWvGHK5/VOCSGuDERfDY+x7FLamTqsHC5cGtBA0dQTG3ZdewXIVUvuxW6w
 06keHbAwSsgx/ialSmPZ9jJ8QhMaYi5sAL5S5VBD6QTr0RsQsfxH50u7bdVPLLJcpO2i
 MIAoXCAfzIYCiG0DPKxyAxR9RDXJgNVB4ksAgLZPlvkzlszE3RJ5593PL4XjmMGRVVj6
 ruxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=WK+KzBfTuQqE2Bcx0psUGki6jAtzDkPOrrhY+kNzNrw=;
 b=RCxGL2f2ioLVOp259oHkG9EKCzjJe0XMwbkzBq1rO8Nt5KxMC++RFDYpPfoMiqVdT2
 gieyG44DGENHUJercrVv9eyF0cD3yDEb/NRjF2/qpZ7cGOw3El/ApFmQjXDZ8vIiEYAk
 m5pUWBuOp5E0gY7T4yEz6CJSSg9DqAtqfUCisp+Ku0qSBxuPaL9DuSzH777rh+wvg6TB
 OjLsKgPxKucECxUnrClC1no43cROeZ5I8Bhl01lDdFd5VPB/jHZLH8hZZvO7G4gyQX5X
 CPV7GGQwRfy+sHnJ/ze/HiUAz3w6m361peZInvqnYX6m+FCFqiCM5YSjx3ttwc83ZWvx
 RfNw==
X-Gm-Message-State: APjAAAUMFe6WS5TdJy+bi6c828TFaeVVwWd+B7uUjlJPmhsAhfvJx+kq
 9Ci8R7rJU58Wgn91QFIenYo=
X-Google-Smtp-Source: APXvYqyJW1l7oAfaAJjtPzbHzd+gAykbid4micm19NvJcLs+SkNHmtQym+RAEFK+sy75xmlBWtLVqQ==
X-Received: by 2002:adf:f803:: with SMTP id s3mr13674700wrp.7.1579445809064;
 Sun, 19 Jan 2020 06:56:49 -0800 (PST)
Received: from opensdev.fritz.box
 (business-178-015-117-054.static.arcor-ip.net. [178.15.117.54])
 by smtp.gmail.com with ESMTPSA id p17sm43347877wrx.20.2020.01.19.06.56.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Jan 2020 06:56:48 -0800 (PST)
From: shiva.linuxworks@gmail.com
X-Google-Original-From: sshivamurthy@micron.com
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] mtd: spinand: Add new Micron SPI NAND devices
Date: Sun, 19 Jan 2020 15:54:30 +0100
Message-Id: <20200119145432.10405-3-sshivamurthy@micron.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200119145432.10405-1-sshivamurthy@micron.com>
References: <20200119145432.10405-1-sshivamurthy@micron.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_065650_749936_0709795F 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shiva.linuxworks[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 drivers/mtd/nand/spi/micron.c | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/drivers/mtd/nand/spi/micron.c b/drivers/mtd/nand/spi/micron.c
index c028d0d7e236..5fd1f921ef12 100644
--- a/drivers/mtd/nand/spi/micron.c
+++ b/drivers/mtd/nand/spi/micron.c
@@ -91,6 +91,7 @@ static int micron_8_ecc_get_status(struct spinand_device *spinand,
 }
 
 static const struct spinand_info micron_spinand_table[] = {
+	/* M79A 2Gb 3.3V */
 	SPINAND_INFO("MT29F2G01ABAGD", 0x24,
 		     NAND_MEMORG(1, 2048, 128, 64, 2048, 40, 2, 1, 1),
 		     NAND_ECCREQ(8, 512),
@@ -100,6 +101,36 @@ static const struct spinand_info micron_spinand_table[] = {
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
