Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A221411D2
	for <lists+linux-mtd@lfdr.de>; Fri, 17 Jan 2020 20:33:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8VF6a3YD3b/Uj5pliwc8P+TA6IzZJo9tNky8Wkn9Hj8=; b=qHFd+i3gT7lUO5
	P71Hq56RHx7UF76okhzvfB8V24smRSkKusfLmJge0qmDFbGs/KlyW02SKN3gK5vkB7uPjPriarYH0
	gmnwO6wnM55zOQ+Xz8PqsQMOSoBYhypVuhiydU/pofDUG9ztIkpGIrnbcqjU/E7J0jxf97sUbcy2o
	3zR4AcUDUnUTpSPLD8UgOfQYE2T5mAzvywNbfhGKq0isXN+VQc1CQM8lxPPAUjYxi+nP//FvBQe+Y
	lvZwlkipk8CTon5eA7X2bR/iZW9tFcn3gUlX89WsNPnDkVpqG83VgR+PBj7SpGrD6NE+oud9KS0nV
	QgaN0E8zDHxpOiuNrllg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isXMn-0005BM-Sh; Fri, 17 Jan 2020 19:33:13 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isXMg-0005Aj-RG
 for linux-mtd@lists.infradead.org; Fri, 17 Jan 2020 19:33:08 +0000
Received: by mail-wm1-x342.google.com with SMTP id 20so8764591wmj.4
 for <linux-mtd@lists.infradead.org>; Fri, 17 Jan 2020 11:33:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Cih+msRwzn1YOAA85noc99w8gdxLSg/goGFIlRCbXQ0=;
 b=clElMuzagV7xf4x6e/A6Gyi6TTrzowkt07/p51J6jSct9oKT4dXhkJLztzV8IwKXud
 I8AwJAnWJQR5wmb9DIf6GPsGO2bdKan8xfPfmzOgYEdJnMjGQ5KGt1LMwV3LVU9Ia6tG
 4fIXgcv1CbHbsGlR4d/gohad2DBZN7caPUGjFAktHTtj6x8QOXsPJfpnHZeOJclfziAw
 03FG0OvEPAvOHz/DvhIDoWQy1jxbfbjPHZpe0AM60e8n+nd6q5heo1bmsRDK2KaXnccI
 FvpFKbhZd0VYxxNxPSncpDGH9sN3OmW4hEi4wZjFaKdvDGaV5HNxm13J4EV5CRBSGUFl
 1CAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Cih+msRwzn1YOAA85noc99w8gdxLSg/goGFIlRCbXQ0=;
 b=LLeoagu9z3r5cJcvGIEFkFpfTJ4R7q0nWl6ez1W4XzCufJG+sVCiZp7D/WJudO1lA8
 tRps2D0caDBi4MiQRHD9eUJ8ieqAr6z+VSqxBhTZDlAG3wsc8bYU+6bY7p0WcGpllDaG
 1SuF4uAHimgdyrxm0PkMmRktFs/rD4a38jzs6UG0HOV8tb77Ez7Fk5zTnSfO/K0fcp16
 m1WsJgTz7Ci8ONhTN5m4mwCtKjZJjulXNzA3t5aAKpEVdYyk8nbMN/b5Ce2t7OcNv05a
 W7lpbzZ2ADz9QO8g21WYpToc4GxqT/gCc5maWIH9laaUKZZF4rL69MumhR9sM4CPEjhj
 kpJA==
X-Gm-Message-State: APjAAAVFZo3tG+m1FpmVhnUm3C0yppBnDXDCxQwR55LoKydK1DUGViDE
 CgnoPTYBhttz8aMKpEmpGn0PHMps4AmaV4x5MYRiX9BJu5ectw==
X-Google-Smtp-Source: APXvYqxgz/nAWxu+wF/RvqxrHbICkVdn1F+6svVjFL4YOA2AbA9EfWppmBlTbB8VyL/vyrQsPWVUs8G34FUse2zBel0=
X-Received: by 2002:a7b:c757:: with SMTP id w23mr6046776wmk.166.1579289585192; 
 Fri, 17 Jan 2020 11:33:05 -0800 (PST)
MIME-Version: 1.0
References: <20200110162503.7185-1-zdhays@gmail.com>
 <20200116192221.49986c13@xps13>
 <20200117071026.gydlruw2cxre2r2u@pengutronix.de>
 <CANZat+hHJy0H17xGmOP003_M1yWesJ2BjoPmW3hr7CS=HuQR+g@mail.gmail.com>
In-Reply-To: <CANZat+hHJy0H17xGmOP003_M1yWesJ2BjoPmW3hr7CS=HuQR+g@mail.gmail.com>
From: Zak Hays <zdhays@gmail.com>
Date: Fri, 17 Jan 2020 14:32:54 -0500
Message-ID: <CANZat+g=emsHmx7i4mEzTXh1s2=t8Bw7cmXYd0YUXKt_oNh-rA@mail.gmail.com>
Subject: Re: [PATCH v1] mtd: rawnand: micron: don't error out if internal ECC
 is set
