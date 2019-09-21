Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8540B9F55
	for <lists+linux-mtd@lfdr.de>; Sat, 21 Sep 2019 20:16:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KvSvzzsdrM5mcVY9U7zQLdDeZ442qeXNOBj0NIVZc4I=; b=fSH4W6ndNw0i42
	29GYigZTq6gw99omkJ6cBXwALKMIfYoN6nGNHLxbF5BSKKp87ko1Q26BH3jTpSzA1vpQQoj3GDkDI
	WUV3SncnZZgosCN7vWkzDwbFqVJwSk00nJnCXqUIcoBjRSX26WlzgmcmQdSh45g/NHxfXZOTcghxD
	suv+BxZuR3ZSGhZf1WIMg4U7IdIpG5eLtRzU5CSYAl2FrPlgJ4rA/QPJeIDbgY1dbScb3SjUrn6iQ
	0k3a1Iqcsojf9dNIsIAMOH2jdl1XpMx9x7HQavGpK80RSQOuPvjI6g2tmvQcQhcljVJla79wIWi69
	HXy4+ryGoOnsJR0pYXYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBjvN-0002Kl-7F; Sat, 21 Sep 2019 18:16:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBjun-00022s-M3
 for linux-mtd@lists.infradead.org; Sat, 21 Sep 2019 18:15:26 +0000
Subject: Re: [GIT PULL] UBI/UBIFS/JFFS2 updates for 5.4-rc1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569089725;
 bh=/SsYhComEN4S1FrwRkyBrwL7UDfxZ1mFJAKMOXx7ocM=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=j5jgx1ciiClxji32isQYJC5F6rqS0Xeeu0D4nOySPirwF+McIXF/+3AOxbx+VYrvZ
 xQQMdOPyT8+UvUErCLuenzzr1VgLX4+iEt6gxVIof/ESqAv3cDhX220BHYqJI8WKVt
 oQdKKnQMjiiB4hIs6PawC7xkkTjsXnrGhn+8cCeg=
From: pr-tracker-bot@kernel.org
In-Reply-To: <1224182178.3529.1569051402039.JavaMail.zimbra@nod.at>
References: <1224182178.3529.1569051402039.JavaMail.zimbra@nod.at>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <1224182178.3529.1569051402039.JavaMail.zimbra@nod.at>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/rw/ubifs.git
 tags/upstream-5.4-rc1
X-PR-Tracked-Commit-Id: 6a379f67454a3c740671ed6c7793b76ffecef50b
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 104c0d6bc43e10ba84931c45b67e2c76c9c67f68
Message-Id: <156908972540.32474.6167862187176290736.pr-tracker-bot@kernel.org>
Date: Sat, 21 Sep 2019 18:15:25 +0000
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_111525_737903_36B1BDD6 
X-CRM114-Status: UNSURE (   1.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-mtd <linux-mtd@lists.infradead.org>,
 torvalds <torvalds@linux-foundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The pull request you sent on Sat, 21 Sep 2019 09:36:42 +0200 (CEST):

> git://git.kernel.org/pub/scm/linux/kernel/git/rw/ubifs.git tags/upstream-5.4-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/104c0d6bc43e10ba84931c45b67e2c76c9c67f68

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
