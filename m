Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 287E018203B
	for <lists+linux-mtd@lfdr.de>; Wed, 11 Mar 2020 19:00:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FTeWMXWZ6c+VrUwTQwrDrCEDK4YeBmOTaWKchpfnWQg=; b=eV3uFS/S5FtOoONAhaqcYYTeB0
	821EsW2rPAMsXcEq9r4UJ+fK/RS3fU7Mk4LDwicVDqGl6Htg5zbIEYkvtrGSCIlskrigNK02S1s4E
	PanePfCJP1h40dYTYagkoRzlptCwGo2kl3+bHWpD8lV0FqC+M1dM60fBBV0g2rdBNFDh0x4YttDWt
	GPNDOWmo5kcjsBajxCg6R2E2XLTcUAyJtXrnWX7IS4vr6ogF6fUHRJXbIpTbHgXZ5/sZxXldyMmxr
	2KCTLyivknv+fZYNhj9okyF8G8SScDRSzUkv17/QKFIk9ktTfEVIdxcmYpI7AWklJ+QdIoQwFgzTf
	KR1rFGgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC5et-0000X1-Ge; Wed, 11 Mar 2020 18:00:43 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC5d9-0006QZ-Av
 for linux-mtd@lists.infradead.org; Wed, 11 Mar 2020 17:58:56 +0000
Received: by mail-wm1-x341.google.com with SMTP id 6so3094171wmi.5
 for <linux-mtd@lists.infradead.org>; Wed, 11 Mar 2020 10:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=v2t+NVS/HW3PqacteoPv2Uzni2FFv9fx2gNtRXkNHUs=;
 b=BAO4BawGO6hw5QFFqCXXUkbiYmVYtXOIkqe/830SqK2Vb2fA69VvA0KnCugBkp7FvU
 5CA0eXj9DP7zARLhqjCnenxIrBdw+yCTkpNisvQxJplQodfY9q91NArnWlImilJ1fXpR
 2C/cKupvLR7rdAy5xIPintmLY6Hnhq+zyGbVSL5a2OC0xlNXcvODEim2hLYyhSFpbhHv
 JZovjsVpd/ijwgdxCClLYQcr7X0Im9fns3NsEbkMnmwtQg3ggcaQxsJ+saosb4xD7l+2
 Fgt/HcTTpIH4PRAInlg7KLEpzAvoAzpXP7ICLCb9+sM3p0jF+KkDbHBRxowWtcRfN7k3
 RFAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=v2t+NVS/HW3PqacteoPv2Uzni2FFv9fx2gNtRXkNHUs=;
 b=OLDfXy+misF/d0Ir8CZKT1CumZLcmR2Qe+qHLIzaiDyW3QNdqdwr5PNYmf9ZFZb3g8
 CitkSV7Qb+bvFMgl506gLmP/ZgGfz1bAEYUtpUULSWXG+QtrIrQ6aNhZOprVrvXYo5zE
 /nw2vww0MIACquHeKqB+Plyyk6VEgRkUJj1Sez6oxXVizyZziils5mbS7qyrmPysty6H
 6Y2Nbd4a7RWSR/B3s4iY0dJhRAmVnbHRmzs/C4PGDnd1st7/RQNRm/KWzAjdRodBZu4T
 2Gt0mRiZbGQyG9R6atZo+HFBybTDMX+rHURwYOPZsr1lnJo5uYHehqV3kvfTpajJ1Mxt
 1Rkw==
X-Gm-Message-State: ANhLgQ26MbmGL4zxMiDwXMQcKVmw+5fpbSk3ie6oG1NTTyDX6GqlW+7/
 awcIpj8avK0dO10h78h6www=
X-Google-Smtp-Source: ADFU+vuNAIZgWXGoRiNR8ZkTY6DTs4PVG0Qi5nqBJNQ0jC/0On4au6lzwFLjX/8+ov6DPZHWKpYfHw==
X-Received: by 2002:a1c:5fc5:: with SMTP id t188mr2163818wmb.110.1583949534123; 
 Wed, 11 Mar 2020 10:58:54 -0700 (PDT)
Received: from opensdev.fritz.box
 (business-178-015-117-054.static.arcor-ip.net. [178.15.117.54])
 by smtp.gmail.com with ESMTPSA id l18sm1502107wrr.17.2020.03.11.10.58.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 10:58:53 -0700 (PDT)
From: shiva.linuxworks@gmail.com
X-Google-Original-From: sshivamurthy@micron.com
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Chuanhong Guo <gch981213@gmail.com>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 5/6] mtd: spinand: micron: Add M70A series Micron SPI NAND
 devices
Date: Wed, 11 Mar 2020 18:57:34 +0100
Message-Id: <20200311175735.2007-6-sshivamurthy@micron.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200311175735.2007-1-sshivamurthy@micron.com>
References: <20200311175735.2007-1-sshivamurthy@micron.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_105855_383564_614A12FD 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shiva.linuxworks[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 drivers/mtd/nand/spi/micron.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/mtd/nand/spi/micron.c b/drivers/mtd/nand/spi/micron.c
index 956f7710aca2..d6fd63008782 100644
--- a/drivers/mtd/nand/spi/micron.c
+++ b/drivers/mtd/nand/spi/micron.c
@@ -137,6 +137,28 @@ static const struct spinand_info micron_spinand_table[] = {
 		     0,
 		     SPINAND_ECCINFO(&micron_8_ooblayout,
 				     micron_8_ecc_get_status)),
+	/* M70A 4Gb 3.3V */
+	SPINAND_INFO("MT29F4G01ABAFD",
+		     SPINAND_ID(SPINAND_READID_METHOD_OPCODE_DUMMY, 0x34),
+		     NAND_MEMORG(1, 4096, 256, 64, 2048, 40, 1, 1, 1),
+		     NAND_ECCREQ(8, 512),
+		     SPINAND_INFO_OP_VARIANTS(&read_cache_variants,
+					      &write_cache_variants,
+					      &update_cache_variants),
+		     SPINAND_HAS_CR_FEAT_BIT,
+		     SPINAND_ECCINFO(&micron_8_ooblayout,
+				     micron_8_ecc_get_status)),
+	/* M70A 4Gb 1.8V */
+	SPINAND_INFO("MT29F4G01ABBFD",
+		     SPINAND_ID(SPINAND_READID_METHOD_OPCODE_DUMMY, 0x35),
+		     NAND_MEMORG(1, 4096, 256, 64, 2048, 40, 1, 1, 1),
+		     NAND_ECCREQ(8, 512),
+		     SPINAND_INFO_OP_VARIANTS(&read_cache_variants,
+					      &write_cache_variants,
+					      &update_cache_variants),
+		     SPINAND_HAS_CR_FEAT_BIT,
+		     SPINAND_ECCINFO(&micron_8_ooblayout,
+				     micron_8_ecc_get_status)),
 };
 
 static int micron_spinand_init(struct spinand_device *spinand)
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
