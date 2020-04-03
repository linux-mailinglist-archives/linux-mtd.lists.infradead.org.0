Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0F419CDE5
	for <lists+linux-mtd@lfdr.de>; Fri,  3 Apr 2020 02:40:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FPcWCfPTedcWd52Tmus+58SThfKL5jTRbY5+d6h6Rww=; b=jl03Vk9Ux8zu7q
	L3dAgAerf03exPzLqeZzuc/q2xD6tQoBL4cdCx+p5qSp8VcJzdFGLqaqCRgh+xkAWocaRfrUgH7vv
	FVHzbW2Hhy+1Uffy21zUfkJ5NUBuYEdXsdEiITDGBWAJx6b7q4uNetXm+4BzImXg+qlx+uEojYPVb
	+5GQbvWagG+Nqsi5K5/DHd1CEcOOEWJyJ4AMYONqph6KXId95dR3rR/dn6tupof+hGrK+r/L3K7/A
	cSIBx6WO+oK9peYvDKVuuYa7CjKL1OGZzEgIVOoCYbr081wzkg1kP9joeR/ETuIG0sAESi23yRX+2
	fgrVERTP19AnBDXpY3ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKANr-0000yq-E0; Fri, 03 Apr 2020 00:40:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKANk-0000y8-9C
 for linux-mtd@lists.infradead.org; Fri, 03 Apr 2020 00:40:25 +0000
Subject: Re: [GIT PULL] mtd: Changes for 5.7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585874423;
 bh=AvTELZADH9IOKaT0E3zi5IeET7bjiewk+pSbc0nxanI=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=LWs2XNaWtL8PWx/qskdiWYZxBgoZE1JqwQFrVrqglfRp+oeoJg4yuFVRR5AaZI2MV
 wt3P61S9m6rS7NNyxJyJdPhPs1MkESfycWfqDDInK8OjFb0hmRT7LcB2jKIpJTqQ+5
 lkRNbpRGz2ViBtKtPcOnX4MLmweC+WZkEX3kgG+U=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200402182811.457e9220@xps13>
References: <20200402182811.457e9220@xps13>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200402182811.457e9220@xps13>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git tags/mtd/for-5.7
X-PR-Tracked-Commit-Id: 025a06c1104cd8995646b761d117816b5f28c873
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: e109f506074152b7241bcbd3949a099e776cb802
Message-Id: <158587442328.31624.4354605256453876674.pr-tracker-bot@kernel.org>
Date: Fri, 03 Apr 2020 00:40:23 +0000
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_174024_341162_62D948C4 
X-CRM114-Status: UNSURE (   2.51  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

The pull request you sent on Thu, 2 Apr 2020 18:28:11 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git tags/mtd/for-5.7

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/e109f506074152b7241bcbd3949a099e776cb802

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
