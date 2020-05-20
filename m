Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 515981DC026
	for <lists+linux-mtd@lfdr.de>; Wed, 20 May 2020 22:30:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=udh9fKkgmaoNf4g8a82jHoKSc3CKQ+Q5DiO4DZCDHvY=; b=H8YcYRwoPciQVC
	GDSneUEN/VWoPvhL26HPzbUfiQ5vChZSXGw8YS+pK4sDJDCIkaBtCPhOnFjzz4AirteX6FxxtN9VV
	3Y5LFg/FbZ/pFSnQ5oYXVgMBWSpjXE5Wuewdr4HowxPc6xQIW3wSDmN+CjjdQ0vmvanfp+tIRRhIY
	36OISN8GX9Y4CWct4Qh95FAbmv5rtorthHberfuQs7p2u13MeHxo+t/67jHZ/K8LEM0rlt6YqWCNc
	61edBEDZbqrBKFe6nTTbWmMcrTfvCPVA6rjnhQJCD+byu51TSPeE+eX377MKpMfdxWhrSIm9fLe4n
	s6Jh8dpdcaGGr0d/Uv9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbVM1-00044h-Lg; Wed, 20 May 2020 20:30:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbVLn-0003FI-Tb
 for linux-mtd@lists.infradead.org; Wed, 20 May 2020 20:30:05 +0000
Subject: Re: [GIT PULL] MTD fixes for 5.7 final
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590006603;
 bh=7dgSowVWKb+a5DwviAHKDWmLUjcttsA4HWVfUlSUFIQ=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=FPnQN4xn6UxZuLpjcB64H2HDXYLcJQevTS0MSy5NRNgagDoNC7sYEEsluYpeJTf6n
 w0GboC1Zclijk+h/r66FgwZ0A24LNCdATpzB0yY+hyQrAHTAnQxvZXfOn8Uj2Nin8a
 9/zmgvaheUt8exyfEUEYTPiVG+WXO7lQyidKXGio=
From: pr-tracker-bot@kernel.org
In-Reply-To: <1270319593.249344.1590004179760.JavaMail.zimbra@nod.at>
References: <1270319593.249344.1590004179760.JavaMail.zimbra@nod.at>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <1270319593.249344.1590004179760.JavaMail.zimbra@nod.at>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git
 tags/fixes-for-5.7-rc6
X-PR-Tracked-Commit-Id: f3a6a6c5e0f5a303fd8ec84ea33c0da5869d715f
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: b85051e755b0e9d6dd8f17ef1da083851b83287d
Message-Id: <159000660335.10849.12687061016548851219.pr-tracker-bot@kernel.org>
Date: Wed, 20 May 2020 20:30:03 +0000
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_133003_992211_4E5CEDC0 
X-CRM114-Status: UNSURE (   1.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel <linux-kernel@vger.kernel.org>,
 torvalds <torvalds@linux-foundation.org>, vigneshr@ti.com,
 linux-mtd <linux-mtd@lists.infradead.org>, miquel.raynal@bootlin.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The pull request you sent on Wed, 20 May 2020 21:49:39 +0200 (CEST):

> git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git tags/fixes-for-5.7-rc6

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/b85051e755b0e9d6dd8f17ef1da083851b83287d

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
