Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0369173A99
	for <lists+linux-mtd@lfdr.de>; Fri, 28 Feb 2020 16:03:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6s9lEGxDwpxGqnPj7j15mV9kKqZy8SYWm7zyYj1uE+c=; b=HWI
	ZxM22Mh9QWJ+855jYq7yDJIpPuR/M3KMS+IdJjtmbf2H1hOPFRZhghCKHKs34yqcXh0ngs7MpH5gQ
	Wigv8WTF8yyS063B/PQWhrjK3u4TUOM3PvudY3D9tyBfKwjnOwniA1XcLTApQM4b7EkZw1edZ10dO
	iZ/XZ2zzcJMInuYA6uQE3gHhIKgG+sRtx3HR1AHjIm0xjo9X26cdxYNH3TzuebPfqni1vct16bJf9
	mfieS0V3xEPNJDSsmuhNA3E+MrXXFwcj1yk5Gl5f5kLrhSlvPnlHSKiO+rqASp1apz4xMK5mz+Iqc
	ttwUsPM7YnaMz5exs6VK0RYly03jVlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7hAt-0002WZ-Ph; Fri, 28 Feb 2020 15:03:35 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7hAh-0002VY-MH
 for linux-mtd@lists.infradead.org; Fri, 28 Feb 2020 15:03:25 +0000
Received: by mail-wr1-x42f.google.com with SMTP id v4so3277861wrs.8
 for <linux-mtd@lists.infradead.org>; Fri, 28 Feb 2020 07:03:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=rqRsY3IWGJs9c2oqjoPbTBhi2h3Tjt34hwIqWxHRNh4=;
 b=Z4ryQdcckQ0xnuIbqH6ezo1dgI+d92xbhITxcZlGRdkNhMq7T/VjW0ymLUJd6QCm8u
 pXPIg/qm1YoaRQtzwGIYLQotkCsN9jqqsNWcZcNboUgZ409ZT/f5FHcPoTqGC83GJb4Y
 dUQA6I8HJyFInC/w2j/XSZ8oxEG9ilIPAAEEkW+gYbQZp7lJLpZ8yD88FqiCQsrA6vLv
 3sUGGxhRAb2gz8sWsZATKrZIjRnHyAIkuLvIaYdmKhRncGNCfPoStzF/DCR7I/iPKJs8
 aReL0KjdbYTN/nU0+Tl7twe7mWeXtWMdy+70kqzXdA+GZRgVdKJVN1TI8TURHnDpPgfK
 CN3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=rqRsY3IWGJs9c2oqjoPbTBhi2h3Tjt34hwIqWxHRNh4=;
 b=YA8owsKoU2deFpdJPkQ23hhEJlFu8ZpDI4VX1qcl0AatSigwtQl5vLOVJ/7g8nWMHM
 ADYah8sQvaJ5jWV/b9upT6RDypZtALm5jcBPvYqKViuzRkHYLXGqAqiqPmH4rdAN9ndz
 df3qSh2CGjT2ti3jyFHtDCuyl1GzCqj5sUYyGaDcp6ud3oJ0mjqD87RWm9uy0Mv1J7py
 ch2+W+8jpUeFuk50wXmZRSZnIxaXv5Vlh0+ox5JSlPtXO1/jmz4zSB6kjW1WWYHS5NBl
 59W3s/8ypJ4snODwIMqyX3Hiu1d8ltfhNBvzMLG0aDnDUWqbuvaxuorNvcPGH1OPwrYh
 rhCw==
X-Gm-Message-State: APjAAAVrMY2T2nhN3NzkKUebj5+qBVYCX0FTKv/xEEC4fg5mlzyuX/Sd
 rrCQcW81KKFoJDv5dLHk91s=
X-Google-Smtp-Source: APXvYqwJ3fwO0JpCT6Gv71plFAALDnHST5fzOxWtUvbW9WOWp6lAXxvCBYf8VT/XP6IZgVqupcdjhQ==
X-Received: by 2002:a5d:6692:: with SMTP id l18mr5040421wru.382.1582902200928; 
 Fri, 28 Feb 2020 07:03:20 -0800 (PST)
Received: from opensdev.fritz.box
 (business-178-015-117-054.static.arcor-ip.net. [178.15.117.54])
 by smtp.gmail.com with ESMTPSA id m125sm2540235wmf.8.2020.02.28.07.03.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Feb 2020 07:03:19 -0800 (PST)
From: shiva.linuxworks@gmail.com
X-Google-Original-From: sshivamurthy@micron.com
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 0/6] Add new series Micron SPI NAND devices
Date: Fri, 28 Feb 2020 16:03:05 +0100
Message-Id: <20200228150311.12184-1-sshivamurthy@micron.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_070323_730485_22C98F06 
X-CRM114-Status: UNSURE (   7.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shiva.linuxworks[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42f listed in]
 [list.dnswl.org]
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

This patchset is for the new series of Micron SPI NAND devices, and the
following links are their datasheets.

M78A:
[1] https://www.micron.com/~/media/documents/products/data-sheet/nand-flash/70-series/m78a_1gb_3v_nand_spi.pdf
[2] https://www.micron.com/~/media/documents/products/data-sheet/nand-flash/70-series/m78a_1gb_1_8v_nand_spi.pdf

M79A:
[3] https://www.micron.com/~/media/documents/products/data-sheet/nand-flash/70-series/m79a_2gb_1_8v_nand_spi.pdf
[4] https://www.micron.com/~/media/documents/products/data-sheet/nand-flash/70-series/m79a_ddp_4gb_3v_nand_spi.pdf

M70A:
[5] https://www.micron.com/~/media/documents/products/data-sheet/nand-flash/70-series/m70a_4gb_3v_nand_spi.pdf
[6] https://www.micron.com/~/media/documents/products/data-sheet/nand-flash/70-series/m70a_4gb_1_8v_nand_spi.pdf
[7] https://www.micron.com/~/media/documents/products/data-sheet/nand-flash/70-series/m70a_ddp_8gb_3v_nand_spi.pdf
[8] https://www.micron.com/~/media/documents/products/data-sheet/nand-flash/70-series/m70a_ddp_8gb_1_8v_nand_spi.pdf

Changes since v4:
-----------------

1. Patch 2 is separated into two as per the comment by Boris.
2. Renamed MICRON_CFG_CONTI_READ into MICRON_CFG_CR.
3. Reworked die selection function as per the comment by Boris.

Changes since v3:
-----------------

1. Patch 3 and 4 reworked as follows
   - Patch 3 introducing the Continuous read feature
   - Patch 4 adding devices with the feature

Changes since v2:
-----------------

1. Patch commit messages have been modified.
2. Handled devices with Continuous Read feature with vendor specific flag.
3. Reworked die selection function as per the comment.

Changes since v1:
-----------------

1. The patch split into multiple patches.
2. Added comments for selecting the die.

Shivamurthy Shastri (6):
  mtd: spinand: micron: Generalize the OOB layout structure and function
    names
  mtd: spinand: micron: Describe the SPI NAND device MT29F2G01ABAGD
  mtd: spinand: micron: Add new Micron SPI NAND devices
  mtd: spinand: micron: identify SPI NAND device with Continuous Read
    mode
  mtd: spinand: micron: Add M70A series Micron SPI NAND devices
  mtd: spinand: micron: Add new Micron SPI NAND devices with multiple
    dies

 drivers/mtd/nand/spi/micron.c | 150 ++++++++++++++++++++++++++++++----
 include/linux/mtd/spinand.h   |   1 +
 2 files changed, 137 insertions(+), 14 deletions(-)

-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
