Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6FFE96E07
	for <lists+linux-mtd@lfdr.de>; Wed, 21 Aug 2019 02:06:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7XxTbbapnRadwwJCmCfhtKj9KNSWASTkT++NTL5V1EU=; b=iXoEoOLb5e52cCcWEYsmTS62N3
	1KGRrFl2M7AfumjnwfCdLavS0fFOD1OjTcm1t5A+uS7mz6KJYnH/leKsLpTJMJmNUAuDV2NGe0lZZ
	ePt7PoBHB3RstgmBBRbXLi5Izqv16Yo8gO7FytwSbBelKgNQY4nYPCTPQxususmkvlhKL+RmxXRC7
	E2MQyIuZTKNWZFpcKMvoVjYWCwy2+BikkaScKgq/ujNy1Idygmu6nf3rvZH/dMt/eKY7SlrAVFrdw
	y3LizuOnmPxbTS9evaN7EpKD6Wbu9UhgqG0vmBo05nrKSmruiP5MSYCuwCgUTJnIYk43waTAQDdKe
	wscWGMxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0E8v-0003bb-Ml; Wed, 21 Aug 2019 00:06:25 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0E8o-0003b7-H5
 for linux-mtd@lists.infradead.org; Wed, 21 Aug 2019 00:06:20 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 65DA221CFD;
 Tue, 20 Aug 2019 20:06:06 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Tue, 20 Aug 2019 20:06:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to
 :subject:content-type:content-transfer-encoding; s=fm3; bh=5mqUd
 3UTUyLjiNJX8VHRJxVIoB4Vr2/0jJ2natoQq8c=; b=BV2Zjqaze2+9h9pwjj8+p
 zOfM0+PV89jaZfwpqrUZ2C27y6TJkuW4DZpJRfcxpC+1148uF1KevKYiF9UPa4Nw
 gST1AVZrfa9CHEfUNXFPsRr1FAlrtX0cbQC26Q5/N/7o7PPLUAAsPPwhcI2fEzSu
 OMWGlUZugoN9j/AUUuoWaIA31nd2p19bqrHrmRTaAOTKKHAdEpnrucyQW/4AsMbr
 jYZshL/JoPNUZjYhdqRQNNwXmtcWBIX51kVK6qX/hP40tfmc0DcgRvUbQQu4co7r
 Zui6qEe/rxpF3ZqJQLt6fGooMQrQgT+83b94u52M7UEF5vghQLrWOySTM7lYTKx+
 Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; bh=5mqUd3UTUyLjiNJX8VHRJxVIoB4Vr2/0jJ2natoQq
 8c=; b=E2vJWveIi7CPxKOEdHXqJc8N6C6yFaxALyXCJXMhFwti/LY1AlvMLyLii
 rV/Qa8l/S2jBSP+BGOO4CHAglHVH7LmxVFy0/k7tfY8lcJqnvvNhVkv2VZmMMTsz
 hOfTxGVTJUres+dDTazZ48+tLQmyVTM47cThW1WmvRO4fKQ/1rh+VWiE0I1UImkC
 pL5FYtFa5ZEJywN2Vh3zCwGHpcCyjlVn+Nc/BIWURgZ9DGxWZ7zjAxnETdWcwUqe
 GW1DaKjG8ObcE84LT2sYypTHtGSeX3Vw0opMJdO4r9gG5JAoUlq7/OAIdu/Ou1uN
 bcNKhkc6RY5uDczwQ7lh1GxQulW9Q==
X-ME-Sender: <xms:7opcXU24O7w7t5roz3toZrHEv7CKdcp2bi9FBLR-8Kgbz6qYRg4JOA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudegvddgfedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgfgsehtqhertderreejnecuhfhrohhmpedftehn
 ughrvgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucffoh
 hmrghinheplhifnhdrnhgvthenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgif
 segrjhdrihgurdgruhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:7opcXZyb4E4rR9DjF8jbHyvxZ-Q2ORyiuJe17isB01atgIEc_itXdw>
 <xmx:7opcXQ7sCr98OgZo8LwpzUzzS8eGB0qYzc-YZoew1Bndlo2qjEab8g>
 <xmx:7opcXehhPyVGirY4CTIFf7hofBkkpQNC199jeoRCgTuGdrNn6MXtTg>
 <xmx:7opcXYMVOrYv_5Bb7Ru5L-av_zIXb4aOZrtPOu1ea6nDdy9NeTbqug>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id EC517E00A3; Tue, 20 Aug 2019 20:06:05 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-878-g972612b-fmstable-20190820v1
