Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6F61AD6C6
	for <lists+linux-mtd@lfdr.de>; Fri, 17 Apr 2020 09:02:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nH3UB3ssX1C2XN6t2RMJBnK9hRCfTFRFTBUl8emz9E8=; b=EQ81SeVWEjVEWn
	PIxAUBowj1lLIwVpoBGBvo0o7aaxeL4E3AZqOWNhsQeFUvXz2qp0xAui48B/oEx8Jx05oOn4iayoA
	n/MEzCEVVLqSuNch4h+uThShPrF1xoE7MPi49o25akCOGEU+H6gX2IP0W1q9N6BOEjWhz2rq2jV7a
	82jigocBsryo+kX8uuXQxvD5VTlDP7B10KhXKcvBUZzTXxVQ0tiw+gMpecajFkzzs0mxoMtTLfuNf
	JUReS1u4ixexqOwT15vGdmqDEv9yPO8y9jdQDv+XgA311KXZrT6YNiBixIC/wP5UfM6q0/uRwn98P
	+s+Cq2vqrRPDEwSDRp1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPL1W-0006Dn-2s; Fri, 17 Apr 2020 07:02:50 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPL1O-0006Cp-JW
 for linux-mtd@lists.infradead.org; Fri, 17 Apr 2020 07:02:44 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 03D7F2A249D;
 Fri, 17 Apr 2020 08:02:39 +0100 (BST)
Date: Fri, 17 Apr 2020 09:02:34 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: "Ramuthevar, Vadivel MuruganX"
 <vadivel.muruganx.ramuthevar@linux.intel.com>
Subject: Re: [PATCH v1 2/2] mtd: rawnand: Add NAND controller support on
 Intel LGM SoC
Message-ID: <20200417090234.059418f6@collabora.com>
In-Reply-To: <003fa549-08c5-5867-2b02-54b483c16465@linux.intel.com>
References: <20200414022433.36622-3-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200415220533.733834-1-martin.blumenstingl@googlemail.com>
 <c33c8653-16a2-5bcd-97a9-511d958b755a@linux.intel.com>
 <20200416113822.2ef326cb@collabora.com>
 <18568cf6-2955-472e-7b68-eb35e654a906@linux.intel.com>
 <20200416122619.2c481792@collabora.com>
 <d3e137fa-54a0-b4ec-eb24-3984eab2a247@linux.intel.com>
 <20200416131725.51259573@collabora.com>
 <de9f50b8-9215-d294-9914-e49701552185@linux.intel.com>
 <20200416135711.039ba85c@collabora.com>
 <003fa549-08c5-5867-2b02-54b483c16465@linux.intel.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_000242_776432_3C822F74 
X-CRM114-Status: GOOD (  27.65  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: cheol.yong.kim@intel.com, devicetree@vger.kernel.org, qi-ming.wu@intel.com,
 anders.roxell@linaro.org, andriy.shevchenko@intel.com, arnd@arndb.de,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, richard@nod.at,
 brendanhiggins@google.com, linux-kernel@vger.kernel.org, vigneshr@ti.com,
 robh+dt@kernel.org, linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 tglx@linutronix.de, masonccyang@mxic.com.tw, piotrs@cadence.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, 17 Apr 2020 13:21:39 +0800
"Ramuthevar, Vadivel MuruganX"
<vadivel.muruganx.ramuthevar@linux.intel.com> wrote:

> Hi Boris,
> 
> On 16/4/2020 7:57 pm, Boris Brezillon wrote:
> > On Thu, 16 Apr 2020 19:38:03 +0800
> > "Ramuthevar, Vadivel MuruganX"
> > <vadivel.muruganx.ramuthevar@linux.intel.com> wrote:
> >  
> >> On 16/4/2020 7:17 pm, Boris Brezillon wrote:  
> >>> On Thu, 16 Apr 2020 18:40:53 +0800
> >>> "Ramuthevar, Vadivel MuruganX"
> >>> <vadivel.muruganx.ramuthevar@linux.intel.com> wrote:
> >>>     
> >>>>>>> we'll be happy to have one more of the existing driver converted to  
> >>>>>>> ->exec_op() ;-).  
> >>>>>> I have completely adapted to ->exec_op() hook up to replace the legacy
> >>>>>> call-back.  
> >>>>> I suspect porting what you've done to the xway driver shouldn't be too
> >>>>> complicated.  
> >>>> Not ported from xway_nand.c driver , we have developed from the scratch
> >>>> to make it work on
> >>>> Intel LGM SoC , it's new x86 ATOM based SoC, IP itself completely
> >>>> different and most of the registers won't match.
> >>>> if we port then it would be ugly and also what are the problem may occur
> >>>> we do not know.  
> >>> Sorry but IMO they look similar enough to try to merge them.  
> >> Thanks! Boris, need suggestion from you since you are maintainer and
> >> also expertise on mtd-subsystem.  
> > I *was* the maintainer :).
> >  
> >> There are different features involved and lines of code is more, if we
> >> add new driver patches over xway-nand driver  
> > How about retro-fitting the xway logic into your driver then? I mean,
> > adding a 100 lines of code to your driver to get rid of the 500+ lines
> > we have in xway_nand.c is still a win.
> >  
> >> is completely looks ugly and it may disturb the existing functionality
> >> as well since we don't have platform to validate:'(.  
> > How ugly? Can you show us? Maybe we can come with a solution to make it
> > less ugly.
> >
> > As for the testing part, there are 4 scenarios:
> >
> > 1/ Your changes work perfectly fine on older platforms. Yay \o/!
> > 2/ You break the xway driver and existing users notice it before this
> >     series gets merged. Now you found someone to validate your changes.
> > 3/ You break the xway driver and none of the existing users notice it
> >     before the driver is merged, but they notice it afterwards. Too bad
> >     this happened after we've merged the driver, but now you've found
> >     someone to help you fix the problem :P.
> > 4/ You break things for old platforms but no one ever complains about
> >     it, either because there's no users left or because they never
> >     update their kernels. In any case, that's no longer your problem.
> >     Someone will remove those old platforms one day and get rid of the
> >     unneeded code in the NAND driver.
> >
> > What's more likely to happen is #3 or #4, and I think the NAND
> > maintainer would be fine with both.
> >
> > Note that the NAND subsystem is full of unmaintained legacy drivers, so
> > every time we see someone who could help us get rid or update one of
> > them we have to take this opportunity.  
> Agreed!, Thank you very much for the suggestions and clear inputs.
> To proceed further, can you please share your inputs to dividing the tasks
> and patches to be sent if possible.

Let's start with the new version you were about to post. We'll see how
we can merge both drivers based on that.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
