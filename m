Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4345591867
	for <lists+linux-mtd@lfdr.de>; Sun, 18 Aug 2019 19:40:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qusErwDyAWv+PkKPy/nLNU7/0NM2xP2kQL/NE47LkLc=; b=hbq
	s3PBik3TPRyUWXqyiiWJtPxCTlbTWyuTR2V/gRRYIqvCYjxta6e+h7QeFZLGTY/5ss1VZZAUgUmVX
	1tRz3aSnAi4UYf+ooao49KLO7hxVDGBlttjaoOCxgpVoRs1GeyMfYnd5UyTLy7PUPyDCTAhHCst4L
	eCy5YDP2Y48bN2Ner9r3ezdRUfHjeFwgzpgylUV5v2h61Ex/BXMetzvyC9RIE+ZE3A4Gz7dGVXIik
	AeqPvJJ2/lYK20CJFnh9aeiux7rwHJU/eOjc+yr6pW01wNi0WXt/xjcZou3WTU68C9sgSZxJod6mK
	+m3a7d83OGVDN3T+EWBN7qWt5wDeD9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzPAB-0001SY-19; Sun, 18 Aug 2019 17:40:20 +0000
Received: from mail-yb1-f193.google.com ([209.85.219.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzP9s-00011l-NS
 for linux-mtd@lists.infradead.org; Sun, 18 Aug 2019 17:40:01 +0000
Received: by mail-yb1-f193.google.com with SMTP id t5so3601103ybt.4
 for <linux-mtd@lists.infradead.org>; Sun, 18 Aug 2019 10:39:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=xRA6A3IpkVXBsZQsDundHQBjGso3fPaNrTm4wSuFb2I=;
 b=Yr6WV0MMt9ke28sGY7qSb0tdDjfTkMw0kbvC/raxKJnL4K3mn+QpudNkl2CcTL3LoA
 qT9GB9aiOuq7rbay+kRve5AruOtS/Dnl0YGAW8pupWMofTB9JjRub7f5ysH4rug9GTBP
 HD/MM0qSjUwxyHrJMk4mS7sSuMsJ16t073Auuc37l+fWvIUUUV+4asCP5GWsTSO2U7nR
 bA8kffOqN0gtrCfH0i4GvePumQOjDK982CxknrplBMiDuPDKpy3MaKjvxOzCVGMimGOQ
 u+mYMzh5FCzFliHPunObV1+/Y9/oCiIeLOJ+5pUPh+zsU8V//KviiW0n8xs52bx0i3Kc
 78bQ==
X-Gm-Message-State: APjAAAV0N2ghr1rotnHbJh+Im6NTqYX3HlugY3gZhJhfadZx6OZu57RI
 cWjMMaJudBCitPin8GHjvJc=
X-Google-Smtp-Source: APXvYqz6cIYNKgmPI9/ElWLDLvo/dZWKDKfDQtT9fbhsMqawO74UYd5k8zODyNwRk3ic6wYVKMqM5Q==
X-Received: by 2002:a25:782:: with SMTP id 124mr14756624ybh.106.1566149998215; 
 Sun, 18 Aug 2019 10:39:58 -0700 (PDT)
Received: from localhost.localdomain (24-158-240-219.dhcp.smyr.ga.charter.com.
 [24.158.240.219])
 by smtp.gmail.com with ESMTPSA id d81sm254314ywe.59.2019.08.18.10.39.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 18 Aug 2019 10:39:57 -0700 (PDT)
From: Wenwen Wang <wenwen@cs.uga.edu>
To: Wenwen Wang <wenwen@cs.uga.edu>
Subject: [PATCH] mtd: spi-nor: fix a memory leak bug
Date: Sun, 18 Aug 2019 12:39:53 -0500
Message-Id: <1566149993-2748-1-git-send-email-wenwen@cs.uga.edu>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_104000_765376_D0D80847 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wenwenict[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, open list <linux-kernel@vger.kernel.org>,
 Marek Vasut <marek.vasut@gmail.com>,
 "open list:SPI NOR SUBSYSTEM" <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

In spi_nor_parse_4bait(), 'dwords' is allocated through kmalloc(). However,
it is not deallocated in the following execution if spi_nor_read_sfdp()
fails, leading to a memory leak. To fix this issue, free 'dwords' before
returning the error.

Signed-off-by: Wenwen Wang <wenwen@cs.uga.edu>
---
 drivers/mtd/spi-nor/spi-nor.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 03cc788..a41a466 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -3453,7 +3453,7 @@ static int spi_nor_parse_4bait(struct spi_nor *nor,
 	addr = SFDP_PARAM_HEADER_PTP(param_header);
 	ret = spi_nor_read_sfdp(nor, addr, len, dwords);
 	if (ret)
-		return ret;
+		goto out;
 
 	/* Fix endianness of the 4BAIT DWORDs. */
 	for (i = 0; i < SFDP_4BAIT_DWORD_MAX; i++)
-- 
2.7.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
