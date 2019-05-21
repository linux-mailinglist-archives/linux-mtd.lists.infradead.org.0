Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9E72460D
	for <lists+linux-mtd@lfdr.de>; Tue, 21 May 2019 04:43:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:Message-ID:MIME-Version:
	Subject:To:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pMroVF7lx0Iosvrs6NpjFoi2304iwQ45638fsaUo+uU=; b=KfEIcnnezPHBau
	q0l3LvUgdW5DPCnsVrEV1Oxjh6+FynvZJgsmarcpKFAUnsBFSRajYJ+3RPMMeT+LOvVD6a0cZZcJV
	WSqE5C2Mv22qLPVy4EcKFcL2STIrMQpmyfJN0Yp8XiVraCprZKhyMH8lEvOM1K4Vn1IzKWDxLc4Od
	lcDIkCPPfCP6MpX6/XlgAKDC8qRcO5J9NWFkuYD1EKYYzH/c+ueW9Cd2pkYf0dY2R90lmtuLYdfnJ
	C1KJmH3ZW+j9gIGQETnTU5aqVcwJnNZOIdT8chQfwY96hP9xM9eMB26bkpxylUzzM1TCe5XXulzch
	qlqgoRsNw9L28LmuYOmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSujy-0004Om-RJ; Tue, 21 May 2019 02:42:58 +0000
Received: from twhmllg4.macronix.com ([122.147.135.202])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSujq-0004Nj-TK
 for linux-mtd@lists.infradead.org; Tue, 21 May 2019 02:42:52 +0000
Received: from twhfmnt1.mxic.com.tw (twhfm1p2.macronix.com [172.17.20.92])
 by TWHMLLG4.macronix.com with ESMTP id x4L2g5BT004509;
 Tue, 21 May 2019 10:42:05 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
Received: from MXML06C.mxic.com.tw (mxml06c.macronix.com [172.17.14.55])
 by Forcepoint Email with ESMTP id AC5567C4549EB1ADF305;
 Tue, 21 May 2019 10:42:05 +0800 (CST)
In-Reply-To: <20190520143438.46248bfc@xps13>
References: <1558076001-29579-1-git-send-email-masonccyang@mxic.com.tw>
 <20190520143438.46248bfc@xps13>
To: "Miquel Raynal" <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v2] mtd: rawnand: Add Macronix NAND read retry support
MIME-Version: 1.0
X-KeepSent: DCB9EA90:C6F8EA4C-48258401:000981AF;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP4 SHF90 June 10, 2013
Message-ID: <OFDCB9EA90.C6F8EA4C-ON48258401.000981AF-48258401.000ED713@mxic.com.tw>
From: masonccyang@mxic.com.tw
Date: Tue, 21 May 2019 10:42:06 +0800
X-MIMETrack: Serialize by Router on MXML06C/TAIWAN/MXIC(Release 9.0.1FP10
 HF265|July 25, 2018) at 2019/05/21 AM 10:42:05,
 Serialize complete at 2019/05/21 AM 10:42:05
