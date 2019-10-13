Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E38D56C8
	for <lists+linux-mtd@lfdr.de>; Sun, 13 Oct 2019 18:15:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=msrlkJG7gMOH4aiIYklk+mvVVs71jJXVU3kV5IX7Tlw=; b=ISu4T3py35Xypo
	A/9Bkug3JKPYxO0Mll58cnZBkTH3Goqnds0Tld4kDoh+taKZZjBvbQDAajiz25HZRXp1cFATrVK/L
	M8G3s/YQ6AkBaheC+4BrfJEQKoNzlqQeHqMXx53POj5AoWUe8AeUW3LKqYPAWbvlxvBQWgB3nasEC
	1NtU4yQqvYWxMVqH4vlz573UHUVKrwE8N08pw7lCE9XVPMXbkvi9m5IIZj+THwPDEt/yRP+a85tIC
	nFu9CxwfT93y4mk/c/qDaL1sI4TMey3HNFhn6WeVMQRcjFYKJJeYm149aap6WDu+ctDtlwBWBmMvj
	bWvKZ1PMYIQaaGkr3Rmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJgWc-0000mo-BM; Sun, 13 Oct 2019 16:15:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJgWS-000061-2A
 for linux-mtd@lists.infradead.org; Sun, 13 Oct 2019 16:15:09 +0000
Subject: Re: [GIT PULL] mtd: Fixes for v5.4-rc3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570983305;
 bh=l3PUiyUzcVRzu9ZjGfW0o+6z6+yhGNHQ5vU+b73MK9I=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=NxpLRAMRt5/vZ0IFd4MiE3R5jGRHjoQPnytwfCie1n7paj61EVBmB4QKcVBUYYS+T
 aqiUNURruczlQIjZpUWMGqmgZHOUCxZ87fxJQiNKF9zBrBxGd2DT+hoV5KjKSWwnl/
 TWF2t8iAZG4Ru/E13JQdVky1OMoKfGKSzqWXwpnM=
From: pr-tracker-bot@kernel.org
In-Reply-To: <1615396520.21318.1570912156820.JavaMail.zimbra@nod.at>
References: <1615396520.21318.1570912156820.JavaMail.zimbra@nod.at>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <1615396520.21318.1570912156820.JavaMail.zimbra@nod.at>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git
 tags/fixes-for-5.4-rc3
X-PR-Tracked-Commit-Id: df8fed831cbcdce7b283b2d9c1aadadcf8940d05
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 71b1b5532b9c58f260911ee59c7b3007d6d673a5
Message-Id: <157098330559.26372.16017055334585777960.pr-tracker-bot@kernel.org>
Date: Sun, 13 Oct 2019 16:15:05 +0000
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_091508_197737_6DD580E7 
X-CRM114-Status: UNSURE (   1.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: vigneshr@ti.com, Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-mtd <linux-mtd@lists.infradead.org>, miquel.raynal@bootlin.com,
 torvalds <torvalds@linux-foundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The pull request you sent on Sat, 12 Oct 2019 22:29:16 +0200 (CEST):

> git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git tags/fixes-for-5.4-rc3

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/71b1b5532b9c58f260911ee59c7b3007d6d673a5

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
