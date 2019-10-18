Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 180E5DC1C3
	for <lists+linux-mtd@lfdr.de>; Fri, 18 Oct 2019 11:50:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R7zLxTXZnyNoqf0dIjJOM4jtCTpGkPZxbcJ1vse3H9Y=; b=uvE8X09yiKW0y9
	hFfys+xdsAJW/UxVRnzeArWzrVwq5yYSK9Bl66xLB+ZzUYrMRNU1VjgLiEDExHpry+qvQwppmdHkt
	u4eRaMSbIXMjNEnfB+Cta3DXhvRLITzDaDponS21WcaiQqVKY/ufGvj+u6MOQmpqutuessQkpM4es
	/whk0fM5deGiNFwQhhhlv5b5d5F16MCMIVZ0Pe01t8Z/rNv0SCAylouoj8TEvjqNqGPdodTYPqxYd
	XdhB8/2ujUBtDRjzyLDiQvSMxsTU7dtbhOtBRyxlBulEI7uMq65k2xgLYD/4M44xF9dVRYGs23MjB
	DwCV0MpYlCMfFiPvad8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLOuD-0008Ok-4a; Fri, 18 Oct 2019 09:50:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLOu4-0008OH-Gk
 for linux-mtd@lists.infradead.org; Fri, 18 Oct 2019 09:50:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1iLOu0-00089m-UX; Fri, 18 Oct 2019 11:50:32 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>)
 id 1iLOu0-0005Tx-5Y; Fri, 18 Oct 2019 11:50:32 +0200
Date: Fri, 18 Oct 2019 11:50:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Bruno Thomsen <bruno.thomsen@gmail.com>
Subject: Re: Regression: dmaengine: imx28 with emmc
Message-ID: <20191018095032.akdis5anygjl4pio@pengutronix.de>
References: <CAH+2xPB7rbeJnOPU10Ss9BhV_2DJV-ToQ3XNOy97+vrGx+ubcg@mail.gmail.com>
 <20191014141344.uwnzy3j3kxngzv7a@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014141344.uwnzy3j3kxngzv7a@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:49:27 up 102 days, 15:59, 102 users,  load average: 0.31, 0.13,
 0.12
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_025036_556886_D809587A 
X-CRM114-Status: GOOD (  16.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: bth@kamstrup.com, vkoul@kernel.org, linux-mtd@lists.infradead.org,
 NXP Linux Team <linux-imx@nxp.com>, miquel.raynal@bootlin.com,
 dmaengine@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 04:13:44PM +0200, Sascha Hauer wrote:
> Hi Bruno,
> 
> On Tue, Oct 08, 2019 at 10:03:16AM +0200, Bruno Thomsen wrote:
> > Hi
> > 
> > I am getting a kernel oops[1] during boot on imx28 with emmc flash right
> > around rootfs mounting. Using git bisect I found the cause to be the
> > following commit.
> > 
> > Regression: ceeeb99cd821 ("dmaengine: mxs: rename custom flag")
> > 
> > Reverting the 2 changes in drivers/dma/mxs-dma.c fixes the oops,
> > but I am not sure that is the right solution as I don't have the full
> > mxs-dma + mtd/mmc overview.
> > 
> > I did see that the patch isn't a simple rename but also a bit define
> > change.
> > From: DMA_CTRL_ACK = (1 << 1) = BIT(1)
> > To: MXS_DMA_CTRL_WAIT4END = BIT(31)
> > 
> 
> Damn, I wasn't aware the DMA driver has other users than the GPMI Nand.
> Please try the attached patch, it should fix it for MMC/SD. It seems
> however, that I2C and AUART and SPI are also affected. Are you able to
> test any of these?

I just sent out the patch again for inclusion with the collected
tested-by tags.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
