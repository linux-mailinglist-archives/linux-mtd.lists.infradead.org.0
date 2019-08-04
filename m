Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D39880F74
	for <lists+linux-mtd@lfdr.de>; Mon,  5 Aug 2019 01:45:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lk6fTzwX7KBvsPGJlXF+RcFw+UJ0A73/O2Mqc+Cnh54=; b=Oy8f4UrbjjcHJ/
	JMyroefKW+xdJOvFx60w5ZFYxZjIxahg9j3D2x38Wn3AZK8sWWZ0vzcbZzfkOdjzJ6B5uUZ/BuXmW
	9CO2hjH+w4ZA9hRoWIfD9DRP9rxjeJe48J+6euGkhwAi4zizVJw7d/FlAdBk95tY2HPlutJina8a9
	dbduR/CkbxzuP/KXRQj3hsyVEmb1si0nl6MeknSLAtUHRdO3izDdlzBBck4oximKjpci+OYP8DT/Q
	XlfQpGnij2Tc9rY1SILPxEZ3XQumwFQ8KGnuqXp+Yj5ZMZCGILhAZl6Vj+n5/W94/astbEGtC2Io0
	Z7EvRpXxzFfK33KedJdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huQBq-0007Rt-8B; Sun, 04 Aug 2019 23:45:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huQBb-0007RY-6H
 for linux-mtd@lists.infradead.org; Sun, 04 Aug 2019 23:45:12 +0000
Subject: Re: [GIT PULL] mtd: Fixes for 5.3-rc4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564962310;
 bh=qv/lWZrl1Q5IsRPZpWPmFdP9Rf9bJ+WFUfQfHmBjajY=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=ug/hvANDvEVsgfUzHz15uwmv20WolG/1LQrfpmdqGoVK43Qr17UkZTdfOm3LccRqI
 jwr6EiwR52QkkEwfNpJ5q0VshH/CQc2/uYpOtFO71Qtsp6gL+p8Xe693rvf/4ZuhjQ
 majn39ng8DZ4081l0p+XPLidmVGHBBF+SqtBlzoY=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190804232928.08b4b69a@xps13>
References: <20190804232928.08b4b69a@xps13>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190804232928.08b4b69a@xps13>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git
 tags/mtd/fixes-for-5.3-rc3
X-PR-Tracked-Commit-Id: 2b372a9685a757a1d3ab30615ef42b2db7c45298
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 62d1716304d1bb35ad9cdafe40efbbb6b3981cfe
Message-Id: <156496231039.14797.7123620641839744800.pr-tracker-bot@kernel.org>
Date: Sun, 04 Aug 2019 23:45:10 +0000
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_164511_255670_4C61A55C 
X-CRM114-Status: UNSURE (   1.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Frieder Schrempf <frieder.schrempf@kontron.de>, linux-mtd@lists.infradead.org,
 Linus Torvalds <torvalds@linux-foundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The pull request you sent on Sun, 4 Aug 2019 23:30:44 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git tags/mtd/fixes-for-5.3-rc3

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/62d1716304d1bb35ad9cdafe40efbbb6b3981cfe

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
