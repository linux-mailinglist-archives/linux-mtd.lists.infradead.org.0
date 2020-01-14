Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7195513B045
	for <lists+linux-mtd@lfdr.de>; Tue, 14 Jan 2020 18:04:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XvMAAZ1c/d0igKtiJP+NXfI5IExnwhIHy6jHDV0GFPc=; b=pOWtJ54oCtIQzB
	N2KmkqwERNP50ljn+welbRAzdzVQNFnb617MHZm7ULLQXlNdBudDLHhXvXzFMVqZD6CxH3LvT2Hs4
	Ge6SRk2kwQo5OtOFyy2QP/Q38Dk0lsh4qHWSK3ZiPGPk/5GL/ml8fxeXk0VeOXueqvsUQtUddPwvK
	utFJF2MCVWpM+aJraC7rPgQ8tOvhRIGMVN9RLJFsoxbVKczFoFGS7fMef0G7CA7hCoo5ah89gSH7n
	91PP1tCf5ms1LJasE7Pm6PygmQXidQ34zGj2K65aS/hYk8L/pMmTYs9Qseok/Iz7HGaeBvSWZbCIc
	4jh+5GWe0kk9LBg4VOOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irPby-00069q-0w; Tue, 14 Jan 2020 17:04:14 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irPbj-000635-6j
 for linux-mtd@lists.infradead.org; Tue, 14 Jan 2020 17:04:03 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 9D892E0012;
 Tue, 14 Jan 2020 17:03:48 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Esben Haabendal <esben@geanix.com>, linux-mtd@lists.infradead.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Boris Brezillon <boris.brezillon@collabora.com>, Han Xu <han.xu@nxp.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: [PATCH 2/2] mtd: rawnand: gpmi: Restore nfc timing setup after
 suspend/resume
Date: Tue, 14 Jan 2020 18:03:42 +0100
Message-Id: <20200114170342.841-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200102130826.170647-2-esben@geanix.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 61af58cf19a389d64cfa5e516774b1a322040a3c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_090359_396233_FDEC1398 
X-CRM114-Status: UNSURE (   6.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: martin@geanix.com, sean@geanix.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, 2020-01-02 at 13:08:26 UTC, Esben Haabendal wrote:
> As we reset the GPMI block at resume, the timing parameters setup by a
> previous exec_op is lost.  Rewriting GPMI timing registers on first exec_op
> after resume fixes the problem.
> 
> Signed-off-by: Esben Haabendal <esben@geanix.com>
> Acked-by: Han Xu <han.xu@nxp.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
