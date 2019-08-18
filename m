Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB8F91994
	for <lists+linux-mtd@lfdr.de>; Sun, 18 Aug 2019 22:45:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=msBnmnWg8fqdPifTq8ezTiLxKEWkuVZa4djBDbUZixs=; b=UdxKT5NH4DITb4
	ZlStOGwT289WKm90VTp18BtsXd6MNngCp7E651nnpjmdGqZfx472yfrjXLSfpkgzQv42qjp0NgGxs
	MGqXyCi12UKihN2JMt7mbwnOoCIU2893hnPCZ3R8hkjh+wkii6Kxsjc/1dcvQr2eP32O7Yp/ZLhSX
	rvlwU3kbsTXf2NaqCMCKXcVSV9eT49dabV0cqRhTUHBiJip7dTWyg1K+6xcpK1tPnuWzM25PUv+jQ
	er6WRVZ65p++kxRU9WnDwLGC9duTpUbcgkDM+PRV9BaRo2tafqeXrSoY4sijkXYb8kpfuxoweJuF0
	vixU4g6YyPier6AvyiUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzS3D-0004tf-Nq; Sun, 18 Aug 2019 20:45:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzS33-0004tB-Er
 for linux-mtd@lists.infradead.org; Sun, 18 Aug 2019 20:45:11 +0000
Subject: Re: [GIT PULL] MTD fixes for 5.3-rc5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566161107;
 bh=nYiLMgUrXGKIpXN2ehblBaOOx9yD7IfxQF1a+juTTUI=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=ZEvFmxHRpUyBPi726JonFvYLQMhXCxkzKlkJxmRiPvLlVHU3rWAyKUN0MjUKsT0JE
 1ql8chb9VQLM2sCw5TG6jEFFYYfiwgN56iwQUbwICReaBdAutq+1jWfOiUH2Bw0fE2
 iHs3OC3/fIkdcvZhJawDoVvdBvGTCTAWCjXMuceA=
From: pr-tracker-bot@kernel.org
In-Reply-To: <260502461.69486.1566157514722.JavaMail.zimbra@nod.at>
References: <260502461.69486.1566157514722.JavaMail.zimbra@nod.at>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <260502461.69486.1566157514722.JavaMail.zimbra@nod.at>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git
 tags/fixes-for-5.3-rc5
X-PR-Tracked-Commit-Id: 834de5c1aa768eb3d233d6544ea7153826c4b206
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 6825e5a6c45dbd473f8b2993a065bbea15347632
Message-Id: <156616110763.8960.15932184598951681488.pr-tracker-bot@kernel.org>
Date: Sun, 18 Aug 2019 20:45:07 +0000
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_134509_520672_F8FE83E6 
X-CRM114-Status: UNSURE (   1.38  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 torvalds <torvalds@linux-foundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The pull request you sent on Sun, 18 Aug 2019 21:45:14 +0200 (CEST):

> git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git tags/fixes-for-5.3-rc5

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/6825e5a6c45dbd473f8b2993a065bbea15347632

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
