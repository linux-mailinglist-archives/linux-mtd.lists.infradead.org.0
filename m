Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5AE79393
	for <lists+linux-mtd@lfdr.de>; Mon, 29 Jul 2019 21:10:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ZCC20IvDX+sQlcNwXcIFIVIp02iNcg3YYmDtdYTtC0=; b=LUkXCSU6cRuf9H
	623v9GzVyuG7cXP+TTNpT5DSzH6nPCgt3K7fOzDkB0Qq8vCybtfENlQVafN6D5s2LRJSshgCbI8Ka
	cQVzJtoK+eNJBpIZOx1UZTkrB0DR6paJ/BuuYVu6+OF99WU4EVM6OkpXHfIVTbgsddxH0fixiANf0
	IGLbkjeOTD+nAVohVP03MbwGwzMxFgk4A/cEVLIvxhmZt4dFaMdCVQX1F+AT44bB7kYmreZR6qgt4
	ODOm/UtPahfD+6TvZw9Va6dzjkbzNVcJi9SB1k40IMNr4CZs3u2WoIrjoEDYeBdpgaBse0wE9POsg
	ZWzqZKBvlx3SUQB1KEUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsB28-0006gf-HL; Mon, 29 Jul 2019 19:10:08 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsB1t-0006g5-7z
 for linux-mtd@lists.infradead.org; Mon, 29 Jul 2019 19:09:54 +0000
Received: by mail-lf1-x132.google.com with SMTP id q26so42873025lfc.3
 for <linux-mtd@lists.infradead.org>; Mon, 29 Jul 2019 12:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ziE6DDn2x9ZGVW0PcRgCpWqjtFxQGQX3d2e/7pNfkgU=;
 b=LeEYftHsW4FDLUCG/OR9SiUonpWb4655zqiq96fikgHWwLchEqttpQ1iqQCBIwFVal
 g1pDd+IRsIYCSgNozqjwks5Y5Ww31V/g+lbGEcrpjjpAPSJ8+zv3Us6mjX7eUcHgxRHw
 WR2cos5Ukb8iDBuG3upoIYITab2WcZ8CtG4NJrGFM1Cc0+/BNfChSvySa0NoOCgaaXu6
 Z4vn/G9x2cUISQnYZOEEmuQ06JZg125qeXlkUSWYs8EWXydPexIZnLqrzSdN5K1frVxM
 aRaAufa9dKRhOEjAjj5aRSEO8Syj0Ju0FZcwEXs+SLmFH/bFp5MTKRbzqq0jts8JHQmE
 t7Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ziE6DDn2x9ZGVW0PcRgCpWqjtFxQGQX3d2e/7pNfkgU=;
 b=CcvH2lL8qDLKrAlPNp8lOwT0g1IoJoSxO1a2jSC3BhD6sd7qE8kgziwc6GU7Rq1DJ2
 7yYNuQGrpxdtpeLrvUpVdxUnyVbkPq7lfrFaXZZGYxr370sw/WGsYU+hydWQdon6YSyf
 EqqbiIZsqMX4pJURjTi5bz80dBwGAWdipUpP5CgJ7RVldUQ8IBZlL3i8phHWDNu9KMnL
 BO54ypOt4PeaI51jj/Na8gY4SO2CaTubt3WBeM+Q+AhINryw9Iu9PN55hZHpnXKmogLy
 t87aqg9tbP9EnT29aKf20TRxD5PuAzLU5XtJNArtPX8lL38ZjQVJOOSElyEqsh4p3K4E
 3rAg==
X-Gm-Message-State: APjAAAVLYrjKP85tGH/O4u1tH5zFuYaddVI4hEqnel2HnyJlzhpsdBFD
 786YFwIiYlXHw9RuHU8r7nE3Xw1CVyBSJpKMuaAjQ2dJ0yk=
X-Google-Smtp-Source: APXvYqzt0Mt8+F+dNZgwc71lkcaUthkCe2RGBxFOd3Rj9DHK0r/lbxXhIm50f+Z0mgGEr8do44qaSh7MPK+XvMmBwio=
X-Received: by 2002:a05:6512:21e:: with SMTP id
 a30mr32998177lfo.107.1564427391355; 
 Mon, 29 Jul 2019 12:09:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190725001114.0ceff19c@jawa>
In-Reply-To: <20190725001114.0ceff19c@jawa>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 29 Jul 2019 16:09:56 -0300
Message-ID: <CAOMZO5CsTPaRSe-VmOwnnYrsMMXa3GhurmsWwzaPo948xs10FA@mail.gmail.com>
Subject: Re: [imx][vybrid][qspi] Regression notification - vybrid vf610
 QUADSPI - BK4 board
To: Lukasz Majewski <lukma@denx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_120953_288679_9E60F91E 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:132 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Yogesh Gaur <yogeshnarayan.gaur@nxp.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Frieder Schrempf <frieder.schrempf@kontron.de>, linux-mtd@lists.infradead.org,
 NXP Linux Team <linux-imx@nxp.com>, Suresh Gupta <suresh.gupta@nxp.com>,
 Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Lukasz,

On Wed, Jul 24, 2019 at 7:11 PM Lukasz Majewski <lukma@denx.de> wrote:
>
> Dear All,
>
> I'd like to report that after moving the fsl-quadspi.c driver
> from ./drivers/mtd to ./drivers/spi (around 5.1-rc1) [1] the
> Vybrid's QUADSPI (even with single SPI-NOR memory connected) is not
> working anymore (the chip ID read is FF FF FF).
>
> This wouldn't be a problem per-se, but not all necessary code was moved
> - especially for vybrid which has issues with some HW bugs [2]:
>
> --------------->8----------------
>  * The IC guy suggests we use the "AHB Command Read" which is faster
>  * then the "IP Command Read". (What's more is that there is a bug in
>  * the "IP Command Read" in the Vybrid.)
> ---------------8<----------------
>
> I've explicitly asked NXP support for this HW issue [3] - but till now
> there was no reply.
>
> The official linux-imx (from meta-freescale) seems not to support vybrid
> (vf610) anymore - and the newest available now kernel is 4.19 (with the
> old fsl-quadspi.c driver available).
>
>
>
> Hence the question - has anybody noticed this issue and (maybe) is
> working on it?

I don't have access to a Vybrid board, but I kindly got the
confirmation from Andrey on Cc that QSPI is working fine on his Vybrid
based board running linux-next.

Regards,

Fabio Estevam

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
