Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9FD14E636
	for <lists+linux-mtd@lfdr.de>; Fri, 31 Jan 2020 00:50:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pCKhfLyebhV2owA3bcsezEVGLCWHZjsXd0nMfO9bb64=; b=DdJhX5iynVwC6T
	T5xd0Y5Mw39sMD2lBBQqRNzF/lYQLOJxLNgPuyuABUap20k6dgZQKS1RCtuUfEmvsK0DMfdwAXqUK
	z492UwdGF//fIUnjEOHg++tW/Jrw6UomxW5Liq6gcYpm5yAXywF9aIT4jfHRgW1Hs6mqoh2J6PVpB
	aa4pn6EyKG8Skq0t3haypOHqpgyRn1vlbkqYCoJvueJaLfI9PDWcOhoW9f1E1ISDnDbxqeGVNgJgT
	yUBjiYJ57NBc2lpxSGW9POsUz+yoAwkemSEx+0LtJU6GYqIx9fctJ3P9U1VGETwB5iWHNJu2eA5/j
	MAWGrmABYelieYpK9XGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixJa6-0004Ot-Jq; Thu, 30 Jan 2020 23:50:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixJZl-0004FN-4d
 for linux-mtd@lists.infradead.org; Thu, 30 Jan 2020 23:50:22 +0000
Subject: Re: [GIT PULL] mtd: Changes for 5.6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580428220;
 bh=byWzMdC5VzPUaMxxqzsKKy4GLzsK1n8h38uudDXjQ6A=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=BP1QD6LCGemSPfModyC6TC35FxMQc23KWTP9uEC+8dpQbhUJLYvy54YEZSiaVfsxc
 Nrxz18etI9uMHiwIrQdLbQWObcDr6Zt7OtCPPICfliZV6mItdOF20U3QAx0yskZViE
 jMr4kAyxjgQZd+rj/FIalPrvwUyhSS6eSoNOEg6g=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200130212052.11ca8719@xps13>
References: <20200130212052.11ca8719@xps13>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200130212052.11ca8719@xps13>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git tags/mtd/for-5.6
X-PR-Tracked-Commit-Id: 4575243c5c173f8adbc08a5c6ea2269742ea2b47
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 35c222fd323629cf2e834eb8aff77058856ffdda
Message-Id: <158042822052.30792.15827763280633240047.pr-tracker-bot@kernel.org>
Date: Thu, 30 Jan 2020 23:50:20 +0000
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_155021_199785_49C222EA 
X-CRM114-Status: UNSURE (   2.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The pull request you sent on Thu, 30 Jan 2020 21:20:52 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git tags/mtd/for-5.6

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/35c222fd323629cf2e834eb8aff77058856ffdda

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
