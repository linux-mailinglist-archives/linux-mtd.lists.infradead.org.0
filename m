Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A77941A3B0E
	for <lists+linux-mtd@lfdr.de>; Thu,  9 Apr 2020 22:04:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KruzpdzDhg27rH0KJ6DzlzDRle032lLZRD4a1xdMxCc=; b=Nt7Cmd4sInB3Kl
	oSWZnvq3ZGLyRBIKljXO8HHee5PrKaf/i5vCEmz9zjvP/vML0lxA6mp6Pcx2t/SLa4jEa6ggFTJCH
	Ab13DYO3y093j8yX8l3QxBfaY/h9Nh2GfdVGq8omGqnFlzhrqk6GHjiyF0AkJWzXhQQROX70wmkq3
	DbasA8eFqT2eDU3psXusDvQB2XAATZAJEIgXtRx1r2h0oEGHl1V+QXDarR70g12cZixpe6oR72dLe
	d6V6Ylg6jlEL67BzKh0i3GqGdOjaTZ49zQsu0hwRZEgeH/RPXTUi/9QAcwRDf/kaZjVOtaSOj3VnY
	zEOXB83VKncIkSTtCJSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMdPR-0002cq-Lx; Thu, 09 Apr 2020 20:04:21 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMdPK-0002cO-9r
 for linux-mtd@lists.infradead.org; Thu, 09 Apr 2020 20:04:15 +0000
Received: by mail-wm1-x344.google.com with SMTP id x4so43689wmj.1
 for <linux-mtd@lists.infradead.org>; Thu, 09 Apr 2020 13:04:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sDzglqZlZcxrIEiGaCL876u0tJXo/b3LCDiUPke6hM8=;
 b=kE2dlQbAMbxEph/+OiWhvyA2TElid9qcNZ9MipQGEbkPmNmME0oWP6Qeyy+4+m8DjY
 Bzl8br1FY05eY895V9BGKO0RGgmtQ0dU3lZjg6dn6zyPs/Dz9un44sS2qR1abZq1bF/4
 4/ZkOlf3VMtAy462g4DrAo/3LvWxmEcahtAa2/z6FIGV072KBOOgJIJk1pdX+i7z0jz/
 AY26jAQRRnv/7PNSWOc4z15UCesUJAC/VrvfCs/PiE5/g34utB0jXuEl9b65MXwXhkao
 dAYCHj+t4ZqNfz/hQrkiSRyHkyXz/NqmgKFSVgBk86gdEwOOP1hvEIinZxG+zCBOJkbH
 6EfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sDzglqZlZcxrIEiGaCL876u0tJXo/b3LCDiUPke6hM8=;
 b=ldezcaVkm7g+BzUXocjObGHPSUSXn1828KrfDDv74iR6iiD/nj4L2ERnH3f1gq1T4O
 GxF3gOB7sYt7fAtmMiaPn6WeboexbG+TrxdmIQScorJC6IIsRVxFQ3NSGxf8vK0W6Tz3
 062rl61EEhToXS+BA1wMM8PPrWPQYDAMSr2U9t5tVyRHXFiVOFqyIqRvJin642GyY0EG
 XrfBtA4EpKPB3Sw38uUXWjsuIpPSFH0kMaWnvP9GjJrH9r5JBxQIUhilLwOQITA7VnMM
 lTZnsXlYyRJwjzYXP2a4rgjP83hS7hTtFlRP6g8Tq9sTntK5h2xN6PQmICsHYrZCal2n
 CgGA==
X-Gm-Message-State: AGi0PuZsgrWNly6ipd/sorex7/a9/W4w8m6xVSjUP+Pvr4zHcnVtYfdD
 LuEibjRO54Ee/d64+O0gewJ6lp/wr8TgvrP16wI=
X-Google-Smtp-Source: APiQypIcxF55PCob3T7OJxlGddq8VbpK2dOAPx9ekIsXVMhJIBfxd3KBkrxn+QUgv+BxWPQtP+u9KmtE4swbJT8Ouc4=
X-Received: by 2002:a7b:c050:: with SMTP id u16mr1700238wmc.68.1586462652947; 
 Thu, 09 Apr 2020 13:04:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200409113305.1604965-1-hch@lst.de>
In-Reply-To: <20200409113305.1604965-1-hch@lst.de>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Thu, 9 Apr 2020 22:04:01 +0200
Message-ID: <CAFLxGvxXxR29R77nQKsYSpxviARk4AhWrzwfMPc1FECDLxh_sg@mail.gmail.com>
Subject: Re: [PATCH] ubifs: remove broken lazytime support
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_130414_342050_A0B01420 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, Apr 9, 2020 at 1:33 PM Christoph Hellwig <hch@lst.de> wrote:
>
> When "ubifs: introduce UBIFS_ATIME_SUPPORT to ubifs" introduced atime
> support to ubifs, it also added lazytime support.  As far as I can tell
> the lazytime support is terminally broken, as it causes
> mark_inode_dirty_sync to be called from __writeback_single_inode, which
> will then trigger the locking assert in ubifs_dirty_inode.  Just remove
> the broken lazytime support for now, it can be added back later,
> especially as some infrastructure changes should make that easier soon.
>
> Fixes: 8c1c5f263833 ("ubifs: introduce UBIFS_ATIME_SUPPORT to ubifs")
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Thanks for pointing this out.
Patch applied.

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
