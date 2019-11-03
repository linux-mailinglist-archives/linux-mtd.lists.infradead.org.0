Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC753ED347
	for <lists+linux-mtd@lfdr.de>; Sun,  3 Nov 2019 13:03:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QT5lC3Wv4JiVMAfeGxE8mxYF97AHuORPGVI8V1wlTuI=; b=Rl6hw25oHRYncY
	bSIPkLO3ymWhxAAjncFjeTd0T/JReiLJreBjk4t9+wFqm5vrMVP9Wc8jG4sYD63v/xS+4NGvvphSK
	rDoEpPQhVxH+27sMiFM1K5RPtUvJIh/AJSk2trLzw/ByU+YPP/th297xK2goFO2pRE2RB/DyKvBhJ
	OTV/JJSc7MZqJYIZ0HaQsybwPyj/RluTAuxax+xnFE9hhAm6xnzUt+GW4sJbQEVDeOSZc1RHNkWww
	0bzSbCUm1aMRfh57ZdGC/iDrHnfuBwFexomdtPWuaBLIfcze8yUH28DQbc3+N9wBxnmA436WiEObt
	GZuRwku4U7hy2FFZX+Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iREbh-0006QA-Ke; Sun, 03 Nov 2019 12:03:45 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iREbX-0006Pb-Ty
 for linux-mtd@lists.infradead.org; Sun, 03 Nov 2019 12:03:37 +0000
Received: by mail-ot1-x343.google.com with SMTP id n48so12090096ota.11
 for <linux-mtd@lists.infradead.org>; Sun, 03 Nov 2019 04:03:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aDfHxxU96azcwEo9cIE2KOmHovRw/1aoC+X8NzKe5fk=;
 b=ctfNhpnpBtbVZPlNJSj+lRi4gaBVgWNiYvWQdcVFqBee+vMMkesBY8mLSk6RjF2UeD
 8LBDOZw6nmrJHU6DH/ybGV5k8qAXYiuXfywQJqN091idVSu6u2BCJLB1JZsQKdR8+yGt
 miCElIhM3m8R/KdA/XSPvdiX7D5350+b2PB5tan554FSo0nO+cjaSYiIpeGAoQv53oFx
 8kks4sxwbqZ6jAQ2VLnL/Ogbg0guwONN0N3E98fWHuBZAPNIkP2fJTVnAGwry+kTdulF
 08e6+y0pp8itLt6m+qHhhcJWwhFkwbY/9xNW7eVgu1j6hIkl06B9Foladn3Y2BBPTGr2
 madQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aDfHxxU96azcwEo9cIE2KOmHovRw/1aoC+X8NzKe5fk=;
 b=eEuegjmyuafPhl5kuWCuTqTQNvdJQug3fWdyav3ASOqKlYXEosSMdFoNQHCZNwIAtq
 lgchUP7C8ZK4VZN2s0aEJ+77QOtSzVBtxRSGIudnIsXUsfQrf+yT2H+uPEujPWdqWe8Y
 bCX7hOtAX/I3ShB1Lkj638HDosn0fKEpRFDsb66cVfaI5WvPYZ5XHAJkQuzJGRFFhHex
 JrBFNuICIjj34Pm3QdjG3z/DwYPt9RZLFJqavk6w4g/eCC8DzNFrIL39nPSl+UXMLLeG
 8U+eSRDLJ4CjfDmZBzDTV+o1WYVjYBMMaRu6fDg7e29C3e8uPGGUBOK8nOxtoslZGZtd
 AXkQ==
X-Gm-Message-State: APjAAAWOoyfDY5vesFL9IjN2lvg2r3JvTAVYW8suvVDCNc+Ls6GhiJfi
 CBJ0lrIqFXANhui90UMVYDNrwqY/ftIu2bAzk7Y=
