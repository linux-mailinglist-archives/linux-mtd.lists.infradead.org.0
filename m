Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D8411814E
	for <lists+linux-mtd@lfdr.de>; Tue, 10 Dec 2019 08:22:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:Message-ID:MIME-Version:
	Subject:To:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3qO7Y1qqgrK1xXKLVK1Z//szD3dymseF/X3HEPCVQbY=; b=gMhfSzXKbqWYEU
	9ydCeNuqLKQk946OE27N9qfoJ5VCjvCHvGlPtVJIwl8sdpuy54FgAn9LU9TXuQjrhL3WF1Wf632n7
	rlvABa+HGUfdiFhMVCumQfVD/mG37SrW6gy9qpM8+rEQHTUA0b7Bgj43g9Y1k7f45CB86gz2VvOpH
	KSADOuVTvsjMNMTpLwcZ5V2bmJJw2r0SuiECnTFz1icKeT75481463hGfYFkIuoivSkwOK9D0Vn0E
	ChCfJ5/9q1B2gnG3kM+Ly5qLbX/y3WssMjkxqMoCjUQnN32FbAy3ZviotN2BI+mddF0+6dqlSB3UL
	WqyPSPl+I1o9Krf1ZccA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieZqv-00070Y-1V; Tue, 10 Dec 2019 07:22:37 +0000
Received: from twhmllg4.macronix.com ([211.75.127.132])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieZqS-0006jC-D2
 for linux-mtd@lists.infradead.org; Tue, 10 Dec 2019 07:22:10 +0000
Received: from twhfm1p2.macronix.com (twhfm1p2.macronix.com [172.17.20.92])
 by TWHMLLG4.macronix.com with ESMTP id xBA7LH4e024326;
 Tue, 10 Dec 2019 15:21:17 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
Received: from MXML06C.mxic.com.tw (mxml06c.macronix.com [172.17.14.55])
 by Forcepoint Email with ESMTP id 37D7791CBB9A5183FF28;
 Tue, 10 Dec 2019 15:21:18 +0800 (CST)
In-Reply-To: <20f3873f-66eb-3af9-c50d-1321a859093d@ti.com>
References: <1573808288-19365-1-git-send-email-masonccyang@mxic.com.tw>
 <1573808288-19365-3-git-send-email-masonccyang@mxic.com.tw>
 <3f514579-d3a4-1319-a55a-265a3f1ce00e@ti.com>
 <OFFE6363DF.95763BC3-ON482584CB.002A47E5-482584CB.002BAA8C@mxic.com.tw>
 <20f3873f-66eb-3af9-c50d-1321a859093d@ti.com>
To: "Vignesh Raghavendra" <vigneshr@ti.com>
Subject: Re: [PATCH 2/4] mtd: spi-nor: Add support for Octal 8D-8D-8D mode
MIME-Version: 1.0
X-KeepSent: 5ED38CB6:65E10D03-482584CC:002846EC;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP4 SHF90 June 10, 2013
Message-ID: <OF5ED38CB6.65E10D03-ON482584CC.002846EC-482584CC.00286710@mxic.com.tw>
From: masonccyang@mxic.com.tw
Date: Tue, 10 Dec 2019 15:21:18 +0800
X-MIMETrack: Serialize by Router on MXML06C/TAIWAN/MXIC(Release 9.0.1FP10
 HF265|July 25, 2018) at 2019/12/10 PM 03:21:18,
 Serialize complete at 2019/12/10 PM 03:21:18
X-MAIL: TWHMLLG4.macronix.com xBA7LH4e024326
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_232208_705475_F587587D 
X-CRM114-Status: GOOD (  19.38  )
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
Cc: bbrezillon@kernel.org, juliensu@mxic.com.tw, richard@nod.at,
 tudor.ambarus@microchip.com, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, marek.vasut@gmail.com, broonie@kernel.org,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Hi Vignesh,


> >> On 15/11/19 2:28 pm, Mason Yang wrote:
> >>> According to JESD216C (JEDEC Basic Flash Parameter Table 18th DWORD)
> >>> Octal DTR(8D-8D-8D) command and command extension (00b: same, 01b: 
> > inverse)
> >>> to add extension command mode in spi_nor struct and to add write_cr2
> >>> (Write CFG Reg 2) for 8-8-8/8D-8D-8D mode sequences enable.
> >>>
> >>
> >> But I don't see any code setting "nor->ext_cmd_mode" based on BFPT?
> >>
> >> Any new feature that we add to spi-nor should make use of 
autodiscovery
> >> feature made possible by SFDP tables. Could you modify the patch to
> >> discover capabilities supported by flash and opcodes to be used from
> >> SFDP table?
> > 
> > Got it but our device will return a empty SFDP table.
> > 
> 
> If flash you tested on does not support JEDEC 216C then don't mention
> about it. Above commit message gives an impression that flash in JEDEC
> 216C compliant.
> 

okay, got it.

> >>
> >>
> >>> Define the relevant macrons and enum to add such modes and make sure
> >>> op->xxx.dtr fields, command nbytes and extension command are 
properly
> >>> filled and unmask DTR and X-X-X modes in 
> > spi_nor_spimem_adjust_hwcaps()
> >>> so that DTR and X-X-X support detection is done through
> >>> spi_mem_supports_op().
> >>>
> [...]
> >>> @@ -404,6 +436,30 @@ static int read_sr(struct spi_nor *nor)
> >>>                 SPI_MEM_OP_NO_DUMMY,
> >>>                 SPI_MEM_OP_DATA_IN(1, nor->bouncebuf, 1));
> >>>
> >>
> >> This is not based on the latest tree.
> >>
> >>> +      if (spi_nor_protocol_is_8_8_8(nor->read_proto)) {
> >>> +         op.cmd.buswidth = 8;
> >>> +         op.addr.buswidth = 8;
> >>> +         op.dummy.buswidth = 8;
> >>> +         op.data.buswidth = 8;
> >>> +         op.cmd.nbytes = 2;
> >>> +         op.addr.nbytes = 4;
> >>> +         op.dummy.nbytes = 4;
> >>> +         op.addr.val = 0;
> >>
> >> This is not scalable... There will be bunch of if...else ladders when 
we
> >> want to support other X-X-X modes... Can't these be derived from
> >> nor->reg_proto? And then borrow the logic from 
> > spi_nor_spimem_read_data()?
> >>
> > 
> > Got it !
> > 
> >>
> >> Could you have a look at Boris's initial submission to add 8-8-8 mode 
at
> >> https://patchwork.kernel.org/cover/10638055/ ?
> >> You could use that series as the base for your changes/additions.
> > 
> > Got it.
> > My idea is to support 8D-8D-8D mode with a minimum patches because 
> > there is no define for 1D-1D-1D, 2D-2D-2D and 4D-4D-4D mode in JEDEC 
> > if I am right.
> > 
> 
> JESD251-A1 does talk about 4S-4D-4D right? Also none of the JEDEC
> standards prohibit flash vendors from supporting other X-X-X modes.
> 
> I think you haven't thought about bigger picture here. Flash devices
> that support other mode exist today and we would need the framework to
> be built such that these modes can be added in future.
> 
> I suggest you start with Boris's series [1] as base and port it to
> latest kernel. Isn't that series alone enough to support Macronix Octal
> flashes at least?
> If required, you could also always include additional patches adding new
> features.

okay.

> 
> [1] https://patchwork.kernel.org/cover/10638055/
> 
> -- 
> Regards
> Vignesh

thanks for your time & comments.
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
