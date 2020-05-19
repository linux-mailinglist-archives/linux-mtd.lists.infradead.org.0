Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 901E31D91FF
	for <lists+linux-mtd@lfdr.de>; Tue, 19 May 2020 10:27:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uK/+cgRhtPoTpfFbF4miKzaEedAavgOKER922QtnssQ=; b=mN5QmmBgZ2MmsQ
	LGWwDQcYsI8RZIMzS11kbg3jVlQgP1yAf9N7w7CAcksyJ/KG2OKJWcThiFxQd4Xh/5R3yTitu3eTe
	t0IiWiwLuUFxvGNlPdEjsrhW1u/dxdtwGuLE55hiMUJwg3ey2E6LXHiASoFo/KMUcDt22cYvi+w3o
	Q9v90WiLpERIJWJjvEkBjUGorcaCoSETKALAnSUJLobSS7POLPylVmKJWN5vRbyqJZ77QzWv3gKZ9
	TcNvU+kT5TLOlPU8bEnBfHJrMXOXWqwe/slhtMD14/wC76eOgsgdAywpuNL3JdVUse3+mwYoJEOmF
	g2pbvrBIVptZeNu/FzPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaxaY-0001vt-NR; Tue, 19 May 2020 08:27:02 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaxaP-0001uo-EX
 for linux-mtd@lists.infradead.org; Tue, 19 May 2020 08:26:54 +0000
Received: by mail-qk1-x742.google.com with SMTP id y22so13845741qki.3
 for <linux-mtd@lists.infradead.org>; Tue, 19 May 2020 01:26:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mhMQZWg1pZCDpzS4WQU/mgYpG86rpDRUHsX26JcW/Z8=;
 b=ok8D520lGjncFUrVo4zv1FrWZHZZgrDX/6hRgaeN4veYDko1YMNM1UQY9yR3VD+LMT
 5uOEiAwJVW64jbUPhEEqh7Z0QXzscIV87PbBJDXlaoQyh9ZQI5kKaVnovgGgXo7tbyHZ
 ZtQVXaRKDAzAvVha21YdN4+KRxbEbKcoAEBmH6qyaHCvrmpN5An8lwemtjt+H4xyvoly
 pQ31NEQ5MLSQ2Zg9FhPmsvXF9IacgJkAF4Qs9lvC9FuKvEBB/VSQH3rGsXUBGRSSVwZh
 Ai53LR7qevoaOgZpaN2bcMboXpjHQYZ5N/m442SUNPVkP0V8GgMGcmvYFitpdSD7DRnI
 0/2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mhMQZWg1pZCDpzS4WQU/mgYpG86rpDRUHsX26JcW/Z8=;
 b=tc2qeKhUlqHA+Isp2S4wZnLWJnJYa88T1IE0XUudbg7AUiic3QGvv5Wb+lK3bUhGDG
 JzBz3dV8b2b+Ysso/6qLTiIM8Hf5iWG71Rix4cKbKhL91qvLL6iP8/w/e6LiRukWGMt9
 NniLnDubxZ8kvjCodL3VKdT+2RkjwkssH3FYdUO3gx6EBM5uH7tcE2GqbjsQ46Im+yNX
 R+otxQfvpb+pOPPZoVMaM3jRldbaQuIXadYjtdcO6QHzniUeW65b0sqSSRKpHbJOoIiO
 R+sjCAmzoJ8kZ3IvoQFbP1m+3ktVpnv0xB++e0idW4w+T8A0AVgs6NqHM2qaIIN2jydZ
 CdFQ==
X-Gm-Message-State: AOAM533yQdSAVMWqxMvspHWrsG7v0lVwvG75JhLiYn2tv5DRTXjRG66N
 ntuJZYJYZoPk+CfCVbvI5Lq26Azxw7c3ri236pA=
X-Google-Smtp-Source: ABdhPJzPCaVyZbcye/H+Kda8o2N2ulYqcfk5cLzzJIhka2wdjBSqmYfJdxc5tg5VWkzQo9xCyqKVqomGY/QYy+lJtf0=
X-Received: by 2002:a37:7105:: with SMTP id m5mr20541969qkc.370.1589876812015; 
 Tue, 19 May 2020 01:26:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200502204137.37134-1-kdasu.kdev@gmail.com>
 <f0e781e6-a7ac-37be-13c3-885eb65a0921@gmail.com>
In-Reply-To: <f0e781e6-a7ac-37be-13c3-885eb65a0921@gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Tue, 19 May 2020 10:26:41 +0200
Message-ID: <CAFLxGvzFHzcMnWx35mzvMrj=Y1CxGDAb+3YXNbYCOnyMDEXc2A@mail.gmail.com>
Subject: Re: [Patch] mtd:rawnand: brcmnand: Fix PM resume crash
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_012653_504913_F554BFA4 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Richard Weinberger <richard@nod.at>, LKML <linux-kernel@vger.kernel.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org,
 Brian Norris <computersforpeace@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sat, May 2, 2020 at 10:52 PM Florian Fainelli <f.fainelli@gmail.com> wrote:
>
>
>
> On 5/2/2020 1:41 PM, Kamal Dasu wrote:
> > This change fixes crash observed on PM resume. This bug
> > was introduced in the change made for flash-edu support.
> >
> > Fixes: a5d53ad26a8b ("mtd: rawnand: brcmnand: Add support for flash-edu for dma transfers")
> >
> > Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
>
> Acked-by: Florian Fainelli <f.fainelli@gmail.com>
> --
> Florian

Applied for fixes, thanks!

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
