Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B1A13D885
	for <lists+linux-mtd@lfdr.de>; Thu, 16 Jan 2020 12:03:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XVkprNNMhcx4UlPhpQ0P2HVqXc/5K1g89dMYklpgSQI=; b=nGrXva+u/eJ1KV
	FkMad4KtenQLrFhDs+WNN1QtVX/Q+frt5bBdRVI5WXh0WZlzv3+reQKVWXKbx69fFeMmu2SaKqOEp
	O+1mrt7zNBQ/gd+Z1KiVu+gYfHDoirrJees0UYq4iDLJ9pKlVraqy/VPoKRFN4TxYETjO+ZWS7mMT
	pC1kuIggtBXDpL1umUwZXO7jRA38BnSZg3e6+dF2QrBzMji3cMYP8Ql/nJAVOi+G3Rb7J6jb6ESzC
	VQ7TORAO1sSvg4RNaF4SorckTx96LNQefX6MiYwGh3+lB9fXKq9kbog3bY40PQHUqsBEmnaNt8uST
	zg2v1l0kzNvt8Z+tTswQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is2wP-00020C-7l; Thu, 16 Jan 2020 11:03:57 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is2wD-0001yv-4A
 for linux-mtd@lists.infradead.org; Thu, 16 Jan 2020 11:03:49 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: IivA98Bhg2m3qL8LCCuh1WhPm/0EPhK64tzN0snAv3PoE17Nq4RE1Hu0o8LT8RtxSZYHjQVhrR
 2gu2czXCx2KolzFe/wK7wH81T+SXn8D74kobVEU5WCxzRyH4dFe7BnyGmunFLhotVUx5hExWwz
 +b5KNu9AkC1wDO8tyHzUIrHHy/hE2xk+NjzXSJOjYJoHVabBEM1K3pSMpZHi0M6f+YEZW7kmpd
 mwX7e6CkS+0gzw+tAnT8wlQ0Sr4sSMN6nqDDQxK9bkWzT+7qFn6I7KvV5AchFqBwoJBYVsh6fk
 jSk=
X-IronPort-AV: E=Sophos;i="5.70,326,1574146800"; d="scan'208";a="62134877"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 16 Jan 2020 04:03:42 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 16 Jan 2020 04:03:41 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 16 Jan 2020 04:03:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HiFHuagGAy7FtooMDvIgEtxwHRA/oQWXk5QZQqzS/reWdMGfu514J7oUgq8nyyExGb4MUQw2t5BRkfMOoTVf8OYWHKVS7hBoyeaFDIRcMYVxNaY3EFzM5m9KRBLCAx83xO0RvNb0t8la8yHUr6XMTQL51dBmDBrfFSSSLk7sn+Bxwn6LtOIVMtJVlxhZ8rz2jz21HiTvhCE5F9OPp5DuEAOjDs3N6aVyYW6b9676nKGG/f5uGHaB8fucOZqa7XlgoIPpRAh/W3uCRP34j6rgSN/hbvQpif22fEY3eP5pR9ib2dRe4ao3fhQ7+I2a2RpxtUT7yHieLOd4tJAEO/4E/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R3E1Uf9YjpEnzOQ9wdQczo9eB2VUC7vh8nelDkZGBao=;
 b=GnIPmMNE0Tyjv3l3JhLfbaKXo2q2ncLeFPrzr2247I7jt3iSqzAnpIDkz2WBY7gsov/kJdVd2gdGvCiCDnwe1m1kpjMT/YzUkxLsGgqVmtZP57T9Th1xLU0px488oWv2jgjf5IYPeqF6OnBF4DKfSec42CpsbzLkSH0XusxeWns54zCXuxQqMRKRxbF6k3H5t5VNZHG2Ktx7MIYSoAkufCM5dbY/hED6ZO2qV4VOW8oO59olwRA+U0Bne9LHV5HqnlQpyZCl5FfWx1TrKEVPYbvDZDzLz5dCQL4mDsSRMpiJZtHARfi3emQ2OCI1T28woLZiJU0zTj+36lk9xy2e7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R3E1Uf9YjpEnzOQ9wdQczo9eB2VUC7vh8nelDkZGBao=;
 b=hJjWMRHiJTck5kL/p/NBr6C59F0l0dzpNzCwp2kXIRGWx769sS0QmOgyfX8zP+XMvicifIAXJyc/49HlENryujJG5g/6wZAtOooBUHmelE5pl+3fCI4pyPZv7wFfHr3k9qcWUV7xuvjQ/tPv3xsF1yp6+LsneXbldLxPwAYSEcs=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3808.namprd11.prod.outlook.com (20.178.254.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.11; Thu, 16 Jan 2020 11:03:40 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::71cc:a5d4:8e1a:198b]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::71cc:a5d4:8e1a:198b%7]) with mapi id 15.20.2623.018; Thu, 16 Jan 2020
 11:03:40 +0000
