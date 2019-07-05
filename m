Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF4460CDC
	for <lists+linux-mtd@lfdr.de>; Fri,  5 Jul 2019 23:01:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z0wFa8gOd2mIoh0oTP82/SvSauy4verCCWeoustJLqM=; b=jYSKWuUK/5TNLH
	VkUFFfGoUTN74SYnfK8Q95BgWTn15wmzy+hvHJuiS2Yx1CFwDtfGxsidsREgXyQavferlic6/UOte
	ywuet40ICVTNoJ1j0TxBmlmvpPAX/W4SadYoEZUV4YMWYeAoP9D8RZ7TVAisCxVkradd1j3dmZXXx
	q0sIy1tGOYcaqpG0RBQcLic5nMp2WR7aO6ygYeBVOmXaFxx0tFGySON9XJp7eCvhh+gS+CfQbeWHT
	+V5rTh2foqZgnhFRKL8vRBINSWrEAH9rAKnFIjXh/BpzVZVS7NoXJbLAgu4AxAVGIoVSsa/BomWhC
	+n1wpAW4m3YvYjd2Jr8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjVKE-0006TZ-7J; Fri, 05 Jul 2019 21:00:58 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjVJw-0006SZ-2z
 for linux-mtd@lists.infradead.org; Fri, 05 Jul 2019 21:00:42 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 107921BF207;
 Fri,  5 Jul 2019 21:00:19 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Paul Cercueil <paul@crapouillou.net>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH] mtd: rawnand: ingenic: Fix ingenic_ecc dependency
Date: Fri,  5 Jul 2019 23:00:13 +0200
Message-Id: <20190705210013.13355-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190629012248.12447-1-paul@crapouillou.net>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: c403ec33b613a15d9fd8dde37f246b79cd56b5df
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_140040_290396_24C788F0 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Richard Weinberger <richard@nod.at>,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Hulk Robot <hulkci@huawei.com>, od@zcrc.me,
 linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sat, 2019-06-29 at 01:22:48 UTC, Paul Cercueil wrote:
> If MTD_NAND_JZ4780 is y and MTD_NAND_JZ4780_BCH is m,
> which select CONFIG_MTD_NAND_INGENIC_ECC to m, building fails:
> 
> drivers/mtd/nand/raw/ingenic/ingenic_nand.o: In function `ingenic_nand_remove':
> ingenic_nand.c:(.text+0x177): undefined reference to `ingenic_ecc_release'
> drivers/mtd/nand/raw/ingenic/ingenic_nand.o: In function `ingenic_nand_ecc_correct':
> ingenic_nand.c:(.text+0x2ee): undefined reference to `ingenic_ecc_correct'
> 
> To fix that, the ingenic_nand and ingenic_ecc modules have been fused
> into one single module.
> - The ingenic_ecc.c code is now compiled in only if
>   $(CONFIG_MTD_NAND_INGENIC_ECC) is set. This is now a boolean instead
>   of tristate.
> - To avoid changing the module name, the ingenic_nand.c file is moved to
>   ingenic_nand_drv.c. Then the module name is still ingenic_nand.
> - Since ingenic_ecc.c is no more a module, the module-specific macros
>   have been dropped, and the functions are no more exported for use by
>   the ingenic_nand driver.
> 
> Fixes: 15de8c6efd0e ("mtd: rawnand: ingenic: Separate top-level and SoC specific code")
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> Reported-by: Arnd Bergmann <arnd@arndb.de>
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Cc: YueHaibing <yuehaibing@huawei.com>
> Cc: stable@vger.kernel.org

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git mtd/fixes, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
