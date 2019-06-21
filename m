Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 679814EF93
	for <lists+linux-mtd@lfdr.de>; Fri, 21 Jun 2019 21:42:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YQ8uPoyL2zYBAP+SQX9etUfl3DcvS4ktcAZzLjqHjRE=; b=dcTEA7LPb6HwUk
	yZ5J2Dz11W5HjOrf9YA223ryuyQgft8Qlu+8v+CiBzgmyFp205y4JOoUlPOg3RgvAZJDycik4MfOR
	7XNK8ZzThs86XCylV30iTHVNdjjFakpURCoXJluFi1VEOIyJWcRNHHk1hC3TlpzQW/P8Q9/z3RpL4
	ICPj2who4YQUqPVMIRTRMqelcFnPbAKtMtDqor1WKtV2eOdct5f/ezaeJErUkfKmP6leiVcOnn+8o
	28ZbcrHOzMnsxDK1/DyeHDOX307MTThRAHBWNKmxgK0Wqhp3irP1Tsn/sceW8Lxk+Zywrjr86a7Ub
	UTmJcdBH1Tt2mAVsdEDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hePQ3-00086r-Bn; Fri, 21 Jun 2019 19:41:55 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hePPs-00086H-Mf
 for linux-mtd@lists.infradead.org; Fri, 21 Jun 2019 19:41:46 +0000
Received: by mail-lj1-x243.google.com with SMTP id v24so6926468ljg.13
 for <linux-mtd@lists.infradead.org>; Fri, 21 Jun 2019 12:41:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=600RHMAu4vZ4puabk1vr2TN+deEohNitxk3XsErGC5Q=;
 b=ijmNYMoIe0Aly4zcAt0mQeZpSXfSCbu149zr/y+BlPHyfbfhyr2OymG9QxTLd2afb2
 Gpjev2l78lWR5qLU0plgQ/XbEjJJMBFZtTV16L3ii/ZULRIreM+NF2rxutb0Q2L1aZsG
 zX74mybAFQWQ6TWZvZoHl+Y2k0P7cC1EGSjdHqDOyV3pw27Ntei/JNrDLC+WsyBuiEkf
 +vi6eJ6qGmMZsoEWjXjLkVCA9YmkqlIh7Aml+pacBW4fTUDEGsQ77xzGAoRzMZZKeuop
 vNe25nx8KUt4cNUrr+04AJ8N/vsUb60MfB0P68CTzi5WJt5aLnqnprgcEueawsq6dHmw
 XwHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=600RHMAu4vZ4puabk1vr2TN+deEohNitxk3XsErGC5Q=;
 b=V/mWUxD7+/umHnHfQTK11XqApFe1EnHUGwFU/HM9pTUbQn2egfdyRrMhbB5HDB5bXu
 NDaJq8I3V3D+OGgnVzaQpMeQc7MFzj23GWMlctwkYiXuBqgVX2n2NZahB2W1KGuMcS2j
 Qw9f/SEB67cHFtlK8i7MWlmZMVGSWVyhGyfGAf4DQRTljmkegIlpPleW7UHbynZRp90j
 vGkKuvNqaD0mk+aVnZyFIZSkzrJBKVqKOZsnzEhAxoieP2eJHiUITKGvDJfB1SSR+sxm
 +9ObQA/3YVX5VVTbiUktc2Y6kBIeAGh8qs22+FPEDKVlaz2+S5hoxxSDx5LV/ahaQZGI
 xZZw==
X-Gm-Message-State: APjAAAXRkzZ6PjgdUVLJYOZTZAsLtHsxP2lOknIWYzLG+AwfCE+3goip
 j2jtQFi0hWsRKLXFsTZN42Y=
X-Google-Smtp-Source: APXvYqwI3Iuh38CU88PN3Vsg8QqF8wDrUPTsvyz1V6DB5eUjDtvSCD5Nlaj4jG8bki8hVDVzxXKnuw==
X-Received: by 2002:a2e:9c03:: with SMTP id s3mr58595445lji.209.1561146103219; 
 Fri, 21 Jun 2019 12:41:43 -0700 (PDT)
