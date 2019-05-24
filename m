Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 136502921E
	for <lists+linux-mtd@lfdr.de>; Fri, 24 May 2019 09:56:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ti0JTbV3wis5ZhKBOFhf6Ydd6DU+bdwcPh5mYNfgsAA=; b=O7UxXoR138sL0xQIMds07KkMF
	E1DN8GEbd231LEWxfcgI+G5g2EdzCD1RoQ7FgNNbpXU5RTFDypW/0dHzCfUktAjnE7Tvkpm4mrdYg
	W3gQ5G9QGS3ydoAPYACCpro5iz92jmXoDPe/vz+eZdgQkSm8WUw0OJpYwFtxccFej8uUPlzxkZx3G
	dGhwFSwW26jZou1OimuuajaDIsHvcH6qY1GXdsaDIigBMIiH/85WBOBS8GaE8e1Sc2mUTj4mrie8P
	3HBoZp1ahv1MQNmZT+fbM0Iumy1gufZoFlGzsw/1UFk1zfsUeAx3+mhwpbZnymO0S+LMltM5UE26L
	WJIVUaIlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU53c-0001nC-4a; Fri, 24 May 2019 07:56:04 +0000
Received: from 20.mo3.mail-out.ovh.net ([178.33.47.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU53S-0001lh-Tq
 for linux-mtd@lists.infradead.org; Fri, 24 May 2019 07:55:57 +0000
Received: from player697.ha.ovh.net (unknown [10.108.42.196])
 by mo3.mail-out.ovh.net (Postfix) with ESMTP id 63942215FD3
 for <linux-mtd@lists.infradead.org>; Fri, 24 May 2019 09:55:43 +0200 (CEST)
Received: from RCM-web5.webmail.mail.ovh.net
 (ip-194-187-74-233.konfederacka.maverick.com.pl [194.187.74.233])
 (Authenticated sender: rafal@milecki.pl)
 by player697.ha.ovh.net (Postfix) with ESMTPSA id 6204862308D0;
 Fri, 24 May 2019 07:55:21 +0000 (UTC)
MIME-Version: 1.0
Date: Fri, 24 May 2019 09:55:21 +0200
From: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [RFC PATCH v4 1/1] mtd: rawnand: mtk: Re-license MTK NAND driver
 as Dual MIT/GPL
In-Reply-To: <CAK8P3a3d-2U=hpb0P0+W-eZ0cviwKVwy6dWvHbhBCgF4CJUWKA@mail.gmail.com>
References: <20190507092020.1917-1-xiaolei.li@mediatek.com>
 <20190507092020.1917-2-xiaolei.li@mediatek.com>
 <CAK8P3a3d-2U=hpb0P0+W-eZ0cviwKVwy6dWvHbhBCgF4CJUWKA@mail.gmail.com>
Message-ID: <5052ea548ce89c1a588236d00319960b@milecki.pl>
X-Sender: rafal@milecki.pl
User-Agent: Roundcube Webmail/1.3.9
X-Originating-IP: 194.187.74.233
X-Webmail-UserID: rafal@milecki.pl
X-Ovh-Tracer-Id: 11780853676926471683
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduuddrudduhedguddvlecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_005555_613019_3CF1843C 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.33.47.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 Ryder Lee <ryder.lee@mediatek.com>, srv_heupstream@mediatek.com,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Richard Weinberger <richard@nod.at>, Miquel Raynal <miquel.raynal@bootlin.com>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>, jorge.ramirez-ortiz@linaro.org,
 yingjoe.chen@mediatek.com, boris.brezillon@collabora.com,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Wei Yongjun <weiyongjun1@huawei.com>, yellowriver2010@hotmail.com,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 Xiaolei Li <xiaolei.li@mediatek.com>, rogercc.lin@mediatek.com,
 Dan Carpenter <dan.carpenter@oracle.com>, peterpandong@micron.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gMjAxOS0wNS0yNCAwOTo1MiwgQXJuZCBCZXJnbWFubiB3cm90ZToKPiBPbiBUdWUsIE1heSA3
LCAyMDE5IGF0IDExOjIwIEFNIFhpYW9sZWkgTGkgPHhpYW9sZWkubGlAbWVkaWF0ZWsuY29tPiAK
PiB3cm90ZToKPj4gCj4+IEl0IGlzIHdhbnRlZCB0byB1c2UgTVRLIE5BTkQgZHJpdmVyIHdpdGgg
R1BMLTIuMCBvciBNSVQgbGljZW5zZS4KPj4gQnV0IG5vdyBpdCBpcyBvbmx5IGxpY2Vuc2VkIGFz
IEdQTC0yLjAuCj4+IFNvIHJlLWxpY2Vuc2UgaXQgYXMgZHVhbCBNSVQvR1BMIGFuZCByZXBsYWNl
IGxpY2Vuc2UgdGV4dCB3aXRoCj4+IFNQRFggdGFnLgo+PiAKPj4gU2lnbmVkLW9mZi1ieTogWGlh
b2xlaSBMaSA8eGlhb2xlaS5saUBtZWRpYXRlay5jb20+Cj4+IEFja2VkLWJ5OiBKb3JnZSBSYW1p
cmV6LU9ydGl6IDxqb3JnZS5yYW1pcmV6LW9ydGl6QGxpbmFyby5vcmc+Cj4+IEFja2VkLWJ5OiBS
eWRlciBMZWUgPHJ5ZGVyLmxlZUBtZWRpYXRlay5jb20+Cj4+IEFja2VkLWJ5OiBSYWZhxYIgTWnF
gmVja2kgPHJhZmFsQG1pbGVja2kucGw+Cj4+IEFja2VkLWJ5OiBNaXF1ZWwgUmF5bmFsIDxtaXF1
ZWwucmF5bmFsQGJvb3RsaW4uY29tPgo+PiBBY2tlZC1ieTogQm9yaXMgQnJlemlsbG9uIDxib3Jp
cy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4KPj4gQWNrZWQtYnk6IFJvZ2VyQ0MgTGluIDxyb2dl
cmNjLmxpbkBtZWRpYXRlay5jb20+Cj4gCj4gQWNrZWQtYnk6IEFybmQgQmVyZ21hbm4gPGFybmRA
YXJuZGIuZGU+Cj4gCj4gU29ycnkgZm9yIG1pc3NpbmcgdGhpcyBlYXJsaWVyLgoKVGhhbmsgeW91
IQoKWGlhb2xlaTogcGxlYXNlIHJlc2VuZCB0aGlzIHBhdGNoIHdpdGhvdXQgUkZDIGluIGEgc3Vi
amVjdC4gSSBiZWxpZXZlIGl0CmNhbiBiZSBhcHBsaWVkL3B1c2hlZCBub3cuCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRp
c2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtbXRkLwo=
