Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8256BB565C
	for <lists+linux-mtd@lfdr.de>; Tue, 17 Sep 2019 21:43:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bPUhBM/iYOop+5hNYWaP2PZzJpm/leHrfZMcN+3GgL8=; b=sAC1XxtIiryWw3
	iUm+xlDuuaS7afCiMlWXM/22jz5JBm9lO1sSTdpvD7C0ezGigSh6VwovAZf4qoa04G6vBILdYGOxE
	InEdiQ91YZJsiILaAqKu5r8PkcUQgFCOG9CGqGDnB5hF+e9CUzEuKCugTT/zuZ09bSJLCJ0nPGJSx
	ZUxYwnCxbLogpnTR65W7lRx7tMAgBlWSdvZy7ASDqnn8jFwLozS+pyWKBMFKtsNXcPUAdlRX1QVFB
	tpkpAEAKZRCrnwvV7HEXDZFqrE1HUfAFr6i5lwGmNhbZBZVUf/pwGWXQoKaoq4MqpjRHI6JVpC9li
	NMya0PeYYurld9GfVcQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAJNp-0002P6-Ce; Tue, 17 Sep 2019 19:43:29 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAJNf-0002Op-HD
 for linux-mtd@lists.infradead.org; Tue, 17 Sep 2019 19:43:20 +0000
Received: by mail-oi1-f196.google.com with SMTP id k20so3970903oih.3
 for <linux-mtd@lists.infradead.org>; Tue, 17 Sep 2019 12:43:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aZpQJtBUwnsy/OU7UZSVhOfjWNsNcDccwJerhAPqHrk=;
 b=I2gNzNle+gynY6vWkDoRE+G3AhYBbgC35NbOip/yrEn3n5LZ+IRpT5CZCGA5p6j/o5
 Q65aQL2swQ1jlXwIWLnN21PvmYQbBPFNJWVCuA/T+gz2pPryKI551/MY9NUgo0/OXgdB
 ljj28iASYyQzxGRpzlQbN7iAejIxVP+y4ow9jkPfCPZdjy/x02S/1MYtEwex66gS0DVf
 h1H+PW8XRETjfOGYdbdUFBGFihUv8MDMNUSOJ/9ChARDC2/YCcdMDrgugp4ovL6Vontd
 mX9hifmotvLMO+rOH7snNB3yLfkXyzWLecvXrba9bJxhNRkEPTaGERMa+KbloxttXyjg
 tPaQ==
X-Gm-Message-State: APjAAAXah6mQU/Xv1OX4+ZlZhN2c15HUNQ1S6W5VzIMFVOYVUh9wOi0W
 TJR7z0JKW1ye5An5v0gbub5Qnoh8Z4Kw4WtVFfA=
X-Google-Smtp-Source: APXvYqx1taEyTIZxQYtl3nWRDojqfPShfPogU/spQh9wYusm4lM91gldjIiQFDrjbena8/KsJg9V3yqBRwLDi5QYzMo=
X-Received: by 2002:aca:b654:: with SMTP id g81mr4898112oif.153.1568749396956; 
 Tue, 17 Sep 2019 12:43:16 -0700 (PDT)
MIME-Version: 1.0
References: <610761cf-5a19-c182-07d8-8d118ca20035@cogentembedded.com>
 <bd64fb56-c42d-7f7b-c6f1-4d7b43a6d191@cogentembedded.com>
In-Reply-To: <bd64fb56-c42d-7f7b-c6f1-4d7b43a6d191@cogentembedded.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 17 Sep 2019 21:43:05 +0200
Message-ID: <CAMuHMdVdKgBYSGJemH2LP+N61T+uui0XX1Zb-=dM5sNEAaQoMg@mail.gmail.com>
Subject: Re: [PATCH] mtd: cfi_util: use DIV_ROUND_UP() in cfi_udelay()
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_124319_580749_54D58907 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
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

On Tue, Sep 17, 2019 at 9:28 PM Sergei Shtylyov
<sergei.shtylyov@cogentembedded.com> wrote:
> cfi_udelay() open-codes DIV_ROUND_UP(), violating the kernel coding style

Perhaps "violating" sounds a bit too harsh?

> while  doing this...
>
> Signed-off-by: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

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
