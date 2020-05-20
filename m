Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 442711DB517
	for <lists+linux-mtd@lfdr.de>; Wed, 20 May 2020 15:33:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mhCmKjOM6Eptpq+5dmWlCgKgR6XyMLFnvWptKGnuY+U=; b=faJXPrrypUqS+T
	0uXc0JHzjhQ+hfWUPKt/NcGdPCf6UVqOEinkw9yAQixBkc8RU/8E9XdFXcD3+mNhxPPKkGgcfovE+
	28ZSV+WeR/YXiw2tf2/pzO+JXCNp5hX2KyMacvsDpF+cyTX8ddpfNmaqwPvN4FQLJlZbYYIFBH3CJ
	bT/SLEzOcWT9+zum810u5c3m/hkWdhD0eyQR+j9Wbgu+yxNjkVvv3G0aaLeRSuHYZUr1s2/Bcz5cR
	3Lwg2L5vC7sjFXm7IwS78l0yOb5/tZWl+PTjcifJyduR77Rou0wPEneyvhLIxIY5s5Q1XtO2Jj+xr
	Z4gUwzdaXzepNHQaSXmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbOpg-0005E2-R2; Wed, 20 May 2020 13:32:28 +0000
Received: from smtp1.axis.com ([195.60.68.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbOpY-0005DJ-0S
 for linux-mtd@lists.infradead.org; Wed, 20 May 2020 13:32:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=axis.com; l=6631; q=dns/txt; s=axis-central1;
 t=1589981540; x=1621517540;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=pjZGUpUlONrlXd+D60CSZe+rIARZMdhAW3jzHnhcuMg=;
 b=SGkWHGPhy7Jv8XYG3O1xaxsFqC82O8uO0oMWi8P3QqGJqvRkhMyq7w/W
 IvTLK0QmRWs3dGVJ3zaeFM8dezVHBrvGvAHpkoLBt9UzCkxn98uBYS71U
 pCI1U7Y2a03OoVUVPrEpV40sCWw/7jjt+pgGtiLUHOa14DAFbaZCsLBCj
 Dg2euvLziIrWGwEU6DBFwufKTXfsGR25phWRvkfLt0p2g+Ym969l6GhXX
 Kwt+tcXnaPp/jaS9FyG+P3mXFLXgwZNUnwL59shi8i5A0873+wPwsX1QA
 JBr3Vw1RCESDdPmFlGMwgfS22NkeRToRa3sGyTAalLbHExHRBmfUbF0wQ w==;
IronPort-SDR: oBYesRYh/6NgBwpwKgDdbfpp+rh2ojW9CLu2nxMuDJi7gBMV1fA9MNBrHzrr+kK1osTXJaWeWp
 ieyubxuYQn03eVqhfCYqsKjmI9Ejnocg7e8Tzr68eHayzKXGmXH0X2oXjfTSI83XsDlHzv8lVs
 xXCLUafrypMhfQyffUYBQewEtcEEFQupOTpatwYC5BrTK13CZscjSPFaExzMRZUzYlnEo5PbRc
 h9WEcHyCGHNCY1gMN/bJYsbBPY8DKqc2jn3IcEHZ4Vph/cmBipHkyOW+htcurPFtFgfto00uMS
 n4s=
X-IronPort-AV: E=Sophos;i="5.73,414,1583190000"; 
   d="scan'208";a="8924289"
From: Rickard X Andersson <Rickard.Andersson@axis.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: SV: [PATCH 2/2] mtd: rawnand: Add timings for Kioxia TH58NVG2S3HBAI4
Thread-Topic: [PATCH 2/2] mtd: rawnand: Add timings for Kioxia TH58NVG2S3HBAI4
Thread-Index: AQHWLqsSzDPRS0hiIEqCKjujGCWzMA==
Date: Wed, 20 May 2020 13:32:14 +0000
Message-ID: <1589981533129.2663@axis.com>
Accept-Language: sv-SE, en-US
Content-Language: sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_063220_546387_B087371D 
X-CRM114-Status: GOOD (  16.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.60.68.17 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Miquel,

> I just a branch with a new helper to fill this field, it is called
> onfi_find_equivalent_sdr_mode().
>
> It is only compile tested so please verify it works.

I have created a new patchset that I will send shortly. This patchset does =
however not use onfi_find_equivalent_sdr_mode(..), that could be a future i=
mprovment. My patchset falls back to mode 0 if the specialized timings does=
 not work for the controller. =


> > =

> > +static int th58nvg2s3hbai4_init_data_interface(struct nand_chip
>
> I renamed the hook so the helper should be
> th58..._choose_data_interface()
>
> > *chip) +{
> > + =A0 =A0 chip->data_interface =3D th58nvg2s3hbai4_timings;
>
> this data interface should be tested against the controller's
> capabilities and return an error otherwise.
>
> Please check that, in case of error (simulate it) it fallbacks to mode
> 0 and does not fail silently.

I have tested this on my new patchset and it works.

Best regards,
Rickard
________________________________________
Fr=E5n: Miquel Raynal <miquel.raynal@bootlin.com>
Skickat: den 19 maj 2020 14:08
Till: Rickard X Andersson
Kopia: linux-mtd@lists.infradead.org
=C4mne: Re: [PATCH 2/2] mtd: rawnand: Add timings for Kioxia TH58NVG2S3HBAI4

Hi Rickard,

Rickard Andersson <rickaran@axis.com> wrote on Thu, 14 May 2020
11:13:42 +0200:

> From: Rickard x Andersson <rickaran@axis.com>
>
> The Kioxia/Toshiba TH58NVG2S3HBAI4 NAND memory is not a
> ONFI compliant memory. The timings of the memory is quite
> close to ONFI mode 4 but is breaking that spec.
>
> Erase block read speed is increased from 6910 KiB/s to
> 13490 KiB/s. Erase block write speed is increased from
> 3350 KiB/s to 4410 KiB/s.
>
> Tested on IMX6SX which has a NAND controller supporting
> EDO mode.
>
> Signed-off-by: Rickard x Andersson <rickaran@axis.com>
> ---
>  drivers/mtd/nand/raw/nand_ids.c     |  3 ++
>  drivers/mtd/nand/raw/nand_toshiba.c | 61 +++++++++++++++++++++++++++++++=
++++++
>  2 files changed, 64 insertions(+)
>
> diff --git a/drivers/mtd/nand/raw/nand_ids.c b/drivers/mtd/nand/raw/nand_=
ids.c
> index e0dbc2e316c7..8b676e8b481b 100644
> --- a/drivers/mtd/nand/raw/nand_ids.c
> +++ b/drivers/mtd/nand/raw/nand_ids.c
> @@ -52,6 +52,9 @@ struct nand_flash_dev nand_flash_ids[] =3D {
>               { .id =3D {0xad, 0xde, 0x94, 0xda, 0x74, 0xc4} },
>                 SZ_8K, SZ_8K, SZ_2M, NAND_NEED_SCRAMBLING, 6, 640,
>                 NAND_ECC_INFO(40, SZ_1K), 4 },
> +     {"TH58NVG2S3HBAI4 4G 3.3V 8-bit",
> +             { .id =3D {0x98, 0xdc, 0x91, 0x15, 0x76} },
> +               SZ_2K, SZ_512, SZ_128K, 0, 5, 128, NAND_ECC_INFO(8, SZ_51=
2) },
>
>       LEGACY_ID_NAND("NAND 4MiB 5V 8-bit",   0x6B, 4, SZ_8K, SP_OPTIONS),
>       LEGACY_ID_NAND("NAND 4MiB 3,3V 8-bit", 0xE3, 4, SZ_8K, SP_OPTIONS),
> diff --git a/drivers/mtd/nand/raw/nand_toshiba.c b/drivers/mtd/nand/raw/n=
and_toshiba.c
> index b6efaf5195bb..380499cfa491 100644
> --- a/drivers/mtd/nand/raw/nand_toshiba.c
> +++ b/drivers/mtd/nand/raw/nand_toshiba.c
> @@ -26,6 +26,52 @@
>  /* Max ECC Steps for BENAND */
>  #define TOSHIBA_NAND_MAX_ECC_STEPS           8
>
> +static const struct nand_data_interface th58nvg2s3hbai4_timings =3D {
> +     .type =3D NAND_SDR_IFACE,
> +     .timings.mode =3D 0,

I just a branch with a new helper to fill this field, it is called
onfi_find_equivalent_sdr_mode().

It is only compile tested so please verify it works.

> +     .timings.sdr =3D {
> +             .tPROG_max =3D 700000000,
> +             .tBERS_max =3D 5000000000,
> +             .tCCS_min =3D 500000,
> +             .tR_max =3D 200000000,
> +             .tADL_min =3D 400000,
> +             .tALH_min =3D 5000,
> +             .tALS_min =3D 12000,
> +             .tAR_min =3D 10000,
> +             .tCEA_max =3D 25000,
> +             .tCEH_min =3D 20000,
> +             .tCH_min =3D 5000,
> +             .tCHZ_max =3D 20000,
> +             .tCLH_min =3D 5000,
> +             .tCLR_min =3D 10000,
> +             .tCLS_min =3D 12000,
> +             .tCOH_min =3D 0,
> +             .tCS_min =3D 20000,
> +             .tDH_min =3D 5000,
> +             .tDS_min =3D 12000,
> +             .tFEAT_max =3D 1000000,
> +             .tIR_min =3D 0,
> +             .tITC_max =3D 1000000,
> +             .tRC_min =3D 25000,
> +             .tREA_max =3D 20000,
> +             .tREH_min =3D 10000,
> +             .tRHOH_min =3D 25000,
> +             .tRHW_min =3D 30000,
> +             .tRHZ_max =3D 60000,
> +             .tRLOH_min =3D 5000,
> +             .tRP_min =3D 12000,
> +             .tRR_min =3D 20000,
> +             .tRST_max =3D 500000000,
> +             .tWB_max =3D 100000,
> +             .tWC_min =3D 25000,
> +             .tWH_min =3D 10000,
> +             .tWHR_min =3D 60000,
> +             .tWP_min =3D 12000,
> +             .tWW_min =3D 100000,
> +     }
> +};
> +
> +
>  static int toshiba_nand_benand_read_eccstatus_op(struct nand_chip
> *chip, u8 *buf)
>  {
> @@ -194,6 +240,13 @@ static void toshiba_nand_decode_id(struct
> nand_chip *chip) }
>  }
>
> +static int th58nvg2s3hbai4_init_data_interface(struct nand_chip

I renamed the hook so the helper should be
th58..._choose_data_interface()

> *chip) +{
> +     chip->data_interface =3D th58nvg2s3hbai4_timings;

this data interface should be tested against the controller's
capabilities and return an error otherwise.

Please check that, in case of error (simulate it) it fallbacks to mode
0 and does not fail silently.

> +
> +     return 0;
> +}
> +
>  static int tc58teg5dclta00_init(struct nand_chip *chip)
>  {
>       struct mtd_info *mtd =3D nand_to_mtd(chip);
> @@ -205,6 +258,12 @@ static int tc58teg5dclta00_init(struct nand_chip
> *chip) return 0;
>  }
>
> +static int th58nvg2s3hbai4_init(struct nand_chip *chip)
> +{
> +     chip->ops.init_data_interface =3D
> th58nvg2s3hbai4_init_data_interface;
> +     return 0;
> +}
> +
>  static int toshiba_nand_init(struct nand_chip *chip)
>  {
>       if (nand_is_slc(chip))
> @@ -217,6 +276,8 @@ static int toshiba_nand_init(struct nand_chip
> *chip)
>       if (!strcmp("TC58TEG5DCLTA00", chip->parameters.model))
>               tc58teg5dclta00_init(chip);
> +     if (!strncmp("TH58NVG2S3HBAI4", chip->parameters.model, 15))
> +             th58nvg2s3hbai4_init(chip);
>
>       return 0;
>  }




Thanks,
Miqu=E8l

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
