Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 753831AE58
	for <lists+linux-mtd@lfdr.de>; Mon, 13 May 2019 00:25:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gQ1rAfeJ4sx6S5xAGutZ2vWNWn6Vuxcva+iSP5vYQ2Y=; b=gky1oEBaXfnpof
	8bLPxEujWDudd1na1i5ad24blIHsO0G4+LpL1spP2D7TCD7lt2C2AyTKELsBvMMoenGoSmAJ4pRmr
	xpbk6xhbLoR4dmrwWzsUJCzh/kSj5nVB1saqk9K4cmYBhMgr2LwYzVNN3iz0TPEGUOilPDHo0ZjFO
	Jp5S5d1xXTxF1kz4x59py9wtJS92YE1yEdlkPJDxsULodmTbHaINqA0twak/Sh6i9U0jkWb11lwnz
	8Gdfbw/6NCJap0LUZU++2ak+fGHJ5RkoM+1jceVnjNvXHXd7/SluYaKM7ukUCunM3pjILMTBTv/1T
	duUnhYzPn2xGp/ZTeLXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPwuS-0001e2-17; Sun, 12 May 2019 22:25:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPwuC-0001V6-5l
 for linux-mtd@lists.infradead.org; Sun, 12 May 2019 22:25:17 +0000
Subject: Re: [GIT PULL] UBI/UBIFS changes for v5.2-rc1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557699915;
 bh=pIvlh5p6bekz+2ObDpG1m8sLIElo6/20NgytoANxSEg=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=UFvXR89Bl98C9xOvt0GJSykzc1HcumtULMsDyzna0yi8sSnrm83nicPP0UGgIScb4
 od/3S1vNKSwjLtXUC8npL/9kJAmhzdPt2Hh4R3wa/CEaOSOkGsnOzeOIfN6U/4MHty
 MUWM0q7IbZqeLgNNw4jddV3J+R3iIX7dTkaSqCjk=
From: pr-tracker-bot@kernel.org
In-Reply-To: <2058307720.56057.1557697346125.JavaMail.zimbra@nod.at>
References: <2058307720.56057.1557697346125.JavaMail.zimbra@nod.at>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <2058307720.56057.1557697346125.JavaMail.zimbra@nod.at>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/rw/ubifs.git
 tags/upstream-5.2-rc1
X-PR-Tracked-Commit-Id: 04d37e5a8b1fad2d625727af3d738c6fd9491720
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: d7a02fa0a8f9ec1b81d57628ca9834563208ef33
Message-Id: <155769991585.32032.5198960088075056155.pr-tracker-bot@kernel.org>
Date: Sun, 12 May 2019 22:25:15 +0000
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_152516_229820_749F3EA9 
X-CRM114-Status: UNSURE (   1.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

The pull request you sent on Sun, 12 May 2019 23:42:26 +0200 (CEST):

> git://git.kernel.org/pub/scm/linux/kernel/git/rw/ubifs.git tags/upstream-5.2-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/d7a02fa0a8f9ec1b81d57628ca9834563208ef33

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
