Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4056413B087
	for <lists+linux-mtd@lfdr.de>; Tue, 14 Jan 2020 18:08:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=70cvxejEsRf38/zq0WF7ygo9VjdhtEPhQe2Z0Lt1Dk4=; b=Ga15ZcatvqQbnB
	qUvlKsRr08wVysPLXWCsJljK53M/wjg32yNO3Z74yP8gbpRZOxeau5AU2VAsi5YfQCPWMvqr5Elav
	w09LZGn1A0HYOgYSD7oxwdriLCt543AcS1yV38rTdZDynydqEIOj8k4FmZn1RHg6c4cFBu2RGm5un
	xjuFtLGtmBMM0/nQ7yNvSTlSxETmERotRh6hf9L+BBXn/Vc453vU8XIB4dEbj4mWqWSk5R7s/Cvwy
	7HLbcncUCOHBVdxkbcJRPbi9JO+l14QEMNGkS0WQUoC3iTGD5Vk7T3wT1qLb5f8pX9MxBnhMlum+1
	GBuFl0qpL/HtV1j2yg1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irPgW-0002tT-9S; Tue, 14 Jan 2020 17:08:56 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irPe3-0000rg-3W
 for linux-mtd@lists.infradead.org; Tue, 14 Jan 2020 17:06:28 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 5A41EC0004;
 Tue, 14 Jan 2020 17:06:17 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-mtd@lists.infradead.org
Subject: Re: [PATCH v3 3/5] dt-bindings: mtd: denali_dt: document reset
 property
Date: Tue, 14 Jan 2020 18:06:07 +0100
Message-Id: <20200114170607.1762-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191220113155.28177-4-yamada.masahiro@socionext.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 66ab41b69859dd499fa251d9e8155370e7447afa
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_090623_304382_4A786C36 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Marek Vasut <marex@denx.de>, Mark Rutland <mark.rutland@arm.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, devicetree@vger.kernel.org,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Ley Foon Tan <ley.foon.tan@intel.com>, Dinh Nguyen <dinguyen@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, 2019-12-20 at 11:31:53 UTC, Masahiro Yamada wrote:
> According to the Denali NAND Flash Memory Controller User's Guide,
> this IP has two reset signals.
> 
>   rst_n:     reset most of FFs in the controller core
>   reg_rst_n: reset all FFs in the register interface, and in the
>              initialization sequencer
> 
> This commit specifies these reset signals.
> 
> It is possible to control them separately from the IP point of view
> although they might be often tied up together in actual SoC integration.
> 
> At least for the upstream platforms, Altera/Intel SOCFPGA and Socionext
> UniPhier, the reset controller seems to provide only 1-bit control for
> the NAND controller. If it is the case, the resets property should
> reference to the same phandles for "nand" and "reg" resets, like this:
> 
>     resets = <&nand_rst>, <&nand_rst>;
>     reset-names = "nand", "reg";
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> Acked-by: Rob Herring <robh@kernel.org>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
