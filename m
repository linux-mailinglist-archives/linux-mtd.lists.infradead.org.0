Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7595C32A6C
	for <lists+linux-mtd@lfdr.de>; Mon,  3 Jun 2019 10:05:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eglWcYfiHxJaI8rPiwu9ajTF0MBp73oZgxsVKJcrdzc=; b=oiV5/t5M67f/AR
	6wOcMLpNVBWuEvkMTGou7tS2WtbjgSmEnlfUPPVEYLFcnssfpGEhANYcfOkond3NfoPhtgOXYtuwZ
	4xBH/CouJTglk4bDTcnuJ476SsMxMw0dTfBzBd/rK4tt16M/aV/gEcWTRUjXh8oiUvTMqe1takw5T
	aaSh7LWb4I1MAN6AxxxFNgnxhEIbgWn+VvbBAEhOeuzYyOW6e2j4ZS09dmYQCsTV4Emm+Ss5MvvuU
	RCGjgjuFqqcjPV0ZZUsC4X8Pm2tcLhRvdTv2Hn29r8eKYoVhAGzwxlJMQFvgIROn/Jtdj5ZZ0aqRN
	I334Ac8IJy9zgQNzX6dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXhyM-0002yZ-EB; Mon, 03 Jun 2019 08:05:38 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXhxU-0000ms-PJ; Mon, 03 Jun 2019 08:05:17 +0000
X-Originating-IP: 90.88.144.139
Received: from localhost.localdomain
 (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr [90.88.144.139])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id C38E7240068;
 Mon,  3 Jun 2019 08:04:39 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Xiaolei Li <xiaolei.li@mediatek.com>, miquel.raynal@bootlin.com,
 richard@nod.at
Subject: Re: [PATCH v3 3/4] mtd: rawnand: mtk: Add validity check for CE# pin
 setting
Date: Mon,  3 Jun 2019 10:04:36 +0200
Message-Id: <20190603080436.28793-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190507102541.34341-4-xiaolei.li@mediatek.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: a63bf71a17c44ef60cd53fe6c6a18d5b6ee30f5b
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_010445_704151_7D0443D2 
X-CRM114-Status: UNSURE (   7.32  )
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
Cc: linux-mtd@lists.infradead.org, linux-mediatek@lists.infradead.org,
 srv_heupstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 2019-05-07 at 10:25:40 UTC, Xiaolei Li wrote:
> Currently, we only check how many CE# pins are set in device tree.
> But it should be necessary to check whether CE# pin setting is
> duplicated or if CE# pin index exceeds the maximum CE# number that
> controller supports.
> 
> So, add validity check to avoid these invalid settings.
> 
> Signed-off-by: Xiaolei Li <xiaolei.li@mediatek.com>
> Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
