Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7858220080A
	for <lists+linux-mtd@lfdr.de>; Fri, 19 Jun 2020 13:47:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E+EXnDpipE+wlNIwi2Q+vC8sN5I6WvHtf9hjjmBJ9k8=; b=hQCudAmsEQdMdB
	sKw0xCGToEHzV0fuvXRT3ycgxsV+QM5ImiSdnhpCWrzjYACDTFPhZO737NycUSE7S2qN2pAYoJWzm
	P1zJKzeYSK24kYr5REDY/UzLQP7Olh/4CiT5Bz9G86k8K5wWmOAY9pgiSbVAGFJxZ0Ct5H3CW5ogW
	PZf/H+kA3mH1neLcjHOnKy2+PwN86qJ3fvrSeg4EivDkAzYUPjItUTsfC5MV+9KNbGH79M+trvR5w
	cXmvzP30QrL/lzi9nhrC8R4G5mch/ICh0zJM4teRaFpToHwOZO0dK7y/ur6Z+OmTf8ynINreX0+/m
	60Vv3QnsutYFFhDiPq9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmFUL-0002uS-Vm; Fri, 19 Jun 2020 11:47:18 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmFUF-0002tu-G5
 for linux-mtd@lists.infradead.org; Fri, 19 Jun 2020 11:47:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592567231; x=1624103231;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=FdXIsNa4by8yUsM1/IoyyWruXeZ88glA39KvNKhaFns=;
 b=EWVe5VSygoTq8jGkptSbd7aABPi7W6u8MBDKoqbiKlH6wqhUNJNwhbom
 txdGaFwHFctkcOb2FhysG5v8OwM6+phGx7lpVoDLC4EmxQ94nnrgiTm/V
 0NtmhowewNb7063wU2j489zhK6YHlfAcTXmqAs8Z16LUQEjYFyGbdci8X
 ZAPmCJR7Fwo1/6wi4cWqWY6mAW871L+/zNZR6Nmxv7CBfd481bbBAPTPS
 5GhFPv/G7eCFyeNWhBqrhMRRmC38wkGmWI36Qzsuz5qo4ZvS50BsEhoe/
 09v3QKLBaZYxUwWq1ZQ/l2od51GESCA/WyHOtTXeauvCuuYAO/Mf8tFYf w==;
IronPort-SDR: W3ixBXmNdCcrP5dsHkH1tUedMpxay8uQNZxiihezzVHJTLktNMvYzLQXv0Jh9yP8Xgind5MdYI
 JbLCocyofDxmLpr2YWwTTbK5RpTgst7WQie3S2/5inSlLAXeK3I/U6AywUy6OfEFXcT4aS6r3E
 W83SntmXef34QD4aiUbGMo8u3MMtIqWk96ClSrMc+76BGvpNmyzUWlS4CNWh6tFfF5m8+eaBdk
 DgV2G0m3WKQM14r3k1G+3p0d2fN1kWRhzJJoH3MRUmHxo5vbW0ectvmx87okirNa+UBjfo6You
 GNw=
X-IronPort-AV: E=Sophos;i="5.75,255,1589266800"; d="scan'208";a="84300035"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 Jun 2020 04:47:10 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Fri, 19 Jun 2020 04:47:03 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3
 via Frontend Transport; Fri, 19 Jun 2020 04:47:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lZHUTpobFOdU4PPe1GAPJXUMLGQYW+in92BV/RAlEG4f42yinDE2ZNZHus48JGEgjXfbBRiN8preoiq07+lFXOfR1Ebchiy0fA3zpAIdaBsWzvgAHLzSE1FmNSU6rjiw4XR7tsMMfYRa3LjVgxIJtPtYD1DRkC9e7Y8AsbI4PuJBikUdo1YRndlpCYguBskLIL5TTMjYbyj/YBEjx0cqkocbuFaEcEHorMAsH+mjLMsI3w2Dk93XFNM/XU/qmUbM1aumoKfg2H2QRN3MTOpBrA/QvwovAvRjWLu1c839xwUufsB6IaZsLPKJ+8TfraOdFJP8dkKbrBSoL/TpNyyHHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FdXIsNa4by8yUsM1/IoyyWruXeZ88glA39KvNKhaFns=;
 b=iYxvffAmHUtP5NKDcqse+3YXC4qc05SqYzROXK+AhiXRI9APZLFKj5RNKPIcpN4/i15fieeJTQrEzRq6u0Z9E6Xsm3uhqj8G2Qz66ippw+4IevES1Ur44EOw9dDY2dNyz0jV+FRnZLMSfK4EjrU/Evu3tEKTHsJs5sYMclmBk8C4RxhwY8nvZ0UkoHewGRD7Jr0YRB7sCRVsF6Qn+Iv44REATUErUfFapUwsR05+nyleon4ZN2i+KO/7wkb/XHF7svyDOCoVaspA3rpvy8epexGk3zVWxqInq17/1k9OmLKyu52uuC194N2tnd/iUGrch1q7tzrDd85Tj2fjmBcRyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FdXIsNa4by8yUsM1/IoyyWruXeZ88glA39KvNKhaFns=;
 b=CI4Z7C0vVr3EMRosn+FXQhkuQ9gH/uF80h5yK4TxvfGCbSBxPC2Zp4GoDHvo8Bh2keWiloM73DzSxZxOMKu6VlVq1TDoDjZ1Kt+BrhUXSBDFw+EXQkYOkUL9OTBETAGebnUsXq4jN33DHh33ZWznFpMuESNqcJ57qwhqPQ6Jjl8=
