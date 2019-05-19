Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F19A2289F
	for <lists+linux-mtd@lfdr.de>; Sun, 19 May 2019 21:54:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Wynxyvxigewl/VA3UXuJ0O1O8ZDZ/EjbIjii+MZdTcA=; b=PIAQNodfWgoNG4
	Fb8tDYSlTaF9TMJdzieJuTr+mPqdTxQbaFMqujM7dDtv1xQ3Tla9WKc51FUIt5bHrlvQ+lOI2uuiM
	fk+0sKAvPjdIiif7gfxrp1K5bEDtD7yCkOQHWjqG39wCH/wBAVAnH4hH5Jv9sC1YNSKnxmyoV9tin
	oDmBlQ2Un56jaSDwlNumIbbWFc1q03XcwrdOwL6dfyvFKAeOBo0iUpABEuGmVLa+0gzxdgWKqjPd6
	J5pDt50gXGXNCorEHOWK+0sOXqpp1I2WTAHZsHQjlA01uzxOq+nSZPfXEWkVAjkGJ5J9M4A4F+eGF
	fQCXX5BEiGS41hk5KL2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSRt9-0000BC-LS; Sun, 19 May 2019 19:54:31 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSRt0-0000AJ-67
 for linux-mtd@lists.infradead.org; Sun, 19 May 2019 19:54:23 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 9100D608325B;
 Sun, 19 May 2019 21:54:11 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id Yw-_UYOxrkNz; Sun, 19 May 2019 21:54:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 5192F6083279;
 Sun, 19 May 2019 21:54:11 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 8tku6GKN3dxf; Sun, 19 May 2019 21:54:11 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 30BB3608325B;
 Sun, 19 May 2019 21:54:11 +0200 (CEST)
Date: Sun, 19 May 2019 21:54:11 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: torvalds <torvalds@linux-foundation.org>
Message-ID: <273612995.64271.1558295651158.JavaMail.zimbra@nod.at>
Subject: [GIT PULL] UBIFS fixes for 5.2-rc2
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.8_GA_3025 (ZimbraWebClient - FF60 (Linux)/8.8.8_GA_1703)
Thread-Index: WLFwXOwMNVbr8u9epEt1vaZn/sWOVw==
Thread-Topic: UBIFS fixes for 5.2-rc2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_125422_377183_92251C98 
X-CRM114-Status: UNSURE (   6.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-mtd <linux-mtd@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Linus,

The following changes since commit 2bbacd1a92788ee334c7e92b765ea16ebab68dfe:

  Merge tag 'kconfig-v5.2' of git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild (2019-05-15 09:06:14 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/rw/ubifs.git tags/upstream-5.2-rc2

for you to fetch changes up to 4dd0481584d09221849ac8a3af4cd3cefd58c11e:

  ubifs: Convert xattr inum to host order (2019-05-15 21:56:48 +0200)

----------------------------------------------------------------
This pull request contains the following fixes for UBIFS:

- Build errors wrt. xattrs
- Mismerge which lead to a wrong Kconfig ifdef
- Missing endianness conversion

----------------------------------------------------------------
Richard Weinberger (2):
      ubifs: Use correct config name for encryption
      ubifs: Convert xattr inum to host order

YueHaibing (1):
      ubifs: Fix build error without CONFIG_UBIFS_FS_XATTR

 fs/ubifs/sb.c    | 4 ++--
 fs/ubifs/ubifs.h | 6 +++++-
 fs/ubifs/xattr.c | 2 +-
 3 files changed, 8 insertions(+), 4 deletions(-)

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
