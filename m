Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E3F31B3081
	for <lists+linux-mtd@lfdr.de>; Tue, 21 Apr 2020 21:38:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1TxYYFEFg+I4etvHOLlVIxF46T7vmsANRlZrCd4P/NI=; b=DlEeIKWCAwBiiq
	kQtJv4fzFuGo8xCTDxzROJgf1HKGDZf7VoUKys+CPhuDpOr8GgrRKLkJZFBHbWuIGwUT2Thjb/8OZ
	nTotEXt49Zepajczi2TbhsHL1/6W7zg7a/9gxnPKOreTKGg5J8xhuX447xV5jPVwWnBZ6ahAYruyG
	/QaLp6mJapVm9WR3Kz28Ht/DDnIFPgqwCuJF/SYdEV8O9uvRCkncAFYazjHg9VBqZm8IU2vhQQOAY
	t0TouMoa14eX8keru4TOlaQC7eP0hk5BRA97HPKrZkDKKxzHh+c+xlHYhUoRudjwatPeo/gkNNKxs
	baaRNoak/sEKWKmdjI+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQyjP-0004Px-0S; Tue, 21 Apr 2020 19:38:55 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQyjG-0004OK-Dp
 for linux-mtd@lists.infradead.org; Tue, 21 Apr 2020 19:38:47 +0000
Received: by mail-lj1-x244.google.com with SMTP id z26so15239005ljz.11
 for <linux-mtd@lists.infradead.org>; Tue, 21 Apr 2020 12:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:from:to:cc:references:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=pFlyc+4kXB47tFyTHhAyexaM/O+sJg6gsHxjxG1Anbo=;
 b=udSOYKleCY4yQdrlyZcbvwvvU21SVaXzmoEr7hTPdnTkMh81BRpUXrigpBH8Hh8QLZ
 ezqELQp8V4zlrLzRZMCi9lh6/IWuDDz5HFglCxEsGF2xUujm1CFVC5gzW2V9sjfyc1Id
 /MKTcbvhptmt7j876lIxRk7PJ/RcybODOOAJ6Hx66SeqQndEcj++msDAOYFXuc+sKu0Q
 BviSOZ1jg47uG3VXhVKMLXjBgi9vflj6riVxXN1W0DzLygDZVnuUcHw/sAfcNgw9hi/O
 FPSwFaxcMvwkch4uqHgpWhofRdi3AyNSrlJYBV/MQopxaIq39e06bgOAUjlZnFzoMEm2
 A4/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=pFlyc+4kXB47tFyTHhAyexaM/O+sJg6gsHxjxG1Anbo=;
 b=j0JICcBSTY5BorM300X2qrY9LZW5S3QhtKMpdAqX9L2clPA7ThWDSlSLvcS6zXn2Lm
 PIkQfGOioniyxCDAz+7/D7/p12TvGR9DqOu0LrwMbgXVNhU3ggNmxtnm2TcKRyu9ARhN
 SAQwuW+AVfBPcXSV4MPasE62JRpEF7ny7MhRr04ACJpyqkp+rBh4EFo1h2r5CFNe4ZPW
 H/Q2rdy4L5bkGyuvTgbgToHNgewb0RiUC58FabJIULm5ep14cz4iNWAFVepK8pFFbZLn
 fXKpVr7VKiKxROiQ864gxeKpGq8PvclNUzzQ2KSoyH6JSyev4l6RTBnKW36H+eTwSYD/
 nLsw==
X-Gm-Message-State: AGi0PuZ2Z8FyEmW9v3rXv4vGe4OQYEgSji1x+hHpfz6ZyLrzCDbzuplb
 +uz7jWm0o60k3F13ixtRxKEni1xIrnw=
X-Google-Smtp-Source: APiQypIMTq0B3f9fNY9Xcddub4xQD5aBCeHUtt3MYa3Te0v5bKvPkUIPWYKUWsj4AfNEU6efT4NOhg==
X-Received: by 2002:a2e:7109:: with SMTP id m9mr13408651ljc.148.1587497923668; 
 Tue, 21 Apr 2020 12:38:43 -0700 (PDT)
Received: from wasted.cogentembedded.com
 ([2a00:1fa0:44ea:bbc9:93b5:ce4b:a4b8:c36c])
 by smtp.gmail.com with ESMTPSA id i20sm3040118lfe.15.2020.04.21.12.38.42
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 Apr 2020 12:38:43 -0700 (PDT)
Subject: [PATCH 1/2] mtd: spi-nor: core: fix kernel-doc typo for
 spi_nor_manufacturer_init_params()
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
To: Tudor Ambarus <tudor.ambarus@microchip.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>
References: <255c50e1-f233-6cb1-f170-aa0c384ca8bd@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <bf192539-fc11-a965-8dd4-57adc07da36b@cogentembedded.com>
Date: Tue, 21 Apr 2020 22:38:42 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <255c50e1-f233-6cb1-f170-aa0c384ca8bd@cogentembedded.com>
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_123846_463124_545264B3 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

When spi_nor_manufacturer_init_params() was added, the kernel-doc for it
contained a typo: 'struct spi-nor' instead of 'struct spi_nor' -- fix it.

Fixes: ce0b6f3f3c43 ("mtd: spi-nor: Add default_init() hook to tweak flash parameters")
Signed-off-by: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>

---
 drivers/mtd/spi-nor/core.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

Index: renesas-devel/drivers/mtd/spi-nor/core.c
===================================================================
--- renesas-devel.orig/drivers/mtd/spi-nor/core.c
+++ renesas-devel/drivers/mtd/spi-nor/core.c
@@ -2675,7 +2675,7 @@ static int spi_nor_setup(struct spi_nor
 /**
  * spi_nor_manufacturer_init_params() - Initialize the flash's parameters and
  * settings based on MFR register and ->default_init() hook.
- * @nor:	pointer to a 'struct spi-nor'.
+ * @nor:	pointer to a 'struct spi_nor'.
  */
 static void spi_nor_manufacturer_init_params(struct spi_nor *nor)
 {


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
