Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C95532AA3
	for <lists+linux-mtd@lfdr.de>; Mon,  3 Jun 2019 10:19:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VKvF1Fo8UgT8y6beNsKkdMIuBH9OaLLp97BvN3S7Hnw=; b=deuBJuw35ismpT
	oenNNStvTr/jrJtlBmPlE5HcUOxm5HKKVk87+ol+Rv1FtXaHqgef7aSTVRF/0GkdWOjSVqaRnDOGL
	cz519AWlsoLQCpBRQ/gpTyLySB2ENXsQmNVLj/oOgw5fLrdcjhUzgHCTd5D+BaQLyCRQ/rfvtKdw/
	iYYfz/3qbCcJWTjAJkNq8OlyiN24ypQzEJD9MWLKJ+oYTpNMxmIApBuxvryfUt7g+jERhQLyLPg3k
	ZL0MidudgXKDs2cnGnDnMV1PhpBIitCEqhyKbre3KiF1VAIJA/8l/+GZVI3797HVafs//ZJNUmJZP
	2OILNR7ybjxONBs1Fkyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXiBy-00011l-6r; Mon, 03 Jun 2019 08:19:42 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXiBj-0000i4-E3; Mon, 03 Jun 2019 08:19:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LicX/XxAgWp5u7hs2lWUB9/5Wqv3d/DsP5+6eOzO1CE=; b=CJ5g9aqIHFCjE8MCOq+AibglHB
 eRmTkLwqZpPWvgTVKZbVODzlaodxKfcfldnEIPTdiD1ghNZpsO6NmsnlUSQTBfsoZwYxgr2ATVENi
 uk4TDqrcds/OPZoRonyjq0EK8LXmCcVwDRZO8JtXNDHWMkkX8U8dDpR3zaAB8ebsHltv+v2eDszKL
 L8lYYrcOoLJ9S/LFSY1Clc0Vv/BxnsbYv7LmK+jp3hXsXAySx/3x4nCk17oBEp18sUVwkUiYIqAQT
 Ew3D9hV5v8SwAcHHR/AhPtifqnyjbdMNEw1ABICw1rM5DV6yNYxHwSPMTrtYZ6fEQl8asZt6tBg9I
 Ad3ZD71g==;
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXhxd-0006NF-V0; Mon, 03 Jun 2019 08:04:57 +0000
X-Originating-IP: 90.88.144.139
Received: from localhost.localdomain
 (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr [90.88.144.139])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id A5C8F240022;
 Mon,  3 Jun 2019 08:04:30 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Xiaolei Li <xiaolei.li@mediatek.com>, miquel.raynal@bootlin.com,
 richard@nod.at
Subject: Re: [PATCH v3 4/4] mtd: rawnand: mtk: Fix wrongly assigned OOB buffer
 pointer issue
Date: Mon,  3 Jun 2019 10:04:29 +0200
Message-Id: <20190603080429.28728-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190507102541.34341-5-xiaolei.li@mediatek.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 3ae9ccf2a78424dff844d3e269026d8f6936d0cd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_090454_112137_7A3CA3AB 
X-CRM114-Status: UNSURE (   7.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
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
Cc: linux-mtd@lists.infradead.org, linux-mediatek@lists.infradead.org,
 srv_heupstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 2019-05-07 at 10:25:41 UTC, Xiaolei Li wrote:
> One main goal of the function mtk_nfc_update_ecc_stats is to check
> whether sectors are all empty. If they are empty, set these sectors's
> data buffer and OOB buffer as 0xff.
> 
> But now, the sector OOB buffer pointer is wrongly assigned. We always
> do memset from sector 0.
> 
> To fix this issue, pass start sector number to make OOB buffer pointer
> be properly assigned.
> 
> Fixes: 1d6b1e464950 ("mtd: mediatek: driver for MTK Smart Device")
> Signed-off-by: Xiaolei Li <xiaolei.li@mediatek.com>
> Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
