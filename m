Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A20EA392
	for <lists+linux-mtd@lfdr.de>; Wed, 30 Oct 2019 19:44:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GAlVbMS4cEaQxxAnGrzJmZEKYMyOwyzvCNbhIZBn+yA=; b=duZxlB0rUEvAbI
	mz1hBSEuCD2ngX3pcYOMoTJd0lWF2ETmFVV+KYU2p96/KRaMGJNKmRXL8nxrK4bHTOXHrWTbz1Sab
	OVG8ojbLw5uH/BFo7xNNbXmc/NuZkBTebvPluaEvaMqrBHNAFk0e8GbKyEVNsNIqXvtO2AOlyXl9F
	djrQjqftjhTjpmqcD+Xvj5Ja/yfultqp/j5vVveoATTtOrDOpYQLL+TUwU15/C4OIUcDDXYN7MtfG
	dqhcaYvaETEXqRzND7qwNWlsNz1IM4pf+Yrk2YCm4HmsAjFOBW4DN6pNruP8oGK6ZxH21RSK08vov
	K/QIKwcEbgtuAlcY2NQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPsxg-0003b1-WE; Wed, 30 Oct 2019 18:44:53 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPsxU-0003YI-NB
 for linux-mtd@lists.infradead.org; Wed, 30 Oct 2019 18:44:42 +0000
Received: by mail-lj1-x235.google.com with SMTP id m9so3805541ljh.8
 for <linux-mtd@lists.infradead.org>; Wed, 30 Oct 2019 11:44:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=to:from:subject:organization:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=jfkVRA5Lj/WBoTfmAQ/y1AD3S7I01b1v7Xnmb4bzmoM=;
 b=dPLz9uQOLcnndR2HYQ0xOQS4kpdeYmMSLP5FmaWLvGejUaFMfUzF236GSpPyNl/neU
 V4vrSS22rjaEieczs2EJDA87s9mamE+gzUPmR4ervlHqSNPfThGa9dUCJ+QxaUt818qQ
 oAHjqy1m1I/jLIpWr7lNHQGPFo/LThahF0hdYVgkGIiIV1v5rUfYGcSUZguJMY8rwoGb
 3AmwGMKZLrw/QAilgNJzQfNdkZhEo8tY4RnQ4Ix6FNJUjwHTH6IHqqXEFm2YGHq+hL8T
 b2sIJtHE2LGfJVxnOqGsVBY+6AuWMn18Ok6xkG0a2B/Y8rPQKFMgH/Rqh7O8oSjDnW6U
 LsxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:organization:message-id:date
 :user-agent:mime-version:content-language:content-transfer-encoding;
 bh=jfkVRA5Lj/WBoTfmAQ/y1AD3S7I01b1v7Xnmb4bzmoM=;
 b=rz7/ZH7yHnyvFSQThY9hCm5LMFRgGD0SGIgXVgackLMgeHTzAWsC/GAYslyVo4Bm+n
 aYfo87g41iVo+NUHHCbo0Sd/IvyXMKxTVWIRh5VvSleMkcv9uQthxFSN9WtuDvSndi1X
 MQsfDfg2oQsMQEw0MVivrpzsxWtLfXNrukJ+TuZqIIvzkPoSh9fqIu1JrazOY+3194nY
 J5fW7/03WuBQ7ODT22btUl4cXYu5VpF0TEwl7gEY4pD4LtPnMn7gjuhRC1UmRCwIMbB7
 DGeeBZqiDf5KBtG0izOpGCX35WOYF/HPFHpVMK8yf/ahq+ZJ4ilFc4htvX23dEmfR37Q
 DSrg==
X-Gm-Message-State: APjAAAVQEHBp73m1ecK4uM82wbo6Uu3nNJ3G8h0vxp3/S3w0IsKgRSVY
 5YuVtcULLW77kCbuu5CTqvLuWxEWiCo=
X-Google-Smtp-Source: APXvYqxEMaR9jcpWyIngl6Njrn1DR0bZOki4VjLkROxepoJUuIsNK37hHM1h5WK8dkaZB9oDxgvf3Q==
X-Received: by 2002:a2e:87c9:: with SMTP id v9mr810540ljj.65.1572461078168;
 Wed, 30 Oct 2019 11:44:38 -0700 (PDT)
Received: from wasted.cogentembedded.com
 ([2a00:1fa0:454:89dd:4e25:eb47:574e:ea06])
 by smtp.gmail.com with ESMTPSA id d28sm377745lfn.33.2019.10.30.11.44.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 30 Oct 2019 11:44:37 -0700 (PDT)
To: Marek Vasut <marek.vasut@gmail.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 linux-mtd@lists.infradead.org
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Subject: [PATCH v2 0/2] Fix silent truncations in the SPI NOR driver
Organization: Cogent Embedded
Message-ID: <e069093b-ea7c-9a8f-7700-ee0d8d23ef91@cogentembedded.com>
Date: Wed, 30 Oct 2019 21:44:36 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_114441_172638_AFBE44E6 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:235 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello!

Here's a set of 2 patches against the 'mtd/fixes' branch of the MTD 'linux.git' repo.
The SPI NOR driver assigns th result of a function returning 'ssize_t' to the *int* 
variable in a couple of places, while 'ssize_t' is a 64-bit type and *int* is a 32-bit
type on the 64-bit machines. The silent truncation that happens there isn't really
valid, so we have to fix up the variable's type...

[1/2] mtd: spi-nor: fix silent truncation in spi_nor_read()
[2/2] mtd: spi-nor: fix silent truncation in spi_nor_read_raw()

MBR, Sergei

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
