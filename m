Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A5032A67
	for <lists+linux-mtd@lfdr.de>; Mon,  3 Jun 2019 10:05:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oWxefLp5u7MQjCAsBaaBg00v7hkFheMU8bA7jcT/LBY=; b=oHffts7snfqQUu
	FB7xU0YZ0cCq1PebysgTjrZor4GHVvA+KZ6iC1+CykZUOiVb3bBhzg+mFUfJz82PHDJZsqD0LcGoJ
	wwDF9ZthPa3wTdR8ODSLYm1AwHjY/wiRvawCGwNmulEDw0jMSXBdBAb4nQwbZjHkEkCcwSgv/4VjC
	kEY6sspPZCEguDoWcYR8thaoafrztaGouYXDzAHKddfI/jlu21ixooI/m3d96+SacFybNWkH1xlh2
	QfO1Z3bVuBzPQoNL2YVqyJh5Gl+xRlELYLKc60RdIWtvtZJJtlu1cDPwt0BFMJcv8HC8COWf6q6Vh
	0i9bQ7yt98E37PBAwqZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXhxw-0001Bj-SS; Mon, 03 Jun 2019 08:05:12 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXhxE-0000OL-Hg
 for linux-mtd@lists.infradead.org; Mon, 03 Jun 2019 08:04:48 +0000
X-Originating-IP: 90.88.144.139
Received: from localhost.localdomain
 (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr [90.88.144.139])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id AC55624004E;
 Mon,  3 Jun 2019 08:04:21 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Sascha Hauer <s.hauer@pengutronix.de>,
	linux-mtd@lists.infradead.org
Subject: Re: [PATCH 01/14] mtd: rawnand: export NAND operation tracer
Date: Mon,  3 Jun 2019 10:04:21 +0200
Message-Id: <20190603080421.28663-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190521070643.6244-2-s.hauer@pengutronix.de>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: a372acff8247783434e4fb85897f7c9a6909433a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_010429_284586_4B9DA39C 
X-CRM114-Status: UNSURE (   8.56  )
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

On Tue, 2019-05-21 at 07:06:30 UTC, Sascha Hauer wrote:
> The NAND core has a NAND operation tracing function, but it can only
> be used by drivers using the generic option parser from the NAND core.
> Export the tracing function as a static inline function in rawnand.h
> so that drivers implementing exec_op directly do not have to write their
> own operation tracing.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
