Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A55681D2
	for <lists+linux-mtd@lfdr.de>; Mon, 15 Jul 2019 02:30:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/GpxnPFuAEoJu2Ng8igAQ4X9ZMXyYXjV6wL6nnD1YeU=; b=BkXr6e6baIy/ud
	AT1O5jz2E6gjHwDng8k6rRfJ7mWqeOuSx/G8H0ZTVwiQ2n9XGGNxMNiVbwd2wQexgKmGtFwhF/L35
	7DB9crXBQUkNW63hLYqY7w0uzoVGGoCa+Mz0YC4H/b2iVeiG7ZGy+Qdjvqsv264v1c8Fc5y4SYGMB
	xD4WKJYdPsnQvH/zyzIHNGWh75YI+9/T8EgfGnB9VZY0G+MDwOyTnGGINupbi4sWE+YDHtL1jINYw
	IV0g29WokYCw/O8cytTEr5qPCV7k3fwXFk8WZBMiGluxO6Fv08jlPVhu434v1moLXMwf8EaMUYRTk
	XrcxkaEeOZoLe80SZEtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmotE-0007ps-9F; Mon, 15 Jul 2019 00:30:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmosk-0007eB-AK
 for linux-mtd@lists.infradead.org; Mon, 15 Jul 2019 00:30:19 +0000
Subject: Re: [GIT PULL] UBIFS changes for 5.3-rc1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563150618;
 bh=ShejkeLF6lCFtEkBsQAxiOpZfWyxT6RFvGykJxV/Eyc=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=TpgdE9e73UKQuaSVJP13cmM/01SzDP/+CMbbpGYyERDVApU7a+/1mOpbH1hlFZCEb
 A6rTnqBN3fQFNP9ktgsc0Mul3w41aTgdPMddERqXsWD2FfmPFbdjV/MeaCXpnuCghq
 ooTZ6oQMZ/wVgyGHWGPR53cjEuJ2OBkhcdMJjZe8=
From: pr-tracker-bot@kernel.org
In-Reply-To: <1267151613.38686.1563130929727.JavaMail.zimbra@nod.at>
References: <1267151613.38686.1563130929727.JavaMail.zimbra@nod.at>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <1267151613.38686.1563130929727.JavaMail.zimbra@nod.at>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/rw/ubifs.git
 tags/upstream-5.3-rc1
X-PR-Tracked-Commit-Id: 8009ce956c3d28022af6b122e50213ad830fc902
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: a318423b61e8c67aa5c0a428540c58439a20baac
Message-Id: <156315061806.32091.17822041540808146049.pr-tracker-bot@kernel.org>
Date: Mon, 15 Jul 2019 00:30:18 +0000
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_173018_369289_1B47AA07 
X-CRM114-Status: UNSURE (   1.33  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The pull request you sent on Sun, 14 Jul 2019 21:02:09 +0200 (CEST):

> git://git.kernel.org/pub/scm/linux/kernel/git/rw/ubifs.git tags/upstream-5.3-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/a318423b61e8c67aa5c0a428540c58439a20baac

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
