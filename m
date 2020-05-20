Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 806AD1DC028
	for <lists+linux-mtd@lfdr.de>; Wed, 20 May 2020 22:30:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jfi73SQIwGUvF7Zzo09Xetjd1JtwzKgn1172oUipQ/s=; b=nOc8ubi20C/VzJ
	gGzi0F5pZYIJnJjamvVLORNcD/0lhMkVNJB9Ef8VOT+DnstGUWaX/B4VdwKLI3RX1KSxnatTjxWtR
	G8H2APKEJL648znVwzac/aFQgrNwXQ2afeHSV1lQqT+PadeC7dgT6/cKd5WXGtnuvWoFKEHpJZ+Og
	fN3CatZuNhQbXwTYa8dvph7fPiIp2LA/yTnvUNuVEtq0WGElGno9gqrT48sLbdPDzvrYQcO5m/RDd
	vkEXG3kwK2tra48avVl98UqVXH83yMasf0R3UoxUovFDh+ge58we/27QQ4ZDyxPTc1BNa4z04Whs1
	0xbkOt9h06csnc8AJUFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbVMD-0005A5-V3; Wed, 20 May 2020 20:30:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbVLo-0003Pm-6R
 for linux-mtd@lists.infradead.org; Wed, 20 May 2020 20:30:06 +0000
Subject: Re: [GIT PULL] UBI/UBIFS fixes for 5.7 final
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590006603;
 bh=WDeYoHot53ESIixuTZ65c/GG9a6J/45XWKc8BZEBD1Q=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=D7zjVYxx7gu1Tg20tNJ4G2Tqx3tHKcaevDFh0D/ZXSXW1mKvZrfhILlJ/99TzfJ4c
 Nq4em4EstKjKGmhftyPT2tuQa4paBJx9espfeSO2Gamxy4SUy8JE1ATDTLEyf3Rl2L
 8Za6OuKL89RpAQR9APlNIQVX0GyggDXayn8SqMjc=
From: pr-tracker-bot@kernel.org
In-Reply-To: <294087931.249343.1590004178869.JavaMail.zimbra@nod.at>
References: <294087931.249343.1590004178869.JavaMail.zimbra@nod.at>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <294087931.249343.1590004178869.JavaMail.zimbra@nod.at>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/rw/ubifs.git
 tags/for-linus-5.7-rc6
X-PR-Tracked-Commit-Id: 0e7572cffe442290c347e779bf8bd4306bb0aa7c
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: fea371e259ebcc85d2d51a036743189bee487289
Message-Id: <159000660389.10849.13761453252049235258.pr-tracker-bot@kernel.org>
Date: Wed, 20 May 2020 20:30:03 +0000
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_133004_257785_69EC578A 
X-CRM114-Status: UNSURE (   1.88  )
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
Cc: linux-mtd <linux-mtd@lists.infradead.org>,
 torvalds <torvalds@linux-foundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The pull request you sent on Wed, 20 May 2020 21:49:38 +0200 (CEST):

> git://git.kernel.org/pub/scm/linux/kernel/git/rw/ubifs.git tags/for-linus-5.7-rc6

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/fea371e259ebcc85d2d51a036743189bee487289

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
