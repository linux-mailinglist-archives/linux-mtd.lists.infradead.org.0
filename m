Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2FC1BB8F3
	for <lists+linux-mtd@lfdr.de>; Tue, 28 Apr 2020 10:39:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Brpe3vb1pV83KKb8slWDQIs5v0LaecvQr1LnB+E32Tc=; b=PkzCf0/QdbqjJc
	lTDDsW2FzZZbiQ5iBY2DVeXMgX11UerTozve5xFBsr2y4zz5vGf1zGvdv08rhxRbgT9CMcDNhguEE
	kxbTShOdijgig9iRIkOn+JpsiAswM5P9GvxFdvpL82+KWST2bm/4T3HJJQByDcEsnkYCVOAmleGMR
	Hs/eojit15Xd7CgoX4T3mGvBnHTDylLw7UYdte2yHPLJrT0Y9UTE/foDNdcq1X/H2A/j4z8JKiryv
	r+iQ6LMiABcUAfFYl5AUdbrMj06I2oVSCNgGoEnhJFDBMZTtGTs46G6q1jgjcFQVZUJzI7j5CLVLu
	pNZUeDZID6Mt/qHQo/og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTLm5-0001Vk-No; Tue, 28 Apr 2020 08:39:29 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTLlu-0001VF-6D
 for linux-mtd@lists.infradead.org; Tue, 28 Apr 2020 08:39:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1588063159; x=1619599159;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=9mAoBKiiXAITBhmOXBBYXo/woQKF+aJ9zyza5eFJtUo=;
 b=v1Rg1TvIFLw9BQrEKwYJPsWTQ5ouo1/vq0a06vVl5WK6+9c3fsc+siSy
 59B5VoaekngmlTH7ocpvv6CpJM5yniw5zl7nCmF9poqreBZcAKq3TCusZ
 JnbmT3VhrSJEgeR91plr9Omk2liE1aq6v0nyyFdgWo03KwXXOF5A8jxdF
 s2jzUIeargR0zIUUatfI0SqB/ZEmUGwsNZ/LuJHOFEGXJDN96RZrC0VUc
 6z7VIvY5A3mHkF87jN8yyiui2fNQtySajb5TVVUxAhNmlOEOq1OuFUy6S
 KvOwG0STFsqCCVJIGBruq4O0dsry3OGIu/wHCkRjbSwrTgbuRDSi7JlOm A==;
IronPort-SDR: 16fMfTBLvV/IwIfnHlANox+sJKLsHaMsFmkNs0EF6jyBZU0FeRbbIqNrFksr6PMMh0lxocecxB
 4+f+c9ZJ6iz3sPbCJX0He9bH3OaruPnjGs+u6hDW8cjhL93rbewfV3EnWvz/trTOtyZPGxFKK7
 Efi3SKLvigq2k7ginCBr4TVsCaWb+PVXX1oyYN5kSxXwIpjf6ltHN/Mw6wJPnQJ4u++umrP4Gz
 hl1SUF/wnW7A3BQHOgDBVgIdj6EW1EwZ4udvLAvrrhX8SEaa1QN0SmpFPC7mZ5R+HnQkbLV4b0
 16E=
