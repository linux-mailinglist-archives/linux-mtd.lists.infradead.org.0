Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 044461D2ADE
	for <lists+linux-mtd@lfdr.de>; Thu, 14 May 2020 11:04:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5WL6yOnZwhpxm3dw/vov6JiupmnIGrJICZqCuoIcWHM=; b=t8I8btj69fBoAs
	7/jnij28RAJFx88dDS9e4CrKfsrErXn99wciG4GVn9fqOoYlVW9RRpbWbW2ykhK34WNHuVK873UTT
	jI7Ug99hx62A+qXIbayLkiPUw8cTPQarSP7VOZRWUtv2+tiMs6y+XL1HnRdf+dpHBM3JdnQHyfzQi
	/H3opPWPFoeftCWAYa/Pr6Y9+9UwZECtpIUsqwYcK8TAY8DX1zVcUaVDpAmdaqCVXRNpHXX5FnbbA
	z8cswtpevXZT1Rr1/460+8a9ub0O/T3bKPvO2r+lJL4b7ZV7sgRWVlp2iin1lxX75M+jrZm+kJlpi
	/bTiWa/JtNoGxoA273Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ9n5-0007Op-AA; Thu, 14 May 2020 09:04:31 +0000
Received: from smtp1.axis.com ([195.60.68.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ9ms-0007Nk-Vz
 for linux-mtd@lists.infradead.org; Thu, 14 May 2020 09:04:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=axis.com; l=2372; q=dns/txt; s=axis-central1;
 t=1589447059; x=1620983059;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ptevued3QylYXmmaWNNVUI75Y0/eRHUduh70oeNX+g0=;
 b=bVQiDm82ShIh8pgqfzCdTc/XcdOidWMaKLicSUkmYWjOdREaqA98gZJ4
 ZnWA0hqGyD4HpKGwxfiJztol/U5IevuY+ygNhks7Vz2suWbNVdFob47Dw
 1n0tBNei54K/IX/NI87IV3AtHTIyUKTsEQSBEX/tlv+4378rXC9FTMO7D
 34R9AidMCDNSV7IZ6XF5Qd0xHmVAICKmviVXxUsGJTKmqjwc/UHMAd8ls
 nQNyZYNdbLj+fe4LOh9JYY3FGIYxIChpo0NEhE2jOI6Yuccx09p2eQlU6
 gyfMgh9yPYnsGsOM/o7IwYOIsDuOB3zk84n+iWxiD+usGv25nkXp9knv5 Q==;
IronPort-SDR: RX7cq4P8OPCnT6TGfHz9/PATQZSBP3RwlgSBJC48Tk48jEt8PxM5tM0vW6wRU8KktEjyXsWiqQ
 3B+MJoGhAETadtNqU0oyln3QEum8ZQ+agmBKGtzTDlgYr2ENAcjWYk/cCF3Xn/Q3iYz5xPGW+i
 Ts8ZH46ACfv3pgpjbdCtAfEK4hfRcxL3XDWFXZcm6inbmnwGs0ym9ipMBD0XWyQwqq7x1KZjOy
 9vt0D6hWh0zX9uZtx4po/n83w341ZByIhaMFowp64um023p07y/OLFhQs7Ar768XiqzwqIcwhr
 AF0=
X-IronPort-AV: E=Sophos;i="5.73,390,1583190000"; 
   d="scan'208";a="8715728"
From: Rickard X Andersson <Rickard.Andersson@axis.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: SV: [PATCH] mtd: rawnand: Non ONFI specialized timing support
Thread-Topic: [PATCH] mtd: rawnand: Non ONFI specialized timing support
Thread-Index: AQHWGKAUTxNOp8E0Q0m1NQXiGYAN4aikzvaAgADk5wCAAbezuQ==
Date: Thu, 14 May 2020 09:04:14 +0000
Message-ID: <1589447054392.70369@axis.com>
References: <20200422121800.7365-1-rickaran@axis.com>
 <20200512210933.03280fd0@xps13>,<20200513104850.358af92c@xps13>
In-Reply-To: <20200513104850.358af92c@xps13>
Accept-Language: sv-SE, en-US
Content-Language: sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_020419_361502_F58682EE 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.60.68.17 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "richard@nod.at" <richard@nod.at>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "vigneshr@ti.com" <vigneshr@ti.com>, Boris Brezillon <bbrezillon@kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi,

Thanks for the feedback. I have now created a new patchset on top of your p=
atches. Will send it very soon.

BR
Rickard Andersson
________________________________________
Fr=E5n: Miquel Raynal <miquel.raynal@bootlin.com>
Skickat: den 13 maj 2020 10:48
Till: Rickard X Andersson
Kopia: linux-mtd@lists.infradead.org; richard@nod.at; vigneshr@ti.com; s.ha=
uer@pengutronix.de; Boris Brezillon
=C4mne: Re: [PATCH] mtd: rawnand: Non ONFI specialized timing support

Hi Rickard,

Miquel Raynal <miquel.raynal@bootlin.com> wrote on Tue, 12 May 2020
21:09:33 +0200:

> Hi Rickard,
>
> + boris
>
> Rickard Andersson <rickaran@axis.com> wrote on Wed, 22 Apr 2020
> 14:18:00 +0200:
>
> > From: Rickard x Andersson <rickaran@axis.com>
> >
> > The Kioxia/Toshiba TH58NVG2S3HBAI4 NAND memory is not a
> > ONFI compliant memory. The timings of that memory are quite
> > close to ONFI mode 4 but is breaking that spec.
> >
> > This patch adds a special table with timings that can be
> > used for non ONFI memories.
> >
> > Erase block read speed is increased from 6739 KiB/s to
> > 13260 KiB/s. Erase block write speed is increased from
> > 3004 KiB/s to 3872 KiB/s.
> >
> > Tested on IMX6ULL which has a NAND controller supporting
> > EDO mode.
>
> I am convinced about the idea of tweaking non-ONFI timings on a
> per-chip basis to enhance their throughput, but I think we should do
> this another way.
>
> What we could have is a way, for NAND manufacturer drivers, to overload
> the timings. This way, Kioxia timings remain in the Toshiba driver.
>
> I quickly prepared a small series [1], it is untested but it will
> hopefully help you adapt your patch. You just have to set the
> chip->init_data_interface() hook from the Toshiba driver at init time.
> This hook is supposed to update the whole data interface structure and
> also call chip->controller.ops() to verify it is supported by the
> controller.
>
> [1] https://github.com/miquelraynal/linux/tree/perso/nand-next/timings

Boris commented on Github, so I updated the code and pushed -f

Thanks,
Miqu=E8l

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
