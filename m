Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB59129F95
	for <lists+linux-mtd@lfdr.de>; Tue, 24 Dec 2019 10:04:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=powNQIYwdAu60WW7efHM/6SluYqemzBsyqoM4AOG3Uc=; b=deGs115o79v7ae
	tNFEsmfS6rsvZ4UVA/bTEIXoGfMPSbj0wHo879lhPEEQW+aZ0uDw5YUalDrTaLIPFpEto4CFeLqIm
	jSx9sNUz4KJnsvOfIEltePqLJBQLzC63LWV/tDTNr7i0NodEGBBqDnpEu8VL4vW2UrQHlILvw29Ym
	TNwFGZSPSPugjNM1IS/bBWra+14t+14bQy6iQeF7Ze1iwPUOAZRJhTn5Z+OXXFhtC3DXsQfqF8F1X
	DiM59x0Bm3s2dpJAzBrNWu7jxzPTk9to5K7JzZeFc8Wu/2bef45YHSIOWczog7/pI+PBGae9SUHOr
	ZfSf1k/BRs2dhZQvK9Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijg7R-0001Tc-Lo; Tue, 24 Dec 2019 09:04:45 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijg7F-0001T5-3j
 for linux-mtd@lists.infradead.org; Tue, 24 Dec 2019 09:04:36 +0000
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
IronPort-SDR: Azk9pNy7+pAwE6tuvyPtJI/gOC5xN7Bn9NhLYcczex0XChUqRpwlepaJtytDYoZWGpYzH1fJmB
 QnFTjBNgCwGBkSXfurpT16m0uYOeZfr030/hfN5izeLssYv20lGBAumRt+aicrN4EulkbYDpbM
 R8Yn8EWX+8JGWuUI16YbobLMDu+Pmlhn5ES1k4Eh1OT6IxtptDXy80DevxkCWI6K7qipWsN/FL
 iwoUMEhDccVEYFHKN+Z7WZI+L+fLMFBh/XX2i7+KC5bVNF+FX4jAs9Vwp2OCvGeak+1gaC/PSl
 cIA=
X-IronPort-AV: E=Sophos;i="5.69,351,1571727600"; d="scan'208";a="60026750"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Dec 2019 02:04:31 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 24 Dec 2019 02:04:26 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 24 Dec 2019 02:04:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FRuHTmQvnGj8PoOfZkrTy7ySKqtrlDhzfRmkQCHUzlxXYMEuoownIeP144aUwfNOlQmkO0MC1sga1GJ1EC52CZh8kfCTsICcJwwmc7Urp5qrhkKZLxNhyOA5eXpABVwx6/rQk4HkAMD3C7L2W6vt6G/wqCqM0KbRZfuaFhuAA+eweUzM7ASQI0mA9L+EkRNmu7/PPCg5Qb6kyBJsMquD+GmXiKChoWdnswoOblt8vTJphpDj/fBBTph7anI8jX1I5b2eAOV0MKPNMQxh+Pgj82vmEL2XQ62e7FssUJ8y55fjr74TujfQb+bDl+21utJdQa4P5s2D3G1rZbl75JZc5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uSmV1U794QPSmuV3qyuFoYps4lY38LubL2oF4pLtrCQ=;
 b=Ee7SN4MMWFV/KblT54Gjf6oP/t3vT7sJehvA5aVV4Sc1jDnnUAxJkOddL1M4FWY02YrUZUC+1VsBIE/+DjBoKs4qnoum4SVLb90ALGHVLvdnl8TL6Ri89XDzATaq40sNN7O9/kXpr0+GstkrvUtoDPMrFyr10nl6BqMTJ/5TVd8m7gjx4yMt93DUWW6LDNsEScBIS3/C1l91XYFg9H4n5j3yA+dOF/jKaHGpi+8PhAgj/F63ex3e28hw5YUVC7xGhCNtuDJQ1vZ55IHyHr+4p6w9T3e2SKVvmzlQZu6LdoOzrv9aqS5hrRR8OMRvWX2zoHL4k1+hfmPIcKZ8ZLrOfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uSmV1U794QPSmuV3qyuFoYps4lY38LubL2oF4pLtrCQ=;
 b=Ghn3k6FOe1Fz46OnrUITda/E/N7q1Utxkcy7P/hSauwKDR9DiKpjbiOEAkgMq/12Ed7+d8w/qVRqCqCV+jlf6ThNJOEIgQooP7nlnv8RxUjqPSy34aWRswW3RSPshYSF0gRJ1eWpEfseBXpQz6QdinWsW/Jp3iowcZSWPcbKUTY=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3631.namprd11.prod.outlook.com (20.178.251.210) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.13; Tue, 24 Dec 2019 09:04:25 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::71cc:a5d4:8e1a:198b]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::71cc:a5d4:8e1a:198b%7]) with mapi id 15.20.2559.017; Tue, 24 Dec 2019
 09:04:25 +0000
