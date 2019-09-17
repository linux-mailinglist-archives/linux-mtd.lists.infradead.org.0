Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D38B5775
	for <lists+linux-mtd@lfdr.de>; Tue, 17 Sep 2019 23:24:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mnYSwyVg94MoikM3tDbB5cDyiuxICKSxW9gjpqWFo10=; b=lQ4N/Z3j8T43t/
	OApS+LJ+YWSrRSrckKgeOHPdP3gitrprOvJ+xm2OyYeRhKZBwOjB3AePDYHJDMR5/Y4rkWbZ4dKJI
	OeNsQU5vi5k66DRtuC2cB8Z4gwfQVzuD0zP8VwGw0gMRapxUeAfO1wpbIdOVdtjIJNcVVza7fWs43
	T4MDROjVriMQW0glJxStL/S+uAtQJj6tGwFnPN5ho2PhpYdH+RoFqvDJscqLAZqHlUZX4IdDW4Tq4
	Ktj++W6jyOE/BimbpGZDt+3/tjIHqlrxmmQ53y1jqvpTRKppk6MOA5VlYkspX4cSFNx3pndVRG0En
	+/ICqK6XY9jk/OGBzvTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAKxW-0002BD-Dn; Tue, 17 Sep 2019 21:24:26 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAKxC-0002Aq-LB
 for linux-mtd@lists.infradead.org; Tue, 17 Sep 2019 21:24:08 +0000
Received: by mail-oi1-f193.google.com with SMTP id w144so4194686oia.6
 for <linux-mtd@lists.infradead.org>; Tue, 17 Sep 2019 14:24:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ap24xjPWfCGB8lsHh+GC/IbtHCCeIcA2yTF7XA6OtUk=;
 b=P7QsA0C5hM+haFPJcpI1Yw8YAdBEiye8Q7LmU3Lk8QC/cG/kzhQTuKfbQ/Od5opByJ
 ja+pku6O7IevU+RKuj3uSeEMrgB39t5WrjefDryEVLU6jOFsMtWftjNw2Z7phzk6rYvy
 Rp6/wvEglH6CztH7UQeIFrCc4iqfzGWC3JaOP0fl6i2TtfElqvvmDzQBkhyo2f2SaOrQ
 GZuYjxZQDgjzuGCV120H2XGN7nCAvdeS4cqdih8/fJeapV4+T3vNQ5FXP9mCAHnh9828
 pwsYolJuCQTh9kW86CXEfTOomAVpler39EcU+2XwA7HZhEXV/C12rBlOMOuu6FFJ/O4c
 PYGg==
X-Gm-Message-State: APjAAAVFEJRLL/FR2N9HnjPHzmeGuwzMcRO0A1Y+zabYB3VDmCduAhNY
 e9K2KC29o8wrqSFrmgkLdxWGmENK5XeE/rsvy2E=
X-Google-Smtp-Source: APXvYqzz/iohYneGVtTS7wC0CKuDB7uEzHxadYx0bqHzRRJxBysBydVNjXQrSQj/LE4/J9D2u5CBMEKOWCRjSo7Ufbg=
X-Received: by 2002:aca:3908:: with SMTP id g8mr140666oia.54.1568755445280;
 Tue, 17 Sep 2019 14:24:05 -0700 (PDT)
MIME-Version: 1.0
References: <610761cf-5a19-c182-07d8-8d118ca20035@cogentembedded.com>
 <bd64fb56-c42d-7f7b-c6f1-4d7b43a6d191@cogentembedded.com>
 <CAMuHMdVdKgBYSGJemH2LP+N61T+uui0XX1Zb-=dM5sNEAaQoMg@mail.gmail.com>
 <90d87853-621f-890a-be59-1591cfe1f4ea@cogentembedded.com>
In-Reply-To: <90d87853-621f-890a-be59-1591cfe1f4ea@cogentembedded.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 17 Sep 2019 23:23:53 +0200
Message-ID: <CAMuHMdWEwc8_=NxY_UQ=tzR9o95Vv3_b6WF5s45nHjkzmVygMQ@mail.gmail.com>
Subject: Re: [PATCH] mtd: cfi_util: use DIV_ROUND_UP() in cfi_udelay()
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_142406_694623_F681160D 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 Marek Vasut <marek.vasut@gmail.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Sergei,

On Tue, Sep 17, 2019 at 9:53 PM Sergei Shtylyov
<sergei.shtylyov@cogentembedded.com> wrote:
> On 09/17/2019 10:43 PM, Geert Uytterhoeven wrote:
> >> cfi_udelay() open-codes DIV_ROUND_UP(), violating the kernel coding style
> >
> > Perhaps "violating" sounds a bit too harsh?
>
>    Hm, indeed, scripts/checkpatch.pl doesn't complain on this line. Do you have
> other ideas how to call this? Or just omit this?

Just "use the existing helper, instead of open-coding the same operation"?

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
