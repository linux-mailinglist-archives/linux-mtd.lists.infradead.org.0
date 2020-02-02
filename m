Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 160F014FF77
	for <lists+linux-mtd@lfdr.de>; Sun,  2 Feb 2020 22:57:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=KcciSKevDJa2rEb3GFNo3+rmhRKl+XsdPRhG5vVy9nw=; b=sfK
	PCNg8omUO+hbvmvvarik+PC/YrOpS6cjlwhEtYla6HfiW35ECUUodB/nOx5H0WP6R+63khnHlhSNe
	kboLsc1ahbntjnqrZMO4hf5CBAzk2j/o9mgtJQTTP4LqJzXVlazPHmwaIp3R+tic9WzS4ymvBJqBZ
	fMzmvihJ0mlHrnvr/B6e/QUV20O1sSTClyG7g93CLcj6IF3cowit4PSmGSseWe1maVZRwgT+0Ih/y
	D3N9vsxoPLh2vIlD1S69WaCBWcsm/5n7eTjztTxUUyHZU9Klp648vqWjGVwxajT1ZTzdDUtmhhnu5
	y9BSHzwsUHhEYrMc9F6j0Q+lCBJuyWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyNF8-0008T8-02; Sun, 02 Feb 2020 21:57:26 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyNEv-0008SW-6w
 for linux-mtd@lists.infradead.org; Sun, 02 Feb 2020 21:57:14 +0000
Received: by mail-wm1-x32a.google.com with SMTP id m10so12994171wmc.0
 for <linux-mtd@lists.infradead.org>; Sun, 02 Feb 2020 13:57:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=fns2Ornju2WXVpySQuZ+PsDs1vo+7j/mk6LQDMuQm9A=;
 b=W7GV6tehArejuwu39wL1q5jCI5CaD+oWFnAUvHAxycAfjyGgu31RMxHB5f0hMdDJOZ
 cS16BCjvNMqPXMZ95bHMnqJGQuBCO2D3+DL2d/cJLz6y3m5gHV5SScaUUX4o+FvQIQAX
 D/0svRxcRrK0l/1c24JbwT2eNWNVJfSoX+jxj6gywhzS2/1EEuYwomhupjLTm0IERK3R
 jaH0Bn1r2EFShx/jNDOJIXfE/WdOUSCx7N85z/nlxbrXtSoR6QsvevY4HsZpPoGbRTJq
 MCw4fwa92NwbJJVFV8IojNQWWbz44JyjWr0qIDkqUNSULB/Ghdk5tu2b3xfc/FJ8A+sT
 bJZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=fns2Ornju2WXVpySQuZ+PsDs1vo+7j/mk6LQDMuQm9A=;
 b=BYM+nTAnVIN2L/lrNb86fO7c1XTMxbknrJV/ukQrFau9tiVYpC5juWYqD+had/FLkW
 VpIuYrHOXiu47k7bzLxPENmkV11i10XGZ6+pI/x9W5VXj+3CYcEUd3SQSlqPfHs8vVjZ
 o6jEvwjx3Zv8M/nuwtPBpL75+rNuWsr6WVutiScvjuyUOXman+P6f0gllZAUq46QJHNn
 +EbvcrBXXx65CjyhZRlATfhn3UDd4dIOZAyttXQNZ5Ryp4VTOnhzq8hZlmDoRMZEtXrJ
 xRXLREGFhbCJPpZ4lyOd+A/88HnGPSTsEEOQWMuVDfe9iOdPFFzecyTtjm6is742G8jc
 xjVQ==
X-Gm-Message-State: APjAAAWURAIU46MngjO5JcHx7fnTOlZboO62IdHumvVtrzwlC0fGY5pG
 3QmxT92ZXNsTA1wz7JRLSAE=
X-Google-Smtp-Source: APXvYqx59dob6bQ6u27i6pYbjQ5bjx5FpleTfa+c/zmVpjmorV4xV2VxZpzHcxyRSa47BBf+qFzO5Q==
X-Received: by 2002:a1c:e388:: with SMTP id
 a130mr24739038wmh.176.1580680629854; 
 Sun, 02 Feb 2020 13:57:09 -0800 (PST)
Received: from opensdev.fritz.box
 (business-178-015-117-054.static.arcor-ip.net. [178.15.117.54])
 by smtp.gmail.com with ESMTPSA id c4sm20612488wml.7.2020.02.02.13.57.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Feb 2020 13:57:09 -0800 (PST)
From: shiva.linuxworks@gmail.com
X-Google-Original-From: sshivamurthy@micron.com
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 Boris Brezillon <bbrezillon@kernel.org>, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/5] Add new series Micron SPI NAND devices
Date: Sun,  2 Feb 2020 22:55:03 +0100
Message-Id: <20200202215508.2928-1-sshivamurthy@micron.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_135713_278630_C7AC0D51 
X-CRM114-Status: UNSURE (   7.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shiva.linuxworks[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Changes since v2:
-----------------

1. Modified the commit messages of the patches.
2. Handled devices with Continuous Read feature with vendor specific flag.
3. Reworked die selection function as per the comment.

Changes since v1:
-----------------

1. The patch split into multiple patches.
2. Added comments for selecting the die.

Shivamurthy Shastri (5):
  mtd: spinand: micron: Generalize the OOB layout structure and function
    names
  mtd: spinand: micron: Add new Micron SPI NAND devices
  mtd: spinand: identfiy SPI NAND device with Continuous Read mode
  mtd: spinand: micron: Add M70A series Micron SPI NAND devices
  mtd: spinand: micron: Add new Micron SPI NAND devices with multiple
    dies

 drivers/mtd/nand/spi/micron.c | 153 ++++++++++++++++++++++++++++++----
 include/linux/mtd/spinand.h   |   1 +
 2 files changed, 140 insertions(+), 14 deletions(-)

-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
