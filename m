Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A732542270
	for <lists+linux-mtd@lfdr.de>; Wed, 12 Jun 2019 12:27:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NZYtIvnX5+2jOYVg4QZSVWTfOnTGiEpWhzcJEOv4Q8U=; b=dtifAzD3os1s2c
	iQ4ixhloHvPJQ87OSK4Gvim5Iva0JMNIOQCb92j2kZ+s0n00UGTwfVakRYWwtGor5snrowzKsaKmW
	wEJXfeB9wf6OZYaf2c8tBnuqxDyS6I0NXyaVPPnmVNAtCG78VIGmJAH/z7IW2EFwb421QT8Sxyvfy
	e6BZTnatTJuavaemLYM5BVEw0d6LWd4x7ukEYYdzEBsEZsAEW3dgDmNNG+Iq4gOL81DAC8CjHQOOU
	vHZ6NBYViVFcDM/Ol0AzA//X1QJOapHg7eIK4VlGF2LUa3po9OXhzJrNIs633xy3KbsP8rgq/rBKb
	kiYbdRFR2F8umXYzy24Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb0TC-0005aA-Kh; Wed, 12 Jun 2019 10:27:06 +0000
Received: from [176.110.122.116] (helo=ocean.emcraft.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb0T0-0005ZB-GI
 for linux-mtd@lists.infradead.org; Wed, 12 Jun 2019 10:26:56 +0000
Received: from [10.8.0.10] (helo=mehome.localdomain)
 by ocean.emcraft.com with esmtps (TLSv1:AES256-SHA:256) (Exim 4.76)
 (envelope-from <sposelenov@emcraft.com>)
 id 1hb0Sq-0007p0-Bz; Wed, 12 Jun 2019 13:26:47 +0300
Message-ID: <b931537d9268184b1c98e316a6b95a72847bbe69.camel@emcraft.com>
Subject: Re: NAND user space program
From: Sergei Poselenov <sposelenov@emcraft.com>
To: JH <jupiter.hce@gmail.com>
Date: Wed, 12 Jun 2019 13:26:43 +0300
In-Reply-To: <CAA=hcWRTPsk=zX=bnV6xAt-EpnyXy+dZdYGuLk8M-0UAjWHM1g@mail.gmail.com>
References: <CAA=hcWSKQ4+BsQ9XPEhP+f=-oTA7CnbJ6=4upRZughg8mOUSUw@mail.gmail.com>
 <CAFLxGvzAHGVA9Pe0rvJWqjUgaPZKyExvV1gu3pZAezhNGDXryg@mail.gmail.com>
 <CAA=hcWRTPsk=zX=bnV6xAt-EpnyXy+dZdYGuLk8M-0UAjWHM1g@mail.gmail.com>
Organization: Emcraft Systems
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_032654_740878_D8C29551 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello JH,

Going back to your original question, if your intention is to write a
Linux image to a raw (ie without filesystem) NAND partition, so the
bootloader (eg U-Boot) could be able to read the kernel image from
there, then the suggestion is to use the mtd-utils "nandwrite", which
is able to deal with the NAND bad blocks.

Regards,
Sergei

On Wed, 2019-06-12 at 09:01 +1000, JH wrote:
> Thanks Richard, can the Linux zImage or rootfs load to NAND directly
> via JTAG or serial line?
> 
> Thank you.
> 
> Kind regards,
> 
> - JH
> 
> On 6/11/19, Richard Weinberger <richard.weinberger@gmail.com> wrote:
> > On Tue, Jun 11, 2019 at 12:20 PM JH <jupiter.hce@gmail.com> wrote:
> > > Hi,
> > > 
> > > In NOR flash, access flash in user space is integrated to the
> > > Linux
> > > system read / write, is it the same story for NAND flash? I
> > > installed
> > > mtd-utils, but not sure if I can still use Linux system read /
> > > write
> > > to access NAND flash or not.
> > 
> > Well, Linux exposes both NOR and NAND flashes as MTD.
> > So there shouldn't be much difference.
> > But make sure you can deal with specialties of NAND, such as
> > bad blocks.
> > 
> > 
> > --
> > Thanks,
> > //richard
> > 
> 
> ______________________________________________________
> Linux MTD discussion mailing list
> http://lists.infradead.org/mailman/listinfo/linux-mtd/
> 


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
