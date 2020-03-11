Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47353181CB6
	for <lists+linux-mtd@lfdr.de>; Wed, 11 Mar 2020 16:46:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pnJTn0/Vx6RAIvTE+uw5StxHJsQ8FomVkZDrXCs7Rgk=; b=pQou3q0aH139yS
	6/XbXDMZ21XSSeHypDY7DF83SZQzxuG+6U8KWRx5HLD1uOkmjKKJoMy5ekt3dDkWZ6p1as7GzNVJd
	L0YU8AKm7m7eYfhKZAQA+36iqNeSyjCxuaISEyx4ebbysCctKgVt3Kb3AKoDwN8Mge2mgCk1DmkFI
	ydEUPtYh2KL2SRy0idE8Y/eFio7S6oqwqbfdip2+Uas9kUtjzjiYIXNJtlB0RdL7EblfQSoeTLmK0
	8dSRAluNZOWPZ7BX5pmlVULpriNP1ehc6GKOm7UJ8mmxdhttOdRYwXM8XxAr+mmwOy8Nc2r3kNnQh
	o05XiBYPsWtHy59J4qkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC3YR-00074Y-QV; Wed, 11 Mar 2020 15:45:55 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC3Xn-0006ag-Gb
 for linux-mtd@bombadil.infradead.org; Wed, 11 Mar 2020 15:45:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=XUf30NUHQmgLDKtjX/pppxqtj/4IN36sp8TZY8popqU=; b=L8MFPC5bcFE5om2/8Diggvr0r7
 bUoAe4QpGwqWIVm2olwt9mG/JoIy5QFVRgwYR5qiv8QEl/vojJzli08lNGw+B9pUe4hk5MGkROh4D
 7I+VE+U0Yt8YimLb78W68R/3VU5I9JG6eTiwOtrWg6yHxdhFqquKXsmCQNdsqFMqSEJE1PxhuAxNE
 VRClP2cRUEO9bp4p5JyexZf+gucxaq8PtK6FbUpJnHDS9n7XkTo+gaUAb+cTmRGtGXUP3mWIcHu1o
 NAG94Y1eAdfLI7sALurjXmnW57VvRYY+niLJ087+mAIQraRwipEAOwKy4hZQ8JHpSKoyUUS0PXGeB
 wAii9mpw==;
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC3Xk-0002Sm-MA
 for linux-mtd@lists.infradead.org; Wed, 11 Mar 2020 15:45:13 +0000
X-Originating-IP: 90.89.41.158
Received: from localhost.localdomain
 (lfbn-tou-1-1473-158.w90-89.abo.wanadoo.fr [90.89.41.158])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id DB3F940008;
 Wed, 11 Mar 2020 15:44:39 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Kamal Dasu <kdasu.kdev@gmail.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH V4 2/3] arch: mips: brcm: Add 7425 flash-edu support
Date: Wed, 11 Mar 2020 16:44:39 +0100
Message-Id: <20200311154439.25493-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200122213313.35820-3-kdasu.kdev@gmail.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 634088e2621310d2473e4ec3b69843e32d5cee20
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.194 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Paul Burton <paulburton@kernel.org>, Richard Weinberger <richard@nod.at>,
 linux-mips@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 linaro-mm-sig@lists.linaro.org, Rob Herring <robh+dt@kernel.org>,
 linux-mtd@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Miquel Raynal <miquel.raynal@bootlin.com>, James Hogan <jhogan@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Brian Norris <computersforpeace@gmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 2020-01-22 at 21:33:12 UTC, Kamal Dasu wrote:
> Nand controller v5.0 and v6.0 have nand edu blocks that enable
> dma nand flash transfers. This allows for faster read and write
> access.
> 
> Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
> Acked-by: Paul Burton <paulburton@kernel.org>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
