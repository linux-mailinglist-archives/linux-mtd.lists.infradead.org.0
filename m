Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F7816220
	for <lists+linux-mtd@lfdr.de>; Tue,  7 May 2019 12:49:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=g4vFtiaVoN2OIBIVwrGj0Q53GAZQsnCxokitpylTAGk=; b=JVpiKUHTdJhElz0D2ijFR6aWy
	7KToivrfGdGsrUytWxt1jXBzsm5OJksa6SJFAhyLg57pBdi3YDdzGzZo90DagD+SE7mQgmzs1qaeC
	Gtvpp52lRVWlIvEK0LhRBbMzfxKpzh/IAG0bz4XfVzI+fEvpAmqHjUP4g3mPyzZEe9cFv7H8I0afS
	cArd79tYjrEbLMo0ctZJZ1csga0k3eSN6yLesFjVgIovlYvhyKZrhjo0zdxzLUJFWavY/PARDzis2
	f7Wu2hPegWVueUKn7WN37mnfPfuXq7qTQUQq3kcMlYjIjFAlo6dmZMzKSxyAUh6J7PqAsQ1InN4wD
	IugTz9Pgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNxfQ-0002rU-3S; Tue, 07 May 2019 10:49:48 +0000
Received: from 12.mo4.mail-out.ovh.net ([178.33.104.253])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNxfI-0002ob-28
 for linux-mtd@lists.infradead.org; Tue, 07 May 2019 10:49:42 +0000
Received: from player695.ha.ovh.net (unknown [10.109.159.159])
 by mo4.mail-out.ovh.net (Postfix) with ESMTP id 7E4A81E766D
 for <linux-mtd@lists.infradead.org>; Tue,  7 May 2019 12:49:21 +0200 (CEST)
Received: from milecki.pl (ip-194-187-74-233.konfederacka.maverick.com.pl
 [194.187.74.233]) (Authenticated sender: rafal@milecki.pl)
 by player695.ha.ovh.net (Postfix) with ESMTPSA id E521D562A8C4;
 Tue,  7 May 2019 10:48:55 +0000 (UTC)
Subject: Re: [RFC PATCH v4 1/1] mtd: rawnand: mtk: Re-license MTK NAND driver
 as Dual MIT/GPL
To: Xiaolei Li <xiaolei.li@mediatek.com>, miquel.raynal@bootlin.com,
 richard@nod.at, arnd@arndb.de
References: <20190507092020.1917-1-xiaolei.li@mediatek.com>
 <20190507092020.1917-2-xiaolei.li@mediatek.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Message-ID: <3edbd5a4-4226-4cec-052a-81f7251817a1@milecki.pl>
Date: Tue, 7 May 2019 12:48:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.2
MIME-Version: 1.0
In-Reply-To: <20190507092020.1917-2-xiaolei.li@mediatek.com>
Content-Language: en-US
X-Ovh-Tracer-Id: 7111465289343209064
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduuddrkedtgdefgecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_034940_252351_0C7F2F59 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.33.104.253 listed in list.dnswl.org]
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: daniel.thompson@linaro.org, ryder.lee@mediatek.com,
 srv_heupstream@mediatek.com, gustavo@embeddedor.com,
 yellowriver2010@hotmail.com, jorge.ramirez-ortiz@linaro.org,
 yamada.masahiro@socionext.com, boris.brezillon@collabora.com,
 linux-mtd@lists.infradead.org, weiyongjun1@huawei.com,
 yingjoe.chen@mediatek.com, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org, rogercc.lin@mediatek.com,
 dan.carpenter@oracle.com, peterpandong@micron.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

