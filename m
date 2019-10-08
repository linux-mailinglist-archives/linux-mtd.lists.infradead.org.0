Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8062CFFCC
	for <lists+linux-mtd@lfdr.de>; Tue,  8 Oct 2019 19:26:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XLHOv7wlVzwQPD3ZRST4BSjMJIeDH8zNUjKHnN+e7NY=; b=HZKrCTRk4chTUp
	pm4DmSotIQejKTIlMctki+x0RzQWIXt0ZCOM3V1ZjJuB+RUAI0Vy69rVo/moQ+UsWzcUsfaAXa7H9
	zFLe42gcZ/sNKUwOgEkefjWjZckfrfcPLQ7rsVHkUBiAdLsEKgGgavpFT+Ib2NlGB7n1Qf1TjFsW6
	bsC/hBkPc2a4kWux0saiicMpUE23am3FYIXgIJ+jJdjfZHBwA4FI1osNwdVgCfxEXYf6yUI6iO5dq
	VOS5wkBOG61rmqM0i1n8MAfZJh2PeyyGe/zCb/XcbF/oQz2hnzpJ2EP2iDzBEfIJxfspCY0p6HbW2
	WUJ2HGDDBZV2sF1EuFVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHtFs-0006jk-Gm; Tue, 08 Oct 2019 17:26:36 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHtFD-0006Dv-VS
 for linux-mtd@lists.infradead.org; Tue, 08 Oct 2019 17:25:57 +0000
Received: from xps13.stephanxp.local (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 7D7EB240008;
 Tue,  8 Oct 2019 17:25:53 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: zhengbin <zhengbin13@huawei.com>, dwmw2@infradead.org,
 computersforpeace@gmail.com, marek.vasut@gmail.com,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 linux-mtd@lists.infradead.org
Subject: Re: [PATCH 1/2] mtd: spear_smi: remove set but not used variable
 'flash_info'
Date: Tue,  8 Oct 2019 19:25:51 +0200
Message-Id: <20191008172551.5893-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <1567479150-97127-2-git-send-email-zhengbin13@huawei.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: afa173746905f497ab01a658df96a525dfc0e8e4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_102556_147662_40BEF9A2 
X-CRM114-Status: UNSURE (   5.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 2019-09-03 at 02:52:29 UTC, zhengbin wrote:
> Fixes gcc '-Wunused-but-set-variable' warning:
> 
> drivers/mtd/devices/spear_smi.c: In function spear_smi_probe_config_dt:
> drivers/mtd/devices/spear_smi.c:780:32: warning: variable flash_info set but not used [-Wunused-but-set-variable]
> 
> It is not used since commit 6551ab5d30d6 ("mtd:
> add device-tree support to spear_smi")
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: zhengbin <zhengbin13@huawei.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git mtd/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
