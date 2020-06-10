Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EDE21F5D3A
	for <lists+linux-mtd@lfdr.de>; Wed, 10 Jun 2020 22:30:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HyS3AsnTSYgS1Igo/IxOMDYWzfRYb37UrjfG2VtZEwQ=; b=m+ZeiqASoet7UJ
	ywMSOqyQPe4U4ZuFWiyVhHR38xsWV3Ign6mwHAOUaAeTosEFWsp5znzqsAix4maRtzJGSW+CgTKMP
	FhxAKl2entmYUbnXeFsMczpnmEwzp5D8CzlglwNAYaQGOUXsTwuEn0GCgT9VT0Zph4vZ78a3X//xa
	YglXOPaZyjpa5J9xxFPWF6xnByGRf3gVN24fdeY4XjS2DeLNST4YFO9uqSL8QsjQwhM/HyhVFUZOQ
	GJsyNvsTtTzPl24nOTYS/smVKMfu4+wSXcVA4ahGYjnP60fqFbXaWmbf87kP8JQ8z5uJvHgfuWxHJ
	wvruvG9fITpDOiTBKQ+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj7N1-00083w-Vi; Wed, 10 Jun 2020 20:30:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj7Mf-0007vO-Kx
 for linux-mtd@lists.infradead.org; Wed, 10 Jun 2020 20:30:26 +0000
Subject: Re: [GIT PULL] UBI changes for v5.8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591821025;
 bh=NIQMWSiGhugs36Pn75PkmLIGCnjwO/j8S4v2zrqpzhs=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=nylvV9kv/ZqHToXHxeIcqmZeS+G1SqlXQHo4ECp2ahFrVJni6AN9LiCe3s065JGC1
 wQDoi5RFek9epIVjXvaFY1+z++rzS7NOQd6tIrO6LeYR4Gbyqkc+fBvy1kHLa6XTmX
 VT4lms8Z8ZP7+7rav98/yQbDEG0uqLQawM+3KaE8=
From: pr-tracker-bot@kernel.org
In-Reply-To: <818706511.351.1591736518682.JavaMail.zimbra@nod.at>
References: <818706511.351.1591736518682.JavaMail.zimbra@nod.at>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <818706511.351.1591736518682.JavaMail.zimbra@nod.at>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/rw/ubifs.git
 tags/for-linus-5.8-rc1
X-PR-Tracked-Commit-Id: 4b68bf9a69d22dd512d61d5f0ba01b065b01ede6
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 0e083da7c8a26bc2674d7155bb5a0676b7dbc8ba
Message-Id: <159182102536.16227.7583734197738613136.pr-tracker-bot@kernel.org>
Date: Wed, 10 Jun 2020 20:30:25 +0000
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_133025_701142_0B204ADB 
X-CRM114-Status: UNSURE (   1.36  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-mtd <linux-mtd@lists.infradead.org>,
 torvalds <torvalds@linux-foundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The pull request you sent on Tue, 9 Jun 2020 23:01:58 +0200 (CEST):

> git://git.kernel.org/pub/scm/linux/kernel/git/rw/ubifs.git tags/for-linus-5.8-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/0e083da7c8a26bc2674d7155bb5a0676b7dbc8ba

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