To: Marco Felsch <m.felsch@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_113306_909568_9E061009 
X-CRM114-Status: GOOD (  26.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zdhays[at]gmail.com)
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Richard Weinberger <richard@nod.at>,
 Zak Hays <zhays@lexmark.com>, linux-kernel@vger.kernel.org,
 Frieder Schrempf <frieder.schrempf@kontron.de>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Thomas Gleixner <tglx@linutronix.de>, Piotr Sroka <piotrs@cadence.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Marco & Miquel,

On Fri, Jan 17, 2020 at 2:10 AM Marco Felsch <m.felsch@pengutronix.de> wrote:
>
> Hi Zak, Miquel,
>
> On 20-01-16 19:22, Miquel Raynal wrote:
> > Hi Zak,
> >
> > zdhays@gmail.com wrote on Fri, 10 Jan 2020 11:25:01 -0500:
> >
> > > From: Zak Hays <zdhays@gmail.com>
> > >
> > > Recent changes to the driver require use of on-die correction if
> > > the internal ECC enable bit is set. On some Micron parts, this bit
> > > is enabled by default and there is no method for disabling it.
>
> Which changes did you mean here?

I was referring to the combination of these two patches:

9748e1d87573  Thomas Petazzoni  mtd: nand: add support for Micron on-die ECC
cb2bf403a462  Chris Packham  mtd: rawnand: micron: allow forced on-die ECC

>
> > > This is a false assumption though as that bit being enabled does not
> > > necessarily mean that the on-die ECC *has* to be used. It has been
> > > verified with a Micron FAE that other methods of error correction are
> > > still valid even if this bit is set.
>
> It would be cool if a micron FAE can provide a document with all the
> quirks and how those quirks can be handled.
>

Agreed. I'll ask my contact at Micron if such a document exists and
if they would be willing to share it.

> > > HW ECC offers generally higher performance than on-die so it is
> > > preferred in some situations. This also allows multiple NAND parts to
> > > be supported on the same PCB as some parts may not support on-die
> > > error correction.
>
> By HW ECC you mean the host ecc controller?
>

Yes. I used the term HW ECC as that is how it is referenced in the
device tree (nand-ecc-mode = "hw") and the driver (NAND_ECC_HW).

> > > With that in mind, only throw a warning that the on-die bit is set
> > > and allow the init to continue.
> >
> > I don't think I can take this patch as-is. We must find a reliable way
> > to discriminate Micron parts features. If we cannot (I think we can't
> > before of the endless list of bugs they have introduced without
> > documenting them), the best way is to build a static table.
>

That's understandable. I'll look into this a little more and see if it's
feasible to implement a static table to handle this.

Thanks,
Zak


On Fri, Jan 17, 2020 at 2:28 PM Zak Hays <zdhays@gmail.com> wrote:
>
> Hi Marco & Miquel,
>
> On Fri, Jan 17, 2020 at 2:10 AM Marco Felsch <m.felsch@pengutronix.de> wrote:
> >
> > Hi Zak, Miquel,
> >
> > On 20-01-16 19:22, Miquel Raynal wrote:
> > > Hi Zak,
> > >
> > > zdhays@gmail.com wrote on Fri, 10 Jan 2020 11:25:01 -0500:
> > >
> > > > From: Zak Hays <zdhays@gmail.com>
> > > >
> > > > Recent changes to the driver require use of on-die correction if
> > > > the internal ECC enable bit is set. On some Micron parts, this bit
> > > > is enabled by default and there is no method for disabling it.
> >
> > Which changes did you mean here?
>
> I was referring to the combination of these two patches:
>
> 9748e1d87573  Thomas Petazzoni  mtd: nand: add support for Micron on-die ECC
> cb2bf403a462  Chris Packham  mtd: rawnand: micron: allow forced on-die ECC
>
> >
> > > > This is a false assumption though as that bit being enabled does not
> > > > necessarily mean that the on-die ECC *has* to be used. It has been
> > > > verified with a Micron FAE that other methods of error correction are
> > > > still valid even if this bit is set.
> >
> > It would be cool if a micron FAE can provide a document with all the
> > quirks and how those quirks can be handled.
> >
>
> Agreed. I'll ask my contact at Micron if such a document exists and
> if they would be willing to share it.
>
> > > > HW ECC offers generally higher performance than on-die so it is
> > > > preferred in some situations. This also allows multiple NAND parts to
> > > > be supported on the same PCB as some parts may not support on-die
> > > > error correction.
> >
> > By HW ECC you mean the host ecc controller?
> >
>
> Yes. I used the term HW ECC as that is how it is referenced in the
> device tree (nand-ecc-mode = "hw") and the driver (NAND_ECC_HW).
>
> > > > With that in mind, only throw a warning that the on-die bit is set
> > > > and allow the init to continue.
> > >
> > > I don't think I can take this patch as-is. We must find a reliable way
> > > to discriminate Micron parts features. If we cannot (I think we can't
> > > before of the endless list of bugs they have introduced without
> > > documenting them), the best way is to build a static table.
> >
>
> That's understandable. I'll look into this a little more and see if it's
> feasible to implement a static table to handle this.
>
> Thanks,
> Zak

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