X-Google-Smtp-Source: APXvYqzdQVVKe8h42rzht3dU5PsFk7b7U9bcRi88xJ9MMrZCM3zeMSynQ2CnIZQMs1PkkZq7qt+Jhm24IPrnHDTWQe8=
X-Received: by 2002:a9d:6357:: with SMTP id y23mr15631474otk.86.1572782612287; 
 Sun, 03 Nov 2019 04:03:32 -0800 (PST)
MIME-Version: 1.0
References: <20191016013845.23508-1-gch981213@gmail.com>
 <20191028174131.65c3d580@xps13>
In-Reply-To: <20191028174131.65c3d580@xps13>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Sun, 3 Nov 2019 20:03:21 +0800
Message-ID: <CAJsYDVJgwRfg2kfmuG4P-NCEAZ4box+=Yb53d0J+rAjLRpc3Ww@mail.gmail.com>
Subject: Re: [PATCH][RFC] mtd: spinand: fix detection of GD5FxGQ4xA flash
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_040335_993262_15CE61C0 
X-CRM114-Status: GOOD (  19.16  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stefan Roese <sr@denx.de>, Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>, David Woodhouse <dwmw2@infradead.org>,
 open list <linux-kernel@vger.kernel.org>,
 Frieder Schrempf <frieder.schrempf@kontron.de>, linux-mtd@lists.infradead.org,
 Richard Weinberger <richard@nod.at>,
 Brian Norris <computersforpeace@gmail.com>,
 Jeff Kletsky <git-commits@allycomm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi!

On Tue, Oct 29, 2019 at 12:41 AM Miquel Raynal
<miquel.raynal@bootlin.com> wrote:
>
> Hello,
>
> Chuanhong Guo <gch981213@gmail.com> wrote on Wed, 16 Oct 2019 09:38:24
> +0800:
>
> > GD5FxGQ4xA didn't follow the SPI spec to keep MISO low while slave is
> > reading, and instead MISO is kept high. As a result, the first byte
> > of id becomes 0xFF.
> > Since the first byte isn't supposed to be checked at all, this patch
> > just removed that check.
> >
> > While at it, redo the comment above to better explain what's happening.
> >
> > Fixes: cfd93d7c908e ("mtd: spinand: Add support for GigaDevice GD5F1GQ4UFxxG")
> > Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
> > CC: Jeff Kletsky <git-commits@allycomm.com>
> > ---
> > RFC:
> > I doubt whether this patch is a proper fix for the underlying problem:
> > The actual problem is that we have two different implementation of read id
> > command: One replies immediately after master sending 0x9f and the other
> > need to send 0x9f and an offset byte (found in winbond and early GD flashes.)

Correction: Only early GigaDevice nand chips uses this implementation.
Winbond chips uses a dummy byte instead of an address byte so there's
no problem for Winbond chips.

> > Current code only works if SPI master is properly implemented (i.e. keep MOSI
> > low while reading.)
>
> I am not entirely against the fix, but this is a SPI host controller
> issue, right? Can you try to fix the controller driver instead?

I think this is a spi nand framework issue. GigaDevice uses an unusual
READ ID implementation, and as a result, both host controller and chip
are reading during the first byte after 0x9f command: chip is reading
the address/offset byte and host is expecting the first ID byte.
Here lies two problems:
1. According to the sequence diagram in their datasheet, MISO pin is
in High-Z state during the 0x9f command and the offset byte, and host
could read anything during this time instead of a fixed 0x0 or 0xff
byte, so the check of first byte should be removed. This is what this
patch is doing.
2. If there's a buggy SPI host controller that didn't keep MOSI low
during reading operation, the chip will get 0xff as ID offset, causing
the read vendor/device ID to be swapped. I never met such a controller
so far, but if there is one, it will be a silicon bug that can't be
fixed by software. To fix this one, we'll have to make a second
read-id implementation in spi nand framework.

The second problem only exist in theory, so my preference is to apply
this patch and fix only the first problem for now.

Regards,
Chuanhong Guo

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
