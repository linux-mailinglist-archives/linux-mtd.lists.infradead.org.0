Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFD6B155814
	for <lists+linux-mtd@lfdr.de>; Fri,  7 Feb 2020 14:07:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=onAz3bkyrWmKvkYBY9/l4FyuiD0iLjmyHuRTIdI6ZdM=; b=K6UAVY7x4hm3+NtbRM6k0JkvR
	h6nXKxhtHGEhPcxyXT3y3RktN27Szq9fDnvfgqe8WPmLoX8V/fFa/KXJf3r63qwfNi634MHQ2a+zH
	dCviULksuu+RhAxyKgHg2AJcECHlPy0SbvkbQO3SR+zb9Q3dywZcqS87JfaFEiLGmXkH8IPTsO0uc
	XhT7B9U4Z0FIk8VEzJ2GjJLzf9nnTyhTulKZq0p6fg7AMK+S358v7sLzjAi192fLeu765/Yqv1UhO
	yzMLDWYSKlMMNeLxdHcdr6cEWWeDMyIQCnHOiFRm5V1JLW65C1Z57hua3K4Y/whE8jY6IJNjmd0cM
	/3LFPafcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j03Ls-0002ey-HH; Fri, 07 Feb 2020 13:07:20 +0000
Received: from de-out1.bosch-org.com ([139.15.230.186])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j03Lf-0002eK-M7
 for linux-mtd@lists.infradead.org; Fri, 07 Feb 2020 13:07:11 +0000
Received: from fe0vm1650.rbesz01.com (unknown [139.15.230.188])
 by si0vms0217.rbdmz01.com (Postfix) with ESMTPS id 48DbD961TLz4f3tlr;
 Fri,  7 Feb 2020 14:06:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=de.bosch.com;
 s=key3-intmail; t=1581080809;
 bh=ucuOEArtKoGWykDln8QmTZrJ/s8pOncC2sqlLXCC5/I=; l=10;
 h=Subject:From:From:Reply-To:Sender;
 b=U7Mhx/KJMdHp2yGYVDRbxMx55MiNNG8UZP1LcJ+4lZU2zol80sakBNV8KEu2aaPuz
 UZcQiJ67afA/L2Kg0EHJgyr8l5hZVzY9nrBW8cVIwhbf6ZLMzoHxnzaCe+zSGSEBWv
 CVCmnL2vDMbDUZzmZEB/Ew8G4S0eBGz3ggOoxzO8=
Received: from fe0vm7918.rbesz01.com (unknown [10.58.172.176])
 by fe0vm1650.rbesz01.com (Postfix) with ESMTPS id 48Db3k3H2TzNqN;
 Fri,  7 Feb 2020 13:59:30 +0100 (CET)
