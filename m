Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD971BD61A
	for <lists+linux-mtd@lfdr.de>; Wed, 29 Apr 2020 09:32:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:Message-ID:MIME-Version:
	Subject:To:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8KD5JGyZ/cy0nG1wrJ3/LpQw4e0mRHAPBSAawhiRDJE=; b=HozGHnswOlRZ9o
	YP8TUVUf7OcT58nu7bhXMRPWaofZD0LHXSj4dLeUx2bul9/P4n9j/v00vJ9vbgGBDjySSQIKbmvrg
	nDfzRzV4tu4UWfWfmaVJLsOvb8MeQPlvLf4Qip9JLyJorHFa/aelwRzpIhlffEJPVngF/lY1y2SH7
	mZ7eaVERMDVVt7CwIF2RjyFDVBKq3yN9id3jbz1NLGaprwgKmfbJksG4kVNoIknC3KLIXva+X3pQj
	YRhOO4lFHFX+oYuj1RvxvF0nFDyr6xBBPk7bJWZ9LsAvjByQKUzyjPcES4uumFQWuaNXr2STehZSj
	IwXj+PtBgymwc9bfaU2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jThCh-0004tM-Eh; Wed, 29 Apr 2020 07:32:23 +0000
Received: from twhmllg3.macronix.com ([122.147.135.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jThCW-0004sI-RR
 for linux-mtd@lists.infradead.org; Wed, 29 Apr 2020 07:32:14 +0000
Received: from twhfmlp1.macronix.com (twhfmlp1.macronix.com [172.17.20.91])
 by TWHMLLG3.macronix.com with ESMTP id 03T7VZk4069210;
 Wed, 29 Apr 2020 15:31:35 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
Received: from MXML06C.mxic.com.tw (mxml06c.mxic.com.tw [172.17.14.55])
 by Forcepoint Email with ESMTP id A53D1E36517895FA5976;
 Wed, 29 Apr 2020 15:31:35 +0800 (CST)
In-Reply-To: <20200428085401.574wmo6qddmumd7q@yadavpratyush.com>
References: <1587451187-6889-1-git-send-email-masonccyang@mxic.com.tw>
 <20200421092328.129308f6@collabora.com>
 <20200427175536.2mmei2fy6f7bg6jm@yadavpratyush.com>
 <OF18214CA5.6A9B2B30-ON48258558.001D894C-48258558.002249E0@mxic.com.tw>
 <20200428085401.574wmo6qddmumd7q@yadavpratyush.com>
To: "Pratyush Yadav" <me@yadavpratyush.com>
Subject: Re: [PATCH v2 0/5] mtd: spi-nor: Add support for Octal 8D-8D-8D mode
MIME-Version: 1.0
X-KeepSent: 04289CE2:B346916F-48258559:002280BD;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP4 SHF90 June 10, 2013
Message-ID: <OF04289CE2.B346916F-ON48258559.002280BD-48258559.00295800@mxic.com.tw>
From: masonccyang@mxic.com.tw
Date: Wed, 29 Apr 2020 15:31:35 +0800
X-MIMETrack: Serialize by Router on MXML06C/TAIWAN/MXIC(Release 9.0.1FP10
 HF265|July 25, 2018) at 2020/04/29 PM 03:31:35,
 Serialize complete at 2020/04/29 PM 03:31:35
X-MAIL: TWHMLLG3.macronix.com 03T7VZk4069210
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_003213_164152_E6D7DD02 
X-CRM114-Status: GOOD (  32.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [122.147.135.201 listed in list.dnswl.org]
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
Cc: vigneshr@ti.com, tudor.ambarus@microchip.com, juliensu@mxic.com.tw,
 richard@nod.at, miquel.raynal@bootlin.com, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, broonie@kernel.org, linux-mtd@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Pratyush Yadav <p.yadav@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Hi Pratyush,

 
> > > > On Tue, 21 Apr 2020 14:39:42 +0800
> > > > Mason Yang <masonccyang@mxic.com.tw> wrote:
> > > > 
> > > > > Hello,
> > > > > 
> > > > > This is repost of patchset from Boris Brezillon's
> > > > > [RFC,00/18] mtd: spi-nor: Proposal for 8-8-8 mode support [1].
> > > > 
> > > > I only quickly went through the patches you sent and saying it's a
> > > > repost of the RFC is a bit of a lie. You completely ignored the 
state
> > > > tracking I was trying to do to avoid leaving the flash in 8D mode 
when
> > > > suspending/resetting the board, and I think that part is crucial. 
If I
> > > > remember correctly, we already had this discussion so I must say 
I'm a
> > > > bit disappointed.
> > > > 
> > > > Can you sync with Pratyush? I think his series [1] is better in 
that 
> > it
> > > > tries to restore the flash in single-SPI mode before suspend (it's
> > > > missing the shutdown case, but that can be easily added I think). 
Of
> > > > course that'd be even better to have proper state tracking at the 
SPI
> > > > NOR level.
> > > 
> > > Hi Mason,
> > > 
> > > I posted a re-roll of my series here [0]. Could you please base your 

> > > changes on top of it? Let me know if the series is missing something 
you 
> > 
> > > need.
> > > 
> > > [0] 
> > 
https://lore.kernel.org/linux-mtd/20200424184410.8578-1-p.yadav@ti.com/
> > 
> > 
> > Our mx25uw51245g supports BFPT DWORD-18,19 and 20 data and xSPI 
profile 
> > 1.0,
> > and it comply with BFPT DWORD-19, octal mode enable sequences by write 
CFG 
> > Reg2 
> > with instruction 0x72. Therefore, I can't apply your patches.
> 
> I didn't mean apply my patches directly. I meant more along the lines of 

> edit your patches to work on top of my series. It should be as easy as 
> adding your flash's fixup hooks and its octal DTR enable hook, but if my 

> series is missing something you need (like complete Profile 1.0 parsing, 

> which I left out because I wanted to be conservative and didn't see any 
> immediate use-case for us), let me know, and we can work together to 
> address it.

yes,sure!
let's work together to upstream the Octal 8D-8D-8D driver to mainline.

The main concern is where and how to enable xSPI octal mode?

Vignesh don't agree to enable it in fixup hooks and that's why I patched
it to spi_nor_late_init_params() and confirmed the device support xSPI 
Octal mode after BFPT DWORD-19 and xSPI pf 1.0 have been parsed.

I can't apply your patches to enable xSPI Octal mode for mx25uw51245g 
because your patches set up Octal protocol first and then using Octal 
protocol to write Configuration Register 2(CFG Reg2). I think driver
should write CFG Reg2 in SPI 1-1-1 mode (power on state) and make sure
write CFG Reg 2 is success and then setup Octa protocol in the last.

As JESD216F description on BFPT DOWRD 19th, only two way to enable 
xSPI Octal mode;
one is by two instruction: issue instruction 06h(WREN) and then E8h.
the other is issue instruction 06h, then issue instruction 72h (Write
CFG Reg2), address 0h and data 02h (8D-8D-8D).

Let our patches comply with this. you may refer to my patches
[v2,3/5] mtd: spi-nor: Parse BFPT DWORD-18, 19 and 20 for Octal 8D-8D-8D 
mode

                 /* Octal mode enable sequences. */
                 switch (bfpt.dwords[BFPT_DWORD(19)] & 
BFPT_DWORD19_OCTAL_SEQ_MASK) {
                 case BFPT_DWORD19_TWO_INST:
+       ----> to patch here.
                                 break;
                 case BFPT_DWORD19_CFG_REG2:
                                 params->xspi_enable = 
spi_nor_cfg_reg2_octal_enable;
                                 break;
                 default:
                                 break;
                 }


> 
> > I quickly went through your patches but can't reply them in each your 
> > patches.
> > 
> > i.e,.
> > 1) [v4,03/16] spi: spi-mem: allow specifying a command's extension
> > 
> > -                                u8 opcode;
> > +                                u16 opcode;
> > 
> > big/little Endian issue, right? 
> > why not just u8 ext_opcode;
> > No any impact for exist code and actually only xSPI device use 
extension 
> > command.
> 
> Boris already explained the reasoning behind it.

yup, I got his point and please make sure CPU data access.

i.e,.
Fix endianness of the BFPT DWORDs and xSPI in sfdp.c

and your patch,
+                                ext = spi_nor_get_cmd_ext(nor, op);
+                                op->cmd.opcode = (op->cmd.opcode << 8) | 
ext;
+                                op->cmd.nbytes = 2;

I think maybe using u8 opcode[2] could avoid endianness.

Moreover, Vignesh think it's fine to use u8 ext_opcode in my v1 patches.
please check his comments on
https://patchwork.ozlabs.org/project/linux-mtd/patch/1573808288-19365-3-git-send-email-masonccyang@mxic.com.tw/ 



Let's open this discussion and maybe Vighesh and Tudor could have some 
comments on it.
thanks a lot.

> 
> > 2) [v4,08/16] mtd: spi-nor: parse xSPI Profile 1.0 table
> > 
> > need extract more data from xSPI profile 1.0 table and no other 
specific 
> > setting. 
> 
> Not sure what you mean by "no other specific setting".

I mean this function just do xSPI profile 1.0 table parse, no read/pp 
setting
i.e,.

+                /*
+                 * Update the fast read settings. We set the default 
dummy cycles to 20
+                 * here. Flashes can change this value if they need to 
when enabling
+                 * octal mode.
+                 */
+                params->hwcaps.mask |= SNOR_HWCAPS_READ_8_8_8_DTR;
+ spi_nor_set_read_settings(&params->reads[SNOR_CMD_READ_8_8_8_DTR],
+                                                                  0, 20, 
opcode,
+ SNOR_PROTO_8_8_8_DTR);
+
+                /*
+                 * Since the flash supports xSPI DTR reads, it should 
also support DTR
+                 * Page Program opcodes.
+                 */
+                params->hwcaps.mask |= SNOR_HWCAPS_PP_8_8_8_DTR;


> 
> > 3) [v4,11/16] mtd: spi-nor: enable octal DTR mode when possible
> > 
> > +static int spi_nor_octal_dtr_enable(struct spi_nor *nor, bool enable)
> > +{
> > +                int ret;
> > +
> > +                if (!nor->params->octal_dtr_enable)
> > +                                return 0;
> > +
> > +                if (!(spi_nor_get_protocol_width(nor->read_proto) == 
8 ||
> > +                      spi_nor_get_protocol_width(nor->write_proto) == 
8))
> > +                                return 0;
> > +
> > +                ret = nor->params->octal_dtr_enable(nor, enable);
> > +                if (ret)
> > +                                return ret;
> > +
> > +                if (enable)
> > +                                nor->reg_proto = 
SNOR_PROTO_8_8_8_DTR;
> > +                else
> > +                                nor->reg_proto = SNOR_PROTO_1_1_1;
> > +
> > +                return 0;
> > +}
> > +
> > 
> > it seems you enable device in Octal mode after SPI-NOR Framework is 
> > already
> > in Octal protocol.
> > Driver should set device by SPI 1-1-1 mode to enter Octal mode and 
then 
> > setup
> > Read/PP command and protocol by spi_nor_set_read/pp_setting() for 
Octal 
> > mode,
> > right ?
> 
> No. We need to setup Read and PP settings first. The overall flow is 
> that we first run spi_nor_setup(). This will perform a "negotiation" 
> between the controller and the flash to find out a common protocol they 
> both support, and then change to that protocol in spi_nor_init(). Even 
> if the flash supports octal DTR protocol, we can't use if if the 
> controller doesn't. That is why we want to first select the protocol in 
> the framework, and only then change the flash to that protocol.
> 
> In case the controller doesn't support 8D-8D-8D protocol, we would want 
> to use 1S-1S-1S protocol so the flash is at least usable. Changing to 8D 

> mode before finding this out would make the flash unusable.
> 

as my concern above.

> -- 
> Regards,
> Pratyush Yadav

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
