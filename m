Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 842951D4A57
	for <lists+linux-mtd@lfdr.de>; Fri, 15 May 2020 12:02:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=13r1pPcXBvdZcFgUczYLWyZgF6mNYvdJwUEa5+oONzg=; b=X3HN6Xq19jGZ8N
	kPQCWp1lrf4Fc5DsqkhbNQfzSYP8XHSvvAcXjlK+8ENZenVRzrBnASgRkTIYYVa/d6Bp6cizhkKHq
	Sm3HtUDflm0ipzseYDqS4SqRYZLysUnjsdVLdzMP8Fl+l6K4sli6IMAd9IQirC3O2W6Zmg1qvae+A
	phq1AZ0MBEIWHZTa42bqzFJLNJ3bGyM5VD6otIoGaSJBAyO9aBM4JZI6ziSzBkKV4tHQfBPOSNCGr
	Oj1SFA4Cx3IOS8HbfH9w7FM/kL/1mVcR0hbxzFEcVmugg+pA/A51nvZwx0ZGOWmX7QGjiWnC2R+Fr
	OeZYV68dsFIUobnlTbyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZXAy-0000qG-Ig; Fri, 15 May 2020 10:02:44 +0000
Received: from mail-eopbgr60050.outbound.protection.outlook.com ([40.107.6.50]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZXAp-0000pQ-2s
 for linux-mtd@lists.infradead.org; Fri, 15 May 2020 10:02:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kcmLG9VQBYG6K4PR4kx9ms7D6dBMAnjLB1rLlcvSprsNRmQRE+YmvuNh6MiPn0S+riENTcI23WLswhI/cVauT1eerJEX2yNtl28FPKySKU973Qfpuz0Hm0u3e+5WRuQ0i9MUAHwfcJq6Q04W1S4YXwOks+e+0aDTK9fGwHtMyXx1uccI92VQsmyvSInvvO/phIikUCM5mj7gRfjCj2I99mtaSW6x4SDyhddvWi4YGwHzw9hfNAq54wERESBoWHQllMA3DeXX6gpYBXzOI9gDoCzd8/P2QNaIU/H8k6K7FeGlz1eMJPQNUbMCaiX7Z+xIEfmg9OxfKwryd9n8njh7BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8hfUvmue0s3zvCfdOpZYMuDFAAztVbKj3jMPZFDFFfg=;
 b=b27QGrnHEym0v1hZVqi1sdsvvYtsjUbibtIW7PnkHQQmZ6+ay3oCwqB/Dtk7ewhGeLwW6MpUAw259XB5jqpjQBVWWoaugy7R5YAT22SAntot5wj7Go99BkZplRrlb1XDTAD1tTqGeAyXJbxkhuiUUfN8AeQbSZ0wG/pOMYSs0eOFZYwOrlNPLqLZbnCR/Ubv9CobSV+Oi7OnzjySJIcrAIf99BYYyd88ibjgjiBtnSqW47CRXrNEqDMI0M3B0c3fHlY3+HIgyk/cKyNX4yWg5oCa9Y8NRdV2IaX0snChaCZISFUQ2dT6YPUWag/R7Qxioj/4Ty5tA2YJ/NVA+FDVig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8hfUvmue0s3zvCfdOpZYMuDFAAztVbKj3jMPZFDFFfg=;
 b=KxVeOp4Hycsg5wP3BqyBhOU4d50TZDIPjGtmNwbjDM9gE0WAM6KxK6Kf25Q8HJXJF0pyQHwLKqS1nLdbZo4nVNRNQflJkHEmLZAGtpCiO18qQxEkF8dzbz12Ol1aCZFia0HOWtCOateW7o6TW+D19YJUALux4eQihrwKHgAFDjY=
Received: from AM6PR04MB6742.eurprd04.prod.outlook.com (2603:10a6:20b:f2::21)
 by AM6PR04MB6279.eurprd04.prod.outlook.com (2603:10a6:20b:b7::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.33; Fri, 15 May
 2020 10:02:29 +0000
Received: from AM6PR04MB6742.eurprd04.prod.outlook.com
 ([fe80::953e:cdce:6d58:c4c0]) by AM6PR04MB6742.eurprd04.prod.outlook.com
 ([fe80::953e:cdce:6d58:c4c0%6]) with mapi id 15.20.2979.033; Fri, 15 May 2020
 10:02:29 +0000
From: Suram Suram <suram@nxp.com>
To: "Shivamurthy Shastri (sshivamurthy)" <sshivamurthy@micron.com>, Poonam
 Aggrwal <poonam.aggrwal@nxp.com>, Naresh Kamboju <naresh.kamboju@linaro.org>, 
 "X.f. Ren" <xiaofeng.ren@nxp.com>
Subject: RE: [EXT] Re: [PATCH v7 0/6] Add new series Micron SPI NAND devices
Thread-Topic: [EXT] Re: [PATCH v7 0/6] Add new series Micron SPI NAND devices
Thread-Index: AQHWKnnBWTDqkMpd4EeyD1uQGcfcbKiowU4AgAAosICAAACyQA==
Date: Fri, 15 May 2020 10:02:28 +0000
Message-ID: <AM6PR04MB6742280CFEC7C560FB16F093ABBD0@AM6PR04MB6742.eurprd04.prod.outlook.com>
References: <20200311175735.2007-1-sshivamurthy@micron.com>
 <CA+G9fYuavikY4yjc+bjnvDGHGwQRs6bf31gUa3gyFzd=0zLR7Q@mail.gmail.com>
 <VI1PR04MB70232F2A753142DE7E0D3A6986BD0@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <20200515093330.7e3b2911@xps13>
 <MN2PR08MB63973E068B6EF744AEE43246B8BD0@MN2PR08MB6397.namprd08.prod.outlook.com>
In-Reply-To: <MN2PR08MB63973E068B6EF744AEE43246B8BD0@MN2PR08MB6397.namprd08.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: micron.com; dkim=none (message not signed)
 header.d=none;micron.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [14.143.15.10]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1ac45eec-fc30-4612-d3c7-08d7f8b713bd
x-ms-traffictypediagnostic: AM6PR04MB6279:|AM6PR04MB6279:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB6279601D4DE81712B3ECDBD6ABBD0@AM6PR04MB6279.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-forefront-prvs: 04041A2886
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UB/mnLFkNuA3F/pkQ5i1A6xVXN5DIDbUvLp5H+gD9hYFgUo6Yn/u79eCrBZkSMT5LUHDPSgOdPqPtUTXHWqe9sJ0dEHhh7c/bKyhEBGcgf5dGpmEYcAX/ha2Xg9EF9HnByGZYA0E8G4+WhCgaZ8+fbkt3swO9DTSo41ERyRmQqUxG8tNNzm0LeHjaOfitA5reioAIndwTPsdR/qyQbPnVAM/aZ8tL/GKaxf2K/UpMBc+BLvlygPrTVxXj/l/+Ztn5ykUWVYaKJkKe8wMZAOJt30Swe4KZXxtrMoAeGsW26DuEN9JTZq7yinsgSX5qKTlpKwK/ycAWOZEkDeVSxchF3Soay3w+TnK6AbwbyQdVgMzfCIKBZIHF1LXmb7ZUfED7I2jnNIZ+V17J9PSNIbJIkp2+8XVXUgo5oSOf5tvskXF7N9i3+DDLueMMDjUDZfyMU1a+05i2OBklFg2oc+6y6SorYEOXrjDZ5UiWDcQ6O36a3vHB9C0xqOPyp7BCdm0jm/vHoDBfnWOd//ghkKxjw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB6742.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(39860400002)(346002)(136003)(366004)(376002)(316002)(66556008)(64756008)(66446008)(6636002)(8936002)(33656002)(83080400001)(186003)(54906003)(2906002)(4326008)(86362001)(478600001)(7416002)(7696005)(6506007)(55236004)(8676002)(66946007)(55016002)(5660300002)(110136005)(66476007)(71200400001)(45080400002)(966005)(76116006)(26005)(53546011)(9686003)(52536014)(66574014);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: LFmeLkXQbP2JsiOm/tyDvHe7++e9tNnd9EmUiE7g4FFdcni5oBF0oteQIptLCQfvmqKe8ll3jn8sCbnvdAE/Axfagrs4HlVTe/QTcLvjxog3Z/P6DMgYAt/GMyCtbDAvB36X1332kBGbIIil+Nodj5gFai56h2s+3735JQr7d2N7Vz7zKVV2+fq7FQwlTRjnROnjXvhDzsHPTcsG8mb6pIOflVvKYeU1Knwi1NSsi0lE9MsLqS6UWnHr+n5ZJTqP8BuTT9ynxYqn35GtZ7258VkohBJJBFi2Xo1dwxz1NB1fASW9tNhM/ImwnyMzdnVSwfULnxOxtA7KjU21436d/3SCdQ0HzGAnKBOJoa9iAbYmLIg1+DUeawtLENGMkxQzEkeXZjd5cqIwkjDSwtplHKc3Jg3E6t5nv/N1WuWk3yhedRKcYYIB6VTkp9SSyWDBJ5oRs65zCaEaXzRNREH9mOu+ftZmgwLOi5PyRoiJoXA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ac45eec-fc30-4612-d3c7-08d7f8b713bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2020 10:02:28.8576 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jWuWg3dt77Om9iE1F0TQZruDpWXnXlGa/iPTHMtNfEFtSlJv09G/WNz4KLa9070t
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6279
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_030235_206767_EF6B6F6A 
X-CRM114-Status: GOOD (  16.76  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.50 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.50 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 "shiva.linuxworks@gmail.com" <shiva.linuxworks@gmail.com>,
 Richard Weinberger <richard@nod.at>, Ashish Kumar <ashish.kumar@nxp.com>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 open list <linux-kernel@vger.kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "lkft-triage@lists.linaro.org" <lkft-triage@lists.linaro.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Chuanhong Guo <gch981213@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

K1JvbiB3aG8gb3ducyB0aGUgdGVzdCBvbiB0aGlzIHBsYXRmb3JtIGluIE5YUC4NCg0KLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IFNoaXZhbXVydGh5IFNoYXN0cmkgKHNzaGl2YW11
cnRoeSkgPHNzaGl2YW11cnRoeUBtaWNyb24uY29tPiANClNlbnQ6IEZyaWRheSwgTWF5IDE1LCAy
MDIwIDM6MjkgUE0NClRvOiBQb29uYW0gQWdncndhbCA8cG9vbmFtLmFnZ3J3YWxAbnhwLmNvbT47
IE5hcmVzaCBLYW1ib2p1IDxuYXJlc2gua2FtYm9qdUBsaW5hcm8ub3JnPg0KQ2M6IE1pcXVlbCBS
YXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+OyBzaGl2YS5saW51eHdvcmtzQGdtYWls
LmNvbTsgQXNoaXNoIEt1bWFyIDxhc2hpc2gua3VtYXJAbnhwLmNvbT47IFJpY2hhcmQgV2VpbmJl
cmdlciA8cmljaGFyZEBub2QuYXQ+OyBWaWduZXNoIFJhZ2hhdmVuZHJhIDx2aWduZXNockB0aS5j
b20+OyBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPjsgQ2h1
YW5ob25nIEd1byA8Z2NoOTgxMjEzQGdtYWlsLmNvbT47IEZyaWVkZXIgU2NocmVtcGYgPGZyaWVk
ZXIuc2NocmVtcGZAa29udHJvbi5kZT47IGxpbnV4LW10ZEBsaXN0cy5pbmZyYWRlYWQub3JnOyBv
cGVuIGxpc3QgPGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc+OyBTdXJhbSBTdXJhbSA8c3Vy
YW1AbnhwLmNvbT47IGxrZnQtdHJpYWdlQGxpc3RzLmxpbmFyby5vcmcNClN1YmplY3Q6IFJFOiBb
RVhUXSBSZTogW1BBVENIIHY3IDAvNl0gQWRkIG5ldyBzZXJpZXMgTWljcm9uIFNQSSBOQU5EIGRl
dmljZXMNCg0KQ2F1dGlvbjogRVhUIEVtYWlsDQoNCkhpIE5hcmVzaCBhbmQgUG9vbmFtLA0KDQo+
IFN1YmplY3Q6IFtFWFRdIFJlOiBbUEFUQ0ggdjcgMC82XSBBZGQgbmV3IHNlcmllcyBNaWNyb24g
U1BJIE5BTkQgDQo+IGRldmljZXMNCj4NCj4gSGkgUG9vbmFtLA0KPg0KPiBQb29uYW0gQWdncndh
bCA8cG9vbmFtLmFnZ3J3YWxAbnhwLmNvbT4gd3JvdGUgb24gRnJpLCAxNSBNYXkgMjAyMA0KPiAw
NToyOTowNyArMDAwMDoNCj4NCj4gPiBBZGRpbmcgQXNoaXNoLg0KPiA+DQo+ID4gUmVnYXJkcw0K
PiA+IFBvb25hbQ0KPiA+DQo+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4g
RnJvbTogTmFyZXNoIEthbWJvanUgPG5hcmVzaC5rYW1ib2p1QGxpbmFyby5vcmc+DQo+ID4gPiBT
ZW50OiBGcmlkYXksIE1heSAxNSwgMjAyMCAxMDo1NyBBTQ0KPiA+ID4gVG86IHNoaXZhLmxpbnV4
d29ya3NAZ21haWwuY29tOyBNaXF1ZWwgUmF5bmFsDQo+IDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4u
Y29tPjsNCj4gPiA+IFNoaXZhbXVydGh5IFNoYXN0cmkgPHNzaGl2YW11cnRoeUBtaWNyb24uY29t
Pg0KPiA+ID4gQ2M6IFJpY2hhcmQgV2VpbmJlcmdlciA8cmljaGFyZEBub2QuYXQ+OyBWaWduZXNo
IFJhZ2hhdmVuZHJhIA0KPiA+ID4gPHZpZ25lc2hyQHRpLmNvbT47IEJvcmlzIEJyZXppbGxvbiAN
Cj4gPiA+IDxib3Jpcy5icmV6aWxsb25AY29sbGFib3JhLmNvbT47IENodWFuaG9uZyBHdW8gDQo+
ID4gPiA8Z2NoOTgxMjEzQGdtYWlsLmNvbT47IEZyaWVkZXIgU2NocmVtcGYgDQo+ID4gPiA8ZnJp
ZWRlci5zY2hyZW1wZkBrb250cm9uLmRlPjsgbGludXgtbXRkQGxpc3RzLmluZnJhZGVhZC5vcmc7
IG9wZW4NCj4gbGlzdCA8bGludXgtDQo+ID4gPiBrZXJuZWxAdmdlci5rZXJuZWwub3JnPjsgUG9v
bmFtIEFnZ3J3YWwNCj4gPHBvb25hbS5hZ2dyd2FsQG54cC5jb20+Ow0KPiA+ID4gU3VyYW0gU3Vy
YW0gPHN1cmFtQG54cC5jb20+OyBsa2Z0LXRyaWFnZUBsaXN0cy5saW5hcm8ub3JnDQo+ID4gPiBT
dWJqZWN0OiBSZTogW1BBVENIIHY3IDAvNl0gQWRkIG5ldyBzZXJpZXMgTWljcm9uIFNQSSBOQU5E
IGRldmljZXMNCj4gPiA+DQo+ID4gPiBPbiBXZWQsIDExIE1hciAyMDIwIGF0IDIzOjI4LCA8c2hp
dmEubGludXh3b3Jrc0BnbWFpbC5jb20+IHdyb3RlOg0KPiA+ID4gPg0KPiA+ID4gPiBGcm9tOiBT
aGl2YW11cnRoeSBTaGFzdHJpIDxzc2hpdmFtdXJ0aHlAbWljcm9uLmNvbT4NCj4gPiA+ID4NCj4g
PiA+ID4gVGhpcyBwYXRjaHNldCBpcyBmb3IgdGhlIG5ldyBzZXJpZXMgb2YgTWljcm9uIFNQSSBO
QU5EIGRldmljZXMsIA0KPiA+ID4gPiBhbmQgdGhlIGZvbGxvd2luZyBsaW5rcyBhcmUgdGhlaXIg
ZGF0YXNoZWV0cy4NCj4gPiA+DQo+ID4gPiBXaGlsZSBib290IE5YUCBsczIwODggZGV2aWNlIHdp
dGggbWFpbmxpbmUga2VybmVsIHRoZSBmb2xsb3dpbmcgDQo+ID4gPiBuYW5kDQo+IHdhcm5pbmcN
Cj4gPiA+IG5vdGljZWQuIEhvdyBjcml0aWNhbCB0aGlzIHdhcm5pbmcgPw0KPg0KPiBBcmUgeW91
IHN1cmUgdGhpcyBpcyB0aGUgcmlnaHQgdGhyZWFkPyBTaGl2YW11cnRoeSBhZGRlZCBTUEktTkFO
RCANCj4gc3VwcG9ydCwgeW91IGFyZSB0YWxraW5nIGFib3V0IGEgcmF3IE5BTkQgZGV2aWNlLg0K
PiA+ID4NCj4gPiA+IFsgICAgMS4zNTc3MjJdIG5hbmQ6IGRldmljZSBmb3VuZCwgTWFudWZhY3R1
cmVyIElEOiAweDJjLCBDaGlwIElEOiAweDQ4DQo+ID4gPiBbICAgIDEuMzY0MDg1XSBuYW5kOiBN
aWNyb24gTVQyOUYxNkcwOEFCQUNBV1ANCj4gPiA+IFsgICAgMS4zNjgxODFdIG5hbmQ6IDIwNDgg
TWlCLCBTTEMsIGVyYXNlIHNpemU6IDUxMiBLaUIsIHBhZ2Ugc2l6ZToNCj4gPiA+IDQwOTYsIE9P
QiBzaXplOiAyMjQNCj4gPiA+IFsgICAgMS4zNzU5MzJdIG5hbmQ6IFdBUk5JTkc6IDUzMDAwMDAw
MC5mbGFzaDogdGhlIEVDQyB1c2VkIG9uIHlvdXINCj4gPiA+IHN5c3RlbSBpcyB0b28gd2VhayBj
b21wYXJlZCB0byB0aGUgb25lIHJlcXVpcmVkIGJ5IHRoZSBOQU5EIGNoaXANCj4NCj4gSWYgeW91
IGFyZSB0YWxraW5nIGFib3V0IHRoaXMgb25lLCBpdCBpcyBwcmV0dHkgc2VsZiBleHBsYW5hdG9y
eTogdGhlIA0KPiBOQU5EIGNoaXAgcmVxdWlyZXMgYSBtaW5pbXVtIGNvcnJlY3Rpb24gd2hpY2gg
aXMgbm90IGFjaGlldmVkIGhlcmUuDQo+IEVpdGhlciBiZWNhdXNlIHRoZSBFQ0MgZW5naW5lIGNh
bm5vdCByZWFjaCB0aGUgcmVxdWVzdGVkIGFtb3VudCAoeW91IA0KPiBjYW5ub3QgZG8gYW55dGhp
bmcpIG9yIGJlY2F1c2UgeW91IHJlcXVlc3RlZCBhIHRvbyBsb3cgY29ycmVjdGlvbiB3aXRoIA0K
PiBEVCBwcm9wZXJ0aWVzLg0KPg0KDQpNaW5pbXVtIHJlcXVpcmVkIEVDQyBmb3IgdGhpcyBkZXZp
Y2UgaXMgOC1iaXQuIEJlbG93IGlzIHRoZSBkYXRhc2hlZXQgZm9yIHlvdXIgcmVmZXJlbmNlLg0K
DQpodHRwczovL2V1cjAxLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0
cHMlM0ElMkYlMkZ3d3cubWljcm9uLmNvbSUyRi0lMkZtZWRpYSUyRmNsaWVudCUyRmdsb2JhbCUy
RmRvY3VtZW50cyUyRnByb2R1Y3RzJTJGZGF0YS1zaGVldCUyRm5hbmQtZmxhc2glMkY3MC1zZXJp
ZXMlMkZtNzJhX3Byb2R1Y3Rpb25fZGF0YXNoZWV0X3JldmcucGRmJTNGcmV2JTNEYmIwYTRiYTA0
YTFmNDBmOThlMjlkYzYyNGQxNzhkZDgmYW1wO2RhdGE9MDIlN0MwMSU3Q3N1cmFtJTQwbnhwLmNv
bSU3Q2Y2OTlkMjEwMmY5NTRkNGQzYmQyMDhkN2Y4YjY5ZDM1JTdDNjg2ZWExZDNiYzJiNGM2ZmE5
MmNkOTljNWMzMDE2MzUlN0MwJTdDMSU3QzYzNzI1MTMzNTUxODgwMzAxMCZhbXA7c2RhdGE9MUhQ
OU54Mm1wdHRZR3lVUllCOHQxaFJzTE9YNmNCaTA1d25xOHRpb2s2NCUzRCZhbXA7cmVzZXJ2ZWQ9
MA0KDQoNCj4gPiA+DQo+ID4gPiBbICAgIDEuMzg4NzY3XSBCYWQgYmxvY2sgdGFibGUgZm91bmQg
YXQgcGFnZSA1MjQxNjAsIHZlcnNpb24gMHgwMQ0KPiA+ID4gWyAgICAxLjM5NjgzM10gQmFkIGJs
b2NrIHRhYmxlIGZvdW5kIGF0IHBhZ2UgNTI0MDMyLCB2ZXJzaW9uIDB4MDENCj4gPiA+IFsgICAg
MS40MDM3ODFdIG5hbmRfcmVhZF9iYnQ6IGJhZCBibG9jayBhdCAweDAwMDAwMmQwMDAwMA0KPiA+
ID4gWyAgICAxLjQwODkyMV0gbmFuZF9yZWFkX2JidDogYmFkIGJsb2NrIGF0IDB4MDAwMDAyZDgw
MDAwDQo+ID4gPiBbICAgIDEuNDE0NzUwXSBmc2wsaWZjLW5hbmQgNTMwMDAwMDAwLm5hbmQ6IElG
QyBOQU5EIGRldmljZSBhdA0KPiA+ID4gMHg1MzAwMDAwMDAsIGJhbmsgMg0KPiA+ID4NCj4gPiA+
DQo+ID4gPiBGdWxsIHRlc3QgbG9nLA0KPiA+ID4NCj4gaHR0cHM6Ly9ldXIwMS5zYWZlbGlua3Mu
cHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJGcWEtDQo+ID4gPiByZXBv
cnRzLmxpbmFyby5vcmclMkZsa2Z0JTJGbGludXgtbWFpbmxpbmUtb2UlMkZidWlsZCUyRnY1Ljct
cmM1LTUNCj4gPiA+IDUtDQo+ID4gPg0KPiBnMWFlN2VmYjM4ODU0JTJGdGVzdHJ1biUyRjE4MjU0
JTJGbG9nJmFtcDtkYXRhPTAyJTdDMDElN0Nwb29uYQ0KPiBtLg0KPiA+ID4NCj4gYWdncndhbCU0
MG54cC5jb20lN0MxNDZmNjM0Yzg2OWY0YzcwYmFhMTA4ZDdmODkwOWZmYiU3QzY4NmVhMWQzYmMN
Cj4gMg0KPiA+ID4NCj4gYjRjNmZhOTJjZDk5YzVjMzAxNjM1JTdDMCU3QzAlN0M2MzcyNTExNzIz
NTQ2MzgyOTgmYW1wO3NkYXRhPSUyQg0KPiA+ID4NCj4gSmhzJTJGYjkyJTJCQTU2V3pZZEhlJTJC
QmhYV2ZqazhmZUNHQUZ2JTJCUnpGS0M5UE0lM0QmYW1wO3INCj4gZXNlDQo+ID4gPiBydmVkPTAN
Cj4gPiA+DQo+ID4gPiAtIE5hcmVzaA0KPg0KPiBUaGFua3MsDQo+IE1pcXXDqGwNCg0KVGhhbmtz
LA0KU2hpdmENCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