Received: from laska.lan ([93.185.27.99])
 by smtp.gmail.com with ESMTPSA id d2sm503302lfh.1.2019.06.21.12.41.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 21 Jun 2019 12:41:42 -0700 (PDT)
Date: Fri, 21 Jun 2019 22:41:39 +0300
From: Mikhail Kshevetskiy <mikhail.kshevetskiy@gmail.com>
To: Richard Weinberger <richard@nod.at>
Subject: Re: [PATCH] mtd/ubi: fix initialization order of ubi subsystems
Message-ID: <20190621224139.48fa0537@laska.lan>
In-Reply-To: <1524034294.13675.1561145581382.JavaMail.zimbra@nod.at>
References: <20190620132753.19538-1-mikhail.kshevetskiy@gmail.com>
 <CAFLxGvyvFL6iHOgQzw2wqpTYOTY8eW57ORuVQnkjn+Gmub=cbQ@mail.gmail.com>
 <20190621213914.5b0023fd@laska.lan>
 <561004432.13649.1561142870072.JavaMail.zimbra@nod.at>
 <20190621221623.0db81a14@laska.lan>
 <1524034294.13675.1561145581382.JavaMail.zimbra@nod.at>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_124144_744030_87BC9C3B 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mikhail.kshevetskiy[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

T24gRnJpLCAyMSBKdW4gMjAxOSAyMTozMzowMSArMDIwMCAoQ0VTVCkKUmljaGFyZCBXZWluYmVy
Z2VyIDxyaWNoYXJkQG5vZC5hdD4gd3JvdGU6Cgo+IC0tLS0tIFVyc3Byw7xuZ2xpY2hlIE1haWwg
LS0tLS0KPiA+PiA+IFBTIHdlIHNlbmQgdGhlIHNhbWUgcGF0Y2ggdG8gdS1ib290Lgo+ID4+IAo+
ID4+IEluIHUtYm9vdCB0aGUgc3RvcnkgaXMgYSBsaXR0bGUgZGlmZmVyZW50IGJlY2F1c2UgaXQg
aGFzIG5vIGNvbmNlcHQgb2YKPiA+PiB0aHJlYWRzIGFuZCBleGVjdXRlcyB3b3JrIGltbWVkaWF0
ZWx5Lgo+ID4+IAo+ID4+IERvIHlvdSBzZWUgdGhpcyBvbiBhIHJlY2VudCB1LWJvb3Q/Cj4gPj4g
V2l0aCB0aGlzIGNvbW1pdCBpbiB1LWJvb3QgdGhpcyBwcm9ibGVtIHNob3VsZCBub3QgaGFwcGVu
Ogo+ID4+IGY4MjI5MGFmYzg0NyAoIm10ZDogdWJpOiBGaXggd29ya2VyIGhhbmRsaW5nIikKPiA+
IAo+ID4gbm8gd2UgdXNlIDIwMS4wNyBiYXNlZCBib290bG9hZGVyLiBJJ2xsIGxvb2sgb24gaXQu
IFRoYW5rcy4KPiAKPiBQbGVhc2UgYmFja3BvcnQgdGhlIHNhaWQgZml4IGFuZCBjb21tdW5pY2F0
ZSB0aGlzIG9uIHRoZQo+IHUtYm9vdCBtYWlsaW5nbGlzdC4KPiAKPiBZb3VyIHBhdGNoIGZpeGVz
IHRoZSBpc3N1ZSBvbmx5IHBhcnRpYWxseSwgeW91IHdpbGwgc3RpbGwgZmFjZQo+IGlzc3VlcyBp
ZiB1Ymkgc2VlcyBiaXRmbGlwcyBhdCBhdHRhY2ggdGltZS4KCnRoYW5rcyBhIGxvdC4KCgo+IFRo
YW5rcywKPiAvL3JpY2hhcmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
