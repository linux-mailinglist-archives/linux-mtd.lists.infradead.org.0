Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5D119A13F
	for <lists+linux-mtd@lfdr.de>; Tue, 31 Mar 2020 23:50:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2h7Z4ESru+btnjh3+MdkTyMxr2JAfEaDhf3VKYzpwPA=; b=fJRobhp80k1yRU
	hKae7C/Zj/xLB6wy3Xl2tAoN1i0ZRpMcwKWrULgLPWZLdWK25DO5PmwPNauMai6HlJgP5ZcA/RO8z
	+rQ9mk0pFiDxyiP4p2j6yrWIRGNss3qaIRm8cNRchcX9+IQwTLOYQPtlLMnBPKpdz/VUJ8fYvq+t5
	3VJ+cz9AaNhf91EKokFHmKR8J3P0u3D+mVp/7haG9fZ9HzxIpa2DtzXkxwQEjc7clNE9g7AtMo9tX
	pH3lzp/Vqk/W3noW/g02/Khzn2fEzcKlbt42/AsFnC45moo88T5nyoukXOlZwLvxLgTCXUkULvA3g
	p5uvNSaKjfG56PPaXARA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJOm2-000407-IE; Tue, 31 Mar 2020 21:50:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJOlm-00033X-Kf
 for linux-mtd@lists.infradead.org; Tue, 31 Mar 2020 21:50:04 +0000
Subject: Re: [GIT PULL] fscrypt updates for 5.7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585691402;
 bh=LcVm+V24+2+NTOJ9JrmVVXkl728hyFi9uw2iR9GZGHU=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=QBosVPQuppbe6iZRabDz1qeEjuf4lM4SbPhgQX19V+1KKwMbxjrmHXREfGjQgEAUF
 1k3zIgblJ+TDv4YnoOKB9A98doinoZvVZuc8iMFiMPG+UFI7hDw4U4aD3I5STWWgcy
 isOSyBj3OEr06AjfDkcZv2vMHRFMaEr6lNNQwIms=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200330165359.GA1895@sol.localdomain>
References: <20200330165359.GA1895@sol.localdomain>
X-PR-Tracked-List-Id: <linux-fsdevel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200330165359.GA1895@sol.localdomain>
X-PR-Tracked-Remote: https://git.kernel.org/pub/scm/fs/fscrypt/fscrypt.git
 tags/fscrypt-for-linus
X-PR-Tracked-Commit-Id: 861261f2a9cc488c845fc214d9035f7a11094591
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 1455c69900c8c6442b182a74087931f4ffb1cac4
Message-Id: <158569140192.7220.17954616110607840136.pr-tracker-bot@kernel.org>
Date: Tue, 31 Mar 2020 21:50:01 +0000
To: Eric Biggers <ebiggers@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_145002_744458_28FB26B3 
X-CRM114-Status: UNSURE (   1.20  )
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
Cc: Theodore Ts'o <tytso@mit.edu>, linux-kernel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-fscrypt@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-fsdevel@vger.kernel.org,
 Jaegeuk Kim <jaegeuk@kernel.org>, linux-ext4@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The pull request you sent on Mon, 30 Mar 2020 09:53:59 -0700:

> https://git.kernel.org/pub/scm/fs/fscrypt/fscrypt.git tags/fscrypt-for-linus

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/1455c69900c8c6442b182a74087931f4ffb1cac4

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
