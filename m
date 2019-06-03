Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15AB132AA0
	for <lists+linux-mtd@lfdr.de>; Mon,  3 Jun 2019 10:19:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vu/OLPYJmq00JYZZLD0OxR57GdJj6242FXDesScjSWo=; b=SRvb2zxrXlL5kj
	npMGDY79AVTNTGN1SZhbIsaDh0LlgUkWERF8gOxG3YlM10NQXuBlXh6nm+vmbt9cieGtUwInLT5E4
	GvuiBxL466wQ6YmcYgk9aAM5ngTo6G07P0XECaeeIjHkWNtEtT4f+HMWh8rpKWtFPEag4X0rddkcS
	1xksA04IH27wim7TW68o1rsGEFe2LsILnWW6HgpkyTLrHozYWzzws4b3jv8d+5i9hZluXzuF6EH9K
	YyUmILF4BnlknmrBhnTI8zL8uPIHQdYn4DhPgguPjWusiZCllXFJnet1MZdqiHl+XR6W2mR/+13P2
	3P4Foeu22kfsQFnZ77eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXiBn-0000q1-Vj; Mon, 03 Jun 2019 08:19:32 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXiBh-0000i4-86
 for linux-mtd@bombadil.infradead.org; Mon, 03 Jun 2019 08:19:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VUoX0il5iQLfxDTbApZKx3Wh5eL0++xhktRAgCB99wU=; b=FrLaKWUdV+3xaEhT106KPhngwb
 Jl4dhQirZK8eV7HjMOuwMY/6s1x2/RujzO2tLuWcyS12k3peTDYtr2wGXMm3QWCbFoKYiMI9bAR6S
 vvNpDvYBZtzazwAfuiH6OFpsG7DLkZWx5+pology1oGT16f7Oa82bHUXa8lCjXKl5aKU8oFNlAz6G
 6VbDXdMSoytoVb0T82/9gIh06im6c17Gy8eWCAvmbq3/S1rpghkCgdB2OfDZ7DVX7fXPBxpIyKBEE
 6Q9moqeiE6WdeEpBnqAE1fcJ9Yhen6ogw7glUlKq/Ku63jLxzdZWcc8kzjlYWAMBRTAdNVZ6ub+Ql
 5km53gfA==;
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXhy8-0006PR-4p
 for linux-mtd@lists.infradead.org; Mon, 03 Jun 2019 08:05:26 +0000
X-Originating-IP: 90.88.144.139
Received: from localhost.localdomain
 (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr [90.88.144.139])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id E63831C001A;
 Mon,  3 Jun 2019 08:05:01 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Kamal Dasu <kdasu.kdev@gmail.com>,
	linux-mtd@lists.infradead.org
Subject: Re: [PATCH v2] mtd: rawnand: brcmnand: fix bch ecc layout for large
 page nand
Date: Mon,  3 Jun 2019 10:05:00 +0200
Message-Id: <20190603080500.28988-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <1556738544-29857-1-git-send-email-kdasu.kdev@gmail.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 20f23230d790b075e531d2c138939385728a5bef
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_090524_932316_740E35D3 
X-CRM114-Status: UNSURE (   7.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Marek Vasut <marek.vasut@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 2019-05-01 at 19:22:14 UTC, Kamal Dasu wrote:
> The oobregion->offset for large page nand parts was wrong, change
> fixes this error in calculation.
> 
> Fixes: ef5eeea6e911 ("mtd: nand: brcm: switch to mtd_ooblayout_ops")
> Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
