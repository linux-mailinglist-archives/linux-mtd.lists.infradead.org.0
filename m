Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA816180700
	for <lists+linux-mtd@lfdr.de>; Tue, 10 Mar 2020 19:38:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y59ZephQ6jDU6CZTDPV5iuiTV8wRgeWRNv8KunsQmjE=; b=JHNLrcPnJYzG5W
	8B/WW+JVZcScfYl6hbCrTdb4GrucyIx07ZHF4AqANOPLHzEZ87l/hKFFHwDmk2rKgFlNdtzhsPhoi
	mch3g8Phlck7ZqcbjekBY0w/AcO0GSo262ZMmDaxZe7sg3/Hja1bGKNDP+LOTJMHdU1RkwwYk7uRh
	U20vPeZbp/hzjFFX1R+/YwubLiRM7hPmHgUCRx+WW4ngHDbpgtzSgBDA3yVPf3Zr0baDnE22vb6Nd
	ehMD2d5Vi4puVpTyPyTGh2vwU260Q3dd4JFP9MhywEYL2zp9+dVfCPIsg2up6cLCSSrbZxAEsIB6z
	FCIGiC7cpaQ13pCqcxEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBjlm-0003Mb-MA; Tue, 10 Mar 2020 18:38:22 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBjfj-0004ub-KM
 for linux-mtd@lists.infradead.org; Tue, 10 Mar 2020 18:32:09 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id B9F63C0010;
 Tue, 10 Mar 2020 18:32:04 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Mason Yang <masonccyang@mxic.com.tw>, miquel.raynal@bootlin.com,
 richard@nod.at, vigneshr@ti.com, robh+dt@kernel.org, mark.rutland@arm.com
Subject: Re: [PATCH v5 1/2] mtd: rawnand: Add support for Macronix NAND
 randomizer
Date: Tue, 10 Mar 2020 19:32:04 +0100
Message-Id: <20200310183204.18963-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <1581922600-25461-2-git-send-email-masonccyang@mxic.com.tw>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: db955f2f752f20ce0bf4859430999d3c119d7cc4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_113207_935471_046C8154 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, juliensu@mxic.com.tw, yuehaibing@huawei.com,
 linux-kernel@vger.kernel.org, frieder.schrempf@kontron.de,
 linux-mtd@lists.infradead.org, tglx@linutronix.de, allison@lohutok.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, 2020-02-17 at 06:56:39 UTC, Mason Yang wrote:
> Macronix NANDs support randomizer operation for user data scrambled,
> which can be enabled with a SET_FEATURE.
> 
> User data written to the NAND device without randomizer is still readable
> after randomizer function enabled.
> The penalty of randomizer are subpage accesses prohibited and more time
> period is needed in program operation and entering deep power-down mode.
> i.e., tPROG 300us to 340us(randomizer enabled)
> 
> For more high-reliability concern, if subpage write not available with
> hardware ECC and then to enable randomizer is recommended by default.
> Driver checks byte 167 of Vendor Blocks in ONFI parameter page table
> to see if this high-reliability function is supported. By adding a new
> specific DT property in children nodes to enable randomizer function.
> 
> Signed-off-by: Mason Yang <masonccyang@mxic.com.tw>
> Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
