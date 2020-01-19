Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89FA4141AA7
	for <lists+linux-mtd@lfdr.de>; Sun, 19 Jan 2020 01:45:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l7FUVsoBzsZsE+HDXsw1YfoTDUCz37FnA2ddTTKu8lI=; b=gtvgQ5lBOoTFRz
	BW581cjuTktx3VL/TerZFnlmTL1VgzJ/yECHR7+WQ4c913bbB0xI9xM4sacZsQOlaOD3Un4c+CQ/f
	uuJXablYX02kGkMTU2urdN9mZFH+j68VCQHQMxGUeuZFAKqcyyFL7P2XgAOZySU9u4JgPnb7Hnz14
	KUdNU+2NVgyLSzc3jCNu9yKmMapexEoDS1Y1oerXm1U2wSdJH8Li1aNDNxjF4BP2HNpHEHbmbP3HW
	SpIufzvgTnItaUmlhedjDOdi/eBSlTnRvv/F7R6ebEV6jV6Ee/IkyUG/tqAQw9riK0pOJwkrPTMcy
	mXMK4IHyKZIMvpZ6Kolg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isyiP-0006g9-7h; Sun, 19 Jan 2020 00:45:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isyiI-0005lN-7C
 for linux-mtd@lists.infradead.org; Sun, 19 Jan 2020 00:45:15 +0000
Subject: Re: [GIT PULL] mtd: Fixes for 5.5-rc7 or final
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579394703;
 bh=4jaTZsPssUnlGROcOhT9Ai+w5KGJFxOEw+2uudQnpy0=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=UWVNFYn/z1ZQgCH7GtDcE6gkEijahAwJrCSjvQbwCoOWR/FM+gfdFJTmQyOJZFTBs
 MSWWzu1UwpfVTFtDIlbm1//YwG2HvAe8CCPJmN8z6JVQB4+qtOkDokGw5WZSE7aWKR
 GmlypmKMC6gETolecujM8ez4+btdv/Jr6BQH2cSM=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200118231006.6776f277@xps13>
References: <20200118231006.6776f277@xps13>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200118231006.6776f277@xps13>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git
 tags/mtd/fixes-for-5.5-rc7
X-PR-Tracked-Commit-Id: d70486668cdf51b14a50425ab45fc18677a167b2
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 8f8972a3127ff46df62ae30057d29606968ec4aa
Message-Id: <157939470381.10292.5450797739537723471.pr-tracker-bot@kernel.org>
Date: Sun, 19 Jan 2020 00:45:03 +0000
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200118_164514_284304_EEE90AA2 
X-CRM114-Status: UNSURE (   2.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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

The pull request you sent on Sat, 18 Jan 2020 23:13:07 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git tags/mtd/fixes-for-5.5-rc7

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/8f8972a3127ff46df62ae30057d29606968ec4aa

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
