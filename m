Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD75EFBFF
	for <lists+linux-mtd@lfdr.de>; Tue,  5 Nov 2019 12:05:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8/jxUIdo//OAc+MEdXgkBJSPD5+qu1RpAsxTAwGupTo=; b=czSqn1d+3X8MRdYMfF2mC88PS
	loDsYS5p6FEwS9N8NrLTXANwTiyV+GGy2/Yp8KDji0vo505/nYX0fwCNqWjQcydXwAxV3Pe3a7VDf
	Md/poKDULiB4zSxNbp9glhtwrUXeWZy5hfjZhO1AH9kKxxgQzZOniBA6xCmUVg2BaZM7F5VzhHM8z
	pK9OxQNMThH4Hx0/vZlfOXqOhA4SrU3SSG0myrO9NidNSILC9W8ybq3GSuhewtETurn5SCcZ3u872
	mRDovQUcQT4nBOtG7lvQafcOBxGqFcUuVqXC/EgGdUDie31I+PZfK4fRcqOa4pRc/hRF03pFqPD6U
	P4EUfORMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRweO-0005yy-F3; Tue, 05 Nov 2019 11:05:28 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRweF-0005yR-2I
 for linux-mtd@lists.infradead.org; Tue, 05 Nov 2019 11:05:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2eO07dXroFiq8sB6b0J/jgAEKIzUzmLjBTejnzmX9T0=; b=ozXkH0JPOhx0viZ0l6KaKifyv
 kzh0+OLvHPX5brnQfaeUpyJh8bw+wr/M5frXCJbajZMkRwqimILKGmXTc5a452eDrB2cve8DE4VSs
 TciJFOnooDYMwV0OHa3T4uz/D0k3tX6ekootqqfcwTstryJvnBSzFVYnD/z6wQPnbwqyQ=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iRwe2-0006Kf-Ds; Tue, 05 Nov 2019 11:05:06 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 2711827431C3; Tue,  5 Nov 2019 11:05:05 +0000 (GMT)
Date: Tue, 5 Nov 2019 11:05:05 +0000
From: Mark Brown <broonie@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH 2/3] spi: Add HiSilicon v3xx SPI NOR flash controller
 driver
Message-ID: <20191105110504.GA4500@sirena.co.uk>
References: <1572886297-45400-1-git-send-email-john.garry@huawei.com>
 <1572886297-45400-3-git-send-email-john.garry@huawei.com>
 <20191104192406.GH5238@sirena.co.uk>
 <855a67dc-1356-a763-e374-540f6ac400ab@huawei.com>
MIME-Version: 1.0
In-Reply-To: <855a67dc-1356-a763-e374-540f6ac400ab@huawei.com>
X-Cookie: Genius is pain.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_030519_128629_EF09A947 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: tudor.ambarus@microchip.com, linux-kernel@vger.kernel.org,
 linuxarm@huawei.com, linux-spi@vger.kernel.org, marek.vasut@gmail.com,
 linux-mtd@lists.infradead.org, xuejiancheng@hisilicon.com,
 fengsheng5@huawei.com
Content-Type: multipart/mixed; boundary="===============0276710545397836269=="
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


--===============0276710545397836269==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yrj/dFKFPuw6o+aM"
Content-Disposition: inline


--yrj/dFKFPuw6o+aM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Nov 05, 2019 at 10:58:39AM +0000, John Garry wrote:
> On 04/11/2019 19:24, Mark Brown wrote:
> > On Tue, Nov 05, 2019 at 12:51:36AM +0800, John Garry wrote:

> > > +		if (len) {
> > > +			u32 val;
> > > +
> > > +			val = __raw_readl(host->regbase + CMD_DATABUF(words));
> > > +
> > > +			to += words * 4;
> > > +			for (i = 0; i < len; i++, val >>= 8, to++)
> > > +				*to = (u8)val;
> > > +		}
> > > +	} else {
> > > +		for (i = 0; i < DIV_ROUND_UP(len, 4); i++) {
> > > +			u32 val = __raw_readl(host->regbase + CMD_DATABUF(i));
> > > +			int j;

> > The more usual pattern for these would be to do some unaligned accesses
> > for the start/end of the buffer to get to alignment and then transfer
> > the rest as aligned data.

> Yeah, I understand you, but for that I would need to generate multiple
> transactions in the driver, and I wanted to keep 1x transaction per
> spi_controller_mem_ops.exec_op call.

> So maybe I can do some trickery in my adjust_op_size method to generate
> these multiple transactions: a. any unaligned start data b. the 32b-aligned
> data b. unaligned end. I think that the HW should be able to handle that.

Right, that's what I was expecting.

--yrj/dFKFPuw6o+aM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3BV14ACgkQJNaLcl1U
h9BKZAf6Ash1CMprp9CmtoZgXDlZGjI+I84fZ7x4ZvMSHOMZ20e7KMwVEKBJ4UH8
onKbrC/sLhV9dOTh4KdW9H7QnPp7NQPru6ZartbDCKHDT2wT7SJCXlQWapZrg5Gh
E/xH29aG6yQrIxTvYtsqNjBw7cheRBDQUTAvMH+rqNMLtOQVnWgh+Tf09izlS1ve
6vJrCROj/xO319Oc2iAhRGRbXgr++392iYarO3qdad6SSGFZFVKCs9lU/U+9I8Dz
KG2nKTMal8tnwJw4GRJ5PqPVsrs3+UYJwey6mbPVeIXfp1Oe2H8igZmXdmd4o9F2
OHTRDQDXOG8K/Opk2MV79xBmKG+pKw==
=S6Z7
-----END PGP SIGNATURE-----

--yrj/dFKFPuw6o+aM--


--===============0276710545397836269==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

--===============0276710545397836269==--

