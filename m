Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4EF181243
	for <lists+linux-mtd@lfdr.de>; Wed, 11 Mar 2020 08:46:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MuUAqnZjZ+zWg+caS+C2CGME6sP8wGGas56MA4cR6Us=; b=aoF+H6vjcW5sgV
	FXuKTMSXZNYL+I0kvxS8huAQQnbnz8rZv3oEwNpjnDH2qniH8AgIP9BYLvtmw76uf8nPjbi16pjnC
	4pfP+PuPZZdEeE59C05bNgEICrzk+R8O7LCvXu2deAdyMeXYHnRk5TLnQWYWG7+6lWqfRdggu7WP7
	qfBt1PS4tKHuCxOwYwZ7TGTwvn1jhRwI9l94RSZW15zXMAKV0cVBmleeKAf03Cmj4LzpefHi6yYZw
	AuX1dsnrneJ/kmxvXFcOi8SjukaqvSbyicEUjFUCIxZJ9iKHamyXOQatiuJQQA9HK6+aOJbuYpamj
	KX8pgI7l2Q1hEUP6h8qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBw4V-0006uI-DM; Wed, 11 Mar 2020 07:46:31 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBw4I-0006u9-5l
 for linux-mtd@bombadil.infradead.org; Wed, 11 Mar 2020 07:46:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=sSn7dfK9u+XI5Nk2BrDTvgWe9ql6ZS5yc6bzzwtlX8M=; b=NQTnzIOnOIjOwRBYFyg03XhSFR
 ies3GcrLHrZyJjeNc1ZZPqHaDRwTYXiyk5u//kuWY6VE8Ar0D9kWiyYKNkxuk2T1JmqAT+M8v8nau
 1ZgGO13Bg3r6U7Z4okW54CtXxKbuk0uwT/QUX9GnNePfnKC4wtswiDa4Y84v81Ycniekg0E2B80sL
 +Xbr3itZe+J97+uq+VKyXz9HAML6EQhWoJOWmdCcQdlClO8kdk9mFNPPbXfsju3NcV7rI70LyBzNn
 y5tjSD3FWZSfWjrBghIAdYK+DkWJnHNnjGlEYa+dumISGA7ZY0q3aMAPvtqW20T1R7MvxRDYLTvb8
 VV8shvtA==;
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBw4E-0004La-Hk
 for linux-mtd@lists.infradead.org; Wed, 11 Mar 2020 07:46:16 +0000
X-Originating-IP: 90.89.41.158
Received: from xps13 (lfbn-tou-1-1473-158.w90-89.abo.wanadoo.fr [90.89.41.158])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 314AD4000E;
 Wed, 11 Mar 2020 07:45:41 +0000 (UTC)
Date: Wed, 11 Mar 2020 08:45:41 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Mason Yang <masonccyang@mxic.com.tw>
Subject: Re: [PATCH v5 2/2] dt-bindings: mtd: Document Macronix NAND device
 bindings
Message-ID: <20200311084541.28ff4829@xps13>
In-Reply-To: <1581922600-25461-3-git-send-email-masonccyang@mxic.com.tw>
References: <1581922600-25461-1-git-send-email-masonccyang@mxic.com.tw>
 <1581922600-25461-3-git-send-email-masonccyang@mxic.com.tw>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_074614_747849_207BC557 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-2.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.194 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, vigneshr@ti.com,
 juliensu@mxic.com.tw, richard@nod.at, yuehaibing@huawei.com,
 linux-kernel@vger.kernel.org, frieder.schrempf@kontron.de, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, tglx@linutronix.de, allison@lohutok.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgTWFzb24sCgpNYXNvbiBZYW5nIDxtYXNvbmNjeWFuZ0BteGljLmNvbS50dz4gd3JvdGUgb24g
TW9uLCAxNyBGZWIgMjAyMCAxNDo1Njo0MAorMDgwMDoKCj4gRG9jdW1lbnQgdGhlIGJpbmRpbmdz
IHVzZWQgYnkgdGhlIE1hY3Jvbml4IE5BTkQgZGV2aWNlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1h
c29uIFlhbmcgPG1hc29uY2N5YW5nQG14aWMuY29tLnR3Pgo+IFJldmlld2VkLWJ5OiBSb2IgSGVy
cmluZyA8cm9iaEBrZXJuZWwub3JnPgo+IC0tLQo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9t
dGQvbmFuZC1tYWNyb25peC50eHQgICAgICB8IDI4ICsrKysrKysrKysrKysrKysrKysrKysKPiAg
MSBmaWxlIGNoYW5nZWQsIDI4IGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tdGQvbmFuZC1tYWNyb25peC50eHQKPiAK
PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL210ZC9uYW5k
LW1hY3Jvbml4LnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tdGQvbmFu
ZC1tYWNyb25peC50eHQKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAuLjFk
N2E4OTUKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL210ZC9uYW5kLW1hY3Jvbml4LnR4dAo+IEBAIC0wLDAgKzEsMjggQEAKPiArTWFjcm9u
aXggTkFORHMgRGV2aWNlIFRyZWUgQmluZGluZ3MKPiArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0KPiArCj4gK01hY3Jvbml4IE5BTkRzIHN1cHBvcnQgcmFuZG9taXplciBvcGVy
YXRpb24gZm9yIHVzZXIgZGF0YSBzY3JhbWJsZWQsCj4gK3doaWNoIGNhbiBiZSBlbmFibGVkIHdp
dGggYSBTRVRfRkVBVFVSRS4gVGhlIHBlbmFsdHkgb2YgcmFuZG9taXplciBhcmUKPiArc3VicGFn
ZSBhY2Nlc3NlcyBwcm9oaWJpdGVkIGFuZCBtb3JlIHRpbWUgcGVyaW9kIGlzIG5lZWRlZCBpbiBw
cm9ncmFtCj4gK29wZXJhdGlvbiwgaS5lLiwgdFBST0cgMzAwdXMgdG8gMzQwdXMocmFuZG9taXpl
ciBlbmFibGVkKS4KPiArUmFuZG9taXplciBlbmFibGVkIGlzIGEgb25lIHRpbWUgcGVyc2lzdGVu
dCBhbmQgbm9uIHJldmVyc2libGUgb3BlcmF0b2luLgo+ICsKPiArRm9yIG1vcmUgaGlnaC1yZWxp
YWJpbGl0eSBjb25jZXJuLCBpZiBzdWJwYWdlIHdyaXRlIG5vdCBhdmFpbGFibGUgd2l0aAo+ICto
YXJkd2FyZSBFQ0MgYW5kIGZpbGVzeXN0ZW0gYW5kIHRoZW4gdG8gZW5hYmxlIHJhbmRvbWl6ZXIg
aXMgcmVjb21tZW5kZWQKPiArYnkgZGVmYXVsdC4KPiArCj4gK0J5IGFkZGluZyBhIG5ldyBzcGVj
aWZpYyBwcm9wZXJ0eSBpbiBjaGlsZHJlbiBub2RlcyB0byBlbmFibGUKPiArcmFuZG9taXplciBm
dW5jdGlvbi4KCkkgYWxzbyByZXdvcmRlZCBzbGlnaHRseSB0aGlzIHRleHQgd2hlbiBhcHBseWlu
Zy4KCgpUaGFua3MsCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
