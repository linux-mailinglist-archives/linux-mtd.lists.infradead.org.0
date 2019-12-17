Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07FF4123542
	for <lists+linux-mtd@lfdr.de>; Tue, 17 Dec 2019 19:50:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yXRllBvAvBmbxI5SiR4f84AgorkmjKAiTpK/Kgdp3BM=; b=fvFGvOn82Vo7Vk
	DgHr8hiGcCJbtmkXgpnwppQnAMFjqJei+B4KLRvWCV60F7UQxOW9BWS2W7ffkp03Tq5F3Hso2aH7X
	mzxYWOF5HVlWiK8XjoOY63fTWMaEL1ebIgZfK0LhbzZoVdpJNMrfeda0zzYRAxYreM5CdOtoU3IGz
	PO4KNMBIy//cqcCDVPm5jz8bce+9bpvXOEkWC0bePpAccqwW0b0WlZG6FhRuWVAEz99yNVc90fIgk
	VAhy7561U3YaFkxnrlJc+IvEje2oNPYaTVVrx7h7EgCbfbK2Jz+kvad09c+J+Bf7Kmo6tP6R7+VFp
	fIetCdulzi4pLqP4ZVEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihHup-0000c5-GH; Tue, 17 Dec 2019 18:49:51 +0000
Received: from mail-eopbgr770108.outbound.protection.outlook.com
 ([40.107.77.108] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihHuf-0000bi-9Q
 for linux-mtd@lists.infradead.org; Tue, 17 Dec 2019 18:49:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JdvwI3SywYua8KLHIg8+IqUhqbk4FNW6RAaeyTYbtkLxOOeSGAz/10htNlFgxSUbJGV5CcG9v1OQPCNRn+0WNi9J+gjYbyWWavF9yke2Y3ELh7XOy5iGIUUTAq5C8VqEFIJ+6L0/MBKjkMIlpPhLWKZ/Mh160x5SzQo2bM4u0mY5bYvXiYIiVKcOnO7xMtSI3MOHG6cfdTTl4F5jzjxiGOuaucMsQ5omtlO/amh8PXtXccUEi1FvFNfjyi5DaK3KPHheMdmf6Mf05oqiF67fMgfpSiEqolwTI2acP1BmdzzCjk9pGPAd3QjrU48ZbalpVUCJvpnq7e9jpx1sevHrbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9hYxBq0drj2Ld47A4EgdOvIKXcPDX1om4kWAh8WIjRI=;
 b=obINf35/0PzJ3A3g3Cmg3g1iJm00TwLV36Ph2l9hcDC9gbGyOv1Lwzhf8CSNhrvFuTQA2v7IHGaqMJbEp2oAtVyQRoCxiPVff0rAQv8P+sbG7htfHfu6mmhfhhJXYJV4YbZsOCkLlgwN82ynQzqa+4w9LaYd7wxbkat0IUwvqvhFkBskylnXeKuf9tTL/3tGyctXW0LsyqQ6+wTqInqPYr3tD1nAhubjHTC+AQF166xauvExJLFsaEdwB04QaVG18U1x5EbfmD0wHgkHLsidUUI+FrxZ2Kj/SG0HNWIxJB9ltmmdWZf7hnnM4bBYPgu2HA6bi+DrwYEHLA9osD/JYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=lexmark.com; dmarc=pass action=none header.from=lexmark.com;
 dkim=pass header.d=lexmark.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Lexmark.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9hYxBq0drj2Ld47A4EgdOvIKXcPDX1om4kWAh8WIjRI=;
 b=dSXFcfRMZ7pI3bCkMnxLhP1J5IaNoWapujQSiiJvc8eyOuoZJnZb6ZVoykDNzv2EfXTwJUsRtHNUtFGuieKs8rWfGb+ix5nrmAEIxEAZJJuR3VjwGmugRhqYm2mp29rWCXss68y/qNHcgJNO8gP0aZDatVWsr3VgcCIrnizmUEI=
Received: from BN8PR10MB3379.namprd10.prod.outlook.com (20.179.140.29) by
 BN8PR10MB3284.namprd10.prod.outlook.com (20.179.138.221) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.17; Tue, 17 Dec 2019 18:49:38 +0000
Received: from BN8PR10MB3379.namprd10.prod.outlook.com
 ([fe80::9d23:4a97:d48a:7f84]) by BN8PR10MB3379.namprd10.prod.outlook.com
 ([fe80::9d23:4a97:d48a:7f84%7]) with mapi id 15.20.2559.012; Tue, 17 Dec 2019
 18:49:38 +0000
From: Zak Hays <zak.hays@lexmark.com>
To: "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>
Subject: slow performance for marvell+micron nand after upgrade to v4.19
Thread-Topic: slow performance for marvell+micron nand after upgrade to v4.19
Thread-Index: AQHVtQoqHC7qyru8UEaCI5dtQ6wj3A==
Date: Tue, 17 Dec 2019 18:49:38 +0000
Message-ID: <BN8PR10MB3379BD79526B73378033F9038C500@BN8PR10MB3379.namprd10.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=zak.hays@lexmark.com; 
x-originating-ip: [192.146.101.90]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f2e4fb67-08bb-4311-37b2-08d78321de5c
x-ms-traffictypediagnostic: BN8PR10MB3284:
x-microsoft-antispam-prvs: <BN8PR10MB32844AB60EA43FCFB0B69CDE8C500@BN8PR10MB3284.namprd10.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02543CD7CD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(346002)(396003)(136003)(366004)(39860400002)(199004)(189003)(53754006)(55016002)(86362001)(6506007)(52536014)(478600001)(5660300002)(186003)(44832011)(81156014)(8676002)(8936002)(316002)(76116006)(66946007)(9686003)(64756008)(66446008)(6916009)(66476007)(66556008)(2906002)(71200400001)(7696005)(26005)(81166006)(33656002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR10MB3284;
 H:BN8PR10MB3379.namprd10.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: lexmark.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6OzNE1+iBoO5kL9NI3QQPau6iOcJT5wH1jYmLCI7UWf51ZcluZFO7K2yCF4baX8f9n8o3Qj3cwRacUfkkZJMVuARoyeHtUvl7Re72upKBRWyUpJj28+vRb3rMA/F+1gxWE2JjljEknuFJ0g9pabZ5C93tTWqPeR0bC1h46+LXstTHmNfHIQ0EXKKzK2SV1boX5/saS9BY1qZ07iA4+fc/k0Wki1oP1RlaLlcf8YnwBG0NYgVIDl/tIhGahHsbne5+0ZosrVYJR1Fdi/P0lTE7k3cC94L3Dd7wc26IFOXgbBWt9flPkOgUR58BeZt83xwdNYLaARBbTUFUVGpwS7TgupvJI1ltyyrrjUNxolxkED8p20JIg8uubEKm6dk8xvi4ea6kLdk+CzfqM+kkPC/UnXhfPer7uQtYRPlf4AZq9kc+Ma/fBeP8UtjtWiFiMqsHXSi9BGKzjiMKbZyvtFlIGxYxZb3djyWs3g1sJCG3GAc5Z3SIS43FErzDDvdj3Vl
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: Lexmark.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f2e4fb67-08bb-4311-37b2-08d78321de5c
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2019 18:49:38.2700 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 12709065-6e6c-41c9-9e4d-fb0a436969ce
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dTqHuVongyuRT5Ur3DTQ/+SLTTyrSeI3fqS92tCqI3+qFxUbktQXp8VIEClYJ9eyaW9CRtXX50/oG2nNvh1cCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR10MB3284
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_104941_483475_4C5C3D3C 
X-CRM114-Status: UNSURE (   6.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.108 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.77.108 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

Hello all,

After upgrading from v4.17 to v4.19, I see nearly 3x slower performance reading
from a 256M Micron part with the marvell-nand driver.

If I run a simple dd command while running 4.17 I get the following:

root@granite2:~# uname -r
4.17.19-yocto-standard-e84b95ca38008a00318ce62ef88c5220
root@granite2:~# time dd if=/dev/mtd0 of=/dev/null 
524288+0 records in
524288+0 records out

real    1m18.399s
user    0m0.179s
sys     1m17.904s

This timing is pretty consistent across multiple tests.

It should be noted that this is with nand-ecc-mode set to "hw".

When I upgraded to v4.19, I had to switch nand-ecc-mode over to "on-die" as trying to use "hw"
now throws an error after this series of commits:

    243f37cb1f63  Chris Packham  mtd: rawnand: micron: add fixup for ONFI revision
    872b71ff084a  Chris Packham  mtd: rawnand: add defines for ONFI version bits
    00ce4e039ad5  Chris Packham  mtd: rawnand: add manufacturer fixup for ONFI parameter page
    ed6d0285f81c  Chris Packham  mtd: rawnand: marvell: Handle on-die ECC

Running that same test as above, I see the following:

root@granite2:~# uname -r
4.19.82-yocto-standard-b66d2fc889af853949e4ada9b12c55b7
root@granite2:~# time dd if=/dev/mtd0 of=/dev/null 
524288+0 records in
524288+0 records out

real    3m34.116s
user    0m0.562s
sys     1m12.934s

This timing is again consistent across multiple tests and is roughly 3x the timing of v4.17.

A few questions I have:
- Is anybody else seeing this same issue? I'm curious if this is the case for all instances that use
the marvell nand driver or it is purely my combination of hardware.

- Is there a reason why ecc "hw" mode is not allowed if "on-die" is supported? I assume that both are
valid methods for error correction. Hardware ECC also seems like it would be preferable in some
situations where multiple nand parts may need to be supported and some of those may not necessarily
provide on-die support.

Thanks,
Zak
______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
