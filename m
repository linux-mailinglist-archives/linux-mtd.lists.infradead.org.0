Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 492F01643D8
	for <lists+linux-mtd@lfdr.de>; Wed, 19 Feb 2020 13:04:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=fzc2Gr2em48Qs98jRZH36vlhWm1Ms9j70A17QZ199BM=; b=SjbHg1nkuAVu5C
	uuLs7lEPiBYbnKECB/qx4Xg2yqSjt+pszoCt8+oC3IdZNqjLubIs2qB5FbB3dz6t1XBUesM/BK5+m
	XRkYkmmvi8GEzxFWm8pCBKi0Nvgw4zsA+eAXVSfdhp6656Llk44B9Ww2SuRScwSqTKI1A9qcWncun
	zFmh2zs8OFHKHEBZKP03iJRogtF91JJiLfp3R5zPAr34jAxzjmqP7A/3Ea6pxvfEan98h+uUfcDfD
	XLMzUvFxFJk+GSHbQtON2X5BgKmskDEo9myJm/uX3XaepRHsjMDUQOFduxeIpUgw4FmyUCsjVPw+A
	kYUSBcAALhq4czU9XWwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4O5Y-0000d1-VS; Wed, 19 Feb 2020 12:04:24 +0000
Received: from mx1.unisoc.com ([222.66.158.135] helo=SHSQR01.spreadtrum.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4O5Q-0000bt-4l
 for linux-mtd@lists.infradead.org; Wed, 19 Feb 2020 12:04:18 +0000
Received: from ig2.spreadtrum.com (shmbx04.spreadtrum.com [10.0.1.214])
 by SHSQR01.spreadtrum.com with ESMTPS id 01JC3lXd036975
 (version=TLSv1 cipher=AES256-SHA bits=256 verify=NO);
 Wed, 19 Feb 2020 20:03:47 +0800 (CST)
 (envelope-from Carson.Li1@unisoc.com)
Received: from SHMBX04.spreadtrum.com (10.0.1.214) by shmbx04.spreadtrum.com
 (10.0.1.214) with Microsoft SMTP Server (TLS) id 15.0.847.32; Wed, 19 Feb
 2020 20:03:48 +0800
Received: from SHMBX04.spreadtrum.com ([fe80::8532:ef18:9217:26f5]) by
 shmbx04.spreadtrum.com ([fe80::8532:ef18:9217:26f5%13]) with mapi id
 15.00.0847.030; Wed, 19 Feb 2020 20:03:48 +0800
From: =?utf-8?B?5p2O5YKy5YKyIChDYXJzb24gTGkxLzk1NDIp?= <Carson.Li1@unisoc.com>
To: linux-mtd <linux-mtd@lists.infradead.org>, Richard Weinberger
 <richard@nod.at>
Subject: RE: ubifs: read bad node type in ubifs_tnc_read_wbuf
Thread-Topic: ubifs: read bad node type in ubifs_tnc_read_wbuf
Thread-Index: AQHVyaL3y4TC5HCNzkiSy+TVWaB7mKfpWzQwG5Qm157/JAOmUHIw88Ik/HDzxSCANiTskA==
Date: Wed, 19 Feb 2020 12:03:47 +0000
Message-ID: <c62bae00e0d741cc9be1752b139c42d6@shmbx04.spreadtrum.com>
References: <e2d34800d72243ed85e8df63bb80f7ab@shmbx04.spreadtrum.com>
 <ce621148db0e4f9c80f32c348975663a@shmbx04.spreadtrum.com>
 <ae16d475c0d24c1ba6ab18f1e766e928@shmbx04.spreadtrum.com>
 <46e2f6ca11a442f38d476d4346e8034c@shmbx04.spreadtrum.com>
 <733427970.19532.1578872935782.JavaMail.zimbra@nod.at>
 <5077cb7894bc4b95b09389059edf0ddc@shmbx04.spreadtrum.com>
 <1323907091.20398.1578989376426.JavaMail.zimbra@nod.at>
 <51cabef7ce104de097c2556a4a24d8a7@shmbx04.spreadtrum.com>
 <1741454272.21050.1579043778589.JavaMail.zimbra@nod.at> 
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.1.253]
MIME-Version: 1.0
X-MAIL: SHSQR01.spreadtrum.com 01JC3lXd036975
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_040416_846587_43B38A06 
X-CRM114-Status: UNSURE (   2.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [222.66.158.135 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgUmljaGFyZDoNCkkgYW0gc29ycnkgdGhhdCBJIGhhZCBzZW50IGFuIGVtYWlsIHRvIHRoZSBs
aW51eC1tdGQgYnV0IGZpbmQgb3V0DQpJIGRpZCBub3QgY29weSB0byB5b3UuIE5vdyBJIHJlc2Vu
ZCBpdCBhZ2FpbiwgcGxlYXNlIGtpbmRseSBjaGVjayBpdA0KYW5kIHJlcGx5IG1lLg0KDQo+PkxQ
Uk9QU19UQUtFTiBzaG91bGQgYXZvaWQgdGhpcy4NCj5JcyBpdCBwb3NzaWJsZSB0aGF0IGEgY29t
bWl0IGZpbmlzaGVzIGFuZCByZW1vdmVzIHRoZSBMUFJPUFNfVEFLRU4gZmxhZz8NCj5hbmQgd2hl
biBpdCBpcyByZXVzZWQgYXMgYSBqb3VybmFsIGhlYWQsIExQUk9QU19UQUtFTiBmbGFnIGlzIHNl
dCBhZ2Fpbi4NCg0KPj5JZiBwb3NzaWJsZSwgY2FuIHlvdSBwbGVhc2UgY2hlY2sgdGhlIGxwcm9i
cyBvZiB0aGUgYWZmZWN0ZWQgTEVCcz8NCj4tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LWNhc2UgMS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj5q
aGVhZFtHQ0hEXS53YnVmLmxudW0gICA9IDE5NShmb3VuZCBpbiBUTkMpDQo+amhlYWRbREFUQUhE
XS53YnVmLmxudW0gID0gMTM5KHpiciBwYXNzZWQgdG8gdWJpZnNfdG5jX3JlYWRfbm9kZSkNCg0K
PnN0cnVjdCB1Ymlmc19scHJvcHMgPQ0KPg0KPiAgICAgIGZyZWUgPSA0MDk2LA0KPiAgICAgIGRp
cnR5ID0gMTIzMjcyLA0KPiAgICAgIGZsYWdzID0gMTYsIC8vTFBST1BTX1RBS0VODQo+ICAgICAg
bG51bSA9IDE5NSwNCj4gICAgICB7DQo+ICAgICAgICBsaXN0ID0gew0KPiAgICAgICAgICBuZXh0
ID0gMHhjZDFhZDZkOCwNCj4gICAgICAgICAgcHJldiA9IDB4Y2QxYWQ0NDANCj4gICAgICAgIH0s
DQo+ICAgICAgICBocG9zID0gLTg1Mzg3OTA4MA0KPiAgICAgIH0NCj4gICAgfQ0KDQo+c3RydWN0
IHViaWZzX2xwcm9wcyA9IHsNCj4gICAgICBmcmVlID0gMTI0OTQ0LA0KPiAgICAgIGRpcnR5ID0g
MCwNCj4gICAgICBmbGFncyA9IDE2LCAvL0xQUk9QU19UQUtFTg0KPiAgICAgIGxudW0gPSAxMzks
DQo+ICAgICAgew0KPiAgICAgICAgbGlzdCA9IHsNCj4gICAgICAgICAgbmV4dCA9IDB4YzhiZTk2
YzAsDQo+ICAgICAgICAgIHByZXYgPSAweGM5MGU5OWM4DQo+ICAgICAgICB9LA0KPiAgICAgICAg
aHBvcyA9IC05MjcwMzM2NjQNCj4gICAgICB9DQo+ICAgIH0NCg0KPm9uZSBtb3JlIGluZm9ybWF0
aW9uIGFib3V0IHRoZSB1Ymlmc19idWQgcmJ0cmVlOg0KDQo+Y3Jhc2hfYXJtPiB0cmVlIC10IHJi
dHJlZSAtbyB1Ymlmc19idWQucmIgLU4gMHhjZDE5NmRkNCAtcyB1Ymlmc19idWQubG51bQ0KPmNk
MTk2ZGMwDQo+ICBsbnVtID0gMTk1Ly9qaGVhZFtHQ0hEXQ0KPmM4OTIwN2MwDQo+ICBsbnVtID0g
NjANCj5jZDE5NmZjMA0KPiAgbG51bSA9IDU5DQo+YzhiZDVlNDANCj4gIGxudW0gPSAxMjUNCj5j
ODkzNTYwMA0KPiAgbG51bSA9IDk3DQo+YzJhYWZlYzANCj4gIGxudW0gPSAxMzkvL2poZWFkW0RB
VEFIRF0NCj5jOGJiMjE0MA0KPiAgbG51bSA9IDI3OS8vamhlYWRbQkFTRUhEXQ0KPmM4ZWU4ZDAw
DQo+ICBsbnVtID0gMjM5DQo+Y2QxOTY5ODANCj4gIGxudW0gPSAzNDgNCj4tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLWNhc2UgMi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0NCj5qaGVhZFtHQ0hEXS53YnVmLmxudW0gICA9IDIyNChmb3VuZCBpbiBU
TkMpDQo+amhlYWRbREFUQUhEXS53YnVmLmxudW0gID0gNTQoemJyIHBhc3NlZCB0byB1Ymlmc190
bmNfcmVhZF9ub2RlKQ0KDQo+c3RydWN0IHViaWZzX2xwcm9wcyA9DQo+ew0KPiAgICAgIGZyZWUg
PSAyNDU3NiwNCj4gICAgICBkaXJ0eSA9IDEyNzY0MCwNCj4gICAgICBmbGFncyA9IDE2LCAvL0xQ
Uk9QU19UQUtFTg0KPiAgICAgIGxudW0gPSAyMjQsDQo+ICAgICAgew0KPiAgICAgICAgbGlzdCA9
IHsNCj4gICAgICAgICAgbmV4dCA9IDB4YzkwMTRlYzAsDQo+ICAgICAgICAgIHByZXYgPSAweGM5
MWVkMGMwDQo+ICAgICAgICB9LA0KPiAgICAgICAgaHBvcyA9IC05MjI2NjExODQNCj4gICAgICB9
DQo+IH0NCj5zdHJ1Y3QgdWJpZnNfbHByb3BzID0NCj57DQo+ICAgICAgZnJlZSA9IDQ1OTUyLA0K
PiAgICAgIGRpcnR5ID0gMCwNCj4gICAgICBmbGFncyA9IDE2LCAvL0xQUk9QU19UQUtFTg0KPiAg
ICAgIGxudW0gPSA1NCwNCj4gICAgICB7DQo+ICAgICAgICBsaXN0ID0gew0KPiAgICAgICAgICBu
ZXh0ID0gMHhjZDFkNDMyOCwNCj4gICAgICAgICAgcHJldiA9IDB4YzkwZWE5YzgNCj4gICAgICAg
IH0sDQo+ICAgICAgICBocG9zID0gLTg1MzcyMDI4MA0KPiAgICAgIH0NCj4gICAgfQ0KDQo+Y3Jh
c2hfYXJtPiB0cmVlIC10IHJidHJlZSAtbyB1Ymlmc19idWQucmIgLU4gMHhjNmFmYWUxNCAtcyB1
Ymlmc19idWQubG51bQ0KPmM2YWZhZTAwDQo+ICBsbnVtID0gODgNCj5jOGZhNTU0MA0KPiAgbG51
bSA9IDUzLy9qaGVhZFtCQVNFSERdDQo+YzkxNmI1MDANCj4gIGxudW0gPSA0Mg0KPmM4ZjhiMTQw
DQo+ICBsbnVtID0gNjINCj5jMmE5NTNjMA0KPiAgbG51bSA9IDU0Ly9qaGVhZFtEQVRBSERdDQo+
YzkxNmI0ODANCj4gIGxudW0gPSAyMTUNCj5jMmFjMDA0MA0KPiAgbG51bSA9IDEyMA0KPmM5MTZi
NDAwDQo+ICBsbnVtID0gMjI0Ly9qaGVhZFtHQ0hEXQ0KPmM2YjAyZjgwDQo+ICBsbnVtID0gMjcx
DQoNCj5CeSB0aGUgd2F5LCB0aGVyZSBpcyBhbm90aGVyIHRpbWluZyB0aGUgTEVCIG1pZ2h0IGJl
IGdhcmJhZ2UgY29sbGVjdGVkOg0KPj4gICAgIEEgICAgICB8ICAgICAgICAgICAgICBCDQo+PiAt
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQ0KPj4gdWJpZnNfdG5jX2xvY2F0ZQ0KPj4gICB6YnItPmxudW0gPSA1
NCAoZmluZCBpbiBUTkMpDQo+PiAgICAgdWJpZnNfZ2V0X3didWYoemJyLT5sbnVtID0gNTQpIGlz
IHR1cmUNCj4+ICAgICAgICAgIHViaWZzX3RuY19yZWFkX25vZGUNCj4+ICAgICAgICAgICAgICAg
ICAgICAgICAgIC0+R0MoY2hhbmdlIHp0LT5sbnVtIHRvIDIyNChHQ0hEKSBpbiBfVE5DXykNCj4+
ICAgICAgICAgICAgICAgICAgICAgICAgIC0+emJyLT5sbnVtID0gNTQgYmVjb21lcyBEQVRBSEQN
Cj4+ICAgICAgICAgICAgIHViaWZzX2dldF93YnVmKHpici0+bG51bSA9IDU0IGFzIHRoZSBEQVRB
SEQpIGlzIHR1cmUgYWdhaW4NCj4+ICAgICAgICAgICAgIHViaWZzX3JlYWRfbm9kZV93YnVmDQo+
PiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLQ0KDQogICAgIEEgICAgICB8ICAgICAgICAgICAgICBCDQogLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tDQo+dWJpZnNfdG5jX2xvY2F0ZQ0KPiAgIHpici0+bG51bSA9IDU0IChm
aW5kIGluIFROQykNCj4gICAgICAgICAgICAgICAgICAgICAgICAgLT5HQyhjaGFuZ2UgenQtPmxu
dW0gdG8gMjI0KEdDSEQpIGluIF9UTkNfKQ0KPiAgICAgICAgICAgICAgICAgICAgICAgICAtPnpi
ci0+bG51bSA9IDU0IGJlY29tZXMgREFUQUhEDQo+ICAgICB1Ymlmc19nZXRfd2J1Zih6YnItPmxu
dW0gPSA1NCBhcyB0aGUgREFUQUhEKSBpcyB0dXJlDQo+ICAgICAgICAgIHViaWZzX3RuY19yZWFk
X25vZGUNCj4gICAgICAgICAgICAgdWJpZnNfZ2V0X3didWYoemJyLT5sbnVtID0gNTQpIGlzIHR1
cmUgYWdhaW4NCj4gICAgICAgICAgICAgdWJpZnNfcmVhZF9ub2RlX3didWYNCj4gLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tDQoNClRoYW5rcy4NCkNhcnNvbg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18NCiBUaGlzIGVtYWlsIChpbmNsdWRpbmcgaXRzIGF0dGFjaG1lbnRzKSBpcyBpbnRlbmRl
ZCBvbmx5IGZvciB0aGUgcGVyc29uIG9yIGVudGl0eSB0byB3aGljaCBpdCBpcyBhZGRyZXNzZWQg
YW5kIG1heSBjb250YWluIGluZm9ybWF0aW9uIHRoYXQgaXMgcHJpdmlsZWdlZCwgY29uZmlkZW50
aWFsIG9yIG90aGVyd2lzZSBwcm90ZWN0ZWQgZnJvbSBkaXNjbG9zdXJlLiBVbmF1dGhvcml6ZWQg
dXNlLCBkaXNzZW1pbmF0aW9uLCBkaXN0cmlidXRpb24gb3IgY29weWluZyBvZiB0aGlzIGVtYWls
IG9yIHRoZSBpbmZvcm1hdGlvbiBoZXJlaW4gb3IgdGFraW5nIGFueSBhY3Rpb24gaW4gcmVsaWFu
Y2Ugb24gdGhlIGNvbnRlbnRzIG9mIHRoaXMgZW1haWwgb3IgdGhlIGluZm9ybWF0aW9uIGhlcmVp
biwgYnkgYW55b25lIG90aGVyIHRoYW4gdGhlIGludGVuZGVkIHJlY2lwaWVudCwgb3IgYW4gZW1w
bG95ZWUgb3IgYWdlbnQgcmVzcG9uc2libGUgZm9yIGRlbGl2ZXJpbmcgdGhlIG1lc3NhZ2UgdG8g
dGhlIGludGVuZGVkIHJlY2lwaWVudCwgaXMgc3RyaWN0bHkgcHJvaGliaXRlZC4gSWYgeW91IGFy
ZSBub3QgdGhlIGludGVuZGVkIHJlY2lwaWVudCwgcGxlYXNlIGRvIG5vdCByZWFkLCBjb3B5LCB1
c2Ugb3IgZGlzY2xvc2UgYW55IHBhcnQgb2YgdGhpcyBlLW1haWwgdG8gb3RoZXJzLiBQbGVhc2Ug
bm90aWZ5IHRoZSBzZW5kZXIgaW1tZWRpYXRlbHkgYW5kIHBlcm1hbmVudGx5IGRlbGV0ZSB0aGlz
IGUtbWFpbCBhbmQgYW55IGF0dGFjaG1lbnRzIGlmIHlvdSByZWNlaXZlZCBpdCBpbiBlcnJvci4g
SW50ZXJuZXQgY29tbXVuaWNhdGlvbnMgY2Fubm90IGJlIGd1YXJhbnRlZWQgdG8gYmUgdGltZWx5
LCBzZWN1cmUsIGVycm9yLWZyZWUgb3IgdmlydXMtZnJlZS4gVGhlIHNlbmRlciBkb2VzIG5vdCBh
Y2NlcHQgbGlhYmlsaXR5IGZvciBhbnkgZXJyb3JzIG9yIG9taXNzaW9ucy4NCuacrOmCruS7tuWP
iuWFtumZhOS7tuWFt+acieS/neWvhuaAp+i0qO+8jOWPl+azleW+i+S/neaKpOS4jeW+l+azhOmc
su+8jOS7heWPkemAgee7meacrOmCruS7tuaJgOaMh+eJueWumuaUtuS7tuS6uuOAguS4peemgemd
nue7j+aOiOadg+S9v+eUqOOAgeWuo+S8oOOAgeWPkeW4g+aIluWkjeWItuacrOmCruS7tuaIluWF
tuWGheWuueOAguiLpemdnuivpeeJueWumuaUtuS7tuS6uu+8jOivt+WLv+mYheivu+OAgeWkjeWI
tuOAgSDkvb/nlKjmiJbmiqvpnLLmnKzpgq7ku7bnmoTku7vkvZXlhoXlrrnjgILoi6Xor6/mlLbm
nKzpgq7ku7bvvIzor7fku47ns7vnu5/kuK3msLjkuYXmgKfliKDpmaTmnKzpgq7ku7blj4rmiYDm
nInpmYTku7bvvIzlubbku6Xlm57lpI3pgq7ku7bnmoTmlrnlvI/ljbPliLvlkYrnn6Xlj5Hku7bk
urrjgILml6Dms5Xkv53or4HkupLogZTnvZHpgJrkv6Hlj4rml7bjgIHlronlhajjgIHml6Dor6/m
iJbpmLLmr5LjgILlj5Hku7bkurrlr7nku7vkvZXplJnmvI/lnYfkuI3mib/mi4XotKPku7vjgIIN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