X-MAIL: TWHMLLG4.macronix.com x4L2g5BT004509
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_194251_216246_79139139 
X-CRM114-Status: GOOD (  16.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [122.147.135.202 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: vigneshr@ti.com, bbrezillon@kernel.org, juliensu@mxic.com.tw,
 richard@nod.at, linux-kernel@vger.kernel.org, frieder.schrempf@kontron.de,
 marek.vasut@gmail.com, linux-mtd@lists.infradead.org,
 computersforpeace@gmail.com, dwmw2@infradead.org, zhengxunli@mxic.com.tw
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Hi Miquel,
 
> > Add support for Macronix NAND read retry.
> > 
> > Macronix NANDs support specific read operation for data recovery,
> > which can be enabled/disabled with a SET/GET_FEATURE.
> > Driver checks byte 167 of Vendor Blocks in ONFI parameter page table
> > to see if this high-reliability function is supported.
> > 
> > Signed-off-by: Mason Yang <masonccyang@mxic.com.tw>
> > ---
> >  drivers/mtd/nand/raw/nand_macronix.c | 57 
++++++++++++++++++++++++++++++++++++
> >  1 file changed, 57 insertions(+)
> > 
> > diff --git a/drivers/mtd/nand/raw/nand_macronix.c 
b/drivers/mtd/nand/raw/
> nand_macronix.c
> > index e287e71..1a4dc92 100644
> > --- a/drivers/mtd/nand/raw/nand_macronix.c
> > +++ b/drivers/mtd/nand/raw/nand_macronix.c
> > @@ -17,6 +17,62 @@
> > 
> >  #include "internals.h"
> > 
> > +#define MACRONIX_READ_RETRY_BIT BIT(0)
> > +#define MACRONIX_READ_RETRY_MODE 6
> 
> Can you name this define MACRONIX_NUM_READ_RETRY_MODES?

okay, will fix.

> 
> > +
> > +struct nand_onfi_vendor_macronix {
> > +   u8 reserved[1];
> 
> Do you need this "[1]" ?

okay, just u8 reserved;

> 
> > +   u8 reliability_func;
> > +} __packed;
> > +
> > +/*
> > + * Macronix NANDs support using SET/GET_FEATURES to enter/exit read 
retry mode
> > + */
> > +static int macronix_nand_setup_read_retry(struct nand_chip *chip, int 
mode)
> > +{
> > +   u8 feature[ONFI_SUBFEATURE_PARAM_LEN];
> > +   int ret, feature_addr = ONFI_FEATURE_ADDR_READ_RETRY;
> > +
> > +   if (chip->parameters.supports_set_get_features &&
> > +       test_bit(feature_addr, chip->parameters.set_feature_list) &&
> > +       test_bit(feature_addr, chip->parameters.get_feature_list)) {
> > +      feature[0] = mode;
> > +      ret =  nand_set_features(chip, feature_addr, feature);
> > +      if (ret)
> > +         pr_err("Failed to set read retry moded:%d\n", mode);
> 
> Do you have to call nand_get_features() on error?

okay

> 
> > +
> > +      ret =  nand_get_features(chip, feature_addr, feature);
> > +      if (ret || feature[0] != mode)
> > +         pr_err("Failed to verify read retry moded:%d(%d)\n",
> > +                mode, feature[0]);
> 
> if ret == 0 but feature[0] != mode, shouldn't you return an error?

okay, will fix.

> 
> > +   }
> > +
> > +   return ret;
> 
> This will produce a Warning at compile time (ret may be used
> uninitialized). Have you tested it?

Tool chain I used is "gcc-arm-linux-gnueabi" and no Warning at compile 
time.

Patch it to:
----------------------------------------------------------------------------->
 static int macronix_nand_setup_read_retry(struct nand_chip *chip, int 
mode)
 {
         u8 feature[ONFI_SUBFEATURE_PARAM_LEN];
         int ret, feature_addr = ONFI_FEATURE_ADDR_READ_RETRY;

         if (chip->parameters.supports_set_get_features &&
             test_bit(feature_addr, chip->parameters.set_feature_list) &&
             test_bit(feature_addr, chip->parameters.get_feature_list)) {

                 feature[0] = mode;
                 ret =  nand_set_features(chip, feature_addr, feature);
                 if (ret) {
                         pr_err("Failed to set read retry moded:%d\n", 
mode);
                         goto err_out;
                 }

                 ret =  nand_get_features(chip, feature_addr, feature);
                 if (ret) {
                         pr_err("Failed to get read retry moded:%d\n", 
mode);
                         goto err_out;
                 } else if (feature[0] != mode) {
                         pr_err("Failed to verify read retry 
moded:%d(%d)\n",
                                 mode, feature[0]);
                         return -EIO;
                 }
         }

 err_out:
         return ret;
 }
-----------------------------------------------------------------------------<

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
