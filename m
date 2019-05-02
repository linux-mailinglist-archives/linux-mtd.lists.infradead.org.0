Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E716111B7B
	for <lists+linux-mtd@lfdr.de>; Thu,  2 May 2019 16:32:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mDQFTh/P1eTGmwakNpb11Inc+uycYzsYnSCUPBWKOmI=; b=c57xS9f9nNFCS/
	8XoM3nBgZGVam8YKYOdEQvqXILv6RSwKBig0ZCd8U4+8ZF2oHB9NfPeV8Qqv49uZqC3ZRtr8cK5i3
	C3wZwg85ZSYKiQILZuiSQ9VnwRp+DBnVoeA3+CVDN7peP8DI37ybYYH3fbnuYgB5qTGJPx4BaSa47
	eGuxBPTZJzrKB5S087nSGy9vY2RrsoVMV2h3GiE5K/fLT5Mpo7fTlt/8B0mgm4P15hvDQJILR/VvP
	37uX/Q7horLRsbVjfcfdbUF1Gp6ksmtn1VxFuD9NrdKixmW4w45zmolyMNBUlqdzwA5xl/TBeyqtf
	MD7uwUEMlX8uFy6l6R1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMClX-0000bR-Py; Thu, 02 May 2019 14:32:51 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMClQ-0000b8-Ju
 for linux-mtd@lists.infradead.org; Thu, 02 May 2019 14:32:46 +0000
Received: by mail-lj1-x242.google.com with SMTP id c6so2364810lji.11
 for <linux-mtd@lists.infradead.org>; Thu, 02 May 2019 07:32:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Hwl+cMX3S6EFVqXoZuj/KSpYvFwXQ/SF5Xnnd8/i/7A=;
 b=wz/UJJcmOe+45i4Xx8Ifw4x3zDfLD+Ztsu+DCcNO8FMwiaDUxaDHXKLBt7Ib3r+GwL
 hVbpd1flTH+xHP5G3KSsd96ELxvw4W8nxPMQAq6MuhEqG750qqa2uQKps/HQN9v2EVFY
 DbTeRKJjEb/gWEZ7m3KeSu4A29BoKeB6i7A+Z4FMlGjvfN0MaVmKfdiuOo11GN3LQpzJ
 r5IRzrJPDEjV5YyBjLte58N/IcuwoXOzTvF328hJCsZBq5acUdQN1WyRRczboiKNaR6C
 6RosPH6dJvy+iOdDEuNWaSf9bRJAgDHRfVQ84TQvMvaOGQ50RrwpO+JPLrbD4mbaTM0B
 H1EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Hwl+cMX3S6EFVqXoZuj/KSpYvFwXQ/SF5Xnnd8/i/7A=;
 b=IIYLaWfkE8llTT7S/pSfTEhmuXpv8gnJejzNt638u1rUPB3C49PLdpdfSqt6J2V9UO
 1gHMVEUHSW4B7GcSWJ0g8awZQBL/IVdlt1E4UdmeRsybPt6muAcgL84O0wbktxBQ/SRB
 c1PKTmyabsH3d0tfqbMbUDllmA1HopvSw4ycI9fTwzEs4k+Omi6XgIUJZbihddjP2tre
 0un5lCe+4e1WdvTDCOFFDLqz59KWhx3qqAlJUEefLq/J7cwEDvwY7LKDW+0d4MFHTx/O
 N1WkYNQCSlao9bfA95wLvX9hsQGEIpu6szPKXVJR+5GV0GrpxiGP9revdW/6Blu6CbWD
 xqIw==
X-Gm-Message-State: APjAAAXyFU8Dq3aUu+gWppO44XalIiZzoFncbhoxhPUoYMYRcVy1rR7X
 RdtiFCh0KNgOhi8PmIDymYgOaA==
X-Google-Smtp-Source: APXvYqzYEagRue7bRTRrZXA09gcqH+Do/qjDyv1asLfEtxkv6icKb2jbdcYqyRu0lpucYz4YBK7WRA==
X-Received: by 2002:a2e:5301:: with SMTP id h1mr2052381ljb.196.1556807562521; 
 Thu, 02 May 2019 07:32:42 -0700 (PDT)
Received: from localhost.localdomain
 (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.210])
 by smtp.gmail.com with ESMTPSA id l79sm9430625lfe.92.2019.05.02.07.32.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 02 May 2019 07:32:41 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>, Richard Weinberger <richard@nod.at>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org
Subject: [PATCH 0/9 RESEND 2] AFS patches resend 2
Date: Thu,  2 May 2019 16:30:25 +0200
Message-Id: <20190502143034.16781-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_073244_772892_9C08B00E 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi!

This is the second resend of the AFS and AFSv2 partition
parsing patches. I already resent them once for v5.0 but
they weren't applied.

If things are not getting anywhere I suppose I will
submit them to ARM SoC or something for v5.2, I suppose
it is a bit of stressful for MTD right now.

Tell me how I can help out (not co-maintenance sorry,
I have too much on my plate already).

Yours,
Linus Walleij


Linus Walleij (9):
  mtd: afs: Move AFS partition parser to parsers subdir
  mtd: partitions: Add AFS partitions DT bindings
  mtd: partitions: Add OF support to AFS partitions
  mtd: afs: simplify partition parsing
  mtd: afs: simplify partition detection
  mtd: factor out v1 partition parsing
  mtd: afs: factor footer parsing into the v1 part parsing
  mtd: afs: factor the IIS read into partition parser
  mtd: afs: add v2 partition parsing

 .../mtd/partitions/arm,arm-firmware-suite.txt |  17 +
 drivers/mtd/Kconfig                           |  16 -
 drivers/mtd/Makefile                          |   1 -
 drivers/mtd/afs.c                             | 266 ------------
 drivers/mtd/parsers/Kconfig                   |  16 +
 drivers/mtd/parsers/Makefile                  |   1 +
 drivers/mtd/parsers/afs.c                     | 410 ++++++++++++++++++
 7 files changed, 444 insertions(+), 283 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mtd/partitions/arm,arm-firmware-suite.txt
 delete mode 100644 drivers/mtd/afs.c
 create mode 100644 drivers/mtd/parsers/afs.c

-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
