Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D3232A50
	for <lists+linux-mtd@lfdr.de>; Mon,  3 Jun 2019 10:03:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E4PHKkUt9P7UZCeZfkacd6t7yTgIECCZnMPGCPDdp3M=; b=ai7GFmsn3T9U8S
	Su9zwQynmUlqL4TRqaW5RaMC6WZx8APuZvRV6iedxRKTf4U8V0mvaffgdlQ+ZbP1hZ3euEoyrN+HW
	+m3h5pg9/uTlE5sTaNc+FRNe0Uj8JAHfMWUoOiO5y8rHBDTRmzV8uXwKMl+MrnfyfnBHUZiqZKzDt
	AaxkdpcjlS8XaA8MZa83UsQ5KQTPWHsSghQYs76fPU4GOwZJ+7Z0YYpTiFszTUC4110454IpkFOrU
	5uVovucrT4h6YmWT4giI6vXu2e+mMnzvZYm9K6c9qaAW/YeeBxGYvDpw+onVEmK0915HDYAw3TfgL
	vDHFf07Qpv1SWQmTjDIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXhwH-00075e-NT; Mon, 03 Jun 2019 08:03:29 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXhvv-0006go-8F
 for linux-mtd@lists.infradead.org; Mon, 03 Jun 2019 08:03:19 +0000
X-Originating-IP: 90.88.144.139
Received: from localhost.localdomain
 (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr [90.88.144.139])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id A1457240043;
 Mon,  3 Jun 2019 08:02:58 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Sascha Hauer <s.hauer@pengutronix.de>,
	linux-mtd@lists.infradead.org
Subject: Re: [PATCH 14/14] mtd: rawnand: gpmi: Implement exec_op
Date: Mon,  3 Jun 2019 10:02:58 +0200
Message-Id: <20190603080258.27775-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190521070643.6244-15-s.hauer@pengutronix.de>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: ebd78c0fc5bf9fd42ba4d1fd9228b006ceebc0ac
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_010307_815770_2C4C9B50 
X-CRM114-Status: GOOD (  12.48  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: Richard Weinberger <richard@nod.at>, Shawn Guo <shawnguo@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 kernel@pengutronix.de, Miquel Raynal <miquel.raynal@bootlin.com>,
 Han Xu <han.xu@nxp.com>, Fabio Estevam <festevam@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 2019-05-21 at 07:06:43 UTC, Sascha Hauer wrote:
> The gpmi driver performance suffers from NAND operations being split
> in multiple small DMA transfers. This has been forced by the NAND layer
> in the former days, but now with exec_op we can use the controller as
> intended.
> 
> With this patch gpmi_nfc_exec_op becomes the main entry point to NAND
> operations. Here all instructions are collected and chained as separate
> DMA transfers. In the end whole chain is fired and waited to be
> finished. gpmi_nfc_exec_op only does the hardware operations, bad block
> marker swapping and buffer scrambling is done by the callers. It's worth
> noting that the nand_*_op functions always take the buffer lengths for
> the data that the NAND chip actually transfers. When doing BCH we have
> to calculate the net data size from the raw data size in some places.
> 
> This patch has been tested with 2048/64 and 2048/128 byte NAND on
> i.MX6q. mtd_oobtest, mtd_subpagetest and mtd_speedtest run without
> errors. nandbiterrs, nandpagetest and nandsubpagetest userspace tests
> from mtdutils run without errors and UBIFS can successfully be mounted.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
