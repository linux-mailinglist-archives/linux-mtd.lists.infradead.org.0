Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 683764EEE6
	for <lists+linux-mtd@lfdr.de>; Fri, 21 Jun 2019 20:48:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BlaKuPO72Ano9bXvY8LaiTAaCmm51Bx3BirPj9BZSxk=; b=uUqPoXI5ZYvgAj
	hJYQ8Psgq9awiofz1Tdx4c1nTLsFaUnk9kJyV7YhwlxqX8Q7myVWnTHVIRYjzeVKnz6paBfZtDJkf
	4qag3n/W33xTZM87A8VWldVB2pkMtwPSa2QMK4lcJrOyDD5Y1ssqx7/DrZIQhJ+QmuHUHFH6Axtoo
	+IdbGS9LhPZzCc9o9cH+xqy9WGU5N41VIhGE6iR8bqI9l0JPJkhAqvBtK9KGyGFxnsf3d0kqhNBbY
	g/Sah6b24rvjZx+f0Z9WnbPkar0EaD+cmPezy21KZYFtBYZNWlbgocy2gEzCuc3z8oBBEyyrgjLeA
	YTfyJWF2KSFOBKFw0Yew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heOa6-0004g0-W7; Fri, 21 Jun 2019 18:48:15 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heOZx-0004f8-5v
 for linux-mtd@lists.infradead.org; Fri, 21 Jun 2019 18:48:06 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id B772B6088966;
 Fri, 21 Jun 2019 20:47:50 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id VQu3p_3wZaGw; Fri, 21 Jun 2019 20:47:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 651C96088963;
 Fri, 21 Jun 2019 20:47:50 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id kzcum9xSexP3; Fri, 21 Jun 2019 20:47:50 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 3F40F608893E;
 Fri, 21 Jun 2019 20:47:50 +0200 (CEST)
Date: Fri, 21 Jun 2019 20:47:50 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Mikhail Kshevetskiy <mikhail.kshevetskiy@gmail.com>
Message-ID: <561004432.13649.1561142870072.JavaMail.zimbra@nod.at>
In-Reply-To: <20190621213914.5b0023fd@laska.lan>
References: <20190620132753.19538-1-mikhail.kshevetskiy@gmail.com>
 <CAFLxGvyvFL6iHOgQzw2wqpTYOTY8eW57ORuVQnkjn+Gmub=cbQ@mail.gmail.com>
 <20190621213914.5b0023fd@laska.lan>
Subject: Re: [PATCH] mtd/ubi: fix initialization order of ubi subsystems
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Topic: mtd/ubi: fix initialization order of ubi subsystems
Thread-Index: Hyx6HgfKm5lFjCQTY9j/Mvb8uym68w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_114805_377091_3D5D0F94 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: linux-mtd <linux-mtd@lists.infradead.org>,
 Artem Bityutskiy <dedekind1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+PiBDYW4geW91IHBsZWFzZSBzaGFyZSBh
IGxpdHRsZSBtb3JlIGFib3V0IHRoZSBwcm9ibGVtIHlvdSBhcmUgZmFjaW5nPwo+PiBBbHNvIHBy
b2R1Y2VfZnJlZV9wZWIoKSBzaG91bGQgbm90IGdldCBjYWxsZWQgYXQgdGhpcyBwb2ludC4KPj4g
U28gYmVmb3JlIHdlIGZsaXAgdGhlIG9yZGVyIG9mIGluaXRpYWxpemF0aW9uIEknZCBsaWtlIHRv
IHVuZGVyc3RhbmQgdGhlCj4+IHByb2JsZW0gYmV0dGVyLgo+IAo+IFdlIGZhY2VkIGEgY3ljbGUg
cmVib290aW5nIGluIHUtYm9vdCBkdXJpbmcgdWJpIGluaXRpYWxpemF0aW9uLiBUaGUgcHJvYmxl
bQo+IGFwcGVhcnMgYXBwcm94aW1hdGVseSBvbmNlIHBlciB3ZWVrIG9uIGEgcmFuZG9tIHJvdXRl
ciBmcm9tIG91ciB0ZXN0IGZhcm0uCj4gV2UgbmV2ZXIgdHJpZ2dlciB0aGlzIHByb2JsZW0gaW4g
bGludXggKG9ubHkgaW4gdS1ib290KS4KPiAKPiBGcm9tIHRoZSBvdGhlciBzaWRlIHViaSBjb2Rl
IGluIHUtYm9vdCBpcyBhbG1vc3QgdGhlIHNhbWUgYXMgdWJpIGNvZGUgaW4gbGludXgKPiBrZXJu
ZWwgKGl0IGJhY2twb3J0ZWQgZnJvbSBsaW51eCBwZXJpb2RpY2FsbHkpLCBzbyBpdCBtYWtlIHNl
bnNlIHRvIGZpeCBpdCBpbgo+IGxpbnV4IGFzIHdlbGwgdG8gaGVscCB3aXRoIGZ1dHVyZSBwb3J0
aW5nLgo+IAo+IFBTIHdlIHNlbmQgdGhlIHNhbWUgcGF0Y2ggdG8gdS1ib290LgoKSW4gdS1ib290
IHRoZSBzdG9yeSBpcyBhIGxpdHRsZSBkaWZmZXJlbnQgYmVjYXVzZSBpdCBoYXMgbm8gY29uY2Vw
dCBvZgp0aHJlYWRzIGFuZCBleGVjdXRlcyB3b3JrIGltbWVkaWF0ZWx5LgoKRG8geW91IHNlZSB0
aGlzIG9uIGEgcmVjZW50IHUtYm9vdD8KV2l0aCB0aGlzIGNvbW1pdCBpbiB1LWJvb3QgdGhpcyBw
cm9ibGVtIHNob3VsZCBub3QgaGFwcGVuOgpmODIyOTBhZmM4NDcgKCJtdGQ6IHViaTogRml4IHdv
cmtlciBoYW5kbGluZyIpCgpUaGFua3MsCi8vcmljaGFyZAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1h
aWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LW10ZC8K
