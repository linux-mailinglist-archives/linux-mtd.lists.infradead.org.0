Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 497CE239C2
	for <lists+linux-mtd@lfdr.de>; Mon, 20 May 2019 16:22:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=73C0gaPW8zaP4Wyj4I4jX7fcJvgTsDPWoqSH8mdjEOw=; b=evQbbvpR21/f1D
	h9cagfrqVNmElAyLcwqIY1S67L1rUGrtp+EojgFyViteXyYlsdTRpdCpDevB4iNhD6rli/oIcsCuM
	MbIfoAAWzvev3oJTMo9O7qZL39oAxmCZR/wJNdeb/aF6ypvgCeUeJ4bq6v5tZIilwSiMfdBxKj31w
	9zWCLO50lDzDeHJiATNPWP7a6tPZilcC1Y/1dsG8bHmkZkck2DBP8/XulQQnGhCEZeDpYMInu4gsw
	5RzSqRf+pmiHgBydR9mVNNcqTs4wi20nstRUY0HNGmunDs8Mc5JWjls36YeDCm/iZUXrttZYR4c5p
	vbz2Q+W++GmGFTWqrNvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjBK-0003Dp-SM; Mon, 20 May 2019 14:22:26 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjBC-0003D4-VB
 for linux-mtd@lists.infradead.org; Mon, 20 May 2019 14:22:20 +0000
X-Originating-IP: 90.88.22.185
Received: from localhost.localdomain
 (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr [90.88.22.185])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 480E124000B;
 Mon, 20 May 2019 14:22:01 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Sascha Hauer <s.hauer@pengutronix.de>,
	linux-mtd@lists.infradead.org
Subject: Re: [PATCH 02/14] mtd: rawnand: fsmc: Use nand_op_trace for operation
 tracing
Date: Mon, 20 May 2019 16:21:54 +0200
Message-Id: <20190520142154.7005-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190425125643.29990-3-s.hauer@pengutronix.de>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 84db7797ffd34523b8632fb70aacc7a46faa9b74
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_072219_150033_4AE7C48D 
X-CRM114-Status: UNSURE (   7.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Boris Brezillon <bbrezillon@kernel.org>,
 Richard Weinberger <richard@nod.at>, Shawn Guo <shawnguo@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 kernel@pengutronix.de, Miquel Raynal <miquel.raynal@bootlin.com>,
 Han Xu <han.xu@nxp.com>, Fabio Estevam <festevam@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, 2019-04-25 at 12:56:31 UTC, Sascha Hauer wrote:
> Replace the different operation tracing functions with a call to
> nand_op_trace.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