X-IronPort-AV: E=Sophos;i="5.73,327,1583218800"; d="scan'208";a="74071085"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 28 Apr 2020 01:39:18 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 28 Apr 2020 01:39:16 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 28 Apr 2020 01:39:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KmEb545VzcUsIWAtCh4COyuzQY/0orVnR708Sxwsy90W6cKJkwFeoguJAnKsv10qHhnmBDrt3gXi/yIgP6EnoLMv4Tkb6EdPix97+5xZsNeAdJ6zRhDQZs7Vvf/MEOhI4vGf3tf66xcCSBaAsjdUgGNNU2NoDLvIpCDvY5qzd1fVwjDD3LsURuIYOkV7le4NXlibjIivmt5mXq0KnN+ETsiu+ySPSN3jhv2sw1ym0b17GlZEvgKLJCkW7nfOwgLw4mGRZZ2aGr9BaoAiWCDeJ0OmPe8gORLEhczdha4Zzcub7tzRFR/7svnpBrL/3H8dQbKEWLYWdpzBYpWsHAVXFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BlV3lYmdUUx/oyLOR8dP0j1reOVjjNKvsOhtsI9LIAk=;
 b=C2ah7z15z0r0P+x+aLsT+fHigLzaBogvHcLJYUdGdzj4sQzvqdv/o8EhrOezzQvTjJ9fpLiTbzTFR5teIc9XjbAsOrW4uH1zaYpO8mBpa6LSJ759gyXJiGqChWUBtX/F+SZw9twkDagAPo+tdrJDrtKEHbT1dEBgdWF/ubRoeDB1JgYvg/VCIvmg64u4g8z0GMCpae0W5/Qv3VX9ZiVlxx+8oQZ9IUrrj3dbT/k/4EJGlNGmQnU7NUzO50fmqZRbNoMx77QvzIf4NIYBqo+nH1tdo0UVhpAAsMa8+MS3mDLej1t/J9wG7g8/lGGCCth4Lix+uFQB0HKUO2ZaVpz47Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BlV3lYmdUUx/oyLOR8dP0j1reOVjjNKvsOhtsI9LIAk=;
 b=ffnoH1T2zq5GAs7RtOOWjlwh3omhhx6AiDoj2jmd57LfQjLr0eEdwAuFue14dTLns+bxwF0xGGoN6j8m97nbTAKLougqXGLCpjiWLDrmQg83lMNdjL558ht8wjxTdq30+ojJj9qcLCcrdcLIVBvQLVjhzMZ+hFnAUbO0sMIj6KQ=
Received: from BY5PR11MB4419.namprd11.prod.outlook.com (2603:10b6:a03:1c8::13)
 by BY5PR11MB4354.namprd11.prod.outlook.com (2603:10b6:a03:1cb::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Tue, 28 Apr
 2020 08:39:15 +0000
Received: from BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536]) by BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536%7]) with mapi id 15.20.2937.023; Tue, 28 Apr 2020
 08:39:15 +0000
From: <Tudor.Ambarus@microchip.com>
To: <linux-mtd@lists.infradead.org>
Subject: Re: [PATCH v2 0/2] mtd: spi-nor: macronix: Add support for
 mx25l512/mx25u512
Thread-Topic: [PATCH v2 0/2] mtd: spi-nor: macronix: Add support for
 mx25l512/mx25u512
Thread-Index: AQHWHTh/VSG0leWZk0SQc8D/btymog==
Date: Tue, 28 Apr 2020 08:39:15 +0000
Message-ID: <2988068.fH3nZIc59V@192.168.0.120>
References: <1587631123-25474-1-git-send-email-masonccyang@mxic.com.tw>
In-Reply-To: <1587631123-25474-1-git-send-email-masonccyang@mxic.com.tw>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=microchip.com;
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 04ef1e79-88ce-4b9b-d604-08d7eb4fa24d
x-ms-traffictypediagnostic: BY5PR11MB4354:
x-microsoft-antispam-prvs: <BY5PR11MB435443C9DD9930CAA6980631F0AC0@BY5PR11MB4354.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-forefront-prvs: 0387D64A71
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4419.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(366004)(136003)(396003)(346002)(376002)(26005)(5660300002)(8676002)(478600001)(81156014)(14286002)(6486002)(9686003)(54906003)(4326008)(6512007)(71200400001)(6916009)(6506007)(53546011)(2906002)(4744005)(8936002)(86362001)(64756008)(66446008)(66556008)(66476007)(186003)(66946007)(316002)(76116006)(39026012);
 DIR:OUT; SFP:1101; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YCzMIdP/kHoPafwUIsp1QhBHNMPww6RauKajl6bRTIDpl8b6pEGjdibky7BIOCrU6NoFYuxKKQ1ZqqymvQ5ZLff5/suNhiYBqgMchGnXalOwa256E9MqwlZnKCfkSPZqc/+gqpnzDSZeqJ3BqvaisQzLC0IxG9dQFYgekec5fxXU8GjKuQbzoYmn897vdv+qW22snjTYh7anHl0bkbtqE6+Sbdi3ez04C+mFsFBjDubx0DcoxJG7JOHPUEXnSwHYw7164FVvs0SpNAzJDq2YFqnoTCtiRDkt43ffT8fAZD5MDBywZht3fHACjr86Cnda4XPBJdg26PER7MgVZ0d33BkD0COFW119yz1zu53mY9PCJMzi4yLGmd1r/N5CL+wS7fUP8Ejx+g/fkBdpSZLBDDi5zP+qGx/Zyp/Qgf4rR8iaAqbeUx0VFVRexwRRCOzFSpfD0u/8bkDqL3YRSM1HCB9DrCTVVgHjaMk3Ds8PohjciSvlDez8ezWEJ0zGXW46
