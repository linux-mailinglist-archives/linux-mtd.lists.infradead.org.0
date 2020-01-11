Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C83E0138199
	for <lists+linux-mtd@lfdr.de>; Sat, 11 Jan 2020 15:45:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VLTxU5t5dV4QVT6xbdXC9WQl9/EPVujzIjyr848yqPc=; b=cFaNXArWxqIxUR
	AFVD6Xtu/x4UEkeJ0iMsLvHQ2Rwycr9yAt2eFWqwYFtboIl0Gpt0SC8OyKvEaR5/6dsexob8CIcPy
	m/4WReqe/c8xPaJ3DgtSf+Aag4HgbX6curZvmrLFZ3N7iKVx225qHNEEjooubLvG2TU6GwQ7cm385
	bxA5PprZIS/FT6Kzj+tSImUVGMFXrO4SGxkoFWyNPK0B1J3HVbWrEnEpJYHCa42CYXyzvERIVHqJo
	dsFSTv2/hDScup067UC1xyvEpQkYAU+brpXVIHCS24N4duWnQNbuKZ8S7uT2iSNh5k7Il4YW+SWxJ
	j3f6coLJA4vHYY3bm6Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqI0r-0004Sz-MP; Sat, 11 Jan 2020 14:45:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqI0j-0004Bj-M2
 for linux-mtd@lists.infradead.org; Sat, 11 Jan 2020 14:45:11 +0000
Subject: Re: [GIT PULL] mtd: Fixes for v5.5-rc6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578753907;
 bh=xFLLe4it5mNDvoJLxOcP4M0geVtKDiKe48kDBedvCAo=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=qH1K7UWQ5MUOFWdkX4YhOqPYJrHkRIasG9LoFWJ0Ol2ieOw4mQidYQKncB+A35TXz
 0Vm29esVJTD0+mPf05Tdzavs3Uk1h0c13abH2+QvtlmpzSJy04sUVeph2IGcwNPLdZ
 yaNycruxg1SW1D6RvXhpZJcmA4ZnMgqHR/jPRIas=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200110154218.0b28309f@xps13>
References: <20200110154218.0b28309f@xps13>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200110154218.0b28309f@xps13>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git
 tags/mtd/fixes-for-5.5-rc6
X-PR-Tracked-Commit-Id: 82de6a6fb67e16a30ec2f586b1f6976c2d7b4b62
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 4936ce17bf7c4a17a9223a0b7d96c49d62767762
Message-Id: <157875390743.30634.6587556550158546529.pr-tracker-bot@kernel.org>
Date: Sat, 11 Jan 2020 14:45:07 +0000
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_064509_751339_8CADA529 
X-CRM114-Status: UNSURE (   2.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-mtd@lists.infradead.org, Linus Torvalds <torvalds@linux-foundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 10 Jan 2020 15:42:18 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git tags/mtd/fixes-for-5.5-rc6

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/4936ce17bf7c4a17a9223a0b7d96c49d62767762

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
