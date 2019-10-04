Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81721CC016
	for <lists+linux-mtd@lfdr.de>; Fri,  4 Oct 2019 18:05:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VLnS/JQNBwkhGRPuarMsT76QIgZ0nwvW0q9le+zQxzw=; b=bACmX4mdTxyNGb
	Usc5vwJGrKdTESxXE0Cx960lbfg0p02TLw9egyN/Gg09LzntgSgkGcOpeL3Rg6o8+2wvHEavpSVY8
	YaixCPEPSD5AP1p1sPaDOlmIib3VYvfcpfFj1TLX2ohwjVuLU/JDUzJDbuwihYyZrxY1P2Gd65sSu
	SnEhKqOr2ikxMJsvYPjW9NQemYyPSNBHw1o7IbeB3v2tGEtII2TjTOEtfNk4M4OcklbBs7OZoe2bP
	z/msgDcw8mhb/LT+cHX698hBfB1+yh5ISpDwNZRcz+y9FsexeiMTAiicI49J5bBZBcj6LYviUFcke
	FL8tKnRq+fjmeEiliCgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGQ5N-0004zT-I2; Fri, 04 Oct 2019 16:05:41 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGQ4g-0003Jl-O1
 for linux-mtd@lists.infradead.org; Fri, 04 Oct 2019 16:05:02 +0000
X-Originating-IP: 93.23.105.117
Received: from xps13.stephanxp.local (117.105.23.93.rev.sfr.net
 [93.23.105.117]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 9287024000B;
 Fri,  4 Oct 2019 16:04:55 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Kamal Dasu <kdasu.kdev@gmail.com>
Subject: Re: [PATCH 1/2] mtd: nand: brcmnand: Add support for flash-dma v0
Date: Fri,  4 Oct 2019 18:04:52 +0200
Message-Id: <20191004160452.6320-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190906194719.15761-1-kdasu.kdev@gmail.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 83156c1c6c283e32397498f839347c510ef1107d
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_090458_934278_59CD528E 
X-CRM114-Status: UNSURE (   7.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
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
 linux-kernel@vger.kernel.org, Frieder Schrempf <frieder.schrempf@kontron.de>,
 Marek Vasut <marek.vasut@gmail.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, 2019-09-06 at 19:47:15 UTC, Kamal Dasu wrote:
> This change adds support for flash dma v0.0.
> 
> Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
