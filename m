Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 095FEE41F9
	for <lists+linux-mtd@lfdr.de>; Fri, 25 Oct 2019 05:12:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:Message-ID:MIME-Version:
	Subject:To:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7RAlKDBCtgQJ08oQagiVxj5uB1tGso6MmHvbAvhBnC4=; b=ptD+JqBtJDXt8t
	D1cE2GNyhFnfffaA52TOj05pjuO0bSBsenj2N5WBEr5Z1o4vt5bL2v1APMJKt/7cUGFpgkntDG2dZ
	jxftgggRTSbPK3VKIPbE7kuh9vCL8JHD/ERyWn29iH5GsAo3K9dgKKwzLlFTQKNWaysjSQ28PRn1m
	UdzhR9qsUEmfHyCM0uoFpM9mxDGoEGTgAZ1gxcW6xnxVIISio8QZogNa+eEP3dhVLvw2K4bsrao8A
	8J1mqFpXixgJqHdv9HyuNJb+1hKwTaOpUD2riN6L3mQJRToz0iu47AHwRwtoYnAiXSJ4ZtN0AF5iH
	ohInWTJZP1jRDg+gcbTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNq1e-0000yI-Ra; Fri, 25 Oct 2019 03:12:30 +0000
Received: from twhmllg4.macronix.com ([211.75.127.132])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNq1S-0000xp-U7
 for linux-mtd@lists.infradead.org; Fri, 25 Oct 2019 03:12:20 +0000
Received: from twhfmnt1.mxic.com.tw (twhfm1p2.macronix.com [172.17.20.92])
 by TWHMLLG4.macronix.com with ESMTP id x9P3BEmp012087;
 Fri, 25 Oct 2019 11:11:14 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
Received: from MXML06C.mxic.com.tw (mxml06c.mxic.com.tw [172.17.14.55])
 by Forcepoint Email with ESMTP id 868335503C09C5A1BD4E;
 Fri, 25 Oct 2019 11:11:14 +0800 (CST)
In-Reply-To: <20191008092832.54492696@dhcp-172-31-174-146.wireless.concordia.ca>
References: <1568793387-25199-1-git-send-email-masonccyang@mxic.com.tw>	<1568793387-25199-3-git-send-email-masonccyang@mxic.com.tw>
 <20191007104501.1b4ed8ed@xps13>	<OF147D635A.8968CD6B-ON4825848D.00088AD5-4825848D.000B9D06@mxic.com.tw>
 <20191008092832.54492696@dhcp-172-31-174-146.wireless.concordia.ca>
To: "Boris Brezillon" <boris.brezillon@collabora.com>
Subject: Re: [PATCH RFC 3/3] mtd: rawnand: Add support Macronix power down mode
MIME-Version: 1.0
X-KeepSent: DC1EA65D:196421DA-4825849E:000FBB73;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP4 SHF90 June 10, 2013
Message-ID: <OFDC1EA65D.196421DA-ON4825849E.000FBB73-4825849E.001181F2@mxic.com.tw>
From: masonccyang@mxic.com.tw
Date: Fri, 25 Oct 2019 11:11:13 +0800
X-MIMETrack: Serialize by Router on MXML06C/TAIWAN/MXIC(Release 9.0.1FP10
 HF265|July 25, 2018) at 2019/10/25 AM 11:11:14,
 Serialize complete at 2019/10/25 AM 11:11:14
X-MAIL: TWHMLLG4.macronix.com x9P3BEmp012087
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_201219_240119_5405C773 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.75.127.132 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: richard@nod.at, bbrezillon@kernel.org, juliensu@mxic.com.tw,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 frieder.schrempf@kontron.de, marcel.ziswiler@toradex.com,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 tglx@linutronix.de, computersforpeace@gmail.com, dwmw2@infradead.org,
 marek.vasut@gmail.com, vigneshr@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Hi Boris,

> 
> Subject
> 
> Re: [PATCH RFC 3/3] mtd: rawnand: Add support Macronix power down mode
> 
> On Tue, 8 Oct 2019 10:06:50 +0800
> masonccyang@mxic.com.tw wrote:
> 
> > > > +   nand_select_target(chip, 0); 
> > > 
> > > On several NAND controllers there is no way to act on the CS line
> > > without actually writing bytes to the NAND chip. So basically this
> > > is very likely to not work. 
> > 
> > any other way to make it work ? GPIO ?
> > or just have some comments description here.
> > i.e,.
> > 
> > /* The NAND chip will exit the deep power down mode with #CS toggling, 

> >  * please refer to datasheet for the timing requirement of tCRDP and 
tRDP.
> >  */
> > 
> 
> Good luck with that. As Miquel said, on most NAND controllers
> select_target() is a dummy operation that just assigns nand_chip->target
> to the specified value but doesn't assert the CS line. You could send a
> dummy command here, like a READ_ID, but I guess you need CS to be
> asserted for at least 20ns before asserting any other signals (CLE/ALE)
> which might be an issue.
> 

I have validated & checked w/ designer that NANDs device just need CS# 
line
toggling and don't care of CLE/WE#/RE#. That is raw NAND controller 
sending
a command nand_status_op() or nand_power_down_op() will exit the deep 
power down too. The first command(just CS# line toggling) to NAND device 
in deep power down mode will not be recognized. We may publish the 
application notes or update the datasheet later.

thanks & best regards,
Mason

CONFIDENTIALITY NOTE:

This e-mail and any attachments may contain confidential information 
and/or personal data, which is protected by applicable laws. Please be 
reminded that duplication, disclosure, distribution, or use of this e-mail 
(and/or its attachments) or any part thereof is prohibited. If you receive 
this e-mail in error, please notify us immediately and delete this mail as 
well as its attachment(s) from your system. In addition, please be 
informed that collection, processing, and/or use of personal data is 
prohibited unless expressly permitted by personal data protection laws. 
Thank you for your attention and cooperation.

Macronix International Co., Ltd.

=====================================================================



============================================================================

CONFIDENTIALITY NOTE:

This e-mail and any attachments may contain confidential information and/or personal data, which is protected by applicable laws. Please be reminded that duplication, disclosure, distribution, or use of this e-mail (and/or its attachments) or any part thereof is prohibited. If you receive this e-mail in error, please notify us immediately and delete this mail as well as its attachment(s) from your system. In addition, please be informed that collection, processing, and/or use of personal data is prohibited unless expressly permitted by personal data protection laws. Thank you for your attention and cooperation.

Macronix International Co., Ltd.

=====================================================================


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
