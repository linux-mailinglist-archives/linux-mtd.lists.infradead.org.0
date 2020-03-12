Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 983E81826E0
	for <lists+linux-mtd@lfdr.de>; Thu, 12 Mar 2020 02:56:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:Message-ID:MIME-Version:
	Subject:To:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1w4G/00l6PHPvCmbsE2lOVH95TjVF44MnUpe/QCOCf4=; b=V8DJrVbMCpU3dq
	OejcxKOKcMMr6M0PO+RMu4TfXaI13iJ7uRRw8SJ6eyCKrqP8ZtkB2xe2P0aTuL/4lpYXsH24zrcLe
	DFThJOPXjlO4PT/u/Z2dq/UX7h1/V8pnR1Wk/yKJtC3Fa1H5YFTKZPC9P4kc+JvJhpijl59o3BFqN
	8Dvar5jZwTl+QbXuTurmYeSVV78JdpGgPAR5UeWnDcDbtLDpKvqP6Z4XMpFEgTpbOrYGK90l0A4IT
	VkWvZD+zKa0HkNrSaBZ5b8MQ+Wd0BSOgzm1nQKVQKX4MU5p61ek3wV6LjWHdg2/Ar7+CS07qBTmPb
	jJW3goyl6TCwoZDKcAWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCD5S-00023O-QE; Thu, 12 Mar 2020 01:56:38 +0000
Received: from twhmllg4.macronix.com ([122.147.135.202])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCD5K-000235-5H
 for linux-mtd@lists.infradead.org; Thu, 12 Mar 2020 01:56:31 +0000
Received: from twhfm1p2.macronix.com (twhfmlp2.macronix.com [172.17.20.92])
 by TWHMLLG4.macronix.com with ESMTP id 02C1tnkR070601;
 Thu, 12 Mar 2020 09:55:49 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
Received: from MXML06C.mxic.com.tw (mxml06c.macronix.com [172.17.14.55])
 by Forcepoint Email with ESMTP id 4AE79B81C5CC582C2882;
 Thu, 12 Mar 2020 09:55:49 +0800 (CST)
In-Reply-To: <20200311084541.28ff4829@xps13>
References: <1581922600-25461-1-git-send-email-masonccyang@mxic.com.tw>	<1581922600-25461-3-git-send-email-masonccyang@mxic.com.tw>
 <20200311084541.28ff4829@xps13>
To: "Miquel Raynal" <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v5 2/2] dt-bindings: mtd: Document Macronix NAND device
 bindings
MIME-Version: 1.0
X-KeepSent: E7ABBA9B:10FD1630-48258529:000A8752;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP4 SHF90 June 10, 2013
Message-ID: <OFE7ABBA9B.10FD1630-ON48258529.000A8752-48258529.000A9A80@mxic.com.tw>
From: masonccyang@mxic.com.tw
Date: Thu, 12 Mar 2020 09:55:49 +0800
X-MIMETrack: Serialize by Router on MXML06C/TAIWAN/MXIC(Release 9.0.1FP10
 HF265|July 25, 2018) at 2020/03/12 AM 09:55:49,
 Serialize complete at 2020/03/12 AM 09:55:49
X-MAIL: TWHMLLG4.macronix.com 02C1tnkR070601
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_185630_493703_B0B21AE8 
X-CRM114-Status: UNSURE (   4.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [122.147.135.202 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, vigneshr@ti.com,
 juliensu@mxic.com.tw, richard@nod.at, yuehaibing@huawei.com,
 linux-kernel@vger.kernel.org, frieder.schrempf@kontron.de, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, tglx@linutronix.de, allison@lohutok.net
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Hi Miquel,
 =

> Mason Yang <masonccyang@mxic.com.tw> wrote on Mon, 17 Feb 2020 14:56:40
> +0800:
> =

> > Document the bindings used by the Macronix NAND device.
> > =

> > Signed-off-by: Mason Yang <masonccyang@mxic.com.tw>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > ---
> >  .../devicetree/bindings/mtd/nand-macronix.txt      | 28 =

++++++++++++++++++++++
> >  1 file changed, 28 insertions(+)
> >  create mode 100644 =

Documentation/devicetree/bindings/mtd/nand-macronix.txt
> > =

> > diff --git a/Documentation/devicetree/bindings/mtd/nand-macronix.txt =

b/
> Documentation/devicetree/bindings/mtd/nand-macronix.txt
> > new file mode 100644
> > index 0000000..1d7a895
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mtd/nand-macronix.txt
> > @@ -0,0 +1,28 @@
> > +Macronix NANDs Device Tree Bindings
> > +-----------------------------------
> > +
> > +Macronix NANDs support randomizer operation for user data scrambled,
> > +which can be enabled with a SET_FEATURE. The penalty of randomizer =

are
> > +subpage accesses prohibited and more time period is needed in program
> > +operation, i.e., tPROG 300us to 340us(randomizer enabled).
> > +Randomizer enabled is a one time persistent and non reversible =

operatoin.
> > +
> > +For more high-reliability concern, if subpage write not available =

with
> > +hardware ECC and filesystem and then to enable randomizer is =

recommended
> > +by default.
> > +
> > +By adding a new specific property in children nodes to enable
> > +randomizer function.
> =

> I also reworded slightly this text when applying.

ok,sure.

> =

> =

> Thanks,
> Miqu=E8l

thanks for your time & review.
Mason

CONFIDENTIALITY NOTE:

This e-mail and any attachments may contain confidential information =

and/or personal data, which is protected by applicable laws. Please be =

reminded that duplication, disclosure, distribution, or use of this e-mail =

(and/or its attachments) or any part thereof is prohibited. If you receive =

this e-mail in error, please notify us immediately and delete this mail as =

well as its attachment(s) from your system. In addition, please be =

informed that collection, processing, and/or use of personal data is =

prohibited unless expressly permitted by personal data protection laws. =

Thank you for your attention and cooperation.

Macronix International Co., Ltd.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D



=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D

CONFIDENTIALITY NOTE:

This e-mail and any attachments may contain confidential information and/or=
 personal data, which is protected by applicable laws. Please be reminded t=
hat duplication, disclosure, distribution, or use of this e-mail (and/or it=
s attachments) or any part thereof is prohibited. If you receive this e-mai=
l in error, please notify us immediately and delete this mail as well as it=
s attachment(s) from your system. In addition, please be informed that coll=
ection, processing, and/or use of personal data is prohibited unless expres=
sly permitted by personal data protection laws. Thank you for your attentio=
n and cooperation.

Macronix International Co., Ltd.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
