Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8FF13D148
	for <lists+linux-mtd@lfdr.de>; Thu, 16 Jan 2020 01:54:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6vZucLEZJyXxY4G2/o7eglExoKX097/QuLSC5YKCYSM=; b=qPEw70A0Yz6XuW
	26oDowN4cKFj435p/iV80LhpHJER9oSzK/5aE3Io7FWDrpVPkDCkQUfQVEJj68jhLzs4PKjeEwklY
	clwpQ3qV5TEJVrXxfrrrWUPefQfA1gBalF6g6ytf8c02qKAnlLEvv07Qy15EzNfWg0zYsRbyitR0Z
	jaKJJmYhwE/Rwen2MunHnB4MsFVl/2+RUeOBwnN5js4avgeaz1l4L5jX5Opam1IGbFzrJs3XVrb2P
	oOe5cy23rQOorARo4VYNCYgj0Aghl2lfQuyeLw+eG+BdJ5Rq6v/WSagSFirgqAfs+Ljbxfj6rEQyj
	C12GCvbZF7ElaVmyZPwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irtQw-0000Bp-LT; Thu, 16 Jan 2020 00:54:50 +0000
Received: from mx1.unisoc.com ([222.66.158.135] helo=SHSQR01.spreadtrum.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irtQm-0000B3-Kg
 for linux-mtd@lists.infradead.org; Thu, 16 Jan 2020 00:54:42 +0000
Received: from ig2.spreadtrum.com (shmbx02.spreadtrum.com [10.0.1.204])
 by SHSQR01.spreadtrum.com with ESMTPS id 00G0riXP017740
 (version=TLSv1 cipher=AES256-SHA bits=256 verify=NO)
 for <linux-mtd@lists.infradead.org>; Thu, 16 Jan 2020 08:53:44 +0800 (CST)
 (envelope-from Carson.Li1@unisoc.com)
Received: from SHMBX04.spreadtrum.com (10.0.1.214) by SHMBX02.spreadtrum.com
 (10.0.1.204) with Microsoft SMTP Server (TLS) id 15.0.847.32; Thu, 16 Jan
 2020 08:54:17 +0800
Received: from SHMBX04.spreadtrum.com ([fe80::8532:ef18:9217:26f5]) by
 shmbx04.spreadtrum.com ([fe80::8532:ef18:9217:26f5%13]) with mapi id
 15.00.0847.030; Thu, 16 Jan 2020 08:54:17 +0800
From: =?utf-8?B?5p2O5YKy5YKyIChDYXJzb24gTGkxLzk1NDIp?= <Carson.Li1@unisoc.com>
To: linux-mtd <linux-mtd@lists.infradead.org>
Subject: Re: ubifs: read bad node type in ubifs_tnc_read_wbuf
Thread-Topic: ubifs: read bad node type in ubifs_tnc_read_wbuf
Thread-Index: AQHVyaL3y4TC5HCNzkiSy+TVWaB7mKfpWzQwG5Qm157/JAOmUHIw88Ik/HDzxSA=
Date: Thu, 16 Jan 2020 00:54:16 +0000
Message-ID: <5098ed7bf9734a638728d99cb671ec1c@shmbx04.spreadtrum.com>
References: <e2d34800d72243ed85e8df63bb80f7ab@shmbx04.spreadtrum.com>
 <ce621148db0e4f9c80f32c348975663a@shmbx04.spreadtrum.com>
 <ae16d475c0d24c1ba6ab18f1e766e928@shmbx04.spreadtrum.com>
 <46e2f6ca11a442f38d476d4346e8034c@shmbx04.spreadtrum.com>
 <733427970.19532.1578872935782.JavaMail.zimbra@nod.at>
 <5077cb7894bc4b95b09389059edf0ddc@shmbx04.spreadtrum.com>
 <1323907091.20398.1578989376426.JavaMail.zimbra@nod.at>
 <51cabef7ce104de097c2556a4a24d8a7@shmbx04.spreadtrum.com>
 <1741454272.21050.1579043778589.JavaMail.zimbra@nod.at>
In-Reply-To: <1741454272.21050.1579043778589.JavaMail.zimbra@nod.at>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.3.245]
MIME-Version: 1.0
X-MAIL: SHSQR01.spreadtrum.com 00G0riXP017740
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_165441_153505_C4FACB93 
X-CRM114-Status: UNSURE (   2.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

PkxQUk9QU19UQUtFTiBzaG91bGQgYXZvaWQgdGhpcy4NCklzIGl0IHBvc3NpYmxlIHRoYXQgYSBj
b21taXQgZmluaXNoZXMgYW5kIHJlbW92ZXMgdGhlIExQUk9QU19UQUtFTiBmbGFnPw0KYW5kIHdo
ZW4gaXQgaXMgcmV1c2VkIGFzIGEgam91cm5hbCBoZWFkLCBMUFJPUFNfVEFLRU4gZmxhZyBpcyBz
ZXQgYWdhaW4uDQoNCj5JZiBwb3NzaWJsZSwgY2FuIHlvdSBwbGVhc2UgY2hlY2sgdGhlIGxwcm9i
cyBvZiB0aGUgYWZmZWN0ZWQgTEVCcz8NCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
Y2FzZSAxLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0Kamhl
YWRbR0NIRF0ud2J1Zi5sbnVtICAgPSAxOTUoZm91bmQgaW4gVE5DKQ0KamhlYWRbREFUQUhEXS53
YnVmLmxudW0gID0gMTM5KHpiciBwYXNzZWQgdG8gdWJpZnNfdG5jX3JlYWRfbm9kZSkNCg0Kc3Ry
dWN0IHViaWZzX2xwcm9wcyA9DQp7DQogICAgICBmcmVlID0gNDA5NiwNCiAgICAgIGRpcnR5ID0g
MTIzMjcyLA0KICAgICAgZmxhZ3MgPSAxNiwgLy9MUFJPUFNfVEFLRU4NCiAgICAgIGxudW0gPSAx
OTUsDQogICAgICB7DQogICAgICAgIGxpc3QgPSB7DQogICAgICAgICAgbmV4dCA9IDB4Y2QxYWQ2
ZDgsDQogICAgICAgICAgcHJldiA9IDB4Y2QxYWQ0NDANCiAgICAgICAgfSwNCiAgICAgICAgaHBv
cyA9IC04NTM4NzkwODANCiAgICAgIH0NCiAgICB9DQoNCnN0cnVjdCB1Ymlmc19scHJvcHMgPSB7
DQogICAgICBmcmVlID0gMTI0OTQ0LA0KICAgICAgZGlydHkgPSAwLA0KICAgICAgZmxhZ3MgPSAx
NiwgLy9MUFJPUFNfVEFLRU4NCiAgICAgIGxudW0gPSAxMzksDQogICAgICB7DQogICAgICAgIGxp
c3QgPSB7DQogICAgICAgICAgbmV4dCA9IDB4YzhiZTk2YzAsDQogICAgICAgICAgcHJldiA9IDB4
YzkwZTk5YzgNCiAgICAgICAgfSwNCiAgICAgICAgaHBvcyA9IC05MjcwMzM2NjQNCiAgICAgIH0N
CiAgICB9DQoNCm9uZSBtb3JlIGluZm9ybWF0aW9uIGFib3V0IHRoZSB1Ymlmc19idWQgcmJ0cmVl
Og0KDQpjcmFzaF9hcm0+IHRyZWUgLXQgcmJ0cmVlIC1vIHViaWZzX2J1ZC5yYiAtTiAweGNkMTk2
ZGQ0IC1zIHViaWZzX2J1ZC5sbnVtDQpjZDE5NmRjMA0KICBsbnVtID0gMTk1Ly9qaGVhZFtHQ0hE
XQ0KYzg5MjA3YzANCiAgbG51bSA9IDYwDQpjZDE5NmZjMA0KICBsbnVtID0gNTkNCmM4YmQ1ZTQw
DQogIGxudW0gPSAxMjUNCmM4OTM1NjAwDQogIGxudW0gPSA5Nw0KYzJhYWZlYzANCiAgbG51bSA9
IDEzOS8vamhlYWRbREFUQUhEXQ0KYzhiYjIxNDANCiAgbG51bSA9IDI3OS8vamhlYWRbQkFTRUhE
XQ0KYzhlZThkMDANCiAgbG51bSA9IDIzOQ0KY2QxOTY5ODANCiAgbG51bSA9IDM0OA0KLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS1jYXNlIDItLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tDQpqaGVhZFtHQ0hEXS53YnVmLmxudW0gICA9IDIyNChmb3Vu
ZCBpbiBUTkMpDQpqaGVhZFtEQVRBSERdLndidWYubG51bSAgPSA1NCh6YnIgcGFzc2VkIHRvIHVi
aWZzX3RuY19yZWFkX25vZGUpDQoNCnN0cnVjdCB1Ymlmc19scHJvcHMgPQ0Kew0KICAgICAgZnJl
ZSA9IDI0NTc2LA0KICAgICAgZGlydHkgPSAxMjc2NDAsDQogICAgICBmbGFncyA9IDE2LCAvL0xQ
Uk9QU19UQUtFTg0KICAgICAgbG51bSA9IDIyNCwNCiAgICAgIHsNCiAgICAgICAgbGlzdCA9IHsN
CiAgICAgICAgICBuZXh0ID0gMHhjOTAxNGVjMCwNCiAgICAgICAgICBwcmV2ID0gMHhjOTFlZDBj
MA0KICAgICAgICB9LA0KICAgICAgICBocG9zID0gLTkyMjY2MTE4NA0KICAgICAgfQ0KIH0NCnN0
cnVjdCB1Ymlmc19scHJvcHMgPQ0Kew0KICAgICAgZnJlZSA9IDQ1OTUyLA0KICAgICAgZGlydHkg
PSAwLA0KICAgICAgZmxhZ3MgPSAxNiwgLy9MUFJPUFNfVEFLRU4NCiAgICAgIGxudW0gPSA1NCwN
CiAgICAgIHsNCiAgICAgICAgbGlzdCA9IHsNCiAgICAgICAgICBuZXh0ID0gMHhjZDFkNDMyOCwN
CiAgICAgICAgICBwcmV2ID0gMHhjOTBlYTljOA0KICAgICAgICB9LA0KICAgICAgICBocG9zID0g
LTg1MzcyMDI4MA0KICAgICAgfQ0KICAgIH0NCg0KY3Jhc2hfYXJtPiB0cmVlIC10IHJidHJlZSAt
byB1Ymlmc19idWQucmIgLU4gMHhjNmFmYWUxNCAtcyB1Ymlmc19idWQubG51bQ0KYzZhZmFlMDAN
CiAgbG51bSA9IDg4DQpjOGZhNTU0MA0KICBsbnVtID0gNTMvL2poZWFkW0JBU0VIRF0NCmM5MTZi
NTAwDQogIGxudW0gPSA0Mg0KYzhmOGIxNDANCiAgbG51bSA9IDYyDQpjMmE5NTNjMA0KICBsbnVt
ID0gNTQvL2poZWFkW0RBVEFIRF0NCmM5MTZiNDgwDQogIGxudW0gPSAyMTUNCmMyYWMwMDQwDQog
IGxudW0gPSAxMjANCmM5MTZiNDAwDQogIGxudW0gPSAyMjQvL2poZWFkW0dDSERdDQpjNmIwMmY4
MA0KICBsbnVtID0gMjcxDQoNCkJ5IHRoZSB3YXksIHRoZXJlIGlzIGFub3RoZXIgdGltaW5nIHRo
ZSBMRUIgbWlnaHQgYmUgZ2FyYmFnZSBjb2xsZWN0ZWQ6DQo+ICAgICBBICAgICAgfCAgICAgICAg
ICAgICAgQg0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiB1Ymlmc190bmNfbG9jYXRlDQo+ICAgemJy
LT5sbnVtID0gNTQgKGZpbmQgaW4gVE5DKQ0KPiAgICAgdWJpZnNfZ2V0X3didWYoemJyLT5sbnVt
ID0gNTQpIGlzIHR1cmUNCj4gICAgICAgICAgdWJpZnNfdG5jX3JlYWRfbm9kZQ0KPiAgICAgICAg
ICAgICAgICAgICAgICAgICAtPkdDKGNoYW5nZSB6dC0+bG51bSB0byAyMjQoR0NIRCkgaW4gX1RO
Q18pDQo+ICAgICAgICAgICAgICAgICAgICAgICAgIC0+emJyLT5sbnVtID0gNTQgYmVjb21lcyBE
QVRBSEQNCj4gICAgICAgICAgICAgdWJpZnNfZ2V0X3didWYoemJyLT5sbnVtID0gNTQgYXMgdGhl
IERBVEFIRCkgaXMgdHVyZSBhZ2Fpbg0KPiAgICAgICAgICAgICB1Ymlmc19yZWFkX25vZGVfd2J1
Zg0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KDQogICAgIEEgICAgICB8ICAgICAgICAgICAgICBCDQog
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tDQp1Ymlmc190bmNfbG9jYXRlDQogICB6YnItPmxudW0gPSA1NCAo
ZmluZCBpbiBUTkMpDQogICAgICAgICAgICAgICAgICAgICAgICAgLT5HQyhjaGFuZ2UgenQtPmxu
dW0gdG8gMjI0KEdDSEQpIGluIF9UTkNfKQ0KICAgICAgICAgICAgICAgICAgICAgICAgIC0+emJy
LT5sbnVtID0gNTQgYmVjb21lcyBEQVRBSEQNCiAgICAgdWJpZnNfZ2V0X3didWYoemJyLT5sbnVt
ID0gNTQgYXMgdGhlIERBVEFIRCkgaXMgdHVyZQ0KICAgICAgICAgIHViaWZzX3RuY19yZWFkX25v
ZGUNCiAgICAgICAgICAgICB1Ymlmc19nZXRfd2J1Zih6YnItPmxudW0gPSA1NCkgaXMgdHVyZSBh
Z2Fpbg0KICAgICAgICAgICAgIHViaWZzX3JlYWRfbm9kZV93YnVmDQogLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tDQoNClRoYW5rcy4NCkNhcnNvbg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18N
CiBUaGlzIGVtYWlsIChpbmNsdWRpbmcgaXRzIGF0dGFjaG1lbnRzKSBpcyBpbnRlbmRlZCBvbmx5
IGZvciB0aGUgcGVyc29uIG9yIGVudGl0eSB0byB3aGljaCBpdCBpcyBhZGRyZXNzZWQgYW5kIG1h
eSBjb250YWluIGluZm9ybWF0aW9uIHRoYXQgaXMgcHJpdmlsZWdlZCwgY29uZmlkZW50aWFsIG9y
IG90aGVyd2lzZSBwcm90ZWN0ZWQgZnJvbSBkaXNjbG9zdXJlLiBVbmF1dGhvcml6ZWQgdXNlLCBk
aXNzZW1pbmF0aW9uLCBkaXN0cmlidXRpb24gb3IgY29weWluZyBvZiB0aGlzIGVtYWlsIG9yIHRo
ZSBpbmZvcm1hdGlvbiBoZXJlaW4gb3IgdGFraW5nIGFueSBhY3Rpb24gaW4gcmVsaWFuY2Ugb24g
dGhlIGNvbnRlbnRzIG9mIHRoaXMgZW1haWwgb3IgdGhlIGluZm9ybWF0aW9uIGhlcmVpbiwgYnkg
YW55b25lIG90aGVyIHRoYW4gdGhlIGludGVuZGVkIHJlY2lwaWVudCwgb3IgYW4gZW1wbG95ZWUg
b3IgYWdlbnQgcmVzcG9uc2libGUgZm9yIGRlbGl2ZXJpbmcgdGhlIG1lc3NhZ2UgdG8gdGhlIGlu
dGVuZGVkIHJlY2lwaWVudCwgaXMgc3RyaWN0bHkgcHJvaGliaXRlZC4gSWYgeW91IGFyZSBub3Qg
dGhlIGludGVuZGVkIHJlY2lwaWVudCwgcGxlYXNlIGRvIG5vdCByZWFkLCBjb3B5LCB1c2Ugb3Ig
ZGlzY2xvc2UgYW55IHBhcnQgb2YgdGhpcyBlLW1haWwgdG8gb3RoZXJzLiBQbGVhc2Ugbm90aWZ5
IHRoZSBzZW5kZXIgaW1tZWRpYXRlbHkgYW5kIHBlcm1hbmVudGx5IGRlbGV0ZSB0aGlzIGUtbWFp
bCBhbmQgYW55IGF0dGFjaG1lbnRzIGlmIHlvdSByZWNlaXZlZCBpdCBpbiBlcnJvci4gSW50ZXJu
ZXQgY29tbXVuaWNhdGlvbnMgY2Fubm90IGJlIGd1YXJhbnRlZWQgdG8gYmUgdGltZWx5LCBzZWN1
cmUsIGVycm9yLWZyZWUgb3IgdmlydXMtZnJlZS4gVGhlIHNlbmRlciBkb2VzIG5vdCBhY2NlcHQg
bGlhYmlsaXR5IGZvciBhbnkgZXJyb3JzIG9yIG9taXNzaW9ucy4NCuacrOmCruS7tuWPiuWFtumZ
hOS7tuWFt+acieS/neWvhuaAp+i0qO+8jOWPl+azleW+i+S/neaKpOS4jeW+l+azhOmcsu+8jOS7
heWPkemAgee7meacrOmCruS7tuaJgOaMh+eJueWumuaUtuS7tuS6uuOAguS4peemgemdnue7j+aO
iOadg+S9v+eUqOOAgeWuo+S8oOOAgeWPkeW4g+aIluWkjeWItuacrOmCruS7tuaIluWFtuWGheWu
ueOAguiLpemdnuivpeeJueWumuaUtuS7tuS6uu+8jOivt+WLv+mYheivu+OAgeWkjeWItuOAgSDk
vb/nlKjmiJbmiqvpnLLmnKzpgq7ku7bnmoTku7vkvZXlhoXlrrnjgILoi6Xor6/mlLbmnKzpgq7k
u7bvvIzor7fku47ns7vnu5/kuK3msLjkuYXmgKfliKDpmaTmnKzpgq7ku7blj4rmiYDmnInpmYTk
u7bvvIzlubbku6Xlm57lpI3pgq7ku7bnmoTmlrnlvI/ljbPliLvlkYrnn6Xlj5Hku7bkurrjgILm
l6Dms5Xkv53or4HkupLogZTnvZHpgJrkv6Hlj4rml7bjgIHlronlhajjgIHml6Dor6/miJbpmLLm
r5LjgILlj5Hku7bkurrlr7nku7vkvZXplJnmvI/lnYfkuI3mib/mi4XotKPku7vjgIINCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBN
VEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