QXJuZDogd291bGQgeW91IHNlbmQgeW91IEFjaywganVzdCBzbyB3ZSBhcmUgMTAwJSBvbiBhIGxl
Z2FsIHNpZGU/CgoKT24gMDcuMDUuMjAxOSAxMToyMCwgWGlhb2xlaSBMaSB3cm90ZToKPiBJdCBp
cyB3YW50ZWQgdG8gdXNlIE1USyBOQU5EIGRyaXZlciB3aXRoIEdQTC0yLjAgb3IgTUlUIGxpY2Vu
c2UuCj4gQnV0IG5vdyBpdCBpcyBvbmx5IGxpY2Vuc2VkIGFzIEdQTC0yLjAuCj4gU28gcmUtbGlj
ZW5zZSBpdCBhcyBkdWFsIE1JVC9HUEwgYW5kIHJlcGxhY2UgbGljZW5zZSB0ZXh0IHdpdGgKPiBT
UERYIHRhZy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBYaWFvbGVpIExpIDx4aWFvbGVpLmxpQG1lZGlh
dGVrLmNvbT4KPiBBY2tlZC1ieTogSm9yZ2UgUmFtaXJlei1PcnRpeiA8am9yZ2UucmFtaXJlei1v
cnRpekBsaW5hcm8ub3JnPgo+IEFja2VkLWJ5OiBSeWRlciBMZWUgPHJ5ZGVyLmxlZUBtZWRpYXRl
ay5jb20+Cj4gQWNrZWQtYnk6IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KPiBB
Y2tlZC1ieTogTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4KPiBBY2tl
ZC1ieTogQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4KPiBB
Y2tlZC1ieTogUm9nZXJDQyBMaW4gPHJvZ2VyY2MubGluQG1lZGlhdGVrLmNvbT4KCgpGb3IgbXRr
X25hbmQuYyB3ZSBhcmUgbWlzc2luZyBhY2tzIGZyb20gKGNvLSlhdXRob3JzIG9mIGZvbGxvd2lu
ZyBjb21taXRzOgoxKSBXZWk6Cmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9r
ZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC9jb21taXQvP2lkPTA3Zjc2NDQzZWY4MWUyYjc2
YmI2Zjc4NThiYTE4M2NkNjAzNTdhZGEKMikgUGV0ZXI6Cmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcv
cHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC9jb21taXQvP2lkPWQ0
MDkyZDc2YTRhNGU1N2I2NTkxMDg5OTk0OGE4M2NjODY0NmM1YTUKMykgTWFzYWhpcm86Cmh0dHBz
Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4
LmdpdC9jb21taXQvP2lkPWYwZGJlNGFhMzVlNzNlNDI4MmQ5NDQ2YWJiODkwMGFiMDYzNmQ0ODMK
CkFsbCBhcmUgYWJzb2x1dGVseSB0cml2aWFsLgoKCkZvciBtdGtfZWNjLmMgYXJlIGFyZSBtaXNz
aW5nIGFja3MgZnJvbSAoY28tKWF1dGhvcnMgb2YgZm9sbG93aW5nIGNvbW1pdHM6CjEpIFdlbjoK
aHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMv
bGludXguZ2l0L2NvbW1pdC8/aWQ9MDExOTcyMGEwMGIyMDA3NGE1MTI0NTQyN2YwNTM2NmVkZTJm
YTkwYQoyKSBHdXN0YXZvOgpodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2Vy
bmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvY29tbWl0Lz9pZD0yMzg3MDliMjIwOTdhMTY4Mzkw
Nzg1MzBlMGExMDgxMmRkZTg2ZjE2CjMpIEFybmQ6Cmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHVi
L3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC9jb21taXQvP2lkPThmZjA1
MTNiZGNkZDcxZTg0YWE1NjFjY2UyMTY2NzVkNDNmYjQxYjgKClRoZSBvbmx5IC9jb21wbGV4LyBj
aGFuZ2UgaXMgZnJvbSBBcm5kLiBJJ20gbm90IHN1cmUgaWYgdGhhdCBpcwpjb3B5cmlnaHRhYmxl
IG9yIG5vdC4KCgoKCiMgZ2l0IGxvZyAtLWZvbGxvdyBkcml2ZXJzL210ZC9uYW5kL3Jhdy9tdGtf
bmFuZC5jIHwgZ3JlcCAiU2lnbmVkLW9mZi1ieSIgfCBzb3J0IHwgdW5pcSAtYyB8IHNvcnQgLW4g
LXIKICAgICAgMjAgICAgIFNpZ25lZC1vZmYtYnk6IE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXlu
YWxAYm9vdGxpbi5jb20+CiAgICAgIDE4ICAgICBTaWduZWQtb2ZmLWJ5OiBCb3JpcyBCcmV6aWxs
b24gPGJvcmlzLmJyZXppbGxvbkBib290bGluLmNvbT4KICAgICAgMTUgICAgIFNpZ25lZC1vZmYt
Ynk6IEJvcmlzIEJyZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9uQGZyZWUtZWxlY3Ryb25zLmNvbT4K
ICAgICAgIDYgICAgIFNpZ25lZC1vZmYtYnk6IFhpYW9sZWkgTGkgPHhpYW9sZWkubGlAbWVkaWF0
ZWsuY29tPgogICAgICAgMyAgICAgU2lnbmVkLW9mZi1ieTogUm9nZXJDQyBMaW4gPHJvZ2VyY2Mu
bGluQG1lZGlhdGVrLmNvbT4KICAgICAgIDIgICAgIFNpZ25lZC1vZmYtYnk6IE1pcXVlbCBSYXlu
YWwgPG1pcXVlbC5yYXluYWxAZnJlZS1lbGVjdHJvbnMuY29tPgogICAgICAgMSAgICAgU2lnbmVk
LW9mZi1ieTogV2VpIFlvbmdqdW4gPHdlaXlvbmdqdW4xQGh1YXdlaS5jb20+CiAgICAgICAxICAg
ICBTaWduZWQtb2ZmLWJ5OiBSeWRlciBMZWUgPHJ5ZGVyLmxlZUBtZWRpYXRlay5jb20+CiAgICAg
ICAxICAgICBTaWduZWQtb2ZmLWJ5OiBSYWZhxYIgTWnFgmVja2kgPHJhZmFsQG1pbGVja2kucGw+
CiAgICAgICAxICAgICBTaWduZWQtb2ZmLWJ5OiBQZXRlciBQYW4gPHBldGVycGFuZG9uZ0BtaWNy
b24uY29tPgogICAgICAgMSAgICAgU2lnbmVkLW9mZi1ieTogTWFzYWhpcm8gWWFtYWRhIDx5YW1h
ZGEubWFzYWhpcm9Ac29jaW9uZXh0LmNvbT4KICAgICAgIDEgICAgIFNpZ25lZC1vZmYtYnk6IEpv
cmdlIFJhbWlyZXotT3J0aXogPGpvcmdlLnJhbWlyZXotb3J0aXpAbGluYXJvLm9yZz4KICAgICAg
IDEgICAgIFNpZ25lZC1vZmYtYnk6IEJvcmlzIEJyZXppbGxvbiA8YmJyZXppbGxvbkBrZXJuZWwu
b3JnPgoKKiBCb3JpcyAoY29udHJpYnV0b3Igb2YgMzQgY2hhbmdlcykgLSBBY2tlZAoqIE1pcXVl
bCAoY29udHJpYnV0b3Igb2YgMjIgY2hhbmdlcykgLSBBY2tlZAoqIFhpYW9sZWkgKGNvbnRyaWJ1
dG9yIG9mIDYgY2hhbmdlcykgLSBTaWduZWQKKiBSb2dlckNDIChjb250cmlidXRvciBvZiAzIGNo
YW5nZXMpIC0gQWNrZWQKKiBSYWZhxYIgKGNvbnRyaWJ1dG9yIG9mIDEgY2hhbmdlKSAtIEFja2Vk
CiogSm9yZ2UgKGNvbnRyaWJ1dG9yIG9mIDEgY2hhbmdlKSAtIEFja2VkCiogUnlkZXIgKGNvbnRy
aWJ1dG9yIG9mIDEgY2hhbmdlKSAtIEFja2VkCgoqIFdlaSAoY29udHJpYnV0b3Igb2YgMSBjaGFu
Z2UpOgowN2Y3NjQ0M2VmODEgKCJtdGQ6IG5hbmQ6IG1lZGlhdGVrOiByZW1vdmUgcmVkdW5kYW50
IGRldl9lcnIgY2FsbCBpbiBtdGtfbmZjX3Byb2JlKCkiKQoKKiBQZXRlciAoY29udHJpYnV0b3Ig
b2YgMSBjaGFuZ2UpOgpkNDA5MmQ3NmE0YTQgKCJtdGQ6IG5hbmQ6IFJlbmFtZSBuYW5kLmggaW50
byByYXduYW5kLmgiKQoKKiBNYXNhaGlybyAoY29udHJpYnV0b3Igb2YgMSBjaGFuZ2UpOgpmMGRi
ZTRhYTM1ZTcgKCJtdGQ6IG5hbmQ6IG1lZGlhdGVrOiByZXR1cm4gZXJyb3IgY29kZSBvZiBuYW5k
X3NjYW5faWRlbnQvdGFpbCgpIG9uIGVycm9yIikKCgoKCiMgZ2l0IGxvZyAtLWZvbGxvdyBkcml2
ZXJzL210ZC9uYW5kL3Jhdy9tdGtfZWNjLmMgfCBncmVwICJTaWduZWQtb2ZmLWJ5IiB8IHNvcnQg
fCB1bmlxIC1jIHwgc29ydCAtbiAtcgogICAgICAxMyAgICAgU2lnbmVkLW9mZi1ieTogQm9yaXMg
QnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25AZnJlZS1lbGVjdHJvbnMuY29tPgogICAgICAgNiAg
ICAgU2lnbmVkLW9mZi1ieTogWGlhb2xlaSBMaSA8eGlhb2xlaS5saUBtZWRpYXRlay5jb20+CiAg
ICAgICAzICAgICBTaWduZWQtb2ZmLWJ5OiBSb2dlckNDIExpbiA8cm9nZXJjYy5saW5AbWVkaWF0
ZWsuY29tPgogICAgICAgMiAgICAgU2lnbmVkLW9mZi1ieTogQm9yaXMgQnJlemlsbG9uIDxib3Jp
cy5icmV6aWxsb25AYm9vdGxpbi5jb20+CiAgICAgICAxICAgICBTaWduZWQtb2ZmLWJ5OiBXZW4g
WWFuZyA8eWVsbG93cml2ZXIyMDEwQGhvdG1haWwuY29tPgogICAgICAgMSAgICAgU2lnbmVkLW9m
Zi1ieTogUnlkZXIgTGVlIDxyeWRlci5sZWVAbWVkaWF0ZWsuY29tPgogICAgICAgMSAgICAgU2ln
bmVkLW9mZi1ieTogTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4KICAg
ICAgIDEgICAgIFNpZ25lZC1vZmYtYnk6IEpvcmdlIFJhbWlyZXotT3J0aXogPGpvcmdlLnJhbWly
ZXotb3J0aXpAbGluYXJvLm9yZz4KICAgICAgIDEgICAgIFNpZ25lZC1vZmYtYnk6IEd1c3Rhdm8g
QS4gUi4gU2lsdmEgPGd1c3Rhdm9AZW1iZWRkZWRvci5jb20+CiAgICAgICAxICAgICBTaWduZWQt
b2ZmLWJ5OiBEYW4gQ2FycGVudGVyIDxkYW4uY2FycGVudGVyQG9yYWNsZS5jb20+CiAgICAgICAx
ICAgICBTaWduZWQtb2ZmLWJ5OiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPgoKKiBCb3Jp
cyAoY29udHJpYnV0b3Igb2YgMTUgY2hhbmdlcykgLSBBY2tlZAoqIFhpYW9sZWkgKGNvbnRyaWJ1
dG9yIG9mIDYgY2hhbmdlcykgLSBTaWduZWQKKiBSb2dlckNDIChjb250cmlidXRvciBvZiAzIGNo
YW5nZXMpIC0gQWNrZWQKKiBSeWRlciAoY29udHJpYnV0b3Igb2YgMSBjaGFuZ2UpIC0gQWNrZWQK
KiBNaXF1ZWwgKGNvbnRyaWJ1dG9yIG9mIDEgY2hhbmdlKSAtIEFja2VkCiogSm9yZ2UgKGNvbnRy
aWJ1dG9yIG9mIDEgY2hhbmdlKSAtIEFja2VkCiogRGFuIChjb250cmlidXRvciBvZiAxIGNoYW5n
ZSkgLSBBY2tlZAoKKiBXZW4gKGNvbnRyaWJ1dG9yIG9mIDEgY2hhbmdlKToKMDExOTcyMGEwMGIy
ICgibXRkOiByYXduYW5kOiBtdGs6IGZpeCBwb3NzaWJsZSBvYmplY3QgcmVmZXJlbmNlIGxlYWsi
KQoKKiBHdXN0YXZvIChjb250cmlidXRvciBvZiAxIGNoYW5nZSk6CjIzODcwOWIyMjA5NyAoIm10
ZDogbmFuZDogbXRrOiBmaXggZXJyb3IgcmV0dXJuIGNvZGUgaW4gbXRrX2VjY19wcm9iZSgpIikK
CiogQXJuZCAoY29udHJpYnV0b3Igb2YgMSBjaGFuZ2UpOgo4ZmYwNTEzYmRjZGQgKCJtdGQ6IG10
azogYXZvaWQgd2FybmluZyBpbiBtdGtfZWNjX2VuY29kZSIpCgoKCgojIGdpdCBsb2cgLS1mb2xs
b3cgZHJpdmVycy9tdGQvbmFuZC9yYXcvbXRrX2VjYy5oIHwgZ3JlcCAiU2lnbmVkLW9mZi1ieSIg
fCBzb3J0IHwgdW5pcSAtYyB8IHNvcnQgLW4gLXIKICAgICAgIDMgICAgIFNpZ25lZC1vZmYtYnk6
IEJvcmlzIEJyZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9uQGZyZWUtZWxlY3Ryb25zLmNvbT4KICAg
ICAgIDEgICAgIFNpZ25lZC1vZmYtYnk6IFhpYW9sZWkgTGkgPHhpYW9sZWkubGlAbWVkaWF0ZWsu
Y29tPgogICAgICAgMSAgICAgU2lnbmVkLW9mZi1ieTogUm9nZXJDQyBMaW4gPHJvZ2VyY2MubGlu
QG1lZGlhdGVrLmNvbT4KICAgICAgIDEgICAgIFNpZ25lZC1vZmYtYnk6IEpvcmdlIFJhbWlyZXot
T3J0aXogPGpvcmdlLnJhbWlyZXotb3J0aXpAbGluYXJvLm9yZz4KICAgICAgIDEgICAgIFNpZ25l
ZC1vZmYtYnk6IEJvcmlzIEJyZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9uQGJvb3RsaW4uY29tPgoK
KiBCb3JpcyAoY29udHJpYnV0b3Igb2YgNCBjaGFuZ2VzKSAtIEFja2VkCiogWGlhb2xlaSAoY29u
dHJpYnV0b3Igb2YgMSBjaGFuZ2UpIC0gU2lnbmVkCiogUm9nZXJDQyAoY29udHJpYnV0b3Igb2Yg
MSBjaGFuZ2UpIC0gQWNrZWQKKiBKb3JnZSAoY29udHJpYnV0b3Igb2YgMSBjaGFuZ2UpIC0gQWNr
ZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
