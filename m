Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 702BD9C5CC
	for <lists+linux-mtd@lfdr.de>; Sun, 25 Aug 2019 21:23:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0SYbfqNvzcuRElq8lzQ53e0w2pib8hK9YPKRJpWgEuk=; b=DTzPljUaVMg1Gi
	a7sB8UQEs36fAd9Epd6erNZL75bh2pGkmVbrrGpg6BFb51usZVMk38Lu/e4AI75MZc7zkij4bDBkF
	rdXzcL3jcUl2IpiNasaQvFp07MI1TPuT4eBEC7oT+Do4P2onlC2ZJglIffLFpM1yYlssAUR7LBApM
	R8wU2BwKJXZyciXs54yEc30MXMDByqWPXPEuf2eQooayp1N9EKBYvV9AQdduNaQ0swsMfYGFPW4oX
	bQ0+L3XnKwRGPqcTM0alWRJKcM5D8FKP2ieut3FOcNtFWmrK3VME9xOgmTup7WD4EhBO+3f2Sx6pZ
	zlfOhRVzWcVuiTIQckVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1y6f-0005Jt-Rh; Sun, 25 Aug 2019 19:23:17 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1y6X-0005JZ-8w
 for linux-mtd@lists.infradead.org; Sun, 25 Aug 2019 19:23:10 +0000
Received: by mail-wr1-x436.google.com with SMTP id g17so13281255wrr.5
 for <linux-mtd@lists.infradead.org>; Sun, 25 Aug 2019 12:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=x1Bm8L4LTPF+izF2olAcq5JuhMzc8jf5Ba+vwT1pHpY=;
 b=QXTNme0yAl2XhzqGkdlYjDqd1sGNa7X8+kmZmflprJjdt2ZUA7R8ONAu1ASmls5Rop
 4aPFG/7jQjDFsB0Tc1eSV1uzVmsENAzl32o9GDd43oshIhcZNCjpNM5w+gMGhSUJd8Nl
 MvNUZzqvgsEHVMWjpNNRKNFih0nbec64y2P25TOlDC0p1e+R/6vW08OUuT4gWIoKS1v/
 aK3R2vM57UmrWPivAnyU5qnJBGNJgurausswjwvPT18GiCmb+cO3e8tWKoSUyKAxdbJp
 kFiblKdlfjrkp0fEaub/Er6r8k4no09AvLK+sgARsrhcvbBBMjGEiC3xq4mTtz2yiJjD
 YtRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=x1Bm8L4LTPF+izF2olAcq5JuhMzc8jf5Ba+vwT1pHpY=;
 b=ihmb/7Cj8G9zFybvL7TnZ6Apz41Eh2pRNzDty7gCiWYPRDKpQfQr6Hn5egUiAYfA7W
 wCc+WrbjQAR1mVmobdNca47oBPFCGOQSwOOGhE3IbXfw+cHWH5nB2VU0Sps750fdhJ3d
 qAPCFJjaJac37ZjhRriIC/c2C/H8f9tBRVKx4TAGAgr/R16oLvxV6c/PGP3ytcHTxn/s
 bqJBczCvB6JKLQVaueEk/zRMFbxZlrJcyiIFs8PqIThgqEZ8PUo4rPdySoGLIET4Asut
 zgwCpt0U53M9wSVEqyaD67qwf1vFIOz4r0m8DhLUGEMidZvfmDxzPIMlBwtJCHN9wj37
 +9MQ==
X-Gm-Message-State: APjAAAV7FOViiyhXytwkJ7HZy+5aDa7xWgKVM/Cp3B1CBHHtROfntXt6
 bim7FPeYurwBl+ddFI0EuXKfe7QrvVaSsk7AKF0kqWnV3Lo=
X-Google-Smtp-Source: APXvYqw68fGyAi9r2oSCocUJG5FQWqQM42yDWWBB38qEhPxm9W3FBWdrxUyvSHxn7pPaFPTSAdye5nbqSvG3taTC3T8=
X-Received: by 2002:a5d:6a12:: with SMTP id m18mr17414533wru.306.1566760987723; 
 Sun, 25 Aug 2019 12:23:07 -0700 (PDT)
MIME-Version: 1.0
References: <e8bde724-46fd-4264-ea3f-a84a792bcad8@fb.com>
 <236e95be-a2cd-3b44-36c5-121678f7c009@fb.com>
 <afe2b8f2-d1be-4cd2-971a-b13c1e38da67@www.fastmail.com>
In-Reply-To: <afe2b8f2-d1be-4cd2-971a-b13c1e38da67@www.fastmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 25 Aug 2019 21:22:56 +0200
Message-ID: <CAFLxGvypuPp_Q_31DpKmfqte4uxHfYiQ6KvT1f2LGo_y7EvKfw@mail.gmail.com>
Subject: Re: kernel BUG at fs/jffs2/gc.c:395!
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_122309_342570_BEDB9E56 
X-CRM114-Status: UNSURE (   6.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:436 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tao Ren <taoren@fb.com>, OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 2:06 AM Andrew Jeffery <andrew@aj.id.au> wrote:
> Looks like a lack of robustness to filesystem corruption to me. LWN

What exactly makes you think so?
The inode cache entry is in state INO_STATE_UNCHECKED while GC run,
which is not allowed.

Tao, is the error persistent or did it happen only once?

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
