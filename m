Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A00F3B9F54
	for <lists+linux-mtd@lfdr.de>; Sat, 21 Sep 2019 20:15:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yv0iuDn++wtQ6sC1tWV/05K4wYwz0VwXp6TIIXKglM0=; b=dTybtr49N+EY5U
	rpqjUaGNHUgea2IMiyVWDzT5K9Qj9FayVzEyIdyApNWhvdWN0N2XHTHF13NEFQSVWtnsG0EQ+GEbK
	IRerF9UN59GlVv2VJQwZwNl/b3ZVnux1f14YaVaC3eddfvtffe4yDoMdtaHuewW9uDgEocLh84mNU
	A9uHSnKgb8jI8z36f2UNgA9yH4qaaAyqtiKRQQJ/WQvIBKLcfoYV5NN184tReY6yv4S5wEJkAKaF3
	FMbKH8Sdd/VlX7zQB6LeYEHUXWfNQcgt4H43t1r0daJEz8ahIk01yZcHaVRqAUcIlPhnOydObslQY
	plXacRK6ZnkobPKhAmsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBjv6-000241-RL; Sat, 21 Sep 2019 18:15:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBjum-00022K-Se
 for linux-mtd@lists.infradead.org; Sat, 21 Sep 2019 18:15:26 +0000
Subject: Re: [GIT PULL] MTD updates for 5.4-rc1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569089724;
 bh=bBHYtE7nzeS8vbO+KYHOuR4V++/A2K2IKrb0HKTD+SQ=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=fR7TgMaJoZFtmX5b3+WjpVtYjRLLiII17jM1AmB6zc0SGbPavifvifdQHo8zg17Jx
 io4ggEExuuabRD1UQroqbar72ZbWNb0CgWET9GWdEPntwtvGOsKeZOEnGDkEjM1idk
 zUj/z9ca7JU2zAi/+zGz1qAiBM515iIrsSo6gJ5k=
From: pr-tracker-bot@kernel.org
In-Reply-To: <1742349117.3527.1569051395780.JavaMail.zimbra@nod.at>
References: <1742349117.3527.1569051395780.JavaMail.zimbra@nod.at>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <1742349117.3527.1569051395780.JavaMail.zimbra@nod.at>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git tags/mtd/for-5.4
X-PR-Tracked-Commit-Id: 2cfcfadb8e1380938d6631cffa4fa567b13f52b2
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 4553d469d6f88028f185de57e771dd29aba10d90
Message-Id: <156908972436.32474.2390391454365007694.pr-tracker-bot@kernel.org>
Date: Sat, 21 Sep 2019 18:15:24 +0000
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_111524_947469_94032618 
X-CRM114-Status: UNSURE (   1.21  )
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
Cc: vigneshr@ti.com, linux-mtd <linux-mtd@lists.infradead.org>,
 torvalds <torvalds@linux-foundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, miquel.raynal@bootlin.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The pull request you sent on Sat, 21 Sep 2019 09:36:35 +0200 (CEST):

> git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git tags/mtd/for-5.4

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/4553d469d6f88028f185de57e771dd29aba10d90

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
