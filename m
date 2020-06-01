Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E0E1EAF9F
	for <lists+linux-mtd@lfdr.de>; Mon,  1 Jun 2020 21:35:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aF3fLidWj9qJEw03skitG+VVPsWo7k4jGnm9rSNApBI=; b=DXznB4jqRqfmSS
	8egXpZ3dTF+pogp2LDCi+pguJJ46YG3gDveVCToU+42RSwIjwOvraMSaJulg43rB4lv5qb4TJmtD4
	eUUpGdDzerUR0vAfKnNx+66b69TxplRRP2io5KHDXTgaxNCXATbdfi5sa+2sJew7/bJsWGdC5gDYn
	LhD8npBfnazlyquYs9GDwN54cZNrU1Lt54oQJ18SOD4EeYLNuU5mvR5Btd7kHoTCwtakyBUPDUiuJ
	EnAkFjfwWNat3I5NFWSHSRzWydVv3M2CIfKZURm8W9lgegZ5kNUIBnlUyGP4mh46ZFuN+elvb0EwN
	x3vpnbft7CXqri9A0jeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfqDO-0003aO-Ua; Mon, 01 Jun 2020 19:35:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfqD9-0002mL-4I
 for linux-mtd@lists.infradead.org; Mon, 01 Jun 2020 19:35:04 +0000
Subject: Re: [GIT PULL] fscrypt updates for 5.8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591040102;
 bh=tUb3ekvU9GlhHcK4V45Bi06IqlKQCN2nkMKHtfMvVso=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=yHvB5tN0rf5bOSh4MLRjHoZIDvOq9AuIa+SvvQM835LQ3dji88L4esQeK5PxwflsZ
 Pn1NWQtfhceZty02BxQswjwaz1BD9yMQes3bkD+u6u3Y4N/8sorEca/tPkgqYMt18X
 0yq63fhTUl5lLCN8EgZBcRiXy0ph3hrjk6GWXspY=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200601062848.GA11054@sol.localdomain>
References: <20200601062848.GA11054@sol.localdomain>
X-PR-Tracked-List-Id: <linux-fsdevel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200601062848.GA11054@sol.localdomain>
X-PR-Tracked-Remote: https://git.kernel.org/pub/scm/fs/fscrypt/fscrypt.git
 tags/fscrypt-for-linus
X-PR-Tracked-Commit-Id: e3b1078bedd323df343894a27eb3b3c34944dfd1
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: afdb0f2ec57d4899eda2c5e09fc3a005f2119690
Message-Id: <159104010228.18844.5659318322191292629.pr-tracker-bot@kernel.org>
Date: Mon, 01 Jun 2020 19:35:02 +0000
To: Eric Biggers <ebiggers@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_123503_216540_272F14D6 
X-CRM114-Status: UNSURE (   1.73  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

The pull request you sent on Sun, 31 May 2020 23:28:48 -0700:

> https://git.kernel.org/pub/scm/fs/fscrypt/fscrypt.git tags/fscrypt-for-linus

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/afdb0f2ec57d4899eda2c5e09fc3a005f2119690

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
