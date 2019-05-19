Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5202295C
	for <lists+linux-mtd@lfdr.de>; Mon, 20 May 2019 00:55:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YG1Ni6uiIaE9krtXxJQTYZVgC2jmlIJifIIK9SXsKh0=; b=KsAywtP6YVdGHi
	X1eakkqQ2Mb8Sl1lnTPF0zTU2Mv4kMcWYupR7AMJo3i5GdGDtgYgNWM22pA4+puDm/I4ybAWcrDu2
	mMoIiLq46qZ/aUqls0JNt/1uN2LmaapITOWQAq3wXu1XTux2jSsZiVcI2kbzD78nGLBDGaIiB17dY
	yQ6hqN4lkeQnC4pO1qvcMi5fLqZ48/iYU+761RXYey7QKov5H4SJAQhDhG+yYYM5FDFlrrjJN3gUA
	Zktwe3KQDvvblynvy+MaDr4rcUR7fPHKTyUjZF4haaJkjqrJjRJpUxlN0OfdYwp2fOnaWKkT6jCWv
	jRRW4EzVNZwHQI3px1Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSUiN-0007XJ-A6; Sun, 19 May 2019 22:55:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSUiF-0007W0-Up
 for linux-mtd@lists.infradead.org; Sun, 19 May 2019 22:55:29 +0000
Subject: Re: [GIT PULL] UBIFS fixes for 5.2-rc2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558306521;
 bh=x4ObgeUi92DGbonQhJAis7tW4qYwHoWEYangY0RPymU=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=c6PY2jN80se+l40JBw4+7GhpiJ4nk8cSGudtgwH1m/6tsbLsldh8pXj74QWLdfjm2
 iDIS9j/JL2Y5buC22nX6fQQL10LyQddfaiO7VPCwo/hTaSk4b59sY+hdX8Lcwv0vTI
 5SJFZ9rmCcQ43xApme1jrMdKYcQJQ+zN0EbmvMms=
From: pr-tracker-bot@kernel.org
In-Reply-To: <273612995.64271.1558295651158.JavaMail.zimbra@nod.at>
References: <273612995.64271.1558295651158.JavaMail.zimbra@nod.at>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <273612995.64271.1558295651158.JavaMail.zimbra@nod.at>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/rw/ubifs.git
 tags/upstream-5.2-rc2
X-PR-Tracked-Commit-Id: 4dd0481584d09221849ac8a3af4cd3cefd58c11e
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 2e2c12200153e63749f836109cef8150f9c61ed8
Message-Id: <155830652141.17736.5762172980478555027.pr-tracker-bot@kernel.org>
Date: Sun, 19 May 2019 22:55:21 +0000
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_155528_014823_0FC1B5E9 
X-CRM114-Status: UNSURE (   1.76  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-mtd <linux-mtd@lists.infradead.org>,
 torvalds <torvalds@linux-foundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The pull request you sent on Sun, 19 May 2019 21:54:11 +0200 (CEST):

> git://git.kernel.org/pub/scm/linux/kernel/git/rw/ubifs.git tags/upstream-5.2-rc2

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/2e2c12200153e63749f836109cef8150f9c61ed8

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
