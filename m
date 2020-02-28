Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBBE8173A9D
	for <lists+linux-mtd@lfdr.de>; Fri, 28 Feb 2020 16:04:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pSm2gdjhdqNbDLmPqXLrUDxQ//B2RmgKgeK/BCcaUqo=; b=BVP0oaMwzGq90QUEXz865zJpYz
	XWjtu5+Ubn6mEsf3xer5/o5KCsAFyuoIH+kaT2N5Dd4jsqylvfImPx12gtMdvfcwZRdUPkmIW868T
	h+g2yTChIqTdHG76R5NGzqk/0yL3Np5nJxCn9PkBhRxmLJDdNbGhueEsU1IB/gDcGMXHk6I56S7aO
	Dv2DN0FZh5girKHjUI8reLiYvah9UZw54z3/fXfxtzHrIJ/A0s4PJpalS2R52y/F4u/pAZuQNz5db
	N2dKC+Sbc7KmMtfnldZxJqsNtqhNM/8MzQh0pyadh8nF7ochMcjfC+x1t9+V5U4HemuSbKVhMSO/9
	gGC0+9rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7hBf-0003Ez-G3; Fri, 28 Feb 2020 15:04:23 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7hAk-0002WW-HD
 for linux-mtd@lists.infradead.org; Fri, 28 Feb 2020 15:03:28 +0000
Received: by mail-wm1-x343.google.com with SMTP id p9so3525626wmc.2
 for <linux-mtd@lists.infradead.org>; Fri, 28 Feb 2020 07:03:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=z66mLROcRb3dfNo7Pup4ya4KCgpDgjiDJSKhfyea8EI=;
 b=MVvNfSkauJWhUbnCvTlwgt+WK0GJuss5eYHpGFQNCEYQz5ebG7+YPjkvKOv1Nu5/NH
 lGKXDjNbisRzcp5kNDR5GDcQnnM/FLF8A1kQWpIrmiBlvD6HndP3zNZ2pdMz/0vWSDN5
 /DJ1OmOYhT1ksNTDXlMLMozRdwUfw70TYCBaz3AWyFW3bBL/qXOKt4q5XOV5rhGN2XFN
 LyA6zjTKtr4ZAXUpGC3LmhDSS7kXY7hOmRlk8B/kZL1VSNwJa1MeuKfavVZ5e/6cerYV
 AtUgBNJUEof+ju1iVUGvirpApsFLJisd3BWA5RAejUhOkKbDVP1XNpGSWyOc6Sb7i0ue
 x+pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=z66mLROcRb3dfNo7Pup4ya4KCgpDgjiDJSKhfyea8EI=;
 b=aBx+WZAXXppoU73F/fLGv0w5hSvulydcO8M3YYRNdAkvw3Rkb3qraaksfkjZtyI2cY
 YtcjpzmyC7FypdJEHDhOLphmDEfQfr344pPHlua7hmakV3tGowhAPbRePxwdVF+KUvU8
 9Xw9sL2poYX/iuouLYvSIrOUgB8lNnzKsfP2DcbbQPpeXy7edNdSnNu7tqyLjniPDdYW
 lu5kArBjo/mrFwwwYp+s2mBw4mdkD6t3mFAnpaPPQfl8v1VZSscVDPlEwHylqvEFDCwI
 Uj8OBf8F7tT/aZItDn4s/cX1uLhRprM8UZ4kKFDxYXRcNX0mcTl++OYzfCvlSaA6t70L
 qJGA==
X-Gm-Message-State: APjAAAXkqqTMbMSXaQVZYo38fQt7TqhZPDqxEnzlJgMkaklgC7wZM746
 cEDxZCFVjW/xKEcpayovm/U=
X-Google-Smtp-Source: APXvYqyo6eUltgC/0VeEQHUVYmSWhqQ042mazC8I7e7+T6HHSQXxNVpp3kEy3nkPR2JYd8pilIYjvA==
X-Received: by 2002:a7b:c3cd:: with SMTP id t13mr5194931wmj.88.1582902205278; 
 Fri, 28 Feb 2020 07:03:25 -0800 (PST)
Received: from opensdev.fritz.box
 (business-178-015-117-054.static.arcor-ip.net. [178.15.117.54])
 by smtp.gmail.com with ESMTPSA id m125sm2540235wmf.8.2020.02.28.07.03.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Feb 2020 07:03:24 -0800 (PST)
From: shiva.linuxworks@gmail.com
X-Google-Original-From: sshivamurthy@micron.com
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 3/6] mtd: spinand: micron: Add new Micron SPI NAND devices
Date: Fri, 28 Feb 2020 16:03:08 +0100
Message-Id: <20200228150311.12184-4-sshivamurthy@micron.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200228150311.12184-1-sshivamurthy@micron.com>
References: <20200228150311.12184-1-sshivamurthy@micron.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_070326_583256_A6B4B539 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shiva.linuxworks[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