From: <Tudor.Ambarus@microchip.com>
To: <john.garry@huawei.com>
Subject: Re: [PATCH v2 1/3] mtd: spi-nor: hisi-sfc: Try to provide some
 clarity on which SFC we are
Thread-Topic: [PATCH v2 1/3] mtd: spi-nor: hisi-sfc: Try to provide some
 clarity on which SFC we are
Thread-Index: AQHVzFycMbrvA6TGIEC+fP+g3Q+2Jw==
Date: Thu, 16 Jan 2020 11:03:40 +0000
Message-ID: <38021504.DDLjaa3fGf@localhost.localdomain>
References: <1575900490-74467-1-git-send-email-john.garry@huawei.com>
 <1575900490-74467-2-git-send-email-john.garry@huawei.com>
In-Reply-To: <1575900490-74467-2-git-send-email-john.garry@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5f70c070-febc-4589-8745-08d79a73be9f
x-ms-traffictypediagnostic: MN2PR11MB3808:
x-microsoft-antispam-prvs: <MN2PR11MB38089458871684B7ADB6D602F0360@MN2PR11MB3808.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 02843AA9E0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(376002)(346002)(39860400002)(396003)(136003)(199004)(189003)(91956017)(76116006)(6916009)(478600001)(66946007)(53546011)(66556008)(6506007)(64756008)(66476007)(66446008)(4326008)(26005)(2906002)(4744005)(186003)(8936002)(9686003)(6512007)(316002)(7416002)(86362001)(71200400001)(54906003)(5660300002)(8676002)(81166006)(81156014)(6486002)(39026012);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3808;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NbufhORklvftI0vHFiTNjMFfo8O/22pN+WFjvgktoInzYfRp5ou7bPtWldhonQ89HVIRntyOr/OM8unuwE3kMr5n2nKSU9qOWFREGgGnfuzgNpoGZeUO0M7qnxxczg8f8PutYS4H0br3x/ruekeSBEqZnR8rteGSPTv1OJCH+yYWde4EZRn0Ef2B5UATwoz9K0ej8rnW42UyMkGCLLde7RKrexs57X6rACvCDcR6TQI6bHv0//vzFzLQt7Q9f3XUo86k/jZ2Hyy7nhZyeWh7IDVpylm8GHn/fYw3IlpnFp3fT2nEVSzCQHdHiaseW2d/nDPWRN8KNcrPkXOwVju5sUjyoVjdosIFv/ViaZK9X1zJcOiq1uROJ9ORtl9XFYNP1a/gyqwWgO+tNYd8nqLxjeA7sPetBXNZHfyqSjw8SD5DRUDv7AyOGh0hdCAxOtc3W99rZ6lkldV6C7yzc/mdul3otFNu/cq0Hl92kvPHST4Xb1PzTkug0OEJPT3vF9d/
x-ms-exchange-transport-forked: True
Content-ID: <62518802EC87D140AEBB9D9B17F20A25@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f70c070-febc-4589-8745-08d79a73be9f
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2020 11:03:40.5287 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3J4gtj7ECzr79SobIuGMZYDpshH+sk/E9ZCTMC1oPJwYjrb4EpttjOpBUl2JWcx2L0NfQyjEKHweQV1iqR+OWcTxRLuOiQmsR7ly0IpvQrM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3808
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_030345_177121_B3D587E9 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: fengsheng5@huawei.com, linux-kernel@vger.kernel.org,
 chenxiang66@hisilicon.com, linuxarm@huawei.com, linux-spi@vger.kernel.org,
 marek.vasut@gmail.com, broonie@kernel.org, linux-mtd@lists.infradead.org,
 xuejiancheng@hisilicon.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Monday, December 9, 2019 4:08:08 PM EET John Garry wrote:
> The driver is for the HiSilicon FMC (Flash Memory Controller), which
> supports SPI NOR in addition other memory technologies, like SPI NAND.
> 
> Indeed, the naming in the driver is a little inappropriate, especially
> considering that there is already another HiSilicon SPI NOR flash
> controller (which I believe the FMC is derived from).
> 
> Since we now want to provide software support for this other HiSilicon
> controller, update code comments to at least try to make it clear that
> this driver is for the FMC.
> 
> Signed-off-by: John Garry <john.garry@huawei.com>
> ---
>  drivers/mtd/spi-nor/Kconfig    | 4 ++--
>  drivers/mtd/spi-nor/hisi-sfc.c | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 

Applied to spi-nor/next.

Thanks,
ta


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
