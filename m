Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7511D7790
	for <lists+linux-mtd@lfdr.de>; Mon, 18 May 2020 13:44:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=obusucZayytmYqFP+tF9R74Bhpe3bNY284OL9XJ3FqY=; b=OrF51x2xzeykbk
	u0F5bjQienQ7rRKOZzNN7xbZ52YYZ4lyVHRzv2Bc75xt1vYT74kr8uozjchu944FUwW4Q/QUyllyU
	cTBZEJu7L6mVzfMz+g8GkGrMhtpW4lqkMEEUL40aEysq9SCHPFz6rZsgAMVpFkCs1oEoa1axVTRP4
	5RWPiQV30XVEQEYXpkvytAF8F7ZEmBDenZbpnzvmzWpEvLNffLkmctbYtwQuisSiCvCahYiZ8KcDz
	mJSPi3qMqp/W78rk0mmsh7qG7NoCJ7hJ92pxFbWQhRi1cTxisHqDhC9TuB/3+jEiQZVQvi8i6fRd5
	9otbjtKIXE20pRgu6QZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaeBg-0001Gf-5D; Mon, 18 May 2020 11:44:04 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaeBX-0001Fk-AJ
 for linux-mtd@lists.infradead.org; Mon, 18 May 2020 11:43:56 +0000
Received: by mail-pg1-x541.google.com with SMTP id u5so4683773pgn.5
 for <linux-mtd@lists.infradead.org>; Mon, 18 May 2020 04:43:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=D2fiYTMGkA72yxkM7OqMlh+jTtVoL+5gotBtf6Ab1Vg=;
 b=FupRAN/PobQTaQAv55Hsu61uSDhgZ3yYRyGz8MMb28tAecTlaodhHWlWTBtxSxZsLL
 hUHBpFsd2j51DYacP5abkLC8bE0rQqecQGxlgDDhXG70Kp4nA0D407rBYGJrrN6WC3JW
 S3xYBq32QeVdIUofnBLx7OzpiOmgjjWSYxZ4huxWNohOM/1bvv1kWksiXP4exgRlnwHA
 mxmA2IVSXkpjectaLC1fgYuhtSYOjE+JUBx+StzEfl0No5bJYMY32wDd2kwSb2UXMd6/
 ef+TC7BOv19rXQ9ppgji3DX6OQ8nXQy+7mCHuWpX8NWB4NpxsMpp24w4Bq/cKSlzs4Z+
 4htg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D2fiYTMGkA72yxkM7OqMlh+jTtVoL+5gotBtf6Ab1Vg=;
 b=Ewp5vJNpyRZVq86Z+Q+hQI6mnS9Vtgv9zuMgyqsjtK0lFd+RBI+uXRvuCwNDctrkxJ
 TqojCcy81CVVo8lMkkGULpO5DCRSNVbw5Fb1tnQiSyiRCA38xO0vDxyLGNmDf4g0vJ2Y
 tHXlcIkXRywi3Dg7e82nY8Gy66yAVNBfIsk0knaZsLIag8fbEQ6uFnrwJziO3IeLq7uC
 SOZZoHW742Ae4UBWuBvdKpN6Dv5V2pq56RvitPa1RTXJKqCAtfZ0Y0/6ggEA4aZ+tdEp
 wPxC6417ElWLpXqGSEmCygQMa61sV7pEhU28A54fP2N1/kI4XVfhAfErQK4cB5D3eakv
 GiHQ==
X-Gm-Message-State: AOAM531ZRfTSY1gDoD6Sr8ggH4oe335sEzsT5kEeA53+hPIk5nq0PLTP
 B0Pmt6EaRv2TulQKgt3zmLfjC+YaONbacRjPxq0=
X-Google-Smtp-Source: ABdhPJyjDARrY4u/7pTXmySvEzdtyf7tJDRYLFc46T/zWf+w+QvLGa31DWfDx3lW7E/Y60GuBUgnGDnQNIZcaj+xHss=
X-Received: by 2002:a65:6251:: with SMTP id q17mr14337972pgv.4.1589802234387; 
 Mon, 18 May 2020 04:43:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200515105537.4876-3-vadivel.muruganx.ramuthevar@linux.intel.com>
 <202005152142.AWvx4xc5%lkp@intel.com>
 <CAHp75Ven9q-6dDYtP_uXigeS_r2uvpUZVR5Mh0RdEd36MbTG+Q@mail.gmail.com>
 <CAK8P3a3RKJo-C5=19oAppx212s7T8NdnKJVmkj+h=34a8aKMNA@mail.gmail.com>
 <5180e734-ff56-db5a-ab49-8a55cfa2f2c0@linux.intel.com>
In-Reply-To: <5180e734-ff56-db5a-ab49-8a55cfa2f2c0@linux.intel.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 18 May 2020 14:43:42 +0300
Message-ID: <CAHp75Ve_XjvvGBEQyhy=qVVJMFS+18j3aKxNxSQpGK5qJmzfBg@mail.gmail.com>
Subject: Re: [PATCH v7 2/2] mtd: rawnand: Add NAND controller support on Intel
 LGM SoC
To: "Ramuthevar,
 Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_044355_359255_8BBE1EBB 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
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
Cc: devicetree <devicetree@vger.kernel.org>, kbuild-all@lists.01.org,
 kbuild test robot <lkp@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Richard Weinberger <richard@nod.at>,
 Brendan Higgins <brendanhiggins@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 "open list:MEMORY TECHNOLOGY..." <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Anders Roxell <anders.roxell@linaro.org>, Thomas Gleixner <tglx@linutronix.de>,
 masonccyang@mxic.com.tw, Vignesh R <vigneshr@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 2:39 PM Ramuthevar, Vadivel MuruganX
<vadivel.muruganx.ramuthevar@linux.intel.com> wrote:
> On 15/5/2020 10:30 pm, Arnd Bergmann wrote:
> > On Fri, May 15, 2020 at 4:25 PM Andy Shevchenko
> > <andy.shevchenko@gmail.com> wrote:
> >> On Fri, May 15, 2020 at 4:48 PM kbuild test robot <lkp@intel.com> wrote:

> > iowrite_be32() is the correct way to store word into a big-endian mmio register,
> > if that is the intention here.
> Thank you for suggestions to use iowrite32be(), it suits exactly.

Can you before doing this comment what is the real intention here?

And note, if you are going to use iowrite*() / ioread*() in one place,
you will probably need to replace all of the read*() / write*() to
respective io* API.

-- 
With Best Regards,
Andy Shevchenko

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
