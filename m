Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9640D9BB8A
	for <lists+linux-mtd@lfdr.de>; Sat, 24 Aug 2019 05:54:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pbKQBuwe5me4Q523WBGsPp0K0GpOFwSSqt/U1Qj7ghE=; b=Ofe4By7c2glP6D
	BHy9IEsWg2XHWPZR5GzeCvvqj9Psw2blx219VMbA4wbhf6EgsBKdAD/Pq0FTM2B0/xx6kyPK+Zr46
	gc3xFQzkxVCwnz2VioX0eRIwSuNwUbEHTj/qODbHG1TEe+gPkq1dpH15ZtbZ6dhih6iCkAyio1m7Z
	4c6DBhn2lCoN5ElQ7XQeWsQ7ksRS8bGhY+9W8/dgWmoTt+K0HQmXP5vd19D4tyJmsrvld/kZ5oUBF
	j8hV4ktmX1AH4A8/ST3OcBumFaUC7dO56YtPYlMxveD3+pGfo0mMIW1Naki6sXobG3/K9q0vW6ZkL
	ZMpNVDv7B8XAyWDYWPvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1N7V-0006s2-0W; Sat, 24 Aug 2019 03:53:41 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1N7C-0006mh-Fp
 for linux-mtd@lists.infradead.org; Sat, 24 Aug 2019 03:53:25 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: hmQtjf2MZcRamiRFLggSxrfPiifiO3MRKwZXJLaTlVBvnJHz4G1uLVUBrTJHYSp6oqfdNXQA4l
 I1CoGgMlf8Yit6m7uEA56qN+EVy95n9dvd6oecaQKjkZmPDQMC5d/WBqOheYccWktQhP+WjCVA
 kfk7LPRxmr+zvEqxKmNXwqfB+d6HOTc/YwV5FLZpdPM9im56ff+jZREP7hnc8ChTP2JdFI3VUv
 QQz16YxzedmSroBhEKr65betzV/BX5sAiNkLWoUmYWgduBIgD+7XxnDzg2K8WqDxPqtiq6Kgrm
 AkQ=
X-IronPort-AV: E=Sophos;i="5.64,423,1559545200"; d="scan'208";a="45455468"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Aug 2019 20:53:17 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 23 Aug 2019 20:53:16 -0700
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 23 Aug 2019 20:53:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fGPf0C6UvAFPBvCtBdVru4Dl/uvTNSNk6dXxuGmK8u8G1bFx2B82A8ttWf9s6oFt5dDAXVe9GOMWN3YNB75rShUeLh9ftcFX4D8/CqylmT39U8BII5B6mLhoGVh4cRSv5PuH08K8F2zHQRcWBJN0cuPjt4HynBNSm5tGuGDQ6cej5biveUoBN+y8OEE8Ky7UTQ+SJvWS+kxMOhUFQueIhFczmBHkL/4ZBavBO9rMLmoyDito5PYqHYLMQ+N+MqPnHDFr7ys8SaLUAIOx40hmDKlAMgCnfghhx0Qft4coVMRed3IQDzgm7N04sg9OsO8GhFhufP6gd+VfTgFcuM0cUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UyKL1h7cMFpaK86NLg6wh/Iwcahh74iIcrSK1sKmCEg=;
 b=N6K8h6rO+nm8A3aiAJ5vKuFFjVTTfGwiu/3T8JOPV7+hHlp7WjurlJzD61g9YVBxj8u05Ebp7zmxKOPbMel0Ps04I2kIYeCL6GGru2sqEOoiDm4dA87UToIus1CGX5XBOMnlHbFueA6W2MEJOZ5AbI8PV1MJclvFeGgtmND8O1bTNRxvcZapC/uJcEfFZTo4qHwd1JLyO+parm7/U/584BcQMwotSBMvklZyG7zfV3u7mUzM7s9lNzg9zpK+BQgbkV1ew9yxkfyRlz/IYoiDdALrrO8Z/Uqc7H6H/b7MM91pD35y5leuZpM6/h6nEu5emBoBUMyzUNdUamkcBHj8LA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UyKL1h7cMFpaK86NLg6wh/Iwcahh74iIcrSK1sKmCEg=;
 b=YArdq8BCw8ynGY59qq1f3eYO2gnvO9OaHwnGICPmJljci2d0sYkwUveOhoGIeiIT1AHdjF/3gJkyG1t44FLCKC2xs1xfNbms6fjHYdk+e8rvH8ScWgSBdsDiQlYPIBVodFPaRBYFMO9VkqYbN+E1ZqXpwVbCSknwyVDSmgUGP10=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3998.namprd11.prod.outlook.com (10.255.181.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Sat, 24 Aug 2019 03:53:13 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5%7]) with mapi id 15.20.2178.020; Sat, 24 Aug 2019
 03:53:13 +0000
