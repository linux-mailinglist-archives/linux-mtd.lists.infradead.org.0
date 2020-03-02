Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E7F17633B
	for <lists+linux-mtd@lfdr.de>; Mon,  2 Mar 2020 19:51:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PJIsXiXzsVLvzgUICaNNrVAwJUG9rCJq9Ah9Mw5FuyA=; b=GogYcHiwca5GI9
	O1+EmHDTz/OVqOkTZbhrGpSkXR/8YSEfg5U6KF37NXAgktWXankK9RR/d0jJvPKylrSAiUsOhGqNx
	RnYN39KQzKbGENad7bks6K5dXj72oLCRYRioTNmndnBSSpBmBP+GfKGBVNbbcQAPW0sk4HY447QDk
	apLFjyHIO2ncfOqAPwxl5FXc2oFtiXXH9Dr0UUJ1jTmUuEFuESUAn6LwR1bRvl6WKCREIEhOxMivo
	ZFx7TWuDgtrEOf4azn8gqCZflF3rAR7r6PRsuf1cIx597+IP9sQSt7A1nuiUpaejCq3ZlnCM/BO9C
	ORUrnWatvHB68kMB63oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8qAP-0005a6-7i; Mon, 02 Mar 2020 18:51:49 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8qAI-0005Zc-Ix
 for linux-mtd@lists.infradead.org; Mon, 02 Mar 2020 18:51:43 +0000
Received: by mail-ot1-f68.google.com with SMTP id j16so343780otl.1
 for <linux-mtd@lists.infradead.org>; Mon, 02 Mar 2020 10:51:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cH1nDM4uwumr6KdthICcbpNTedeJBeY/wKjOC4m8TLQ=;
 b=WJQArmDCiMhk89aHx8erwlSThLk3XNlh4zSsJgL+Kxfqe1TqoqEn7kQtX3vnhxIrzB
 7mmvBBX1RIoAyTJnzuCSqjlPrPZrl6egQ0gBdn9rqFBJPb1MMteVsAt0D82UPlbGnZNl
 xrNa+HG1AKRBbyyP4GUqsiA/8Gdl0NKzhO6LPGIhecSrlCDoi7M7tGvk0KaJ1Uj59mUK
 KIOj1c7DNndmlLnuCmXXn7quiNEYBa2r4GOWw7flrUtlfKp3RtfUytovRvfZBEIeoi8t
 IafbuterCx5e/ymsL4mAGpxJNscpvLuZnUy3/1AxKG+y+WxYVLB/YqFmASkRqC3v/u0I
 P6WA==
X-Gm-Message-State: ANhLgQ0OeqizngM8uVGWkbEqdS4vBCtSlPqXA3q7CQcpcZgUCI9yeZ8L
 iW4nZeYE87PuU/TgRHQ8fOtKrnRSkUUBJ7qE+0E=
X-Google-Smtp-Source: ADFU+vtjNzCGescRbFcFgmJZbsy+UPTWYBrrpuwFClvDp2HC/YFd54MwAImxgozZRZYrp9DjMoDEHIgXHozDv3Kahco=
X-Received: by 2002:a05:6830:100e:: with SMTP id
 a14mr435280otp.297.1583175101255; 
 Mon, 02 Mar 2020 10:51:41 -0800 (PST)
MIME-Version: 1.0
References: <1582903131-160033-1-git-send-email-john.garry@huawei.com>
 <1582903131-160033-2-git-send-email-john.garry@huawei.com>
In-Reply-To: <1582903131-160033-2-git-send-email-john.garry@huawei.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 2 Mar 2020 19:51:29 +0100
Message-ID: <CAMuHMdW7Xu6EzfmVFx1+i1byy3KOS5A+h2GuMb8nkZ+-jD1=BA@mail.gmail.com>
Subject: Re: [PATCH RFC 1/3] spi: Allow SPI controller override device buswidth
To: John Garry <john.garry@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_105142_624249_A2B1A678 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-spi <linux-spi@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linuxarm <linuxarm@huawei.com>, Mark Brown <broonie@kernel.org>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi John,

On Fri, Feb 28, 2020 at 4:23 PM John Garry <john.garry@huawei.com> wrote:
> Currently ACPI firmware description for a SPI device does not have any
> method to describe the data buswidth on the board.
>
> So even through the controller and device may support higher modes than
> standard SPI, it cannot be assumed that the board does - as such, that
> device is limited to standard SPI in such a circumstance.
>
> As a workaround, allow the controller driver supply buswidth override bits,
> which are used inform the core code that the controller driver knows the
> buswidth supported on that board for that device.

Just wondering: can't the controller just override this (e.g. in the .setuup()
callback) without having to touch the generic code?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
