Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA541E791A
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 11:14:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AWV1zOLu0luA9mci1rGf11uZw6sq7CexrbyxmAue5m8=; b=n/ESNgA9o4bFtZ
	lwAtBsXVoEsp8CzAdT00d3en+3sGhWtvEEWk4gPWRjFlsJA46M41MXqDBRBQGdikZUTA7E5LogU1W
	9qbUXxpcEQukb48W4zEBMrDboXa1k6aSHIGi7dAQumDdObLHRpHtx66rzUqwlnofIPi54wzdpRHYL
	XMlionJX9Jd1DguNTVQXtZUXrr58/hIvN8OW011ZF15eJEC04BGdmhyYujQUvz/lZcaxFqqKZfIT9
	8yEfMXBnnqAvt35TSecDYUSfU6kUIaQGX+RjYjlT11UffL+Aan4+8eyaXWgZOqmW4Pz+UK+FNo3Md
	esvfO0towXe7I60VhkdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeb5d-0006Rg-Nt; Fri, 29 May 2020 09:14:09 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeb5X-0006Qd-BL
 for linux-mtd@lists.infradead.org; Fri, 29 May 2020 09:14:04 +0000
X-Originating-IP: 42.109.222.225
Received: from localhost (unknown [42.109.222.225])
 (Authenticated sender: me@yadavpratyush.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 0194720011;
 Fri, 29 May 2020 09:13:49 +0000 (UTC)
Date: Fri, 29 May 2020 14:43:42 +0530
From: Pratyush Yadav <me@yadavpratyush.com>
To: Mason Yang <masonccyang@mxic.com.tw>
Subject: Re: [PATCH v4 0/7] mtd: spi-nor: add xSPI Octal DTR support
Message-ID: <20200529091342.75amqyxwucb3v3vo@yadavpratyush.com>
References: <1590737775-4798-1-git-send-email-masonccyang@mxic.com.tw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1590737775-4798-1-git-send-email-masonccyang@mxic.com.tw>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_021403_522931_311BD827 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.200 listed in wl.mailspike.net]
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
Cc: vigneshr@ti.com, tudor.ambarus@microchip.com, juliensu@mxic.com.tw,
 richard@nod.at, linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 broonie@kernel.org, boris.brezillon@collabora.com, miquel.raynal@bootlin.com,
 matthias.bgg@gmail.com, linux-mtd@lists.infradead.org, p.yadav@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Mason,

On 29/05/20 03:36PM, Mason Yang wrote:
> Mason Yang (7):
>   mtd: spi-nor: sfdp: get octal mode maximum speed from BFPT
>   mtd: spi-nor: sfdp: parse xSPI Profile 1.0 table

I think you've misunderstood what Boris meant. The idea of specifying a 
dependency on a patch set is assuming that entire series is already 
applied to the main branch, and then creating patches on top of those.

So, for example, you can checkout the 'master' branch of linux-next. 
Then apply all 19 of my patches on top of that branch by using 'git am'. 
Then you add your work there and separate it out on a set of commits.

If you'd to that, you won't need to add a separate patch for parsing the 
Profile 1.0 table because I've already done that in my series. All you 
need to do is add the extra things, like adding parsing of a DWORD that 
my series doesn't, or adding support for your Macronix flash.

>   mtd: spi-nor: sfdp: parse command sequences to change octal DTR mode
>   mtd: spi-nor: core: add configuration register 2 read & write support
>   mtd: spi-nor: core: execute command sequences to change octal DTR mode
>   spi: mxic: patch for octal DTR mode support
>   mtd: spi-nor: macronix: Add Octal 8D-8D-8D supports for Macronix
>     mx25uw51245g
> 
>  drivers/mtd/spi-nor/core.c     | 151 ++++++++++++++++++++++++-
>  drivers/mtd/spi-nor/core.h     |  41 +++++++
>  drivers/mtd/spi-nor/macronix.c |  55 +++++++++
>  drivers/mtd/spi-nor/sfdp.c     | 246 +++++++++++++++++++++++++++++++++++++++++
>  drivers/mtd/spi-nor/sfdp.h     |   4 +
>  drivers/spi/spi-mxic.c         |  98 ++++++++++------
>  6 files changed, 562 insertions(+), 33 deletions(-)
> 

-- 
Regards,
Pratyush Yadav

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
