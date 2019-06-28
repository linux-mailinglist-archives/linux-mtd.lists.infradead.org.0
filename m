Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF8D5A44E
	for <lists+linux-mtd@lfdr.de>; Fri, 28 Jun 2019 20:39:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/JKSSTkJDSBqDkk4VDxJRLm3T30pEC0qWfVry3OEfUM=; b=Rz5g5nmY9EZQwh
	eiuZD6+/6tTIH7k4V89v5N3Du45Ry6cAGjfTJKwVAMSDFDiXMpkVI+EDgjFNC6RV4lqrdQPNjik5L
	WYBSAr6ZH54W6DSJn4SNdOqy9m1xW/C02bKk01CgsnuSEcQdIlHGRJEJxijFYV1g5eOlnoV6h/4f1
	Me/BUBDnuYovnE5cEcQ2I/zBfIC8MNjodbM8z2f0+9+VeBwU5HeMmmuPrAvJnD8Byo/8PNxtuJ8fC
	bW75D/4BxxU2mPWfu5I4Ya3NT2/I6db1SrjgD9bcHmClJhgAan1lzBw5Vx1h6la3mtbnau/tITY9L
	qSR1YmC+RbwF/bPzVIgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgvmo-0005Tu-4J; Fri, 28 Jun 2019 18:39:50 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgvkS-0003au-E4
 for linux-mtd@lists.infradead.org; Fri, 28 Jun 2019 18:37:31 +0000
X-Originating-IP: 81.185.164.234
Received: from localhost.localdomain (234.164.185.81.rev.sfr.net
 [81.185.164.234]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 27CB420006;
 Fri, 28 Jun 2019 18:37:06 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: liaoweixiong <liaoweixiong@allwinnertech.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Frieder Schrempf <frieder.schrempf@exceet.de>,
 Peter Pan <peterpandong@micron.com>,
 Jeff Kletsky <git-commits@allycomm.com>,
 Schrempf Frieder <frieder.schrempf@kontron.De>
Subject: Re: [PATCH v3] mtd: spinand: read return badly if the last page has
 bitflips
Date: Fri, 28 Jun 2019 20:36:56 +0200
Message-Id: <20190628183656.18875-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <1561695286-19265-1-git-send-email-liaoweixiong@allwinnertech.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: b83408b580eccf8d2797cd6cb9ae42c2a28656a7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_113724_664183_05266935 
X-CRM114-Status: GOOD (  10.39  )
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, 2019-06-28 at 04:14:46 UTC, liaoweixiong wrote:
> In case of the last page containing bitflips (ret > 0),
> spinand_mtd_read() will return that number of bitflips for the last
> page. But to me it looks like it should instead return max_bitflips like
> it does when the last page read returns with 0.
> 
> Signed-off-by: Weixiong Liao <liaoweixiong@allwinnertech.com>
> Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
> Reviewed-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> Cc: stable@vger.kernel.org
> Fixes: 7529df465248 ("mtd: nand: Add core infrastructure to support SPI NANDs")

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
