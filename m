Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41011100C51
	for <lists+linux-mtd@lfdr.de>; Mon, 18 Nov 2019 20:40:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k0kMpaJJsJHZX0nnschy3oftMYY9YJ+X8S5UD+m0Zl0=; b=ghVllP1r+XQXun
	ghWZg2cncGTiTnJ2wdVeziO6t+Lcke5i8ISCNWnQH9V+0BD1ftJuG484R1O7IL/bACSNNtwOuQOZV
	WsS+OEUBJNxkvt3BZJNAHxgz2ReelhiInAVtf8ZN1fPLc/cR8KazKZL9wUqlwRvuLFRM2Rf/wEPUx
	OjEwbP/hSzOycb72VNS9DIXATaFX+M+QladF9Mnmeb9M5GUt5ufbT9KR89gqARmsf1kHoZI3e2P4C
	WCyKqLXteY8O7DwcSvzXUvBU3oXAeHww3D3DJg7iHDKPRTclL7PO/5fQ9hf4pimd2bkUF3JSYua8c
	GC42ZFgrGkoyroyxAB2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWmsp-0002dL-Jo; Mon, 18 Nov 2019 19:40:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWmsh-0002cI-B8
 for linux-mtd@lists.infradead.org; Mon, 18 Nov 2019 19:40:16 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2D9EA222A7;
 Mon, 18 Nov 2019 19:40:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574106014;
 bh=lALNLNHKbLarFmQFbxabtTEuqMU5yok9zA5BXn9uNZI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iULnfiZRncZXT1wdLSC9N/cmrBnpdDaxGz1vqxUFjhYrjG2wrBsDICJKIzKr2ah3K
 PC7op5otsD/S+I5XTjZ6z+FAMOpQqrOpWogHC4nTNB/+r/Etv122svvoWte0CVDisG
 TNUfFwTcOAY8On1gGQ08uZAw4lS5dEensszJNeUQ=
Date: Mon, 18 Nov 2019 20:40:10 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Richard Weinberger <richard@nod.at>
Subject: Re: [PATCH v2] {tty: serial, nand: onenand}: samsung: rename to fix
 build warning
Message-ID: <20191118194010.GA606660@kroah.com>
References: <20191117202435.28127-1-sudipm.mukherjee@gmail.com>
 <20191118114657.GA228826@kroah.com>
 <1505628642.90849.1574081270290.JavaMail.zimbra@nod.at>
 <20191118202257.6cfd1a7e@xps13>
 <884028732.91086.1574105504462.JavaMail.zimbra@nod.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <884028732.91086.1574105504462.JavaMail.zimbra@nod.at>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_114015_406644_AC5A80B6 
X-CRM114-Status: GOOD (  18.78  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 linux-serial <linux-serial@vger.kernel.org>, Jiri Slaby <jslaby@suse.com>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Nov 18, 2019 at 08:31:44PM +0100, Richard Weinberger wrote:
> ----- Urspr=FCngliche Mail -----
> > Von: "Miquel Raynal" <miquel.raynal@bootlin.com>
> > An: "richard" <richard@nod.at>
> > CC: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>, "Sudip Mukherjee=
" <sudipm.mukherjee@gmail.com>, "Kyungmin Park"
> > <kyungmin.park@samsung.com>, "Vignesh Raghavendra" <vigneshr@ti.com>, "=
Jiri Slaby" <jslaby@suse.com>, "linux-kernel"
> > <linux-kernel@vger.kernel.org>, "linux-mtd" <linux-mtd@lists.infradead.=
org>, "linux-serial"
> > <linux-serial@vger.kernel.org>
> > Gesendet: Montag, 18. November 2019 20:22:57
> > Betreff: Re: [PATCH v2] {tty: serial, nand: onenand}: samsung: rename t=
o fix build warning
> =

> > Hi all,
> > =

> > Richard Weinberger <richard@nod.at> wrote on Mon, 18 Nov 2019 13:47:50
> > +0100 (CET):
> > =

> >> ----- Urspr=FCngliche Mail -----
> >> >> I was not sure if this should have been two different patch, but si=
nce
> >> >> this will be fixing the same problem so it seems its better to have=
 them
> >> >> in a single patch.
> >> >> =

> >> >>  drivers/mtd/nand/onenand/Makefile                     | 2 +-
> >> >>  drivers/mtd/nand/onenand/{samsung.c =3D> samsung_mtd.c} | 0
> >> >>  drivers/tty/serial/Makefile                           | 2 +-
> >> >>  drivers/tty/serial/{samsung.c =3D> samsung_tty.c}       | 0
> >> >>  4 files changed, 2 insertions(+), 2 deletions(-)
> >> >>  rename drivers/mtd/nand/onenand/{samsung.c =3D> samsung_mtd.c} (10=
0%)
> >> >>  rename drivers/tty/serial/{samsung.c =3D> samsung_tty.c} (100%)
> >> > =

> >> > I can take this in the tty tree if the mtd maintainer gives an ack f=
or
> >> > it...
> >> =

> >> Acked-by: Richard Weinberger <richard@nod.at>
> > =

> > If it is not too late, I am not a big fan of the new naming which is
> > rather not descriptive. Files in the onenand subdirectory are:
> > * onenand_<something>.c for the base files
> > * <vendor>.c for the vendors files (currently: omap2.c and samsung.c).
> =

> Well, I'm fine with the naming either way. :-)

If you want to rename the mtd driver later, that's fine, I'll take this
for now for 5.5-rc1 and you all can bikeshed it for 5.5-final :)

thanks,

greg k-h

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
