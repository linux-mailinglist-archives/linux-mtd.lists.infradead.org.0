Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00DFF173A9A
	for <lists+linux-mtd@lfdr.de>; Fri, 28 Feb 2020 16:03:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=v/r1oByQcZcWCnOqSosJ59uIOVT3Mui/z7DZ69ECe8o=; b=Se5TrccSTds/h5PolLbnMRM9R/
	LL88tmMriTRvyi0J8iH2zchbtEmwkzkJPb0RxYdH9GFSfx0ovzyMo5bsVNbr9AVTExDMyz5lw3oBn
	oPkjNya8Nc3bXZkSIsSgKpoz1a99+CQdAkQ5Et0tmQMlH7KYueDXjY7B9Xy1xEOh68oYb489CdP8w
	88iL6/34xO8qAG4yFoclxwNbFKe4M7Uis+XLOFo2DURmx6tiystFCtK+ljoYZ2W3lluJ/HEfqdzko
	TOOn7amUXXWAiJJcPgs9TGwlXfvEKnLFVnwgy12M8RdAxVZ5/W/xLpPVMBqgASBiqcHiATxq9QoHb
	K3wQYhxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7hBB-0002ki-AU; Fri, 28 Feb 2020 15:03:53 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7hAj-0002Vx-EO
 for linux-mtd@lists.infradead.org; Fri, 28 Feb 2020 15:03:26 +0000
Received: by mail-wr1-x444.google.com with SMTP id v2so3236533wrp.12
 for <linux-mtd@lists.infradead.org>; Fri, 28 Feb 2020 07:03:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=wl7h7MB0G2BXUvEqAv+8JB5mpSUGz57zUw9UrFnUC+Q=;
 b=V3NmP5M5P9C/66enV9ymsDk+U3eRCm1zeBei3iBHIqjoE5fd/qG3eawlCcGedG9R4b
 lW+VH9Po7cTUcIFIkcOO21kZ5yFErgCVNm9NaTTG43GZoKf+u/H/kL4cHw+l3N7VwWEz
 n0vIrah+ome/0osmTwO3OHOvwRyo00ll6yIFz2+N3mNFacEOniZc8PrsjJC5LSwlELRE
 b6JeHX3nhqK+4tYq/k/a6Y0jxwcU7QaxDDfbO+IA76pu60pxAoxMGP5LvbOpabf1dDkl
 vVaaMFF1PHRoQmIh3Ow1VFZhzm5emgrCz8A8fFJtlprr772LnA2J5X46Zv/uT8IOsNZ8
 GZdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=wl7h7MB0G2BXUvEqAv+8JB5mpSUGz57zUw9UrFnUC+Q=;
 b=hE/BbqyCGcgo9pFF22ZzQpvHdzOMNAbW350htt6T43WQa0MPs1JEC+kfecRd3DA9Ja
 NBEBxFaSPLDnS2DP4hREJq4vw/q0t0qA+cifd4bm3QlNhZz99IRL6w8XlSNVUFGc3G1Y
 GKuUTlK6jXe4uamgZ0hi75Lle7i/QKx8Cj3ZqkoKAErHtPwmOYMt6fBUx9+5SCiGhE19
 g0Jxf7TNLETB0cu7c29c8AkwFgzxOi9FqeI4WwQZhC+y5sS8fyMVualsiRyDTa3/qsP3
 zz2UjFYtzvd5rH5URolBWMQb97DVqaNyXrHnE4bC0Su2vtaHH7bB0fzIlDAsWSeRuP2f
 dzug==
X-Gm-Message-State: APjAAAUBFWTP2yPczdEpgItsnksaZzuHTbY2nANGVW4difjArznzp/J8
 KpywVkzB+WTo7hdUV9BahX4=
X-Google-Smtp-Source: APXvYqzBGPyi5NLZUT3/XVLOunkD9kHjoYlKLBvGxXzzMCe4VfRGmrQFNofZSCStnM+B1q8W19qB0g==
X-Received: by 2002:adf:fac9:: with SMTP id a9mr4994128wrs.232.1582902204040; 
 Fri, 28 Feb 2020 07:03:24 -0800 (PST)
Received: from opensdev.fritz.box
 (business-178-015-117-054.static.arcor-ip.net. [178.15.117.54])
 by smtp.gmail.com with ESMTPSA id m125sm2540235wmf.8.2020.02.28.07.03.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Feb 2020 07:03:23 -0800 (PST)
From: shiva.linuxworks@gmail.com
X-Google-Original-From: sshivamurthy@micron.com
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 2/6] mtd: spinand: micron: Describe the SPI NAND device
 MT29F2G01ABAGD
Date: Fri, 28 Feb 2020 16:03:07 +0100
Message-Id: <20200228150311.12184-3-sshivamurthy@micron.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200228150311.12184-1-sshivamurthy@micron.com>
References: <20200228150311.12184-1-sshivamurthy@micron.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_070325_482990_6AD91E07 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

Add the SPI NAND device MT29F2G01ABAGD series number, size and voltage
details as a comment.

Signed-off-by: Shivamurthy Shastri <sshivamurthy@micron.com>
---
 drivers/mtd/nand/spi/micron.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/nand/spi/micron.c b/drivers/mtd/nand/spi/micron.c
index c028d0d7e236..e4aeafc56f4e 100644
--- a/drivers/mtd/nand/spi/micron.c
+++ b/drivers/mtd/nand/spi/micron.c
@@ -91,6 +91,7 @@ static int micron_8_ecc_get_status(struct spinand_device *spinand,
 }
 
 static const struct spinand_info micron_spinand_table[] = {
+	/* M79A 2Gb 3.3V */
 	SPINAND_INFO("MT29F2G01ABAGD", 0x24,
 		     NAND_MEMORG(1, 2048, 128, 64, 2048, 40, 2, 1, 1),
 		     NAND_ECCREQ(8, 512),
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
