Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D43C11EB5DB
	for <lists+linux-mtd@lfdr.de>; Tue,  2 Jun 2020 08:33:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:Message-ID:MIME-Version:
	Subject:To:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tVwjn+efOT15XeQHcMjgvUfCokMyJDnKBaBg1ORQXjA=; b=IraAAuQIDBlIzE
	iMkW2yL4UL95Peg+oiKWZhFnJjpcFLV/pi5pDZ+c/HCXzTZCWzKu/q2NJwIRlN3kInZTdDQ2TxTO+
	ZqWw1NVZ6trtSxy9/UtcL16Sq78j9wuUvNLVnmhsHKurcFgLbW732J0fhVSu1k6byJh27Ur7wV8u5
	lM76NqDUBLtLswczPNKmZbPjGkL2EWHO1sbn/gllvddGPs5E8+cVFbvoB1cjO7hiYKA6E4p9wbWVj
	duHHfWbhFQgVBviDJWcw0mUXfj3TN66qWJrSYy7YJ3Gq34odZSEvc6YDt6fTZONdLKRbNdDM4gfDl
	nd+S3h++ff+GmzGhVp3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg0UZ-0005Sa-5y; Tue, 02 Jun 2020 06:33:43 +0000
Received: from twhmllg3.macronix.com ([122.147.135.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg0UQ-0005S7-HA
 for linux-mtd@lists.infradead.org; Tue, 02 Jun 2020 06:33:36 +0000
Received: from twhfmlp1.macronix.com (twhfmlp1.macronix.com [172.17.20.91])
 by TWHMLLG3.macronix.com with ESMTP id 0526WqhW083980;
 Tue, 2 Jun 2020 14:32:52 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
Received: from MXML06C.mxic.com.tw (mxml06c.mxic.com.tw [172.17.14.55])
 by Forcepoint Email with ESMTP id C42C77D7708EA654953F;
 Tue,  2 Jun 2020 14:32:52 +0800 (CST)
In-Reply-To: <20200529092353.56nfczya6ygfbki2@yadavpratyush.com>
References: <1590737775-4798-1-git-send-email-masonccyang@mxic.com.tw>
 <1590737775-4798-2-git-send-email-masonccyang@mxic.com.tw>
 <20200529092353.56nfczya6ygfbki2@yadavpratyush.com>
To: "Pratyush Yadav" <me@yadavpratyush.com>
Subject: Re: [PATCH v4 1/7] mtd: spi-nor: sfdp: get octal mode maximum speed
 from BFPT
MIME-Version: 1.0
X-KeepSent: 61F39C24:01B2337A-4825857B:00238327;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP4 SHF90 June 10, 2013
Message-ID: <OF61F39C24.01B2337A-ON4825857B.00238327-4825857B.0023F82E@mxic.com.tw>
From: masonccyang@mxic.com.tw
Date: Tue, 2 Jun 2020 14:32:53 +0800
X-MIMETrack: Serialize by Router on MXML06C/TAIWAN/MXIC(Release 9.0.1FP10
 HF265|July 25, 2018) at 2020/06/02 PM 02:32:52,
 Serialize complete at 2020/06/02 PM 02:32:52
X-MAIL: TWHMLLG3.macronix.com 0526WqhW083980
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_233334_865007_3516D320 
X-CRM114-Status: GOOD (  10.68  )
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
 boris.brezillon@collabora.com, matthias.bgg@gmail.com, p.yadav@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Hi Pratyush,

> 
> Subject
> 
> Re: [PATCH v4 1/7] mtd: spi-nor: sfdp: get octal mode maximum speed from 
BFPT
> 
> On 29/05/20 03:36PM, Mason Yang wrote:
> > Get maximum operation speed of device in octal mode from
> > BFPT 20th DWORD.
> 
> I don't like the idea of getting the maximum operation speed from BFPT 
> when the Profile 1.0 table already tells us that. For example, the 
> 200MHz operation dummy cycles field in the 4th DWORD says that a value 
> of 0 means the frequency is not supported. So the Profile 1.0 table 
> already tells us what frequencies the flash can run at in xSPI Profile 
> 1.0 mode.

As JEDEC spec. mentioned that 
Operation faster than 200MHz is not part of the current xSPI Spec. 
However, this does not prevent vendors from making devices that operate at 
higher speed.

In addition, current xSPP profile 1.0 table only defined up to 200MHz.

> 
> So IMO we should use the Profile 1.0 table for this instead because
> it will be a localized change which is easier to maintain. I also get 
> the feeling it will be less prone to mis-interpretations.
> 
> > Signed-off-by: Mason Yang <masonccyang@mxic.com.tw>
> > ---

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
