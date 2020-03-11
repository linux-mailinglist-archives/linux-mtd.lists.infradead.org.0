Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B95D181CAD
	for <lists+linux-mtd@lfdr.de>; Wed, 11 Mar 2020 16:45:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KUnxaUZD+LkKJLNUEjCB/++6UUEMGzmYIf5BPNT9Q4k=; b=KUCSS8NGOzjTwo
	YiEmiqD+e2c4OUdFfHzl7flkZVZWMe+tPX7m/QNyc7ThFitIxWIZ7PxdO2fpiMvF04MVGMIUhL1TC
	vyHnjMVrFQED/QGvwRcVRgB3XPwNBILo4PvNAZtjGnBbvLH+vS4XixVivvPIRScQhd3nxGwMgRFkH
	5/j06ekYd+dLYw4zaT+z7qJgbf4GgmBFjUVgHDKZkLELrPmmmnqthAvEjf7c0jPj3d3eTxHLaqpj9
	pVkGXwzgck2YvyPLJ681WpE0rJJMy8E5wFQsQ89+V6S1OxorG9zJ5PHMPqIViFa+9GQoyiKHdUrI5
	EzmrJNP5lXXsDaa0PqiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC3XV-00053N-7y; Wed, 11 Mar 2020 15:44:57 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC3XK-0004rP-1R
 for linux-mtd@lists.infradead.org; Wed, 11 Mar 2020 15:44:47 +0000
X-Originating-IP: 90.89.41.158
Received: from localhost.localdomain
 (lfbn-tou-1-1473-158.w90-89.abo.wanadoo.fr [90.89.41.158])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 9CB761C0004;
 Wed, 11 Mar 2020 15:44:33 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Kamal Dasu <kdasu.kdev@gmail.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH V4 3/3] mtd: rawnand: brcmnand: Add support for flash-edu
 for dma transfers
Date: Wed, 11 Mar 2020 16:44:33 +0100
Message-Id: <20200311154433.25431-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200122213313.35820-4-kdasu.kdev@gmail.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: a5d53ad26a8b441325eb9de8e9bb816584ebca7c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_084446_235604_A76404B2 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.197 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Paul Burton <paulburton@kernel.org>, Richard Weinberger <richard@nod.at>,
 linux-mips@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 linaro-mm-sig@lists.linaro.org, Rob Herring <robh+dt@kernel.org>,
 linux-mtd@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Miquel Raynal <miquel.raynal@bootlin.com>, James Hogan <jhogan@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Brian Norris <computersforpeace@gmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 2020-01-22 at 21:33:13 UTC, Kamal Dasu wrote:
> Legacy mips soc platforms that have controller v5.0 and 6.0 use
> flash-edu block for dma transfers. This change adds support for
> nand dma transfers using the EDU block.
> 
> Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