X-AuditID: 0a3aad10-8b5ff70000004724-b6-5e3d5f326390
Received: from fe0vm1651.rbesz01.com ( [10.58.173.29])
 (using TLS with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by fe0vm7918.rbesz01.com (SMG Outbound) with SMTP id B1.9C.18212.23F5D3E5;
 Fri,  7 Feb 2020 13:59:30 +0100 (CET)
Received: from SI-HUB2000.de.bosch.com (si-hub2000.de.bosch.com [10.4.103.108])
 by fe0vm1651.rbesz01.com (Postfix) with ESMTPS id 48Db3k0rw9zvkw;
 Fri,  7 Feb 2020 13:59:30 +0100 (CET)
Received: from [10.34.222.178] (10.34.222.178) by SI-HUB2000.de.bosch.com
 (10.4.103.108) with Microsoft SMTP Server id 15.1.1847.3; Fri, 7 Feb 2020
 13:59:29 +0100
Subject: Re: [PATCH RFT 0/2/2] mtd: hyperbus: add Renesas RPC-IF driver
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>, Miquel Raynal
 <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, Vignesh
 Raghavendra <vigneshr@ti.com>, <linux-mtd@lists.infradead.org>
References: <fd1360ab-8872-f750-1314-77c6d432b413@cogentembedded.com>
 <eba43289-3cb2-406b-cc5f-1209778621bf@cogentembedded.com>
From: "Behme Dirk (CM/ESO2)" <dirk.behme@de.bosch.com>
Message-ID: <34271135-d103-ccd2-2933-59fd4a399795@de.bosch.com>
Date: Fri, 7 Feb 2020 13:59:29 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <eba43289-3cb2-406b-cc5f-1209778621bf@cogentembedded.com>
Content-Language: en-US
X-Originating-IP: [10.34.222.178]
X-Brightmail-Tracker: H4sIAAAAAAAAA22SbUxbVRjHObe3vael191e6Hgoq8xG/WAypGNiZZuQaEY/mKkfTHwDVuRC
 G2mL95ZlwxdwEDdQx17KthZ3mQwnAwe+wFhtWGYXRSuoICLDVIhZCNuQEcmE+ULtpbD2g9+e
 8/8/v/Oc8z8Hy9gpSodtDhfHOyzlBoWKVOWc02/aXLS9MHNOpE3+fWco0+X9F+Wmo75ZZBrs
 mKBM4aF5Kk9uFj961TzVFCbMn7VVm6+Ir5gHxvuIp+TPq7aVcOW23Rz/4KO7VNZjdT1UxehB
 tOen5cNkDQo7GpASA7MFRsUjigakwixznIBg14AsuvAjGAgdIqOLMwgmF5uQhCQx+TCx9Dkl
 GcnMKIJLJ7pX+TcRjDUfkEtdCiYbbrR5VwiayYWm4MJKTTL3wqLv7ZUeLVMAX/W9RUV7NPCN
 5yop1UpmB1ybCa/oMsYEnpbvUbROgYmrLUS0Tofa3mZZ9BL3QG/ITR1CGm/cVt443BuHe+Pw
 U4jsQNpSLnO3/eFHjKYMvpgTqjKNGS857Z+i6BswF5AvWBpABEYB9BAmDFr6OeP2QvauYmfJ
 XqtFsBbxleWcYNDR1bP1BWzSHVmoLLbbBMHmdAQQYJkhmT54X4SjSyx7qzjeGcUCKA2ThhS6
 DD/5IsuUWVzcyxxXwfFr7laMDUDrCyOghufKuD2ltnLXmm3Q0yghIYFdH+/EjyWwMoCysDoy
 +98CabZQYbELtrJVPDWKs2tqDA2ix3Bfp9gqY0mH08HpUuj7JZ6ROq2Vjjsn0G2gu5/OKWS1
 cUZsl+toDGFkSKLTpfOrI587NhvoGikuzaoYgza3RhhmMhn+XmCgy60HcR8P4oVbCOoO/4ng
 9u9NBLhbzhOw1DNAwMJ3ywSc7dlPwsySn4x8zI/l4GtzK6Bx5AsFhMVFCkTPaQw9jZcxXPPc
 wNA+XKsEv/iuEupHgkpYeGdICe+d/U0JwwduKuHK7FgizAx+rYYvB0/R4KtvXQe3RqfXwZGb
 HRoYGZ/WQv/y6fXXI6kSkVT7c7dJqbosrv9JdVWNXU1Xg9LudrKpW+e3DDv7/+j2fvhE80l1
 9vz4Jw31VdyvRzf5hr7Nd3tsoddCnfl5XQuvb3ROVufmbdTPZu08nrPBb5w6L09XU7Vs+/Qv
 O4p0abefSeR+QHyO4se/erOyz71w4vFJMdSIOWunae6fnzvq5hMznrXzb+x6/+KlD1Lndhaf
 bG8wkILVYnxAxguW/wD+NrlQcwQAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_050708_367278_0C996CE6 
X-CRM114-Status: GOOD (  24.51  )
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [139.15.230.186 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGksCgpPbiAyOS4wMS4yMDIwIDIxOjM5LCBTZXJnZWkgU2h0eWx5b3Ygd3JvdGU6Cj4gQWRkIHRo
ZSBIeXBlckZMYXNoIGRyaXZlciBmb3IgdGhlIFJlbmVzYXMgUlBDLUlGLiAgSXQncyB0aGUgImZy
b250IGVuZCIKPiBkcml2ZXIgdXNpbmcgdGhlICJiYWNrIGVuZCIgQVBJcyBpbiB0aGUgbWFpbiBk
cml2ZXIgdG8gdGFsayB0byB0aGUgcmVhbAo+IGhhcmR3YXJlLgo+IAo+IFNpZ25lZC1vZmYtYnk6
IFNlcmdlaSBTaHR5bHlvdiA8c2VyZ2VpLnNodHlseW92QGNvZ2VudGVtYmVkZGVkLmNvbT4KPiAK
PiAtLS0KPiAgIGRyaXZlcnMvbXRkL2h5cGVyYnVzL0tjb25maWcgIHwgICAgNiArCj4gICBkcml2
ZXJzL210ZC9oeXBlcmJ1cy9NYWtlZmlsZSB8ICAgIDEKPiAgIGRyaXZlcnMvbXRkL2h5cGVyYnVz
L3JwYy1pZi5jIHwgIDE2MiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysKPiAgIDMgZmlsZXMgY2hhbmdlZCwgMTY5IGluc2VydGlvbnMoKykKPiAKPiBJbmRleDogbGlu
dXgvZHJpdmVycy9tdGQvaHlwZXJidXMvS2NvbmZpZwo+ID09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KPiAtLS0gbGludXgu
b3JpZy9kcml2ZXJzL210ZC9oeXBlcmJ1cy9LY29uZmlnCj4gKysrIGxpbnV4L2RyaXZlcnMvbXRk
L2h5cGVyYnVzL0tjb25maWcKPiBAQCAtMjIsNCArMjIsMTAgQEAgY29uZmlnIEhCTUNfQU02NTQK
PiAgIAkgVGhpcyBpcyB0aGUgZHJpdmVyIGZvciBIeXBlckJ1cyBjb250cm9sbGVyIG9uIFRJJ3Mg
QU02NXggYW5kCj4gICAJIG90aGVyIFNvQ3MKPiAgIAo+ICtjb25maWcgUlBDSUZfSFlQRVJCVVMK
PiArCXRyaXN0YXRlICJSZW5lc2FzIFJQQy1JRiBIeXBlckJ1cyBkcml2ZXIiCj4gKwlkZXBlbmRz
IG9uIFJFTkVTQVNfUlBDSUYKPiArCWhlbHAKPiArCSAgVGhpcyBvcHRpb24gaW5jbHVkZXMgUmVu
ZXNhcyBSUEMtSUYgSHlwZXJGbGFzaCBzdXBwb3J0Lgo+ICsKPiAgIGVuZGlmICMgTVREX0hZUEVS
QlVTCj4gSW5kZXg6IGxpbnV4L2RyaXZlcnMvbXRkL2h5cGVyYnVzL01ha2VmaWxlCj4gPT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PQo+IC0tLSBsaW51eC5vcmlnL2RyaXZlcnMvbXRkL2h5cGVyYnVzL01ha2VmaWxlCj4gKysr
IGxpbnV4L2RyaXZlcnMvbXRkL2h5cGVyYnVzL01ha2VmaWxlCj4gQEAgLTIsMyArMiw0IEBACj4g
ICAKPiAgIG9iai0kKENPTkZJR19NVERfSFlQRVJCVVMpCSs9IGh5cGVyYnVzLWNvcmUubwo+ICAg
b2JqLSQoQ09ORklHX0hCTUNfQU02NTQpCSs9IGhibWMtYW02NTQubwo+ICtvYmotJChDT05GSUdf
UlBDSUZfSFlQRVJCVVMpCSs9IHJwYy1pZi5vCj4gSW5kZXg6IGxpbnV4L2RyaXZlcnMvbXRkL2h5
cGVyYnVzL3JwYy1pZi5jCj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PQo+IC0tLSAvZGV2L251bGwKPiArKysgbGludXgv
ZHJpdmVycy9tdGQvaHlwZXJidXMvcnBjLWlmLmMKPiBAQCAtMCwwICsxLDE2MiBAQAo+ICsvLyBT
UERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+ICsvKgo+ICsgKiBMaW51eCBkcml2ZXIg
Zm9yIFJQQy1JRiBIeXBlckZsYXNoCj4gKyAqCj4gKyAqIENvcHlyaWdodCAoQykgMjAxOSBDb2dl
bnQgRW1iZWRkZWQsIEluYy4KPiArICovCj4gKwo+ICsjaW5jbHVkZSA8bGludXgvZXJyLmg+Cj4g
KyNpbmNsdWRlIDxsaW51eC9rZXJuZWwuaD4KPiArI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgo+
ICsjaW5jbHVkZSA8bGludXgvbXRkL2h5cGVyYnVzLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9tdGQv
bXRkLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9tdXgvY29uc3VtZXIuaD4KPiArI2luY2x1ZGUgPGxp
bnV4L29mLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPiArI2luY2x1
ZGUgPGxpbnV4L3R5cGVzLmg+Cj4gKwo+ICsjaW5jbHVkZSA8bWVtb3J5L3JlbmVzYXMtcnBjLWlm
Lmg+Cj4gKwo+ICtzdHJ1Y3QJcnBjaWZfaHlwZXJidXMgewo+ICsJc3RydWN0IHJwY2lmIHJwYzsK
PiArCXN0cnVjdCBoeXBlcmJ1c19jdGxyIGN0bHI7Cj4gKwlzdHJ1Y3QgaHlwZXJidXNfZGV2aWNl
IGhiZGV2Owo+ICt9Owo+ICsKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBycGNpZl9vcCBycGNpZl9v
cF90bXBsID0gewo+ICsJLmNtZCA9IHsKPiArCQkuYnVzd2lkdGggPSA4LAo+ICsJCS5kZHIgPSB0
cnVlLAo+ICsJfSwKPiArCS5vY21kID0gewo+ICsJCS5idXN3aWR0aCA9IDgsCj4gKwkJLmRkciA9
IHRydWUsCj4gKwl9LAo+ICsJLmFkZHIgPSB7Cj4gKwkJLm5ieXRlcyA9IDEsCj4gKwkJLmJ1c3dp
ZHRoID0gOCwKPiArCQkuZGRyID0gdHJ1ZSwKPiArCX0sCj4gKwkuZGF0YSA9IHsKPiArCQkuYnVz
d2lkdGggPSA4LAo+ICsJCS5kZHIgPSB0cnVlLAo+ICsJfSwKPiArfTsKPiArCj4gK3N0YXRpYyB1
MTYgcnBjaWZfaGJfcmVhZDE2KHN0cnVjdCBoeXBlcmJ1c19kZXZpY2UgKmhiZGV2LCB1bnNpZ25l
ZCBsb25nIGFkZHIpCj4gK3sKPiArCXN0cnVjdCBycGNpZl9oeXBlcmJ1cyAqaHlwZXJidXMgPQo+
ICsJCWNvbnRhaW5lcl9vZihoYmRldiwgc3RydWN0IHJwY2lmX2h5cGVyYnVzLCBoYmRldik7Cj4g
KwlzdHJ1Y3QgcnBjaWZfb3Agb3AgPSBycGNpZl9vcF90bXBsOwo+ICsJbWFwX3dvcmQgZGF0YTsK
PiArCj4gKwlvcC5jbWQub3Bjb2RlID0gMHhDMDsKPiArCW9wLmFkZHIudmFsID0gYWRkciA+PiAx
Owo+ICsJb3AuZHVtbXkuYnVzd2lkdGggPSAxOwo+ICsJb3AuZHVtbXkubmN5Y2xlcyA9IDE1Owo+
ICsJb3AuZGF0YS5kaXIgPSBSUENJRl9EQVRBX0lOOwo+ICsJb3AuZGF0YS5uYnl0ZXMgPSAyOwo+
ICsJb3AuZGF0YS5idWYuaW4gPSAmZGF0YTsKPiArCXJwY2lmX3ByZXBhcmUoJmh5cGVyYnVzLT5y
cGMsICZvcCwgTlVMTCwgTlVMTCk7IC8vID8KPiArCXJwY2lmX2lvX3hmZXIoJmh5cGVyYnVzLT5y
cGMpOwo+ICsKPiArCXJldHVybiBiZTE2X3RvX2NwdShkYXRhLnhbMF0pOwo+ICt9Cj4gKwo+ICtz
dGF0aWMgdm9pZCBycGNpZl9oYl93cml0ZTE2KHN0cnVjdCBoeXBlcmJ1c19kZXZpY2UgKmhiZGV2
LCB1bnNpZ25lZCBsb25nIGFkZHIsCj4gKwkJCSAgICAgdTE2IGRhdGEpCj4gK3sKPiArCXN0cnVj
dCBycGNpZl9oeXBlcmJ1cyAqaHlwZXJidXMgPQo+ICsJCWNvbnRhaW5lcl9vZihoYmRldiwgc3Ry
dWN0IHJwY2lmX2h5cGVyYnVzLCBoYmRldik7Cj4gKwlzdHJ1Y3QgcnBjaWZfb3Agb3AgPSBycGNp
Zl9vcF90bXBsOwo+ICsKPiArCW9wLmNtZC5vcGNvZGUgPSAweDQwOwo+ICsJb3AuYWRkci52YWwg
PSBhZGRyID4+IDE7Cj4gKwlvcC5kYXRhLmRpciA9IFJQQ0lGX0RBVEFfT1VUOwo+ICsJb3AuZGF0
YS5uYnl0ZXMgPSAyOwo+ICsJb3AuZGF0YS5idWYub3V0ID0gJmRhdGE7Cj4gKwljcHVfdG9fYmUx
NnMoJmRhdGEpOwoKCgpUZXN0aW5nIHRoaXMsIEkgZm91bmQgdGhhdCB3cml0aW5nIGRhdGEgdG8g
dGhlIEh5cGVyZmxhc2ggcmVzdWx0cyBpbiAKc3dhcHBlZCBfZGF0YV8gaW4gSHlwZXJmbGFzaCBk
dWUgdG8gdGhpcyBjcHVfdG9fYmUxNnMoKSBjb252ZXJzaW9uOgoKMDIgMDEgMDQgMDMgMDYgMDUg
MDggMDcgLi4uCgpCcmVha2luZyB0aGUgdXNhZ2Ugb2YgdGhlIGRhdGEgd3JpdHRlbiBmb3Igb3Ro
ZXIgdXNlcnMsIGkuZS4gdGhlIGJvb3QgCmxvYWRlcnMuCgpPbiB0aGUgb3RoZXIgaGFuZCwgZHJv
cHBpbmcgdGhpcyBjcHVfdG9fYmUxNnMoKSAoYW5kIGJlMTZfdG9fY3B1KCkgaW4gCnRoZSByZWFk
MTYgYWJvdmUpIG1ha2VzIHRoZSBwcm9iaW5nIHRvIGZhaWwgY29tcGxldGVseS4KClRoZSB0b3Bp
YyBzZWVtcyB0byBiZSB0aGF0IHJwY2lmX2hiX3dyaXRlMTYoKSBoYW5kbGVzIGNvbW1hbmQgX2Fu
ZF8gCmRhdGEsIGFuZCB0aGUgY29tbWFuZHMgc2VlbSB0byBuZWVkIHRoZSBjb252ZXJzaW9uLgoK
QXMgbWVudGlvbmVkLCB0aGUgZmlyc3QgaWRlYSwgZHJvcHBpbmcgdGhlIGNvbnZlcnNpb24gYW5k
IGFkZGluZyBzb21lIApkZWJ1ZyBvdXRwdXQgaW4gdGhlIGRyaXZlciBbMV0gcmVzdWx0cyBpbiBm
YWlsZWQgcHJvYmUgWzJdLiBTdWNjZXNzZnVsIApwcm9iaW5nIG9mIHRoZSB1bm1vZGlmaWVkIGRy
aXZlciAgcmVzdWx0cyBpbiBbM10sIHRoZW4uCgpTZWVtcyBJIG5lZWQgc29tZSBhZHZpY2U6IFdo
eSBpcyB0aGlzIGNvbnZlcnNpb24gZm9yIHN1Y2Nlc3NmdWwgcHJvYmUgCnJlcXVpcmVkPyBXaHkg
aXMgdGhlIGZpcnN0ICdRUlknIHJldHVybmVkIGJ5IHRoZSBkZXZpY2Ugbm90IGRldGVjdGVkIGJ5
IApjZmlfcXJ5X21vZGVfb24oKT8gSXMgdGhlIGFueSBwb3NzaWJpbGl0eSB0byBkcm9wIHRoZSBj
b252ZXJzaW9uIF9hbmRfIAptYWtlIHRoZSBkcml2ZXIgcHJvYmUgc3VjY2Vzc2Z1bD8gT3IgZG8g
d2UgbmVlZCB0byBzcGxpdCB0aGUgcGF0aCB0aGUgCmNvbW1hbmRzIGFuZCB0aGUgZGF0YSBhcmUg
cm91dGVkPyBJZiBzbywgaG93PwoKTWFueSBxdWVzdGlvbnMgOykKCkJlc3QgcmVnYXJkcwoKRGly
awoKClsxXSBEcm9wcGluZyBiZTE2X3RvX2NwdSgpICYgY3B1X3RvX2JlMTZzKCkgYW5kIGFkZGlu
ZyBzb21lIGRlYnVnIG91dHB1dDoKCmRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9jaGlwcy9jZmlf
dXRpbC5jIGIvZHJpdmVycy9tdGQvY2hpcHMvY2ZpX3V0aWwuYwppbmRleCA2ZjE2NTUyY2Q1OWYu
LmU1ZGQ4ZGQzYjU5NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9tdGQvY2hpcHMvY2ZpX3V0aWwuYwor
KysgYi9kcml2ZXJzL210ZC9jaGlwcy9jZmlfdXRpbC5jCkBAIC0yMzksOSArMjM5LDEzIEBAIGlu
dCBfX3hpcHJhbSBjZmlfcXJ5X3ByZXNlbnQoc3RydWN0IG1hcF9pbmZvICptYXAsIApfX3UzMiBi
YXNlLAogIH0KICBFWFBPUlRfU1lNQk9MX0dQTChjZmlfcXJ5X3ByZXNlbnQpOwoKK3N0YXRpYyB1
bnNpZ25lZCBpbnQgY291bnQgPSAxOworCiAgaW50IF9feGlwcmFtIGNmaV9xcnlfbW9kZV9vbih1
aW50MzJfdCBiYXNlLCBzdHJ1Y3QgbWFwX2luZm8gKm1hcCwKICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgc3RydWN0IGNmaV9wcml2YXRlICpjZmkpCiAgeworICAgICAgIHByX2VycigiY2Zp
X3FyeV9tb2RlX29uKCkgY2FsbGVkICMlaVxuIiwgY291bnQrKyk7CisKICAgICAgICAgY2ZpX3Nl
bmRfZ2VuX2NtZCgweEYwLCAwLCBiYXNlLCBtYXAsIGNmaSwgY2ZpLT5kZXZpY2VfdHlwZSwgTlVM
TCk7CiAgICAgICAgIGNmaV9zZW5kX2dlbl9jbWQoMHg5OCwgMHg1NSwgYmFzZSwgbWFwLCBjZmks
IGNmaS0+ZGV2aWNlX3R5cGUsIApOVUxMKTsKICAgICAgICAgaWYgKGNmaV9xcnlfcHJlc2VudCht
YXAsIGJhc2UsIGNmaSkpCkBAIC0yNzMsNiArMjc3LDkgQEAgaW50IF9feGlwcmFtIGNmaV9xcnlf
bW9kZV9vbih1aW50MzJfdCBiYXNlLCBzdHJ1Y3QgCm1hcF9pbmZvICptYXAsCiAgICAgICAgIGlm
IChjZmlfcXJ5X3ByZXNlbnQobWFwLCBiYXNlLCBjZmkpKQogICAgICAgICAgICAgICAgIHJldHVy
biAxOwogICAgICAgICAvKiBRUlkgbm90IGZvdW5kICovCisKKyAgICAgICBwcl9lcnIoImNmaV9x
cnlfbW9kZV9vbigpIGZhaWxlZFxuIik7CisKICAgICAgICAgcmV0dXJuIDA7CiAgfQogIEVYUE9S
VF9TWU1CT0xfR1BMKGNmaV9xcnlfbW9kZV9vbik7CmRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9o
eXBlcmJ1cy9ycGMtaWYuYyBiL2RyaXZlcnMvbXRkL2h5cGVyYnVzL3JwYy1pZi5jCmluZGV4IGE2
NmE1MDgwYjQ4Mi4uYmI4M2E4ZjNmM2JjIDEwMDY0NAotLS0gYS9kcml2ZXJzL210ZC9oeXBlcmJ1
cy9ycGMtaWYuYworKysgYi9kcml2ZXJzL210ZC9oeXBlcmJ1cy9ycGMtaWYuYwpAQCAtNjAsNyAr
NjAsMTEgQEAgc3RhdGljIHUxNiBycGNpZl9oYl9yZWFkMTYoc3RydWN0IGh5cGVyYnVzX2Rldmlj
ZSAKKmhiZGV2LCB1bnNpZ25lZCBsb25nIGFkZHIpCiAgICAgICAgIHJwY2lmX3ByZXBhcmUoJmh5
cGVyYnVzLT5ycGMsICZvcCwgTlVMTCwgTlVMTCk7IC8vID8KICAgICAgICAgcnBjaWZfaW9feGZl
cigmaHlwZXJidXMtPnJwYyk7CgotICAgICAgIHJldHVybiBiZTE2X3RvX2NwdShkYXRhLnhbMF0p
OworICAgICAgIHByX2VycigicmVhZDogIGE6IDB4JTA4bFggIGQ6IDB4JTA0WCAlYyAlY1xuIiwg
YWRkciwgKHVuc2lnbmVkIApzaG9ydClkYXRhLnhbMF0sCisgICAgICAgICAgICAgICh1bnNpZ25l
ZCBjaGFyKSgoZGF0YS54WzBdID4+IDgpICYgMHhGRiksCisgICAgICAgICAgICAgICh1bnNpZ25l
ZCBjaGFyKWRhdGEueFswXSk7CisKKyAgICAgICByZXR1cm4gZGF0YS54WzBdOwogIH0KCiAgc3Rh
dGljIHZvaWQgcnBjaWZfaGJfd3JpdGUxNihzdHJ1Y3QgaHlwZXJidXNfZGV2aWNlICpoYmRldiwg
dW5zaWduZWQgCmxvbmcgYWRkciwKQEAgLTc1LDcgKzc5LDcgQEAgc3RhdGljIHZvaWQgcnBjaWZf
aGJfd3JpdGUxNihzdHJ1Y3QgaHlwZXJidXNfZGV2aWNlIAoqaGJkZXYsIHVuc2lnbmVkIGxvbmcg
YWRkciwKICAgICAgICAgb3AuZGF0YS5kaXIgPSBSUENJRl9EQVRBX09VVDsKICAgICAgICAgb3Au
ZGF0YS5uYnl0ZXMgPSAyOwogICAgICAgICBvcC5kYXRhLmJ1Zi5vdXQgPSAmZGF0YTsKLSAgICAg
ICBjcHVfdG9fYmUxNnMoJmRhdGEpOworICAgICAgIHByX2Vycigid3JpdGU6IGE6IDB4JTA4bFgg
IGQ6IDB4JTA0WFxuIiwgYWRkciwgZGF0YSk7CiAgICAgICAgIHJwY2lmX3ByZXBhcmUoJmh5cGVy
YnVzLT5ycGMsICZvcCwgTlVMTCwgTlVMTCk7IC8vID8KICAgICAgICAgcnBjaWZfaW9feGZlcigm
aHlwZXJidXMtPnJwYyk7CiAgfQoKClsyXSBQcm9iZSBmYWlscyB3aXRob3V0IGJlMTZfdG9fY3B1
L2NwdV90b19iZTE2czoKCmNmaV9xcnlfbW9kZV9vbigpIGNhbGxlZCAjMQp3cml0ZTogYTogMHgw
MDAwMDAwMCAgZDogMHhGMEYwCndyaXRlOiBhOiAweDAwMDAwMEFBICBkOiAweDk4OTgKcmVhZDog
IGE6IDB4MDAwMDAwMjAgIGQ6IDB4NTEwMCBRCnJlYWQ6ICBhOiAweDAwMDAwMDIyICBkOiAweDUy
MDAgUgpyZWFkOiAgYTogMHgwMDAwMDAyNCAgZDogMHg1OTAwIFkKd3JpdGU6IGE6IDB4MDAwMDAw
MDAgIGQ6IDB4RjBGMAp3cml0ZTogYTogMHgwMDAwMDAwMCAgZDogMHhGRkZGCndyaXRlOiBhOiAw
eDAwMDAwMEFBICBkOiAweDk4OTgKcmVhZDogIGE6IDB4MDAwMDAwMjAgIGQ6IDB4NTEwMCBRCnJl
YWQ6ICBhOiAweDAwMDAwMDIyICBkOiAweDUyMDAgUgpyZWFkOiAgYTogMHgwMDAwMDAyNCAgZDog
MHg1OTAwIFkKd3JpdGU6IGE6IDB4MDAwMDAwMDAgIGQ6IDB4RjBGMAp3cml0ZTogYTogMHgwMDAw
MEFBQSAgZDogMHg5ODk4CnJlYWQ6ICBhOiAweDAwMDAwMDIwICBkOiAweDUxMDAgUQpyZWFkOiAg
YTogMHgwMDAwMDAyMiAgZDogMHg1MjAwIFIKcmVhZDogIGE6IDB4MDAwMDAwMjQgIGQ6IDB4NTkw
MCBZCndyaXRlOiBhOiAweDAwMDAwMDAwICBkOiAweEYwRjAKd3JpdGU6IGE6IDB4MDAwMEFBQUEg
IGQ6IDB4QUFBQQp3cml0ZTogYTogMHgwMDAwNTU1NCAgZDogMHg1NTU1CndyaXRlOiBhOiAweDAw
MDBBQUFBICBkOiAweDk4OTgKcmVhZDogIGE6IDB4MDAwMDAwMjAgIGQ6IDB4MDAwMApyZWFkOiAg
YTogMHgwMDAwMDAyMiAgZDogMHgwMDAwCnJlYWQ6ICBhOiAweDAwMDAwMDI0ICBkOiAweDAwMDAK
d3JpdGU6IGE6IDB4MDAwMDAwMDAgIGQ6IDB4RjBGMAp3cml0ZTogYTogMHgwMDAwMEFBQSAgZDog
MHhBQUFBCndyaXRlOiBhOiAweDAwMDAwNTU0ICBkOiAweDU1NTUKd3JpdGU6IGE6IDB4MDAwMDBB
QUEgIGQ6IDB4OTg5OApyZWFkOiAgYTogMHgwMDAwMDAyMCAgZDogMHgwMDAwCnJlYWQ6ICBhOiAw
eDAwMDAwMDIyICBkOiAweDAwMDAKcmVhZDogIGE6IDB4MDAwMDAwMjQgIGQ6IDB4MDAwMApjZmlf
cXJ5X21vZGVfb24oKSBmYWlsZWQKY2ZpX3FyeV9tb2RlX29uKCkgY2FsbGVkICMyCndyaXRlOiBh
OiAweDAwMDAwMDAwICBkOiAweEYwRjAKd3JpdGU6IGE6IDB4MDAwMDAxNTQgIGQ6IDB4OTg5OApy
ZWFkOiAgYTogMHgwMDAwMDA0MCAgZDogMHgwMDAwCnJlYWQ6ICBhOiAweDAwMDAwMDQ0ICBkOiAw
eDAwMDAKcmVhZDogIGE6IDB4MDAwMDAwNDggIGQ6IDB4MDAwMAp3cml0ZTogYTogMHgwMDAwMDAw
MCAgZDogMHhGMEYwCndyaXRlOiBhOiAweDAwMDAwMDAwICBkOiAweEZGRkYKd3JpdGU6IGE6IDB4
MDAwMDAxNTQgIGQ6IDB4OTg5OApyZWFkOiAgYTogMHgwMDAwMDA0MCAgZDogMHgwMDAwCnJlYWQ6
ICBhOiAweDAwMDAwMDQ0ICBkOiAweDAwMDAKcmVhZDogIGE6IDB4MDAwMDAwNDggIGQ6IDB4MDAw
MAp3cml0ZTogYTogMHgwMDAwMDAwMCAgZDogMHhGMEYwCndyaXRlOiBhOiAweDAwMDAxNTU0ICBk
OiAweDk4OTgKcmVhZDogIGE6IDB4MDAwMDAwNDAgIGQ6IDB4MDAwMApyZWFkOiAgYTogMHgwMDAw
MDA0NCAgZDogMHgwMDAwCnJlYWQ6ICBhOiAweDAwMDAwMDQ4ICBkOiAweDAwMDAKd3JpdGU6IGE6
IDB4MDAwMDAwMDAgIGQ6IDB4RjBGMAp3cml0ZTogYTogMHgwMDAxNTU1NCAgZDogMHhBQUFBCndy
aXRlOiBhOiAweDAwMDBBQUFBICBkOiAweDU1NTUKd3JpdGU6IGE6IDB4MDAwMTU1NTQgIGQ6IDB4
OTg5OApyZWFkOiAgYTogMHgwMDAwMDA0MCAgZDogMHgwMDAwCnJlYWQ6ICBhOiAweDAwMDAwMDQ0
ICBkOiAweDAwMDAKcmVhZDogIGE6IDB4MDAwMDAwNDggIGQ6IDB4MDAwMAp3cml0ZTogYTogMHgw
MDAwMDAwMCAgZDogMHhGMEYwCndyaXRlOiBhOiAweDAwMDAxNTU0ICBkOiAweEFBQUEKd3JpdGU6
IGE6IDB4MDAwMDBBQUEgIGQ6IDB4NTU1NQp3cml0ZTogYTogMHgwMDAwMTU1NCAgZDogMHg5ODk4
CnJlYWQ6ICBhOiAweDAwMDAwMDQwICBkOiAweDAwMDAKcmVhZDogIGE6IDB4MDAwMDAwNDQgIGQ6
IDB4MDAwMApyZWFkOiAgYTogMHgwMDAwMDA0OCAgZDogMHgwMDAwCmNmaV9xcnlfbW9kZV9vbigp
IGZhaWxlZApjZmlfcXJ5X21vZGVfb24oKSBjYWxsZWQgIzMKd3JpdGU6IGE6IDB4MDAwMDAwMDAg
IGQ6IDB4RjBGMAp3cml0ZTogYTogMHgwMDAwMDJBOCAgZDogMHg5ODk4CnJlYWQ6ICBhOiAweDAw
MDAwMDgwICBkOiAweEYzNTggwqYgWApyZWFkOiAgYTogMHgwMDAwMDA4OCAgZDogMHgwMDU3ICBX
CnJlYWQ6ICBhOiAweDAwMDAwMDkwICBkOiAweDAwMDAKd3JpdGU6IGE6IDB4MDAwMDAwMDAgIGQ6
IDB4RjBGMAp3cml0ZTogYTogMHgwMDAwMDAwMCAgZDogMHhGRkZGCndyaXRlOiBhOiAweDAwMDAw
MkE4ICBkOiAweDk4OTgKcmVhZDogIGE6IDB4MDAwMDAwODAgIGQ6IDB4RjM1OCDCpiBYCnJlYWQ6
ICBhOiAweDAwMDAwMDg4ICBkOiAweDAwNTcgIFcKcmVhZDogIGE6IDB4MDAwMDAwOTAgIGQ6IDB4
MDAwMAp3cml0ZTogYTogMHgwMDAwMDAwMCAgZDogMHhGMEYwCndyaXRlOiBhOiAweDAwMDAyQUE4
ICBkOiAweDk4OTgKcmVhZDogIGE6IDB4MDAwMDAwODAgIGQ6IDB4RjM1OCDCpiBYCnJlYWQ6ICBh
OiAweDAwMDAwMDg4ICBkOiAweDAwNTcgIFcKcmVhZDogIGE6IDB4MDAwMDAwOTAgIGQ6IDB4MDAw
MAp3cml0ZTogYTogMHgwMDAwMDAwMCAgZDogMHhGMEYwCndyaXRlOiBhOiAweDAwMDJBQUE4ICBk
OiAweEFBQUEKd3JpdGU6IGE6IDB4MDAwMTU1NTQgIGQ6IDB4NTU1NQp3cml0ZTogYTogMHgwMDAy
QUFBOCAgZDogMHg5ODk4CnJlYWQ6ICBhOiAweDAwMDAwMDgwICBkOiAweEYzNTggwqYgWApyZWFk
OiAgYTogMHgwMDAwMDA4OCAgZDogMHgwMDU3ICBXCnJlYWQ6ICBhOiAweDAwMDAwMDkwICBkOiAw
eDAwMDAKd3JpdGU6IGE6IDB4MDAwMDAwMDAgIGQ6IDB4RjBGMAp3cml0ZTogYTogMHgwMDAwMkFB
OCAgZDogMHhBQUFBCndyaXRlOiBhOiAweDAwMDAxNTU0ICBkOiAweDU1NTUKd3JpdGU6IGE6IDB4
MDAwMDJBQTggIGQ6IDB4OTg5OApyZWFkOiAgYTogMHgwMDAwMDA4MCAgZDogMHhGMzU4IMKmIFgK
cmVhZDogIGE6IDB4MDAwMDAwODggIGQ6IDB4MDA1NyAgVwpyZWFkOiAgYTogMHgwMDAwMDA5MCAg
ZDogMHgwMDAwCmNmaV9xcnlfbW9kZV9vbigpIGZhaWxlZApjZmlfcXJ5X21vZGVfb24oKSBjYWxs
ZWQgIzQKd3JpdGU6IGE6IDB4MDAwMDAwMDAgIGQ6IDB4MDBGMAp3cml0ZTogYTogMHgwMDAwMDBB
QSAgZDogMHgwMDk4CnJlYWQ6ICBhOiAweDAwMDAwMDIwICBkOiAweDAwMDAKcmVhZDogIGE6IDB4
MDAwMDAwMjIgIGQ6IDB4MDAwMApyZWFkOiAgYTogMHgwMDAwMDAyNCAgZDogMHgwMDAwCndyaXRl
OiBhOiAweDAwMDAwMDAwICBkOiAweDAwRjAKd3JpdGU6IGE6IDB4MDAwMDAwMDAgIGQ6IDB4MDBG
Rgp3cml0ZTogYTogMHgwMDAwMDBBQSAgZDogMHgwMDk4CnJlYWQ6ICBhOiAweDAwMDAwMDIwICBk
OiAweDAwMDAKcmVhZDogIGE6IDB4MDAwMDAwMjIgIGQ6IDB4MDAwMApyZWFkOiAgYTogMHgwMDAw
MDAyNCAgZDogMHgwMDAwCndyaXRlOiBhOiAweDAwMDAwMDAwICBkOiAweDAwRjAKd3JpdGU6IGE6
IDB4MDAwMDBBQUEgIGQ6IDB4MDA5OApyZWFkOiAgYTogMHgwMDAwMDAyMCAgZDogMHgwMDAwCnJl
YWQ6ICBhOiAweDAwMDAwMDIyICBkOiAweDAwMDAKcmVhZDogIGE6IDB4MDAwMDAwMjQgIGQ6IDB4
MDAwMAp3cml0ZTogYTogMHgwMDAwMDAwMCAgZDogMHgwMEYwCndyaXRlOiBhOiAweDAwMDBBQUFB
ICBkOiAweDAwQUEKd3JpdGU6IGE6IDB4MDAwMDU1NTQgIGQ6IDB4MDA1NQp3cml0ZTogYTogMHgw
MDAwQUFBQSAgZDogMHgwMDk4CnJlYWQ6ICBhOiAweDAwMDAwMDIwICBkOiAweDAwMDAKcmVhZDog
IGE6IDB4MDAwMDAwMjIgIGQ6IDB4MDAwMApyZWFkOiAgYTogMHgwMDAwMDAyNCAgZDogMHgwMDAw
CndyaXRlOiBhOiAweDAwMDAwMDAwICBkOiAweDAwRjAKd3JpdGU6IGE6IDB4MDAwMDBBQUEgIGQ6
IDB4MDBBQQp3cml0ZTogYTogMHgwMDAwMDU1NCAgZDogMHgwMDU1CndyaXRlOiBhOiAweDAwMDAw
QUFBICBkOiAweDAwOTgKcmVhZDogIGE6IDB4MDAwMDAwMjAgIGQ6IDB4MDAwMApyZWFkOiAgYTog
MHgwMDAwMDAyMiAgZDogMHgwMDAwCnJlYWQ6ICBhOiAweDAwMDAwMDI0ICBkOiAweDAwMDAKY2Zp
X3FyeV9tb2RlX29uKCkgZmFpbGVkCmNmaV9xcnlfbW9kZV9vbigpIGNhbGxlZCAjNQp3cml0ZTog
YTogMHgwMDAwMDAwMCAgZDogMHgwMEYwCndyaXRlOiBhOiAweDAwMDAwMTU0ICBkOiAweDAwOTgK
cmVhZDogIGE6IDB4MDAwMDAwNDAgIGQ6IDB4MDAwMApyZWFkOiAgYTogMHgwMDAwMDA0NCAgZDog
MHgwMDAwCnJlYWQ6ICBhOiAweDAwMDAwMDQ4ICBkOiAweDAwMDAKd3JpdGU6IGE6IDB4MDAwMDAw
MDAgIGQ6IDB4MDBGMAp3cml0ZTogYTogMHgwMDAwMDAwMCAgZDogMHgwMEZGCndyaXRlOiBhOiAw
eDAwMDAwMTU0ICBkOiAweDAwOTgKcmVhZDogIGE6IDB4MDAwMDAwNDAgIGQ6IDB4MDAwMApyZWFk
OiAgYTogMHgwMDAwMDA0NCAgZDogMHgwMDAwCnJlYWQ6ICBhOiAweDAwMDAwMDQ4ICBkOiAweDAw
MDAKd3JpdGU6IGE6IDB4MDAwMDAwMDAgIGQ6IDB4MDBGMAp3cml0ZTogYTogMHgwMDAwMTU1NCAg
ZDogMHgwMDk4CnJlYWQ6ICBhOiAweDAwMDAwMDQwICBkOiAweDAwMDAKcmVhZDogIGE6IDB4MDAw
MDAwNDQgIGQ6IDB4MDAwMApyZWFkOiAgYTogMHgwMDAwMDA0OCAgZDogMHgwMDAwCndyaXRlOiBh
OiAweDAwMDAwMDAwICBkOiAweDAwRjAKd3JpdGU6IGE6IDB4MDAwMTU1NTQgIGQ6IDB4MDBBQQp3
cml0ZTogYTogMHgwMDAwQUFBQSAgZDogMHgwMDU1CndyaXRlOiBhOiAweDAwMDE1NTU0ICBkOiAw
eDAwOTgKcmVhZDogIGE6IDB4MDAwMDAwNDAgIGQ6IDB4MDAwMApyZWFkOiAgYTogMHgwMDAwMDA0
NCAgZDogMHgwMDAwCnJlYWQ6ICBhOiAweDAwMDAwMDQ4ICBkOiAweDAwMDAKd3JpdGU6IGE6IDB4
MDAwMDAwMDAgIGQ6IDB4MDBGMAp3cml0ZTogYTogMHgwMDAwMTU1NCAgZDogMHgwMEFBCndyaXRl
OiBhOiAweDAwMDAwQUFBICBkOiAweDAwNTUKd3JpdGU6IGE6IDB4MDAwMDE1NTQgIGQ6IDB4MDA5
OApyZWFkOiAgYTogMHgwMDAwMDA0MCAgZDogMHgwMDAwCnJlYWQ6ICBhOiAweDAwMDAwMDQ0ICBk
OiAweDAwMDAKcmVhZDogIGE6IDB4MDAwMDAwNDggIGQ6IDB4MDAwMApjZmlfcXJ5X21vZGVfb24o
KSBmYWlsZWQKcnBjLWlmLWh5cGVyZmxhc2ggcnBjLWlmLWh5cGVyZmxhc2g6IHByb2Jpbmcgb2Yg
aHlwZXJidXMgZGV2aWNlIGZhaWxlZApycGMtaWYtaHlwZXJmbGFzaCBycGMtaWYtaHlwZXJmbGFz
aDogZmFpbGVkIHRvIHJlZ2lzdGVyIGRldmljZQoKCgpbM10gUHJvYmUgc3VjY2VzcyBXSVRIIGJl
MTZfdG9fY3B1L2NwdV90b19iZTE2czoKCmNmaV9xcnlfbW9kZV9vbigpIGNhbGxlZCAjMQp3cml0
ZTogYTogMHgwMDAwMDAwMCAgZDogMHhGMEYwCndyaXRlOiBhOiAweDAwMDAwMEFBICBkOiAweDk4
OTgKcmVhZDogIGE6IDB4MDAwMDAwMjAgIGQ6IDB4MDA1MSAgUQpyZWFkOiAgYTogMHgwMDAwMDAy
MiAgZDogMHgwMDUyICBSCnJlYWQ6ICBhOiAweDAwMDAwMDI0ICBkOiAweDAwNTkgIFkKd3JpdGU6
IGE6IDB4MDAwMDAwMDAgIGQ6IDB4RjBGMAp3cml0ZTogYTogMHgwMDAwMDAwMCAgZDogMHhGRkZG
CndyaXRlOiBhOiAweDAwMDAwMEFBICBkOiAweDk4OTgKcmVhZDogIGE6IDB4MDAwMDAwMjAgIGQ6
IDB4MDA1MSAgUQpyZWFkOiAgYTogMHgwMDAwMDAyMiAgZDogMHgwMDUyICBSCnJlYWQ6ICBhOiAw
eDAwMDAwMDI0ICBkOiAweDAwNTkgIFkKd3JpdGU6IGE6IDB4MDAwMDAwMDAgIGQ6IDB4RjBGMAp3
cml0ZTogYTogMHgwMDAwMEFBQSAgZDogMHg5ODk4CnJlYWQ6ICBhOiAweDAwMDAwMDIwICBkOiAw
eDAwNTEgIFEKcmVhZDogIGE6IDB4MDAwMDAwMjIgIGQ6IDB4MDA1MiAgUgpyZWFkOiAgYTogMHgw
MDAwMDAyNCAgZDogMHgwMDU5ICBZCndyaXRlOiBhOiAweDAwMDAwMDAwICBkOiAweEYwRjAKd3Jp
dGU6IGE6IDB4MDAwMEFBQUEgIGQ6IDB4QUFBQQp3cml0ZTogYTogMHgwMDAwNTU1NCAgZDogMHg1
NTU1CndyaXRlOiBhOiAweDAwMDBBQUFBICBkOiAweDk4OTgKcmVhZDogIGE6IDB4MDAwMDAwMjAg
IGQ6IDB4MDAwMApyZWFkOiAgYTogMHgwMDAwMDAyMiAgZDogMHgwMDAwCnJlYWQ6ICBhOiAweDAw
MDAwMDI0ICBkOiAweDAwMDAKd3JpdGU6IGE6IDB4MDAwMDAwMDAgIGQ6IDB4RjBGMAp3cml0ZTog
YTogMHgwMDAwMEFBQSAgZDogMHhBQUFBCndyaXRlOiBhOiAweDAwMDAwNTU0ICBkOiAweDU1NTUK
d3JpdGU6IGE6IDB4MDAwMDBBQUEgIGQ6IDB4OTg5OApyZWFkOiAgYTogMHgwMDAwMDAyMCAgZDog
MHgwMDAwCnJlYWQ6ICBhOiAweDAwMDAwMDIyICBkOiAweDAwMDAKcmVhZDogIGE6IDB4MDAwMDAw
MjQgIGQ6IDB4MDAwMApjZmlfcXJ5X21vZGVfb24oKSBmYWlsZWQKY2ZpX3FyeV9tb2RlX29uKCkg
Y2FsbGVkICMyCndyaXRlOiBhOiAweDAwMDAwMDAwICBkOiAweEYwRjAKd3JpdGU6IGE6IDB4MDAw
MDAxNTQgIGQ6IDB4OTg5OApyZWFkOiAgYTogMHgwMDAwMDA0MCAgZDogMHgwMDAwCnJlYWQ6ICBh
OiAweDAwMDAwMDQ0ICBkOiAweDAwMDAKcmVhZDogIGE6IDB4MDAwMDAwNDggIGQ6IDB4MDAwMAp3
cml0ZTogYTogMHgwMDAwMDAwMCAgZDogMHhGMEYwCndyaXRlOiBhOiAweDAwMDAwMDAwICBkOiAw
eEZGRkYKd3JpdGU6IGE6IDB4MDAwMDAxNTQgIGQ6IDB4OTg5OApyZWFkOiAgYTogMHgwMDAwMDA0
MCAgZDogMHgwMDAwCnJlYWQ6ICBhOiAweDAwMDAwMDQ0ICBkOiAweDAwMDAKcmVhZDogIGE6IDB4
MDAwMDAwNDggIGQ6IDB4MDAwMAp3cml0ZTogYTogMHgwMDAwMDAwMCAgZDogMHhGMEYwCndyaXRl
OiBhOiAweDAwMDAxNTU0ICBkOiAweDk4OTgKcmVhZDogIGE6IDB4MDAwMDAwNDAgIGQ6IDB4MDAw
MApyZWFkOiAgYTogMHgwMDAwMDA0NCAgZDogMHgwMDAwCnJlYWQ6ICBhOiAweDAwMDAwMDQ4ICBk
OiAweDAwMDAKd3JpdGU6IGE6IDB4MDAwMDAwMDAgIGQ6IDB4RjBGMAp3cml0ZTogYTogMHgwMDAx
NTU1NCAgZDogMHhBQUFBCndyaXRlOiBhOiAweDAwMDBBQUFBICBkOiAweDU1NTUKd3JpdGU6IGE6
IDB4MDAwMTU1NTQgIGQ6IDB4OTg5OApyZWFkOiAgYTogMHgwMDAwMDA0MCAgZDogMHgwMDAwCnJl
YWQ6ICBhOiAweDAwMDAwMDQ0ICBkOiAweDAwMDAKcmVhZDogIGE6IDB4MDAwMDAwNDggIGQ6IDB4
MDAwMAp3cml0ZTogYTogMHgwMDAwMDAwMCAgZDogMHhGMEYwCndyaXRlOiBhOiAweDAwMDAxNTU0
ICBkOiAweEFBQUEKd3JpdGU6IGE6IDB4MDAwMDBBQUEgIGQ6IDB4NTU1NQp3cml0ZTogYTogMHgw
MDAwMTU1NCAgZDogMHg5ODk4CnJlYWQ6ICBhOiAweDAwMDAwMDQwICBkOiAweDAwMDAKcmVhZDog
IGE6IDB4MDAwMDAwNDQgIGQ6IDB4MDAwMApyZWFkOiAgYTogMHgwMDAwMDA0OCAgZDogMHgwMDAw
CmNmaV9xcnlfbW9kZV9vbigpIGZhaWxlZApjZmlfcXJ5X21vZGVfb24oKSBjYWxsZWQgIzMKd3Jp
dGU6IGE6IDB4MDAwMDAwMDAgIGQ6IDB4RjBGMAp3cml0ZTogYTogMHgwMDAwMDJBOCAgZDogMHg5
ODk4CnJlYWQ6ICBhOiAweDAwMDAwMDgwICBkOiAweDU4RjMgWCDCpgpyZWFkOiAgYTogMHgwMDAw
MDA4OCAgZDogMHg1NzAwIFcKcmVhZDogIGE6IDB4MDAwMDAwOTAgIGQ6IDB4MDAwMAp3cml0ZTog
YTogMHgwMDAwMDAwMCAgZDogMHhGMEYwCndyaXRlOiBhOiAweDAwMDAwMDAwICBkOiAweEZGRkYK
d3JpdGU6IGE6IDB4MDAwMDAyQTggIGQ6IDB4OTg5OApyZWFkOiAgYTogMHgwMDAwMDA4MCAgZDog
MHg1OEYzIFggwqYKcmVhZDogIGE6IDB4MDAwMDAwODggIGQ6IDB4NTcwMCBXCnJlYWQ6ICBhOiAw
eDAwMDAwMDkwICBkOiAweDAwMDAKd3JpdGU6IGE6IDB4MDAwMDAwMDAgIGQ6IDB4RjBGMAp3cml0
ZTogYTogMHgwMDAwMkFBOCAgZDogMHg5ODk4CnJlYWQ6ICBhOiAweDAwMDAwMDgwICBkOiAweDU4
RjMgWCDCpgpyZWFkOiAgYTogMHgwMDAwMDA4OCAgZDogMHg1NzAwIFcKcmVhZDogIGE6IDB4MDAw
MDAwOTAgIGQ6IDB4MDAwMAp3cml0ZTogYTogMHgwMDAwMDAwMCAgZDogMHhGMEYwCndyaXRlOiBh
OiAweDAwMDJBQUE4ICBkOiAweEFBQUEKd3JpdGU6IGE6IDB4MDAwMTU1NTQgIGQ6IDB4NTU1NQp3
cml0ZTogYTogMHgwMDAyQUFBOCAgZDogMHg5ODk4CnJlYWQ6ICBhOiAweDAwMDAwMDgwICBkOiAw
eDU4RjMgWCDCpgpyZWFkOiAgYTogMHgwMDAwMDA4OCAgZDogMHg1NzAwIFcKcmVhZDogIGE6IDB4
MDAwMDAwOTAgIGQ6IDB4MDAwMAp3cml0ZTogYTogMHgwMDAwMDAwMCAgZDogMHhGMEYwCndyaXRl
OiBhOiAweDAwMDAyQUE4ICBkOiAweEFBQUEKd3JpdGU6IGE6IDB4MDAwMDE1NTQgIGQ6IDB4NTU1
NQp3cml0ZTogYTogMHgwMDAwMkFBOCAgZDogMHg5ODk4CnJlYWQ6ICBhOiAweDAwMDAwMDgwICBk
OiAweDU4RjMgWCDCpgpyZWFkOiAgYTogMHgwMDAwMDA4OCAgZDogMHg1NzAwIFcKcmVhZDogIGE6
IDB4MDAwMDAwOTAgIGQ6IDB4MDAwMApjZmlfcXJ5X21vZGVfb24oKSBmYWlsZWQKY2ZpX3FyeV9t
b2RlX29uKCkgY2FsbGVkICM0CndyaXRlOiBhOiAweDAwMDAwMDAwICBkOiAweEYwMDAKd3JpdGU6
IGE6IDB4MDAwMDAwQUEgIGQ6IDB4OTgwMApyZWFkOiAgYTogMHgwMDAwMDAyMCAgZDogMHgwMDUx
ICBRCnJlYWQ6ICBhOiAweDAwMDAwMDIyICBkOiAweDAwNTIgIFIKcmVhZDogIGE6IDB4MDAwMDAw
MjQgIGQ6IDB4MDA1OSAgWQpyZWFkOiAgYTogMHgwMDAwMDA1OCAgZDogMHgwMDAxCnJlYWQ6ICBh
OiAweDAwMDAwMDIwICBkOiAweDAwNTEgIFEKcmVhZDogIGE6IDB4MDAwMDAwMjIgIGQ6IDB4MDA1
MiAgUgpyZWFkOiAgYTogMHgwMDAwMDAyNCAgZDogMHgwMDU5ICBZCnJlYWQ6ICBhOiAweDAwMDAw
MDI2ICBkOiAweDAwMDIKcmVhZDogIGE6IDB4MDAwMDAwMjggIGQ6IDB4MDAwMApyZWFkOiAgYTog
MHgwMDAwMDAyQSAgZDogMHgwMDQwICBACnJlYWQ6ICBhOiAweDAwMDAwMDJDICBkOiAweDAwMDAK
cmVhZDogIGE6IDB4MDAwMDAwMkUgIGQ6IDB4MDAwMApyZWFkOiAgYTogMHgwMDAwMDAzMCAgZDog
MHgwMDAwCnJlYWQ6ICBhOiAweDAwMDAwMDMyICBkOiAweDAwMDAKcmVhZDogIGE6IDB4MDAwMDAw
MzQgIGQ6IDB4MDAwMApyZWFkOiAgYTogMHgwMDAwMDAzNiAgZDogMHgwMDE3CnJlYWQ6ICBhOiAw
eDAwMDAwMDM4ICBkOiAweDAwMTkKcmVhZDogIGE6IDB4MDAwMDAwM0EgIGQ6IDB4MDAwMApyZWFk
OiAgYTogMHgwMDAwMDAzQyAgZDogMHgwMDAwCnJlYWQ6ICBhOiAweDAwMDAwMDNFICBkOiAweDAw
MDkKcmVhZDogIGE6IDB4MDAwMDAwNDAgIGQ6IDB4MDAwOQpyZWFkOiAgYTogMHgwMDAwMDA0MiAg
ZDogMHgwMDBBCgpyZWFkOiAgYTogMHgwMDAwMDA0NCAgZDogMHgwMDEyCnJlYWQ6ICBhOiAweDAw
MDAwMDQ2ICBkOiAweDAwMDIKcmVhZDogIGE6IDB4MDAwMDAwNDggIGQ6IDB4MDAwMgpyZWFkOiAg
YTogMHgwMDAwMDA0QSAgZDogMHgwMDAyCnJlYWQ6ICBhOiAweDAwMDAwMDRDICBkOiAweDAwMDIK
cmVhZDogIGE6IDB4MDAwMDAwNEUgIGQ6IDB4MDAxQQpyZWFkOiAgYTogMHgwMDAwMDA1MCAgZDog
MHgwMDAwCnJlYWQ6ICBhOiAweDAwMDAwMDUyICBkOiAweDAwMDAKcmVhZDogIGE6IDB4MDAwMDAw
NTQgIGQ6IDB4MDAwOQpyZWFkOiAgYTogMHgwMDAwMDA1NiAgZDogMHgwMDAwCnJlYWQ6ICBhOiAw
eDAwMDAwMDU4ICBkOiAweDAwMDEKcmVhZDogIGE6IDB4MDAwMDAwNUEgIGQ6IDB4MDBGRiAgwqYK
cmVhZDogIGE6IDB4MDAwMDAwNUMgIGQ6IDB4MDAwMApyZWFkOiAgYTogMHgwMDAwMDA1RSAgZDog
MHgwMDAwCnJlYWQ6ICBhOiAweDAwMDAwMDYwICBkOiAweDAwMDQKd3JpdGU6IGE6IDB4MDAwMDAw
MDAgIGQ6IDB4RjAwMAp3cml0ZTogYTogMHgwMDAwMEFBQSAgZDogMHhBQTAwCndyaXRlOiBhOiAw
eDAwMDAwNTU0ICBkOiAweDU1MDAKd3JpdGU6IGE6IDB4MDAwMDBBQUEgIGQ6IDB4OTAwMApyZWFk
OiAgYTogMHgwMDAwMDAwMCAgZDogMHgwMDAxCnJlYWQ6ICBhOiAweDAwMDAwMDAyICBkOiAweDAw
N0UgIH4KcmVhZDogIGE6IDB4MDAwMDAwMUMgIGQ6IDB4MDA3MCAgcApyZWFkOiAgYTogMHgwMDAw
MDAxRSAgZDogMHgwMDAwCndyaXRlOiBhOiAweDAwMDAwMDAwICBkOiAweEYwMDAKd3JpdGU6IGE6
IDB4MDAwMDAwMDAgIGQ6IDB4RkYwMApjZmlfcXJ5X21vZGVfb24oKSBjYWxsZWQgIzUKd3JpdGU6
IGE6IDB4MDAwMDAwMDAgIGQ6IDB4RjAwMAp3cml0ZTogYTogMHgwMDAwMDBBQSAgZDogMHg5ODAw
CnJlYWQ6ICBhOiAweDAwMDAwMDIwICBkOiAweDAwNTEgIFEKcmVhZDogIGE6IDB4MDAwMDAwMjIg
IGQ6IDB4MDA1MiAgUgpyZWFkOiAgYTogMHgwMDAwMDAyNCAgZDogMHgwMDU5ICBZCnJlYWQ6ICBh
OiAweDAwMDAwMDgwICBkOiAweDAwNTAgIFAKcmVhZDogIGE6IDB4MDAwMDAwODIgIGQ6IDB4MDA1
MiAgUgpyZWFkOiAgYTogMHgwMDAwMDA4NCAgZDogMHgwMDQ5ICBJCnJlYWQ6ICBhOiAweDAwMDAw
MDg2ICBkOiAweDAwMzEgIDEKcmVhZDogIGE6IDB4MDAwMDAwODggIGQ6IDB4MDAzNSAgNQpyZWFk
OiAgYTogMHgwMDAwMDA4QSAgZDogMHgwMDFDCnJlYWQ6ICBhOiAweDAwMDAwMDhDICBkOiAweDAw
MDIKcmVhZDogIGE6IDB4MDAwMDAwOEUgIGQ6IDB4MDAwMQpyZWFkOiAgYTogMHgwMDAwMDA5MCAg
ZDogMHgwMDAwCnJlYWQ6ICBhOiAweDAwMDAwMDkyICBkOiAweDAwMDgKcmVhZDogIGE6IDB4MDAw
MDAwOTQgIGQ6IDB4MDAwMApyZWFkOiAgYTogMHgwMDAwMDA5NiAgZDogMHgwMDAxCnJlYWQ6ICBh
OiAweDAwMDAwMDk4ICBkOiAweDAwMDAKcmVhZDogIGE6IDB4MDAwMDAwOUEgIGQ6IDB4MDAwMApy
ZWFkOiAgYTogMHgwMDAwMDA5QyAgZDogMHgwMDAwCnJlYWQ6ICBhOiAweDAwMDAwMDlFICBkOiAw
eDAwMDAKd3JpdGU6IGE6IDB4MDAwMDAwMDAgIGQ6IDB4RjAwMAp3cml0ZTogYTogMHgwMDAwMDAw
MCAgZDogMHhGRjAwCj0+IHN1Y2Nlc3MKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlz
dApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