x-ms-exchange-antispam-messagedata: h2ZsEwd/vj2T7vvE0uGLI+F3YwJjkVIpY/zeFXWHj+Fxd//teFhQdGnlwC6KCOO6wCJp5FA/SkiKyZx+6l6eT+WibCxAXjMCNCjEg0oXZFrGJ1FjF0INioEryRIWN8/xqYyFUStdAn7i/LiA9j5oterhK1qsIqA6FrzvUfZTaXoiiZwrW2GXM8msSgQhs90UWvTLTKMR2Fr0SSyU35j6aVVECPtoKPgkRutSybGv02KhmAcF4FqH2RjtRiFuBPAxuramyzOa024/O15bpatiQnqSJVrzaz+EKMBilMgUvCXPRwaEOPjV7XpxU+8ngN5LsinlWOx2u7kFRHjqQl8MoG+Jld4WXWLt/lpFoo0laNbOr3C48GGpHEwoi0ECBsPH0Bg2/iDzpWfdG251Lsmgryr1KwZWAUiveOEOZJCE1qfjOyQizJh0XcIU9nJE2CXneTE4KE/L3/uoqZ8BzBUc9quulCBwH+QCgzJoyTJ5aEUIYii+PTBKUBApxLF9Pa2u/HOOvVqt6RtP+TbV4KCcXCjfgmB2LshuJEMthckh8MGbclIbLBA+KKGt10XNlQ/iXPkd6pZ4AnGoUfJ1V9v0NPy2WZVcvWFXw+j+/UvZ5bFdRKl0Jr+wGmdjDzC4i39uyORAG5AK08/SI5oOEt2Fl4Le5LmSgyqX7agdev7Om7iQb+LDFaY3MBNRew0/PwHXHQe/p8zUuIbIAPuYLZ9J6RFdgtlqO8K4R5ENqjUwWTKmKiFCqWRyXHeDAVn9f/EO3hJgLe+gmiPeZHvG02YbELE2Q4ozJ8e1nq35qFT6hno=
x-ms-exchange-transport-forked: True
Content-ID: <E2FB5D15A8DC23429EA6A2281603C4B6@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 04ef1e79-88ce-4b9b-d604-08d7eb4fa24d
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2020 08:39:15.1929 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dWKE9WUK8rnD4q1DPDFyTTYiWLwbm9MGS6lN7w0NuJB8pUTXDeTwOlTDRAeuFeQUNgYDEq3gpI9DoMphilXWHBJ85F5TehERdpMFya+QK9A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4354
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_013918_238614_E582568E 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: vigneshr@ti.com, juliensu@mxic.com.tw, richard@nod.at,
 linux-kernel@vger.kernel.org, miquel.raynal@bootlin.com,
 masonccyang@mxic.com.tw
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thursday, April 23, 2020 11:38:41 AM EEST Mason Yang wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the
> content is safe
> 
> Hi,
> 
> mx25l51245g/mx25u51245g is a mass production for new design and
> replace mx66l51235l/mx66u51235f(phase out).
> 
> Validated by read, erase, read back, write and read back
> on Xilinx Zynq PicoZed FPGA board which included
> Macronix SPI Host (driver/spi/spi-mxic.c).
> 
> change log:
> v2:
> Add which controller we tested the mx25l/u51245g.
> 
> Mason Yang (2):
>   mtd: spi-nor: macronix: Add support for mx25l51245g
>   mtd: spi-nor: macronix: Add support for mx25u51245g
> 
>  drivers/mtd/spi-nor/macronix.c | 6 ++++++
>  1 file changed, 6 insertions(+)

Both applied. In 2/2 I ordered the entry alphabetically. Would you send a 
patch to order all entries in macronix.c in alphabetical order? It's a mess 
right now.

Cheers,
ta



______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
