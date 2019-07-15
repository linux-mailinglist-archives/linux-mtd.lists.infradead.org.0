Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14FF969E82
	for <lists+linux-mtd@lfdr.de>; Mon, 15 Jul 2019 23:47:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T67ZFy8/4g4naV0CzMiadWxeTITRY1YoEMPC9NvclC0=; b=Le+ugpldSiITzM
	0OYXXP6Iclt1EMEWcUBFuLlkBuiAXdwmrYGM99xXVHvvKA1IWOrUvdm8Eh/rueItuPwtv1y8w/XwQ
	/Ci/RgQmMWZfzhgCJ1i9H/ZIYFyxaZxGw3Ckdr15DIWQKhFSlMI6Pf6BhmkC3JTMaqfyiahiON+7F
	GTQKOXkXr3QbZSk2xTnYbDKRSGs27NEVnSfyM3AOMDrEyLiCCox2sWZz86H3vlEN7vlrX6JZgn6xc
	eNkqgH7m7ipZhEkRIBP5XQ/kC8HpIwF5+eQXL4QlAgTfodCRwiMNxSNCdg+1CozPqs/3kxP2vxKM8
	QB9fy8OCUaFyL1ruJy0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn8oZ-0006AH-Qr; Mon, 15 Jul 2019 21:47:19 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn8oJ-00069g-1A
 for linux-mtd@lists.infradead.org; Mon, 15 Jul 2019 21:47:04 +0000
Received: by mail-lf1-x143.google.com with SMTP id p197so12076039lfa.2
 for <linux-mtd@lists.infradead.org>; Mon, 15 Jul 2019 14:47:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fqP3bD7RPZ6634S89Tco2USkF15lMYE6YmLEck6zwts=;
 b=VkYHCsWeJWjeyPVqjOrsLBc+rPdL+fNGBqv03PI45PY0ZLoFwt2QIFwD4UcKdzi/ey
 dzLatfV4sanbVOSYqxC7JZI4WTxWks/x031V69vv7f1Db2urilZ9U8sQb7opkQhK1W4D
 oiHg+i5LyUEVNilCkwbJMNM/B1CtOJ4ZPPX5uEh0emUVNTEjEHYEPH+ZRuCcwjG4jMBW
 EQW5kTpN+cVDFJCpMay93N6Rn6FftARTLyvS8aEZ2V6RnLDHvOy+lvwQ1k5Zke4j3oDo
 PO/Bv78o8XR2ScptkGJN6PGleBHXLxaLfKjVxAJWEdqeIgukPwPYJbE4HuuoNG2WFy0R
 h7TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fqP3bD7RPZ6634S89Tco2USkF15lMYE6YmLEck6zwts=;
 b=ple1nfr4E8m0pZzt33Q9iDn38lnbykKRVW6pLKARXswh8z0R1iPzsq2ggynpgeZIKL
 OEPdpzefW/POn3qchhDC675dHfNXmG7+rYcMGb131LvYpiKYOkO25wNyaTLZkUXqdrVL
 iUQMsMX7C7AZKaS8923lBPrzQLqkrs771S8R5YJAbkvY6VGNZCtt53Jz0X14g09dSHPM
 wUslGSrVjIsj90KFQZRV8aFCRkTnmN/0glbXa838A3CJJmezGZFlSUnLgSEXHvZCsO/D
 q+/AA49md1dwakuck3/LssUtjSayzOIBFwjX6Pdt3UD+yxBRuCmIAVcSBZSBZGpA+EmD
 Qsow==
X-Gm-Message-State: APjAAAWts00ooalh/8QxEJ+EDw6UIRfEE+cNg3lSu433WyzarSohWiAo
 HXMJA9hIiAQu7bw5aLyZR92IAg==
X-Google-Smtp-Source: APXvYqzPTEbapbHMYWeac11nkJLGp44ACkUaB+/r95lSVAy9myP9cR1rs5A45gbReHZGE1+NUDGK3w==
X-Received: by 2002:ac2:4c84:: with SMTP id d4mr12505852lfl.1.1563227221304;
 Mon, 15 Jul 2019 14:47:01 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-22cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.34])
 by smtp.gmail.com with ESMTPSA id q2sm2457074lfj.25.2019.07.15.14.47.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 15 Jul 2019 14:47:00 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>, Richard Weinberger <richard@nod.at>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH 0/5] Move remaining partition parsers
Date: Mon, 15 Jul 2019 23:46:29 +0200
Message-Id: <20190715214634.31697-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_144703_084348_F32E1879 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

There are 5 partition parsers still in the main mtd
directory, it makes no sense to me so let's just move
them to the other parsers. No functional change
intended.

I might have done some copyediting of the Kconfig
text to reflect that they are all parsers.

Linus Walleij (5):
  mtd: parsers: Move TI AR7 parser
  mtd: parsers: Move BCM47xx parser
  mtd: parsers: Move BCM63xx parser
  mtd: parsers: Move OF parser
  mtd: parsers: Move CMDLINE parser

 drivers/mtd/Kconfig                           | 67 ------------------
 drivers/mtd/Makefile                          |  5 --
 drivers/mtd/parsers/Kconfig                   | 68 +++++++++++++++++++
 drivers/mtd/parsers/Makefile                  |  5 ++
 drivers/mtd/{ => parsers}/ar7part.c           |  0
 drivers/mtd/{ => parsers}/bcm47xxpart.c       |  0
 drivers/mtd/{ => parsers}/bcm63xxpart.c       |  0
 .../{cmdlinepart.c => parsers/mdlinepart.c}   |  0
 drivers/mtd/{ => parsers}/ofpart.c            |  0
 9 files changed, 73 insertions(+), 72 deletions(-)
 rename drivers/mtd/{ => parsers}/ar7part.c (100%)
 rename drivers/mtd/{ => parsers}/bcm47xxpart.c (100%)
 rename drivers/mtd/{ => parsers}/bcm63xxpart.c (100%)
 rename drivers/mtd/{cmdlinepart.c => parsers/mdlinepart.c} (100%)
 rename drivers/mtd/{ => parsers}/ofpart.c (100%)

-- 
2.21.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