From: <Tudor.Ambarus@microchip.com>
To: <marek.vasut@gmail.com>, <vigneshr@ti.com>,
 <boris.brezillon@collabora.com>, <miquel.raynal@bootlin.com>,
 <richard@nod.at>, <linux-mtd@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 4/5] mtd: spi-nor: Move clear_sr_bp() to 'struct
 spi_nor_flash_parameter'
Thread-Topic: [PATCH 4/5] mtd: spi-nor: Move clear_sr_bp() to 'struct
 spi_nor_flash_parameter'
Thread-Index: AQHVWcrvkrm6wR4a/Ey8Wo3jUNa/D6cJq0iA
Date: Sat, 24 Aug 2019 03:53:13 +0000
Message-ID: <03c88dab-4394-4dfd-98ce-34988cdf686b@microchip.com>
References: <20190823155325.13459-1-tudor.ambarus@microchip.com>
 <20190823155325.13459-5-tudor.ambarus@microchip.com>
In-Reply-To: <20190823155325.13459-5-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR07CA0292.eurprd07.prod.outlook.com
 (2603:10a6:800:130::20) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [86.127.53.184]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5acb0848-b26c-4933-0b04-08d728469640
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR11MB3998; 
x-ms-traffictypediagnostic: MN2PR11MB3998:
x-microsoft-antispam-prvs: <MN2PR11MB3998539A7E9C489279295827F0A70@MN2PR11MB3998.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 0139052FDB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(39860400002)(136003)(396003)(366004)(199004)(189003)(6246003)(229853002)(3846002)(31696002)(6506007)(26005)(6116002)(478600001)(102836004)(316002)(66476007)(110136005)(6436002)(66946007)(36756003)(31686004)(6486002)(64756008)(53936002)(8936002)(14454004)(256004)(66446008)(66556008)(76176011)(52116002)(6512007)(86362001)(71200400001)(71190400001)(81166006)(8676002)(305945005)(7736002)(11346002)(5660300002)(558084003)(476003)(2616005)(386003)(99286004)(53546011)(2501003)(2201001)(66066001)(25786009)(486006)(81156014)(446003)(2906002)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3998;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 1nKmDNxaiWmRYqkjluWmKSA8qFUTtE47VVpukUK7D2FeduXNwCCm/FEjoW0HpfByQPEUEYTgwinw+KKQFKoZNpQ/jbhh0b34i6Jpi+nefYVxi5tPH1DD3qEjvG8yzkvidRobu36MHjGpduxhYT4XTqLSsMq/gJ7E4jY9VFViYlQJ9YYsep3f2toRbTQq3tPJ5QvB+Kqwzja1Bp0aB+kZ5ZZlsqGC03mAT50wNbiN0k+AtfDSZn+PA7hLqaLMuTElVTUz4X1vDDWfwWJog+zG92QFaHiQCxt0psGRqfjJd/Q9Iyn8I4e/NtTSCioxO6CtRhZQCdk0BWwXgWSfgNW1tfSVRsLIv7NQirxEBbb7QgqRasX2zXGMpfcDKLTSIkBa1lOU/CMQQWrAcBUItipASGbYwN18+snY38Ll7028QN0=
x-ms-exchange-transport-forked: True
Content-ID: <7298CCAF410ED3429B43339A9E76FE2A@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5acb0848-b26c-4933-0b04-08d728469640
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2019 03:53:13.2893 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZY9k9eEwbbbB0UldsaTx/hz+mWucgclxIViqUP6wnPupkIQjpbJrGQdObON+dL0rtAor9+iaUsLk11Q0EGT+CzMQiNlNP7XzBLlZZWfCQ7Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3998
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_205322_615157_4E4A36A4 
X-CRM114-Status: UNSURE (   4.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 08/23/2019 06:53 PM, Tudor Ambarus - M18064 wrote:
> +	 * configuration register Quad Enable bit is one, only the the
								^duplication
______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
