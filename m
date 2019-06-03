Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1461132B1B
	for <lists+linux-mtd@lfdr.de>; Mon,  3 Jun 2019 10:49:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oL/xj6oTAM/F6S77UzT49hnrddWtJtYtN7Xdgr6pLfE=; b=YEmCkJOELJpsFL
	KbHB4YXCTRtjqxcF9ip9qED9Gf0yXaMMtYRiehdVymrjfEmCP+D4hVB4BIGbQY578Q3Ddc5na5H3e
	Y2+ZGtPWmHf2pTG1Gr8fMpv8aXVy8HxK4U2HgogLDgEzkuqnF/NxVM9zYI4ka1wmjkrMC8FMlK6nD
	ThFi742DMlh5AnWTZlkq3kS0oYZ4nNlavP8mpPSQZaNAmULv9J51mhmuSHSeiSFF1gT+FA/TsIbgl
	a5Jq0ikfswHPbIhm8AcrA/0pT7dQ6xH3O0fInX3jTxsCauekFZeZNPiSprGrGGP7a20t9e4sI9HqI
	JKna/6tmwln4m/4I/Tsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXien-0004Sd-4d; Mon, 03 Jun 2019 08:49:29 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXieX-0004Iy-EW; Mon, 03 Jun 2019 08:49:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FRWVQEcIraNgI2EO8M+886S/NepTUxS2VynbHUkSRcg=; b=Ob6N9Y7hh0/xhpmiAvxp+h1xdG
 cZ500xZX74yPSXIb1Oi1YGNWYcM95WH1J41RgD8aaERKJAtL2Tz/PdzDgFmBKd8+e1hB4s/VaoxfN
 fSTrp2WF3DEKNib4iGCj8Yv6wlfULBOhL+rB3NaisEYZZyxXF8WRYiLimhywAl5wBuFy010AoXlBz
 gFjmY7uGqFWZmy6VaFos+blE67RteCbQPJDEFHw2iqpOG66hiANygkJVcOENcKFcITprJPFu699lI
 Y9F++M34hxtUDbIhKvaoUdsulRSfoHvLabvWuJU4p8ZfNn1LTu8dyCGoaap7LUuNwK+BGiZDCewIw
 OLeAWzjg==;
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXhy2-0001Po-Hu; Mon, 03 Jun 2019 08:05:19 +0000
X-Originating-IP: 90.88.144.139
Received: from localhost.localdomain
 (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr [90.88.144.139])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 37BFCFF80F;
 Mon,  3 Jun 2019 08:04:55 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Xiaolei Li <xiaolei.li@mediatek.com>, miquel.raynal@bootlin.com,
 richard@nod.at
Subject: Re: [PATCH v3 1/4] mtd: rawnand: mtk: Correct low level time
 calculation of r/w cycle
Date: Mon,  3 Jun 2019 10:04:51 +0200
Message-Id: <20190603080451.28923-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190507102541.34341-2-xiaolei.li@mediatek.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: ba044bc8e03ec5e0dcf0b54c4c0da0b3f085850e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_040518_729278_106140EC 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
 srv_heupstream@mediatek.com, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 2019-05-07 at 10:25:38 UTC, Xiaolei Li wrote:
> At present, the flow of calculating AC timing of read/write cycle in SDR
> mode is that:
> At first, calculate high hold time which is valid for both read and write
> cycle using the max value between tREH_min and tWH_min.
> Secondly, calculate WE# pulse width using tWP_min.
> Thridly, calculate RE# pulse width using the bigger one between tREA_max
> and tRP_min.
> 
> But NAND SPEC shows that Controller should also meet write/read cycle time.
> That is write cycle time should be more than tWC_min and read cycle should
> be more than tRC_min. Obviously, we do not achieve that now.
> 
> This patch corrects the low level time calculation to meet minimum
> read/write cycle time required. After getting the high hold time, WE# low
> level time will be promised to meet tWP_min and tWC_min requirement,
> and RE# low level time will be promised to meet tREA_max, tRP_min and
> tRC_min requirement.
> 
> Fixes: edfee3619c49 ("mtd: nand: mtk: add ->setup_data_interface() hook")
> Cc: stable@vger.kernel.org # v4.17+
> Signed-off-by: Xiaolei Li <xiaolei.li@mediatek.com>
> Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
