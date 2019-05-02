Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 076D611FEB
	for <lists+linux-mtd@lfdr.de>; Thu,  2 May 2019 18:15:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xRSB4blDzGxW2x5u4aIgHPcQS17pxOdCnQsMW9V8Gnk=; b=lIicv0QUThxYel
	YUvfzsxX9U+8xyONG9JA3cBhlXIt5jVNtwrfQBEQvGlr8DdPUbR4Yprmmv15qwwhSepsMNSMgUoyi
	rPE4fLW2fPEO4ADWajtEM+Lr0ewWx+0wpYiiA2Jf2uAlHH2K/5noBrhtIlhHnazfnSh/Lk2baxQ2n
	IP/Tn3OEFXyMGAhooy3jQIbyJA+F1/xlJEpdviwPTLGCqiZgNBwUwxurGuCBebHl+qgyc6JePKlfp
	YDAHE+zxl6fyIThLf2esKr+BWqDW8M8hoJSu3t44TW0IBzobjkRlXaylS9ohOwt0lOr2H+gHGZS1P
	CzntVUJE5o6Aj+CWBhGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMEMa-00065p-IM; Thu, 02 May 2019 16:15:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMEMR-0005W4-T9
 for linux-mtd@lists.infradead.org; Thu, 02 May 2019 16:15:05 +0000
Subject: Re: [GIT PULL] MTD fixes for 5.1 final
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556813703;
 bh=48dOdRmMVPXBsowhpGEfeSxCWlng0Hchxv8f1hORoPI=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=RPWNbSbD56omBBiQaXhuzBNOZAriW3Ly/T7knVtPG4xedUyC88Eg2S9RQRZHCIvnI
 kOaS5uj/1RIw4CSLzyFHgXKtFuyaEpW1NqboAESo+ZG+VHdtNLG8bzKRgrgXG53rje
 Uw99MA7DDkKFzMsg1cEcv40WX3uA/ylfWAQ38qGs=
From: pr-tracker-bot@kernel.org
In-Reply-To: <1906022472.41848.1556787246765.JavaMail.zimbra@nod.at>
References: <1906022472.41848.1556787246765.JavaMail.zimbra@nod.at>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <1906022472.41848.1556787246765.JavaMail.zimbra@nod.at>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git
 tags/mtd/fixes-for-5.1-rc6
X-PR-Tracked-Commit-Id: 9a8f612ca0d6a436e6471c9bed516d34a2cc626f
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: e2a4b102d48be7f6055e0e70696ab243ee791e51
Message-Id: <155681370345.16515.15182479020110698359.pr-tracker-bot@kernel.org>
Date: Thu, 02 May 2019 16:15:03 +0000
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_091503_964856_6E2F0BA3 
X-CRM114-Status: UNSURE (   1.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: linux-mtd@lists.infradead.org, torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The pull request you sent on Thu, 2 May 2019 10:54:06 +0200 (CEST):

> git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git tags/mtd/fixes-for-5.1-rc6

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/e2a4b102d48be7f6055e0e70696ab243ee791e51

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
