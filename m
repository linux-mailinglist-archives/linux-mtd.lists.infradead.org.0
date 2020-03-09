Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1EC17DF23
	for <lists+linux-mtd@lfdr.de>; Mon,  9 Mar 2020 12:57:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HHTyvKu7EgXUwjrQfl0KoxUVzyGFTLN6sx1aCjueD6Q=; b=UGI3dV91ONtDOKzIojQNX9S4Vm
	0+rsxrn2N3hyHxh6SYqDsCDoisD2Cw7+zW2bJz4LXaz1X7/ZKqnRbXHw4mi6Iv2/Y+TljittrLam4
	qnESbj1MtgaFJ+pFhkFEfqyxhVXQUcJgkVxQqZ9LXInNgedL5T1TpBWXipNkhIksUUQawNIgIOMqF
	ramtanRfqu+NJEGW7gvZU+pyGQh6OgPJcEiSUskeNcPh9sBQCjJtmEpj4MZUzyS5yRB0dkdBK1cwz
	+ckHlCf+Et9qH3o+fgqps74J2m3fDVUXMBx4CA5aKEN5x8eV97HubJLbSKknSkU9msUUEEfADNJax
	DfKfeiJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBH1p-0000Be-As; Mon, 09 Mar 2020 11:57:01 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBH0Y-0007Vf-CO
 for linux-mtd@lists.infradead.org; Mon, 09 Mar 2020 11:55:43 +0000
Received: by mail-wm1-x344.google.com with SMTP id g134so9533097wme.3
 for <linux-mtd@lists.infradead.org>; Mon, 09 Mar 2020 04:55:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=7lXgaGBU6RYi6U6zxTiRxw0HA/EAYgc0JnTYQzLHUZg=;
 b=VY3Na1mLM78VKAyOTeoV1Njv3SZVtsUYheUrE33KJg1MCMxT0E6frrxkRQzFh+TaGp
 7K1LE7UV+tI8XBABegzy8dWa1xZfaDGIS+9pYWHLZGmB6m9NmyVgXRHwJKp8rFCZETd1
 7Y+4CKw1rya+E9PBH333GawS2NLDRSOKxQ7qZ2tS/7hiRTmzAOob4zOZdtHeB8oNuCOE
 CVp/LIh9z5Yw9IZAujMMymIZasQIS92aeNTgdQcKrco3cPO9v6xxMnk9rgA/BJtdUmGH
 v4sOKpCrAfM4jClj62oQcBb562MjcrastX+X1wMrblktCqFg4A99iqPVa0/MlV3RZg4E
 i4NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=7lXgaGBU6RYi6U6zxTiRxw0HA/EAYgc0JnTYQzLHUZg=;
 b=QJCYDyWecTd8Tb8r9ZZ7ZBf4/k1FdzQgcKrP3Z9tgxWF/tvNtei7ajzwd6yOdf+Svm
 qvY9cmGF/ttpb0oZ7cBkZWK5z0vD2DEUlN98rLN20oaoe2r3SNLzsOaE4rTGHApzbc2o
 bTz9OerDJyWnJBlFyeB1UNS8pPuTuAGmVnpL13sqWQ4QwcTWz7TsV+/5EftAFdt7bDV9
 bVpMcm2THUQ0uFOMQ7OUVtg5E6aywow/548aWtQiibUX3GrgZy+ZCMhD4JpNjtMDVEAG
 n7gx+E/LCfJgzq7l9bF4c8jP8gGxHNBJTSATSmfqin+nNJAC6zNP3sQn39aLsGpQP26O
 tMQA==
X-Gm-Message-State: ANhLgQ2QbVG4mvx35g2viQQmYrsr6fBSb7vrl6dERYtIA6i4AWiK84L5
 bJvy9kne9XaOFB3HqJB3Zhap77wx
X-Google-Smtp-Source: ADFU+vvejN3V2BjAHmFzd1LQdR64g8eDfBcDa6OWHYqV6LCuJXOwg9pJLSW6FlI5cvJYQ97jFw4lvw==
X-Received: by 2002:a7b:c189:: with SMTP id y9mr7341078wmi.47.1583754940859;
 Mon, 09 Mar 2020 04:55:40 -0700 (PDT)
Received: from opensdev.fritz.box
 (business-178-015-117-054.static.arcor-ip.net. [178.15.117.54])
 by smtp.gmail.com with ESMTPSA id m21sm25035226wmi.27.2020.03.09.04.55.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Mar 2020 04:55:40 -0700 (PDT)
From: shiva.linuxworks@gmail.com
X-Google-Original-From: sshivamurthy@micron.com
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 5/6] mtd: spinand: micron: Add M70A series Micron SPI NAND
 devices
Date: Mon,  9 Mar 2020 12:52:29 +0100
Message-Id: <20200309115230.7207-6-sshivamurthy@micron.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200309115230.7207-1-sshivamurthy@micron.com>
References: <20200309115230.7207-1-sshivamurthy@micron.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_045542_481453_ECC09F44 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

Add device table for M70A series Micron SPI NAND devices.

Signed-off-by: Shivamurthy Shastri <sshivamurthy@micron.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/spi/micron.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/mtd/nand/spi/micron.c b/drivers/mtd/nand/spi/micron.c
index ff0a3c01441d..9db1ab71fcae 100644
--- a/drivers/mtd/nand/spi/micron.c
+++ b/drivers/mtd/nand/spi/micron.c
@@ -133,6 +133,26 @@ static const struct spinand_info micron_spinand_table[] = {
 		     0,
 		     SPINAND_ECCINFO(&micron_8_ooblayout,
 				     micron_8_ecc_get_status)),
+	/* M70A 4Gb 3.3V */
+	SPINAND_INFO("MT29F4G01ABAFD", 0x34,
+		     NAND_MEMORG(1, 4096, 256, 64, 2048, 40, 1, 1, 1),
+		     NAND_ECCREQ(8, 512),
+		     SPINAND_INFO_OP_VARIANTS(&read_cache_variants,
+					      &write_cache_variants,
+					      &update_cache_variants),
+		     SPINAND_HAS_CR_FEAT_BIT,
+		     SPINAND_ECCINFO(&micron_8_ooblayout,
+				     micron_8_ecc_get_status)),
+	/* M70A 4Gb 1.8V */
+	SPINAND_INFO("MT29F4G01ABBFD", 0x35,
+		     NAND_MEMORG(1, 4096, 256, 64, 2048, 40, 1, 1, 1),
+		     NAND_ECCREQ(8, 512),
+		     SPINAND_INFO_OP_VARIANTS(&read_cache_variants,
+					      &write_cache_variants,
+					      &update_cache_variants),
+		     SPINAND_HAS_CR_FEAT_BIT,
+		     SPINAND_ECCINFO(&micron_8_ooblayout,
+				     micron_8_ecc_get_status)),
 };
 
 static int micron_spinand_detect(struct spinand_device *spinand)
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
