Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 550F58B0BE
	for <lists+linux-mtd@lfdr.de>; Tue, 13 Aug 2019 09:26:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DgmfliY+sI96ZT5Hhovd5uc+yV1svCOT7+HPBy9wOJI=; b=iFN/RAMyCvFwVm
	ZIurrlDubs5dXctKVFHvT4oKL82sT3q1O/Q1VEz5DN0Y4hswrgtbnumfeRgGCArKnpV3f5N4lNiY4
	HA+uEeLfDVTBNgiu4FofyEWOJeHaz1CKAxAQIuBRPDPVeELgMfrSmAMSToszmHcD2Ew2F/hF7Ezz5
	nKmzjOWQrH0MN5cVVSPc8gXky7XiSp7Cd92m9BjuiMmrhhuDkza4z2oIPDF6kWSqiz03YdneCcBRD
	5B+Ww7q4cpgnWRiv4ppKPmfJQd3v7uQ/RGwMGhISp32EiYYx8hxZ9To5mG8ZbnX+mkHN8Qkc/K17S
	cZr7DZguCrURqoKqWs0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxRBw-00069U-QN; Tue, 13 Aug 2019 07:26:00 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxRBb-00068E-PY
 for linux-mtd@lists.infradead.org; Tue, 13 Aug 2019 07:25:41 +0000
Received: by mail-lf1-x141.google.com with SMTP id v16so4339413lfg.11
 for <linux-mtd@lists.infradead.org>; Tue, 13 Aug 2019 00:25:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YjWcn8ohQV4liBYXTNlbzWL39ys+LDh8NQZHSh4Hjlg=;
 b=X3cNMUQIPV9vQv72LIT5LrEy25D+0jpEZh1ZoSP3BpLDGIWYPlBmYiSApLMtSKM8oM
 PPJryq0qS7HkKBgwJHRVzpDBqYpscL6EyMeASoiK82aT+3qs3MEANt9MfUGCf0cUPu05
 u3lAroOCG+j3J9F7tK9c4YsijfDXR5sSVk/k+2GcDrAN6QGyOQbVJKw2cKmvSFsSyZx2
 uVb/L1bgMicXzBPGPSCNquE4/iJ6YTqvl0/MYtw6dxtTn5ViJ96VfQ5z9+4mAbGpIb7y
 wSXuR3Y1u8fzDarBoSXRVNWLW1/2ZQszFIjaO69y/EyxDZ6sxLqpLnDwK41HscXzviyG
 t0dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YjWcn8ohQV4liBYXTNlbzWL39ys+LDh8NQZHSh4Hjlg=;
 b=qOQ3DSLa+5Q+36ScWEIZx7Li8S4FqG5nbDiFcZO7jJoILqv1uR/XgDyHUqSJAxAqrw
 RhMcPWRWje83jUYa7X4pHO8GjOFj9FCkF5RxGfJdTLtmhzWtB/7MwAaUW8mNudaihJQL
 oU5swemwrlarUazVUMWNkGxq88UzFNkfj53Bor67bULjdQcQWjXkwhUOCeWq8mjnIQGF
 BaezWl5pkiXOAaec4IHLmlQTDjlowHV1fI1s0C/OgTH20ii54QB22Rm9wA+3gp5cmaEx
 4aVGTUNHHGEKEk67k/P9Mdj3mWOmwNlDwMbY8rO1oggVBsgzsf/yBnrJ26N/BTsLh34e
 Be1w==
X-Gm-Message-State: APjAAAU2m3ePEDngGWn+EqLs4ukjLHZQAmlH2kMCAVHsHEeIxK/feMDK
 RaI0e982Dhzb9B+MHzlQ3mpjTA==
X-Google-Smtp-Source: APXvYqzn/paoy/NCrOpa/f1i//Y3ID68jgWR+AuHScx6CfqVFmtpZN4XglH2ClZXuL8pk1F5soLXkw==
X-Received: by 2002:a19:5f46:: with SMTP id a6mr22671586lfj.142.1565681137749; 
 Tue, 13 Aug 2019 00:25:37 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-2ccd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.44])
 by smtp.gmail.com with ESMTPSA id d22sm2004804lji.99.2019.08.13.00.25.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 13 Aug 2019 00:25:36 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>, Richard Weinberger <richard@nod.at>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH 0/5 v2] Move remaining partition parsers
Date: Tue, 13 Aug 2019 09:25:26 +0200
Message-Id: <20190813072531.4234-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_002539_835979_1CA198A8 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

The only change in v2 is a rename error that made the
cmdline partition parser have the wrong name, found by
the zeroday builder.

Linus Walleij (5):
  mtd: parsers: Move TI AR7 parser
  mtd: parsers: Move BCM47xx parser
  mtd: parsers: Move BCM63xx parser
  mtd: parsers: Move OF parser
  mtd: parsers: Move CMDLINE parser

 drivers/mtd/Kconfig                     | 67 ------------------------
 drivers/mtd/Makefile                    |  5 --
 drivers/mtd/parsers/Kconfig             | 68 +++++++++++++++++++++++++
 drivers/mtd/parsers/Makefile            |  5 ++
 drivers/mtd/{ => parsers}/ar7part.c     |  0
 drivers/mtd/{ => parsers}/bcm47xxpart.c |  0
 drivers/mtd/{ => parsers}/bcm63xxpart.c |  0
 drivers/mtd/{ => parsers}/cmdlinepart.c |  0
 drivers/mtd/{ => parsers}/ofpart.c      |  0
 9 files changed, 73 insertions(+), 72 deletions(-)
 rename drivers/mtd/{ => parsers}/ar7part.c (100%)
 rename drivers/mtd/{ => parsers}/bcm47xxpart.c (100%)
 rename drivers/mtd/{ => parsers}/bcm63xxpart.c (100%)
 rename drivers/mtd/{ => parsers}/cmdlinepart.c (100%)
 rename drivers/mtd/{ => parsers}/ofpart.c (100%)

-- 
2.21.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
