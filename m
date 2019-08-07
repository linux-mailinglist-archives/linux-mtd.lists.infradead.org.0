Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B322850E2
	for <lists+linux-mtd@lfdr.de>; Wed,  7 Aug 2019 18:18:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7aejqRv9Yw3L7AiQP8W3nglmu4KyTf4N5EP9UuYn+bU=; b=V3nL6xt/2tUV/w
	/Bpks9DsxHD4SqoSBjBUHg0b3HuAb5Cbfc8CC34F8NTrscCaROHH8HjuozaaIq+iUKSk4zMrYsFb9
	XLep3YXIosCW2SPH8Ugxv8akuQaUz87Ja0D0JulPl3hpmQFdRjd80aMSmPvbeIQ1aFXwcf0tW0MeB
	mumpPWtwomo/8d88d4UX+dyrxmCFfyeYT39h4I5payTtmKzq0Bqd8ZAiOiG3V1G+mJAhFCR+vqSDN
	7QM+DsdCeQ5ODckRMWWD0dv0nH6XcIqmEG5EAK41xHJGSQhi13nSnkE8HWa8/ceVGhY29I9DW6d1X
	/qPVta7A7WOrXDzX1VSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvOdd-0003oZ-H3; Wed, 07 Aug 2019 16:18:09 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvOdB-0003VZ-Ry
 for linux-mtd@lists.infradead.org; Wed, 07 Aug 2019 16:17:43 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 5F45A20018;
 Wed,  7 Aug 2019 16:17:38 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Julia Lawall <julia.lawall@lip6.fr>, Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH] mtd: rawnand: ingenic: fix
 devm_platform_ioremap_resource.cocci warnings
Date: Wed,  7 Aug 2019 18:17:36 +0200
Message-Id: <20190807161736.13467-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <alpine.DEB.2.21.1907221834570.3471@hadrien>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 3194166052401e04ca6ca71446a1ca5dd9af2433
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_091742_123479_FE28BF10 
X-CRM114-Status: UNSURE (   7.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Boris Brezillon <bbrezillon@kernel.org>, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, kbuild-all@01.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, himanshujha199640@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, 2019-07-22 at 23:39:34 UTC, Julia Lawall wrote:
> From: kbuild test robot <lkp@intel.com>
> 
> drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c:330:1-9: WARNING: Use devm_platform_ioremap_resource for cs -> base
> 
>  Use devm_platform_ioremap_resource helper which wraps
>  platform_get_resource() and devm_ioremap_resource() together.
> 
> Generated by: scripts/coccinelle/api/devm_platform_ioremap_resource.cocci
> 
> Fixes: c403ec33b613 ("mtd: rawnand: ingenic: Fix ingenic_ecc dependency")
> CC: Paul Cercueil <paul@crapouillou.net>
> Signed-off-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Julia Lawall <julia.lawall@lip6.fr>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
