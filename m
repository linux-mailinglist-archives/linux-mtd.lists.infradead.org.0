Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A88DC9C599
	for <lists+linux-mtd@lfdr.de>; Sun, 25 Aug 2019 20:45:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wZbHj3gOVMFYHqZ9XvfY334vEYFsh98QexnvepBFpAM=; b=sx1sLc0BNzdAsy
	5z6cbv3TGUWklSy2gyaaioesuFSxSk5uMKpBjkJcoj8Xu3NE/oMWoGetg/Y2D/u1T5LpI9PtxifBn
	ByNrgcpN2mo1qc0rVNJcr2VPLs11mlPw537T3pfoqGnguYxnhTR/u+s2aP3JC67FC4ODaFhsocRPD
	rnVVrebYK35fMjdcFhYUlqo8iStz6MOlFfC3STBvJwwD2dMmtVQOwzTUQ9OLQ5rd6BUbFbepqVEZO
	awUiJzrQcOnpTAeGNsn9ay0DSvtrJ9VGfLPl6hyLPBavexpTvpCgUA2ZW/iDu/1dhyU4kcTrmQ7NF
	DEWX5bo+FLIIv/RzTz6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1xVu-0007mn-WB; Sun, 25 Aug 2019 18:45:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1xVl-0007aw-RC
 for linux-mtd@lists.infradead.org; Sun, 25 Aug 2019 18:45:11 +0000
Subject: Re: [GIT PULL] UBIFS/JFFS2 fixes for 5.3-rc6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566758707;
 bh=tG0MK9TyFVx02z6HUQkIbsbsa1b5/TczVDn0f6gTUa8=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=LM5JqlghKD7kKmjjDNPlKcfW0eaNQ5QFfvO0CWhMPl+zM80as8sDlbiAsDomge9cS
 C2i4RF6Awc0aJRpay5EEdGoMGcsl/9TJwZ3g2UD4wNsiwWwK/lxG1wGF3bS4SNLLap
 Fkyy6aCUkzcAKbQ+kGeyUdAAld6IhYberbVWJyWU=
From: pr-tracker-bot@kernel.org
In-Reply-To: <1811413787.73825.1566741710952.JavaMail.zimbra@nod.at>
References: <1811413787.73825.1566741710952.JavaMail.zimbra@nod.at>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <1811413787.73825.1566741710952.JavaMail.zimbra@nod.at>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/rw/ubifs.git
 tags/for-linus-5.3-rc6
X-PR-Tracked-Commit-Id: 0af83abbd4a6e36a4b209d8c57c26143e40eeec1
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 94a76d9b525c2dd81af2a98e26fe01f99b20727d
Message-Id: <156675870718.26029.880083478324011500.pr-tracker-bot@kernel.org>
Date: Sun, 25 Aug 2019 18:45:07 +0000
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_114509_908879_7D553595 
X-CRM114-Status: UNSURE (   1.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-mtd <linux-mtd@lists.infradead.org>,
 torvalds <torvalds@linux-foundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The pull request you sent on Sun, 25 Aug 2019 16:01:50 +0200 (CEST):

> git://git.kernel.org/pub/scm/linux/kernel/git/rw/ubifs.git tags/for-linus-5.3-rc6

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/94a76d9b525c2dd81af2a98e26fe01f99b20727d

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