From: <Tudor.Ambarus@microchip.com>
To: <jbrunet@baylibre.com>, <marek.vasut@gmail.com>
Subject: Re: [PATCH] mtd: spi-nor: add Gigadevice gd25lq128d support
Thread-Topic: [PATCH] mtd: spi-nor: add Gigadevice gd25lq128d support
Thread-Index: AQHVqqaf0NTi8VmO30ee0ZnSi46cfqfJHPgA
Date: Tue, 24 Dec 2019 09:04:25 +0000
Message-ID: <9622e024-964f-4fb1-4d27-de3b3aa676b6@microchip.com>
References: <20191204132713.6195-1-jbrunet@baylibre.com>
In-Reply-To: <20191204132713.6195-1-jbrunet@baylibre.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [86.122.210.80]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d95d167f-6857-4c99-0c15-08d78850467c
x-ms-traffictypediagnostic: MN2PR11MB3631:
x-microsoft-antispam-prvs: <MN2PR11MB36310B85E2A5C2B686F7EB2FF0290@MN2PR11MB3631.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:972;
x-forefront-prvs: 0261CCEEDF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(366004)(376002)(346002)(136003)(199004)(189003)(36756003)(71200400001)(26005)(6486002)(66946007)(66476007)(66556008)(64756008)(66446008)(186003)(91956017)(76116006)(31686004)(966005)(316002)(54906003)(110136005)(2906002)(5660300002)(478600001)(4744005)(4326008)(53546011)(6506007)(2616005)(86362001)(81156014)(81166006)(8936002)(8676002)(6512007)(31696002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3631;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: G5h6HSTxWS0Hdvuex3m3q2vnQMU2ZIl+iTsi3T7GP5JD5bGbMozF900lgjMKbsAWvY+ed+UwOGkqdC0ett3XehdBV+y2zM+hXIjTjKDPj7Vl89k111L4t3TISnSUWCLqvya+0EmAEn8U/gM/SmF8/MXChVCRdiAcGF2Mo3h3oxI0vPELvmrIQpR1EGsDO15zhvCeK2fUjBuHg/2X6UE3Hl/+BGDYfvEaYd7Wj02Cy+dXOsd/LMmakIyzAEu1GtmvWK8AzoM6tmrqy4xGHRV6rGPj4MysNesr36JPPj7MtXYwvJBvvrK2tgh+LH1D0BHT98D3G3atty7pbp4efd3b5G58PvX/bYh9/J2eok2ALyn2txQ+ebeAPhLr1JigbPbO7jP8AZOOv7/Y4FDndVSf+hQf6VGPSS64/Yu5oAv31F4BFv/RRfG5gIfshuCGVRixTiNuaYqiUCjbT/gNGMe0EKMS6DQV/xGejJX4JyJMVvw=
x-ms-exchange-transport-forked: True
Content-ID: <52E8243867568D4C81343FA494EC366D@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d95d167f-6857-4c99-0c15-08d78850467c
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Dec 2019 09:04:25.5291 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QVUq35JQ0fIj5KX6WbIDI9FWkA5WqbyOm6KfqMTAuq3FaL7x1x+SIsATl6qlBJB+vG6zVpUX5+8e6lV7QGmYNfXLdYggLJ6vVnCdsz/KSf4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3631
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_010434_785522_B95BE3A7 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 12/4/19 3:27 PM, Jerome Brunet wrote:
> Tested on the Amlogic aml-libretech-pc platform which does not support
> dual or quad modes
> 
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
> ---
> 
>  Datasheet is available here:
>  http://www.elm-tech.com/en/products/spi-flash-memory/gd25lq128/gd25lq128.pdf
> 
>  drivers/mtd/spi-nor/spi-nor.c | 5 +++++
>  1 file changed, 5 insertions(+)

Patch applied, thanks.
ta
______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
