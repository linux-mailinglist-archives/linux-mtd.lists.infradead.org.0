Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF907EC6B
	for <lists+linux-mtd@lfdr.de>; Fri,  2 Aug 2019 08:10:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zCyYD9CJDKr0Qv7jXBzqC0n6rq8wlxA62O9Kyktox8Q=; b=PMR6QCHKSKmtSW
	GHjt5UmdW2KHXYhlMx8kcyHfGLemDQ2MxytANtnZ2rzc1tUhkDqjvmXjgjb13XAuWo78WBPHsUCAT
	xRSm+fPoAl5ErimjzClkGXygbvaDEfNQbTBmhAeSynZMI4aBI8/9dAJD2//ztQ7QY011vICg2nGLr
	IoiXozJZ2PY2hwjiT9/9dLFYKJmxyOUI87BpioGBy40yXpNvbylEbKATFLwvagPgSZ7+RwEO1SCG4
	9VXmrRXCTmYQ2mXpbEO1ETEhGLU3LDGjawQESdRpN/wZCcbr4wtV/xUZ7o25rQaBHXpLxf/R57GXY
	vWJQBs5ZmKn6pEgmbORw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htQld-0003th-Tu; Fri, 02 Aug 2019 06:10:18 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htQlV-0003tA-OS
 for linux-mtd@lists.infradead.org; Fri, 02 Aug 2019 06:10:11 +0000
Received: by mail-qt1-x844.google.com with SMTP id x22so67871928qtp.12
 for <linux-mtd@lists.infradead.org>; Thu, 01 Aug 2019 23:10:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aFWaj3cSyAp5cCruqVAXM269R+jXFA+hpQyudleBW8I=;
 b=R3+zgINs75dLpE9xitGDlrbGtE/wzbCCZrUQRqXd1DkFAauk+rXBs5F/P6isRb82rQ
 fGCdP+uzBdeSYGqQpFlJB3PO3LQtniJfZDwC7aTY1w7I/MNKmSqPPLN5EwZ2gGwtY3KB
 /kjIdOGt+CsMNaXLGf9WLJI4inkssBNReoyCg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aFWaj3cSyAp5cCruqVAXM269R+jXFA+hpQyudleBW8I=;
 b=n1uNSDq4xXcRaaYIGo1m5CsOSDIPLUhauKkJ2+ScdWwrLlMf24xxLslHXlESTsOiQw
 9jf6KIwoCBphdYIKYyeoZVBGFdOjeL1K7cFABgchRfSJvzCpWc0mVOpn0AK9zXyjtKAx
 a7KuHPWaRsyKhMsXEA3u2HhgKhoDFkSPeb+SU3jrkNsYvAsnS4dLI9r2e5lSf6jFe+59
 oxzIgdV+FregNMIQdtidmroAytphrP8+ot5dsNFHcyklPkwTGNmp4TjkJAQ4dq+PRh/Y
 vsimSUgwlDydpcMmLFJ2kn/uxP3VlVPFmWTLDUbX0sX7LOfeeudrmvxjkJPffWxqeelC
 7vYg==
X-Gm-Message-State: APjAAAUhbf5vF9vZw2fhttzn0xl+owQOmsu+/r/6GkQLuLdIAYwufu9W
 8vhZIDlAqHt5qslejoUZltzhXY4yZR6poXyLRc0=
X-Google-Smtp-Source: APXvYqz7bb22+a5Wv4AkSi0btb/AAI8H35mfK49hqP0WgDG+Ezce+iETXBjueb2NE8qmF9oHprwt/CYIrmsrIe0PbKY=
X-Received: by 2002:a05:6214:1306:: with SMTP id
 a6mr97906903qvv.38.1564726208597; 
 Thu, 01 Aug 2019 23:10:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190730081832.271125-1-avifishman70@gmail.com>
In-Reply-To: <20190730081832.271125-1-avifishman70@gmail.com>
From: Joel Stanley <joel@jms.id.au>
Date: Fri, 2 Aug 2019 06:09:56 +0000
Message-ID: <CACPK8XeqDRNYJC+=xC_XySSTX6mHi5r94UDaeMPQv3DFV1HYQw@mail.gmail.com>
Subject: Re: [PATCH v2] mtd: spi-nor: Add Winbond w25q256jvm
To: Avi Fishman <avifishman70@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_231009_798643_22718EDB 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: vigneshr@ti.com, tudor.ambarus@microchip.com,
 Richard Weinberger <richard@nod.at>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, Tomer Maimon <tmaimon77@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 30 Jul 2019 at 08:19, Avi Fishman <avifishman70@gmail.com> wrote:
>
> Similar to w25q256 (besides not supporting QPI mode) but with different ID.
> The "JVM" suffix is in the datasheet.
> The datasheet indicates DUAL and QUAD are supported.
> https://www.winbond.com/resource-files/w25q256jv%20spi%20revi%2010232018%20plus.pdf
>
> Signed-off-by: Avi Fishman <avifishman70@gmail.com>

Reviewed-by: Joel Stanley <joel@jms.id.au>

> ---
>  drivers/mtd/spi-nor/spi-nor.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 03cc788511d5..74b41ec92414 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -2151,6 +2151,8 @@ static const struct flash_info spi_nor_ids[] = {
>         { "w25q80bl", INFO(0xef4014, 0, 64 * 1024,  16, SECT_4K) },
>         { "w25q128", INFO(0xef4018, 0, 64 * 1024, 256, SECT_4K) },
>         { "w25q256", INFO(0xef4019, 0, 64 * 1024, 512, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
> +       { "w25q256jvm", INFO(0xef7019, 0, 64 * 1024, 512,
> +                       SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
>         { "w25m512jv", INFO(0xef7119, 0, 64 * 1024, 1024,
>                         SECT_4K | SPI_NOR_QUAD_READ | SPI_NOR_DUAL_READ) },
>
> --
> 2.18.0
>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