Received: from BYAPR11MB2856.namprd11.prod.outlook.com (2603:10b6:a02:bd::11)
 by BYAPR11MB2966.namprd11.prod.outlook.com (2603:10b6:a03:84::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.24; Fri, 19 Jun
 2020 11:47:08 +0000
Received: from BYAPR11MB2856.namprd11.prod.outlook.com
 ([fe80::f1d5:60ca:d163:c1b3]) by BYAPR11MB2856.namprd11.prod.outlook.com
 ([fe80::f1d5:60ca:d163:c1b3%3]) with mapi id 15.20.3109.021; Fri, 19 Jun 2020
 11:47:08 +0000
From: <Tudor.Ambarus@microchip.com>
To: <broonie@kernel.org>, <vigneshr@ti.com>
Subject: Re: [RESEND PATCH v3 0/8] mtd: spi-nor: Move cadence-qaudspi to
 spi-mem framework
Thread-Topic: [RESEND PATCH v3 0/8] mtd: spi-nor: Move cadence-qaudspi to
 spi-mem framework
Thread-Index: AQHWRi9bRsHSVVCOu0SkX6Y85WgKZw==
Date: Fri, 19 Jun 2020 11:47:08 +0000
Message-ID: <0007c019-1ecf-1913-56a7-facffe345b1f@microchip.com>
References: <20200601070444.16923-1-vigneshr@ti.com>
 <20200619105701.GD5396@sirena.org.uk>
In-Reply-To: <20200619105701.GD5396@sirena.org.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=microchip.com;
x-originating-ip: [86.120.239.116]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d1fe5b9e-8f6b-404f-b05e-08d814467f30
x-ms-traffictypediagnostic: BYAPR11MB2966:
x-microsoft-antispam-prvs: <BYAPR11MB296615DC7DFC4717C69256F7F0980@BYAPR11MB2966.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0439571D1D
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FQBlWl1gOkZd9AY7kfPYmfuhTg9k3RE8H6MD4RJYxRQQh+5AKMUuSvlozvCf/0W9ON/RNmjCv4zAnJ6K1yQa8VUNTq0uIaEMKGq6DAT0LURYgvuDVB4bYALarNc4CsVRGqfkunUkmgjGtr9F3Qa5OyJZt8mw3+3YTD/crL8DHblnDuG4ZvsB0QZcLyk6WS+wplsCvutIXK0t+CPBRhSoMZhDaL+OelgRqFh8vZmD7EsLLu2gx14VW2EPUbqNJlzua6i/lw4kbfsCvky2eYOIT6QvVokgqPXwplSbYwyj0Y647sXLDO3FmAePQJCb4Tpj4GiJa77e7mSfJn/ZtYIShNAZ+zG5nK/tjfLC/bruFxF1vzsUePPPPp76nYSiVH3H
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2856.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(39860400002)(376002)(346002)(396003)(366004)(6512007)(6486002)(36756003)(4744005)(478600001)(64756008)(4326008)(66556008)(66476007)(5660300002)(71200400001)(86362001)(110136005)(66946007)(91956017)(66446008)(54906003)(76116006)(31686004)(31696002)(316002)(26005)(53546011)(8936002)(8676002)(7416002)(6506007)(2616005)(2906002)(186003)(43740500002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: rx3QrdgKrEc9NVClEyKAtOSV8Yn6iPB7IET30u6vxGgLbJ+dan+Mv4GMNtVXZINK/RXmCs+TH8vZxZZv/E1E7ZXfcjehSom4cYglCppWO6d1C6AqspDgcxbJaI55Dky7765XIejAczXyp7JlqzCT9n17CFZ9YJY6Xkyug8y7HnNvA3lgAYwoqeCHygKdYYJ2qblhR+FVkfvPJO2nmAb1yMuVwJaq23jcJJVL1D/BKrfPqh/gBbysLoWSHOyF48jcNDOO1CV3EWltTLN/S2nFbUg+o71PFMVm9g8u5sEEd0uInJ2LWsROlvDTzyk5CULYvnu/b7+Z+GdTSU67RFRrhaBWTFlgu1mM9KkP4ghtvgra4vVAmNgSYIc5cYVg2h07SHKEKCDWFQwoUrcK4C0tFwhtAzpb7ewvJmmlb/rNK7BLWqUDnq/mfR6AdAC6SPYiUp7qAipMa41yp29JNvRq/M44FEzbLMmbv3NlRBIn0LI=
x-ms-exchange-transport-forked: True
Content-ID: <3023B7461FBE2F4D88F6002791B3FD9E@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d1fe5b9e-8f6b-404f-b05e-08d814467f30
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2020 11:47:08.5839 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BNwM3+9mQA+goGeqlCYuz0mwCvrYbjOycti8EXl3/Ujuy9Z33rCwgKParMgjpT+/Cv5QZ0mX//MzyDSrnj8afHtzuAzmbWJPfL9ZvSAnNlo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2966
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_044711_849293_1F65E58C 
X-CRM114-Status: UNSURE (   6.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.147.91 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: marex@denx.de, bbrezillon@kernel.org, dinguyen@kernel.org,
 simon.k.r.goldschmidt@gmail.com, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, vadivel.muruganx.ramuthevar@linux.intel.com,
 linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 6/19/20 1:57 PM, Mark Brown wrote:
>> This series is a subset of "[PATCH v12 0/4] spi: cadence-quadspi: Add
>> support for the Cadence QSPI controller" by Ramuthevar,Vadivel MuruganX
>> <vadivel.muruganx.ramuthevar@linux.intel.com> that intended to move
>> cadence-quadspi driver to spi-mem framework
> Are people OK with me applying this to the SPI tree?

There's a small conflict on 8/8 when applying on top of v5.8-rc1. With
that addressed:

Acked-by: Tudor Ambarus <tudor.ambarus@microchip.com>

Would you please provide an immutable tag on top of v5.8-rc1 so that I
can merge back in spi-nor/next?

Cheers,
ta

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
