Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0D45D052
	for <lists+linux-mtd@lfdr.de>; Tue,  2 Jul 2019 15:15:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6x2F8X0VfIa0o6zoUiYYlo03AW0GWSqQOW1Z1tHPiE0=; b=QlFZOkiOr/jkCu
	e5+fccazR/QBeKnXGtxysPI6Z4BKiVbvLf65v2KDigc6az9oXpu3qJw9q9VCRIuWSz9olxsc6KEC3
	C/1VGFTu9k6ia/THOnKwZLWf2EGyeA/mXt14v0VmlKkM9sweCmHrkNGJhgF1ZHpk3mV3mAsvWxtjj
	MuCbNeuJKnmdcb/mUN93iLmaLo1c63f5STJy+IP0hukWDHRmLwL3YbMg6pPC5G+UqcZJjWWcPrc6U
	RIPV8WUPF1Mh+W3orswg8t81xC7Fvi4QdfdEvCPD18DIdB6lWceKMNJpqFa6IrFHouwPhj9LfyV0I
	U5f6c0URnemvnd1rUaJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiId6-0001eC-M3; Tue, 02 Jul 2019 13:15:28 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiIce-0000Vo-Cj
 for linux-mtd@lists.infradead.org; Tue, 02 Jul 2019 13:15:03 +0000
Received: by mail-io1-xd43.google.com with SMTP id i10so23018663iol.13
 for <linux-mtd@lists.infradead.org>; Tue, 02 Jul 2019 06:14:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=0ztf1PZrt5oedAcicUONlFjNaMMVTARFA+N8wrNUA0Q=;
 b=iNncWwvr3JS+GVKMI8sE6eC6JPeOW0+/n7i58LiHB012ztLksHRJlxh3Dx/feaC/c8
 WLDKUGg8QbTbvSU/T7QUCZ8szt5D05PzsX95kpiHiZVQUMqclatZAuKUzRcp0eaPFyII
 GUEEFK5XISpOKmQLQ1HShxxuEOWypcMZgih5/2c/WKpCMa6YuJ/8dyTC3Q2JEGhPFGdh
 fa2PtercOCt01XjTcsrJ+dte3/XLQvFruM3ctguP8K5igwqz458wdgeWwn+YbNLoLRig
 2/zL9MfdnX87SJ5xAJjT6E/Njspq4/rtAFOnwC+4l9xtdn90Jpexxthdt60OOGN/Rz2c
 8bUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=0ztf1PZrt5oedAcicUONlFjNaMMVTARFA+N8wrNUA0Q=;
 b=ugjSC9PWrsFJwidArpJaxhVc8857kqwMImd2a8xR1YEyWQER3JM2T1RVSdkNpQEs5V
 GUyVMZyMgLF1Vw3nOSMwBf1PonxYU1NNsccCAiFWmoKJZ5QWiiRR/kMDSE/hYZ3VsoMJ
 7nEtOKgZk2RhTlVlQ+dsP59yd+/rDYTbJUTouGzCLcSRXP0nU25dPO7Lr0BCKRwAYHvS
 NWC0EeoCucoNCy7GWDl7RxX4n+waeUVIzuEiWkyxZRMcM0DuzMlWo6nS7MDIFcBV9Lyg
 0RVJquuxLdW2DbqIZh2pQrTnGrQDVKyErDTmGRYF+mnx9HTbe+DJeW5YwQqcbPnn0IDw
 6Wzw==
X-Gm-Message-State: APjAAAWqJE4iN9zIQNSw64XaLGx7Me0oyW8iP+JdPQwzfS0d21Y1ZY3G
 SWIYBhH0NAWFmsFf0QgGtbrb6gUSbxeLvzUhRw==
X-Google-Smtp-Source: APXvYqxx7+xmweS9/gtiu7nUJE63to7JLzDZUwYe4YWkIkWVeq2Xdqecgw6rkU3/6F3u8u3XKiPu4y4tT5b/AxDTXrA=
X-Received: by 2002:a02:b914:: with SMTP id v20mr35251356jan.83.1562073299013; 
 Tue, 02 Jul 2019 06:14:59 -0700 (PDT)
MIME-Version: 1.0
From: Avi Fishman <avifishman70@gmail.com>
Date: Tue, 2 Jul 2019 16:14:16 +0300
Message-ID: <CAKKbWA4jw9xiHkfF3bk4KTZPazPM5hb9ZANT6hjZyLuv8DM+mA@mail.gmail.com>
Subject: [PATCH] mtd: spi-nor: Add Winbond w25q256jvm
To: Tudor Ambarus <tudor.ambarus@microchip.com>,
 David Woodhouse <dwmw2@infradead.org>, 
 Brian Norris <computersforpeace@gmail.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tomer Maimon <tmaimon77@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_061500_482263_6657086A 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (avifishman70[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (avifishman70[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Avi Fishman <avifishman70@gmail.com>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>, linux-mtd@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Similar to w25q256 (besides not supporting QPI mode) but with different ID.
The "JVM" suffix is in the datasheet.
The datasheet indicates DUAL and QUAD are supported.
https://www.winbond.com/resource-files/w25q256jv%20spi%20revi%2010232018%20plus.pdf

Signed-off-by: Avi Fishman <avifishman70@gmail.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mtd/spi-nor/spi-nor.c
b/drivers/mtd/spi-nor/spi-nor.c index 0c2ec1c21434..ccb217a24404
100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -2120,6 +2120,8 @@ static const struct flash_info spi_nor_ids[] = {
  { "w25q80bl", INFO(0xef4014, 0, 64 * 1024,  16, SECT_4K) },
  { "w25q128", INFO(0xef4018, 0, 64 * 1024, 256, SECT_4K) },
  { "w25q256", INFO(0xef4019, 0, 64 * 1024, 512, SECT_4K |
SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+ { "w25q256jvm", INFO(0xef7019, 0, 64 * 1024, 512,
+ SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
  { "w25m512jv", INFO(0xef7119, 0, 64 * 1024, 1024,
  SECT_4K | SPI_NOR_QUAD_READ | SPI_NOR_DUAL_READ) },

--
2.18.0


-- 
Regards,
Avi

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
