Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 509871806A6
	for <lists+linux-mtd@lfdr.de>; Tue, 10 Mar 2020 19:35:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pbBWPihdKSEyN9n3QVmRnX8apvgD3kRuPB6IWH8skss=; b=lfwaVeYt6OXIFE
	vawFjU88M2v3v3n0C55D+5QbuEtc8p4OaVnP7JPdRT3CDzTANcf/G0PZ4/SbqBytSCFwbl5A6ym1f
	eTecjT3qTkIAsw9L0h+o4Z0Sxp/eXyYsPL4n1P+LDTQdzkz4kOr9E4zTlDJcxfY0pnh8F8g9dhpJI
	moG+fBbakHlef4Ow8pQdzEZ05QQ9+bOb97/R+aoysmbelR9aCpM1AV74OIWkVszJVETvw9/WE8n5X
	ZU8Z+VVmTSUCLs5wPfApiDRzD+uXyRg+wNtZGHCgw3RQMTKWjy9C2lfQr8hYhzM6Tfpr6odShRJnl
	1tIrSAE3WdBjMblaD5kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBjiW-0007ef-45; Tue, 10 Mar 2020 18:35:00 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBjet-0004Aq-KL; Tue, 10 Mar 2020 18:31:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=08GJiHsfIZeuJnAo+UURMB8VLpxUDPt+1+jtNAFEtg0=; b=ZyYX1Tt7Ho9/0T9F7cIeohIQEK
 Z4vIbtnPF6f1AejhpKTb9nyY2xHNMn50cciEyPtOlHKED7kVqtih4uj9/2t11U8/BVyM73/Mfu2hk
 1kBXgUNEa/Lty5hkmxUGMu1aT+ln3HVUvJWSAFUBpUvCK1VZP89pebOHFGXwCR4+0n+dt7sXPxHrL
 VYkeyWEkjsu0P1cOKzVrKZ+GJNm5muhH6GoltORNDJYh7uP5Ts+kBxxeSQnMEdqrEsfeS56OMbsyi
 rFjJLoi6pv25QM9vbLHXyOgHC9bYR3bMAwzuO1/P+dbU/iJjOEp5zi7AqY9Rybk6FNB8QXAPSajAX
 eDyno/Uw==;
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBjeq-0003UU-Oy; Tue, 10 Mar 2020 18:31:13 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id CEFDF200008;
 Tue, 10 Mar 2020 18:30:53 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, vigneshr@ti.com,
 miquel.raynal@bootlin.com, han.xu@nxp.com, richard@nod.at,
 mripard@kernel.org, wens@csie.org, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com
Subject: Re: [PATCH 3/7] mtd: rawnand: marvell: Use dma_request_chan() instead
 dma_request_slave_channel()
Date: Tue, 10 Mar 2020 19:30:52 +0100
Message-Id: <20200310183052.18377-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200227123749.24064-4-peter.ujfalusi@ti.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 5b7a13c9de313a4125d25a04e93707cb8a5ce9a1
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: vkoul@kernel.org, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, 2020-02-27 at 12:37:45 UTC, Peter Ujfalusi wrote:
> dma_request_slave_channel() is a wrapper on top of dma_request_chan()
> eating up the error code.
> 
> Use using dma_request_chan() directly to return the real error code.
> 
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