Mime-Version: 1.0
Message-Id: <afe2b8f2-d1be-4cd2-971a-b13c1e38da67@www.fastmail.com>
In-Reply-To: <236e95be-a2cd-3b44-36c5-121678f7c009@fb.com>
References: <e8bde724-46fd-4264-ea3f-a84a792bcad8@fb.com>
 <236e95be-a2cd-3b44-36c5-121678f7c009@fb.com>
Date: Wed, 21 Aug 2019 09:36:41 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Tao Ren" <taoren@fb.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "OpenBMC Maillist" <openbmc@lists.ozlabs.org>
Subject: Re: kernel BUG at fs/jffs2/gc.c:395!
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_170619_093469_A217D50B 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

CgpPbiBXZWQsIDIxIEF1ZyAyMDE5LCBhdCAwODo0MiwgVGFvIFJlbiB3cm90ZToKPiBPbiA4LzIw
LzE5IDQ6MDkgUE0sIFRhbyBSZW4gd3JvdGU6Cj4gPiBIaSwKPiA+IAo+ID4gSSBoaXQgZm9sbG93
aW5nIGpmZnMyIGJ1ZyB3aGlsZSBydW5uaW5nIExpbnV4IDUuMC4zIG9uIENNTSAoQVNQRUVEMjUw
MCkgQk1DIHBsYXRmb3JtLiBIYXMgYW55b25lIHNlZW4gdGhlIGlzc3VlIGJlZm9yZT8gQW55IHN1
Z2dlc3Rpb25zPyAKPiA+IAo+ID4gWyAgIDQ2LjAyNDAxN10gLS0tLS0tLS0tLS0tWyBjdXQgaGVy
ZSBdLS0tLS0tLS0tLS0tCj4gPiBbICAgNDYuMDc5MTc4XSBrZXJuZWwgQlVHIGF0IC9kYXRhL3Vz
ZXJzL3Rhb3Jlbi9vcGVuYm1jL2J1aWxkLWNtbS90bXAvd29yay1zaGFyZWQvY21tL2tlcm5lbC1z
b3VyY2UvZnMvamZmczIvZ2MuYzozOTUhCj4gPiBbICAgNDYuMjA0MDc2XSBJbnRlcm5hbCBlcnJv
cjogT29wcyAtIEJVRzogMCBbIzFdIEFSTQo+ID4gWyAgIDQ2LjI2MTM3OF0gTW9kdWxlcyBsaW5r
ZWQgaW46IGV4dDQgbWJjYWNoZSBqYmQyIGNyeXB0b19oYXNoCj4gPiBbICAgNDYuMzI5MDkzXSBD
UFU6IDAgUElEOiAxMTgxIENvbW06IGpmZnMyX2djZF9tdGQzIE5vdCB0YWludGVkIDUuMC4zLWNt
bSAjMQo+ID4gWyAgIDQ2LjQxMTM0M10gSGFyZHdhcmUgbmFtZTogR2VuZXJpYyBEVCBiYXNlZCBz
eXN0ZW0KPiA+IFsgICA0Ni40Njg2ODVdIFBDIGlzIGF0IGpmZnMyX2dhcmJhZ2VfY29sbGVjdF9w
YXNzKzB4NmY0LzB4NzM0Cj4gPiBbICAgNDYuNTM1MzIyXSBMUiBpcyBhdCBqZmZzMl9nYXJiYWdl
X2NvbGxlY3RfcGFzcysweDZmNC8weDczNAo+ID4gWyAgIDQ2LjYwMTk3N10gcGMgOiBbPDgwMmMy
OTJjPl0gICAgbHIgOiBbPDgwMmMyOTJjPl0gICAgcHNyOiA2MDAwMDAxMwo+ID4gWyAgIDQ2LjY3
Njk1OV0gc3AgOiBhZjNjZGVkMCAgaXAgOiBiNTZhNzVjMCAgZnAgOiBhZjNjZGYyNAo+ID4gWyAg
IDQ2LjczOTQ2M10gcjEwOiBiNDA2MTE0MCAgcjkgOiBiNTdhMzkwMCAgcjggOiBiNTU1ZDRhYwo+
ID4gWyAgIDQ2LjgwMTk2OF0gcjcgOiBiNTU1ZDRhYyAgcjYgOiBiNDAzNTAyYyAgcjUgOiAwMDAw
MDAwMCAgcjQgOiBiNDAzNTAwMAo+ID4gWyAgIDQ2Ljg4MDA3M10gcjMgOiBiNTZhNzVjMCAgcjIg
OiAwMDAwMDAwMCAgcjEgOiAwMDAwMDAwMCAgcjAgOiBiNDAzNTAyYwo+ID4gWyAgIDQ2Ljk1ODE3
N10gRmxhZ3M6IG5aQ3YgIElSUXMgb24gIEZJUXMgb24gIE1vZGUgU1ZDXzMyICBJU0EgQVJNICBT
ZWdtZW50IG5vbmUKPiA+IFsgICA0Ny4wNDM1NjFdIENvbnRyb2w6IDAwYzUzODdkICBUYWJsZTog
YjU3NzQwMDggIERBQzogMDAwMDAwNTEKPiA+IFsgICA0Ny4xMTIzMTldIFByb2Nlc3MgamZmczJf
Z2NkX210ZDMgKHBpZDogMTE4MSwgc3RhY2sgbGltaXQgPSAweDU0MzcyZmZlKQo+ID4gWyAgIDQ3
LjE5MjQ5MF0gU3RhY2s6ICgweGFmM2NkZWQwIHRvIDB4YWYzY2UwMDApCj4gPiBbICAgNDcuMjQ0
NjAxXSBkZWMwOiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAwMDAwMDAwMCA4
MGEwNzAyOCA4MDBhZDZjOSAwMDAwZmYyYwo+ID4gWyAgIDQ3LjM0MjQ2OF0gZGVlMDogYWYzY2Rl
ZmMgYWYzY2RlZjAgODAxMjVjZDQgODAxMjMxM2MgYWYzY2RmMjQgODAwYWQ2YzkgODAxMjYxNGMg
YjQwMzUwMDAgCj4gPiBbICAgNDcuNDQwMzMxXSBkZjAwOiBmZmZmZTAwMCBhZjNjYzAwMCBhZjNj
YzAwMCBiNDAzNTAwMCA4MDJjNTA5YyBiNDE5ZGQxOCBhZjNjZGY3NCBhZjNjZGYyOAo+ID4gWyAg
IDQ3LjUzODE5Nl0gZGYyMDogODAyYzUxNzQgODAyYzIyNDQgZmZmZmUwMDAgMDAwMDAwMDEgMDAw
MDAwMDAgZmZmZmUwMDAgYjU3YjA5NDAgMDAwMDAwMDAKPiA+IFsgICA0Ny42MzYwNThdIGRmNDA6
IGZmZmZlMDAwIGI0MDM1MDAwIDgwMmM1MDljIGI0MTlkZDE4IGFmM2NkZjc0IDgwMGFkNmM5IGI1
NzUzOTgwIGI1NzUzOTgwCj4gPiBbICAgNDcuNzMzOTIzXSBkZjYwOiBiNTdiMDk0MCAwMDAwMDAw
MCBhZjNjZGZhYyBhZjNjZGY3OCA4MDEzNGQ1OCA4MDJjNTBhOCBiNTc1Mzk5OCBiNTc1Mzk5OAo+
ID4gWyAgIDQ3LjgzMTc4N10gZGY4MDogYWYzY2RmYWMgYjU3YjA5NDAgODAxMzRjMGMgMDAwMDAw
MDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAKPiA+IFsgICA0Ny45Mjk2NDhd
IGRmYTA6IDAwMDAwMDAwIGFmM2NkZmIwIDgwMTAxMGU4IDgwMTM0YzE4IDAwMDAwMDAwIDAwMDAw
MDAwIDAwMDAwMDAwIDAwMDAwMDAwCj4gPiBbICAgNDguMDI3NTEyXSBkZmMwOiAwMDAwMDAwMCAw
MDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAw
MDAwMAo+ID4gWyAgIDQ4LjEyNTM3Nl0gZGZlMDogMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAg
MDAwMDAwMDAgMDAwMDAwMTMgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAKPiA+IFsgICA0OC4y
MjMyMzBdIEJhY2t0cmFjZTogIAo+ID4gWyAgIDQ4LjI1MjQ4OV0gWzw4MDJjMjIzOD5dIChqZmZz
Ml9nYXJiYWdlX2NvbGxlY3RfcGFzcykgZnJvbSBbPDgwMmM1MTc0Pl0gKGpmZnMyX2dhcmJhZ2Vf
Y29sbGVjdF90aHJlYWQrMHhkOC8weDFhYykKPiA+IFsgICA0OC4zNzUyOTRdICByMTA6YjQxOWRk
MTggcjk6ODAyYzUwOWMgcjg6YjQwMzUwMDAgcjc6YWYzY2MwMDAgcjY6YWYzY2MwMDAgcjU6ZmZm
ZmUwMDAKPiA+IFsgICA0OC40Njg5ODVdICByNDpiNDAzNTAwMAo+ID4gWyAgIDQ4LjQ5OTI4MV0g
Wzw4MDJjNTA5Yz5dIChqZmZzMl9nYXJiYWdlX2NvbGxlY3RfdGhyZWFkKSBmcm9tIFs8ODAxMzRk
NTg+XSAoa3RocmVhZCsweDE0Yy8weDE2NCkKPiA+IFsgICA0OC42MDMzNThdICByNjowMDAwMDAw
MCByNTpiNTdiMDk0MCByNDpiNTc1Mzk4MAo+ID4gWyAgIDQ4LjY1ODU5MF0gWzw4MDEzNGMwYz5d
IChrdGhyZWFkKSBmcm9tIFs8ODAxMDEwZTg+XSAocmV0X2Zyb21fZm9yaysweDE0LzB4MmMpCj4g
PiBbICAgNDguNzQ1MDAxXSBFeGNlcHRpb24gc3RhY2soMHhhZjNjZGZiMCB0byAweGFmM2NkZmY4
KQo+ID4gWyAgIDQ4LjgwNTQyOF0gZGZhMDogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAKPiA+IFsgICA0OC45MDMy
OTZdIGRmYzA6IDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAw
MDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwCj4gPiBbICAgNDkuMDAxMTU3XSBkZmUwOiAwMDAwMDAw
MCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAxMyAwMDAwMDAwMAo+ID4gWyAgIDQ5
LjA4MDMwNV0gIHIxMDowMDAwMDAwMCByOTowMDAwMDAwMCByODowMDAwMDAwMCByNzowMDAwMDAw
MCByNjowMDAwMDAwMCByNTo4MDEzNGMwYwo+ID4gWyAgIDQ5LjE3NDAwMF0gIHI0OmI1N2IwOTQw
Cj4gPiBbICAgNDkuMjA0Mjc1XSBDb2RlOiBlNTlmMDA0NCBlYmZhMjVjYiBlMWEwMDAwNiBlYjBl
ODg4ZCAoZTdmMDAxZjIpCj4gPiBbICAgNDkuMjc3MTg4XSAtLS1bIGVuZCB0cmFjZSA2YmFhN2Fm
MGE5MGQxNWFiIF0tLS0KPiA+IFsgICA0OS4zMzIzOTVdIEtlcm5lbCBwYW5pYyAtIG5vdCBzeW5j
aW5nOiBGYXRhbCBleGNlcHRpb24KPiAKPiBCVFcsIGJlbG93IGFyZSBhbGwgdGhlIG1lc3NhZ2Vz
IHByaW50ZWQgYnkgamZmczIgYmVmb3JlIHN5c3RlbSBjcmFzaDoKPiAKPiBbICAgMjEuMDc4NDMz
XSBqZmZzMjogdmVyc2lvbiAyLjIuIChTVU1NQVJZKSAgwqkgMjAwMS0yMDA2IFJlZCBIYXQsIElu
Yy4KPiBbICAgMzkuNzc2MjA3XSBqZmZzMjogbm90aWNlOiAoMTE4MCkgamZmczJfYnVpbGRfeGF0
dHJfc3Vic3lzdGVtOiAKPiBjb21wbGV0ZSBidWlsZGluZyB4YXR0ciBzdWJzeXN0ZW0sIDAgb2Yg
eGRhdHVtICgwIHVuY2hlY2tlZCwgMCBvcnBoYW4pIAo+IGFuZCAwIG9mIHhyZWYgKDAgZGVhZCwg
MCBvcnBoYW4pIGZvdW5kLgo+IFsgICA0MC4wMTY1NzRdIGpmZnMyOiB3YXJuaW5nOiAoMTE4MSkg
amZmczJfZG9fcmVhZF9pbm9kZV9pbnRlcm5hbDogbm8gCj4gZGF0YSBub2RlcyBmb3VuZCBmb3Ig
aW5vICMxNDAKPiBbICAgNDAuMTIyOTY0XSBqZmZzMjogbm90aWNlOiAoMTE4MSkgamZmczJfZG9f
cmVhZF9pbm9kZV9pbnRlcm5hbDogYnV0IAo+IGl0IGhhcyBjaGlsZHJlbiBzbyB3ZSBmYWtlIHNv
bWUgbW9kZXMgZm9yIGl0Cj4gWyAgIDQzLjU3OTM2MV0gamZmczI6IHdhcm5pbmc6ICgxMTgxKSBq
ZmZzMl9nZXRfaW5vZGVfbm9kZXM6IEVlcC4gTm8gCj4gdmFsaWQgbm9kZXMgZm9yIGlubyAjMTQx
Lgo+IFsgICA0My42Nzk0MDRdIGpmZnMyOiB3YXJuaW5nOiAoMTE4MSkgamZmczJfZG9fcmVhZF9p
bm9kZV9pbnRlcm5hbDogbm8gCj4gZGF0YSBub2RlcyBmb3VuZCBmb3IgaW5vICMxNDEKPiBbICAg
NDMuNzg1NjYxXSBqZmZzMjogUmV0dXJuZWQgZXJyb3IgZm9yIGNyY2NoZWNrIG9mIGlubyAjMTQx
LiBFeHBlY3QgCj4gYmFkbmVzcy4uLgo+IFsgICA0NC4wMjE4MjVdIGpmZnMyOiB3YXJuaW5nOiAo
MTE4MSkgamZmczJfZG9fcmVhZF9pbm9kZV9pbnRlcm5hbDogbm8gCj4gZGF0YSBub2RlcyBmb3Vu
ZCBmb3IgaW5vICMxNTQKPiBbICAgNDQuMTI4MTkxXSBqZmZzMjogbm90aWNlOiAoMTE4MSkgamZm
czJfZG9fcmVhZF9pbm9kZV9pbnRlcm5hbDogYnV0IAo+IGl0IGhhcyBjaGlsZHJlbiBzbyB3ZSBm
YWtlIHNvbWUgbW9kZXMgZm9yIGl0Cj4gWyAgIDQ0LjMxNDg2Ml0gamZmczI6IHdhcm5pbmc6ICgx
MTgxKSBqZmZzMl9kb19yZWFkX2lub2RlX2ludGVybmFsOiBubyAKPiBkYXRhIG5vZGVzIGZvdW5k
IGZvciBpbm8gIzE1NQo+IFsgICA0NC40MjExNTJdIGpmZnMyOiBub3RpY2U6ICgxMTgxKSBqZmZz
Ml9kb19yZWFkX2lub2RlX2ludGVybmFsOiBidXQgCj4gaXQgaGFzIGNoaWxkcmVuIHNvIHdlIGZh
a2Ugc29tZSBtb2RlcyBmb3IgaXQKPiBbICAgNDQuNjA3Mzc4XSBqZmZzMjogd2FybmluZzogKDEx
ODEpIGpmZnMyX2RvX3JlYWRfaW5vZGVfaW50ZXJuYWw6IG5vIAo+IGRhdGEgbm9kZXMgZm91bmQg
Zm9yIGlubyAjMTYzCj4gWyAgIDQ0LjcxMzY5Ml0gamZmczI6IG5vdGljZTogKDExODEpIGpmZnMy
X2RvX3JlYWRfaW5vZGVfaW50ZXJuYWw6IGJ1dCAKPiBpdCBoYXMgY2hpbGRyZW4gc28gd2UgZmFr
ZSBzb21lIG1vZGVzIGZvciBpdAo+IFsgICA0NC44OTk5OTFdIGpmZnMyOiB3YXJuaW5nOiAoMTE4
MSkgamZmczJfZ2V0X2lub2RlX25vZGVzOiBFZXAuIE5vIAo+IHZhbGlkIG5vZGVzIGZvciBpbm8g
IzE2NC4KPiBbICAgNDUuMDAwMTA3XSBqZmZzMjogd2FybmluZzogKDExODEpIGpmZnMyX2RvX3Jl
YWRfaW5vZGVfaW50ZXJuYWw6IG5vIAo+IGRhdGEgbm9kZXMgZm91bmQgZm9yIGlubyAjMTY0Cj4g
WyAgIDQ1LjEwNjM3MF0gamZmczI6IFJldHVybmVkIGVycm9yIGZvciBjcmNjaGVjayBvZiBpbm8g
IzE2NC4gRXhwZWN0IAo+IGJhZG5lc3MuLi4KPiBbICAgNDUuOTM0MjgyXSBqZmZzMjogSW5vZGUg
IzEwNiBhbHJlYWR5IGluIHN0YXRlIDAgaW4gCj4gamZmczJfZ2FyYmFnZV9jb2xsZWN0X3Bhc3Mo
KSEKCkxvb2tzIGxpa2UgYSBsYWNrIG9mIHJvYnVzdG5lc3MgdG8gZmlsZXN5c3RlbSBjb3JydXB0
aW9uIHRvIG1lLiBMV04KcHVibGlzaGVkIGFuIGFydGljbGUgb24gdGhlIHRvcGljIGp1c3QgeWVz
dGVyZGF5IQoKaHR0cHM6Ly9sd24ubmV0L0FydGljbGVzLzc5NjY4Ny8KCkFuZHJldwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1U
RCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
