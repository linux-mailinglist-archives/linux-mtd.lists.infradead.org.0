Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCB3B7125
	for <lists+linux-mtd@lfdr.de>; Thu, 19 Sep 2019 03:39:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UKTS/viFwCy1REjHgfjHLkn4TL/aBFlMcEjPjFlqVTA=; b=UpbFNlgrZqcd+M
	VmTsnxUcplx/ldozCjtqIE0PeyWJJQR5Q2MFqkwDVSq3if135rkDyB8t7wq/gc+ZGBjdV5jdpXhot
	4y5ZtUbttLhpiKDzlnjzlV8EXnuFBEfW3dkid3h5pz4oASzFo4gxELucYOerlca8w+3u3Qz9b2ZoX
	ZxC3GfxUXCq0X2qqV5aAijJr+jddBTol1j9sw/2Z/08pbcFjYyJWPZS/QwnVBFj9X22VDOW6izg5t
	up/pL+RTMuxLnv2IDh33rmR2235E+t6gV3HvwdQm19XN8lOUiIamMGw44SKgnm569gJXgeGWZbaem
	dkr7fhZotNJDUrAvFghw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAlPI-0002A4-7w; Thu, 19 Sep 2019 01:38:52 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAlP0-00029C-E3
 for linux-mtd@lists.infradead.org; Thu, 19 Sep 2019 01:38:35 +0000
Received: by mail-pf1-x443.google.com with SMTP id y72so1123914pfb.12
 for <linux-mtd@lists.infradead.org>; Wed, 18 Sep 2019 18:38:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wsN9pxLcPJ1qeXa5m6pMME74hufrhsEiWRUwQfSsmVQ=;
 b=KccycJwxERGqBJbUtMI8N2EkDjSdmHH9ab7eqE1HNL3NoDfTzOVfq3ZhlKD/UYZ0Lt
 MwIYJxhPhCtaQ4RwdIxeDZoA038ETi2g/8XOb3xespSfS+oVG6lWlEf1fAZWBm6cMPyL
 JTZ/8x4CXa7KTZCVjCxISSTAqMFMTqYddxGInc3ipb3nKDud/VPSc+UIGgG49PTj3SDM
 qf2WazvIZ2pelPxrSqRIsTJ+aC+7qiWbXwI09PgLvS740/TksEDvcXGMXU686ebCglyZ
 lYja/gN2AoWjVVq9Ydls08x+vhN59tS197PQZnhamD9fnAYxrOzZsXgRdcDymP2ude64
 Cwig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wsN9pxLcPJ1qeXa5m6pMME74hufrhsEiWRUwQfSsmVQ=;
 b=CaxrRShD0+uc7rJIKFnwX//RG7g5AujoGdVZAG5S0NZj/9QBV2G/X0/dnETUt2lBaM
 xfbZbNIqg5a5ITVjfw6g/bJUTIrkPQ/V4reW5b7tXtMF6QzNTjBY1bhqWpIkEDgd/5RS
 PNtkKTe1KKXmV23eFZMqprsESEbl3uD2zlHdz1F3xjQVCA+HVmIBJDCNvbwOXzs5DKJC
 /hNWNhrvyPV2Ri7fKZdZmcVwHVnymEFbTrYL2g0+iakHu3eGdrlYwNLMnrCdRI6Zk2hb
 ET+kSc+lDPipyQXpS4zeO36MyDfFL0dq48KZEQGRQZTaaP4bi9DSH0HSosdZoqlNGJuf
 tZoA==
X-Gm-Message-State: APjAAAXcDU3ySgB330k9zT1XYhxCkjcvoSonLtHTbJmHMKbAABA0s51l
 yTtpxHeBaYLKijR6iQ5Z+w0=
X-Google-Smtp-Source: APXvYqwrTSgOClI+KXimx0HPoDZ975i7weQtaKEnR0RIeq9IyHlZF9TGjXxv+m7kfwPlWcKf44JaRw==
X-Received: by 2002:a17:90a:c68a:: with SMTP id
 n10mr935649pjt.31.1568857112797; 
 Wed, 18 Sep 2019 18:38:32 -0700 (PDT)
Received: from localhost.localdomain ([106.51.104.68])
 by smtp.gmail.com with ESMTPSA id 193sm9508608pfc.59.2019.09.18.18.38.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 18 Sep 2019 18:38:32 -0700 (PDT)
From: Rishi Gupta <gupt21@gmail.com>
To: dedekind1@gmail.com
Subject: [PATCH] UBI: fix warning static is not at beginning of declaration
Date: Thu, 19 Sep 2019 07:08:18 +0530
Message-Id: <1568857098-3863-1-git-send-email-gupt21@gmail.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_183834_502038_EE4725A0 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gupt21[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gupt21[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: vigneshr@ti.com, richard@nod.at, linux-kernel@vger.kernel.org,
 marek.vasut@gmail.com, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com, Rishi Gupta <gupt21@gmail.com>,
 computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Q29tcGlsZXIgZ2VuZXJhdGVzIGZvbGxvd2luZyB3YXJuaW5nIHdoZW4ga2VybmVsIGlzIGJ1aWx0
IHdpdGggVz0xOgoKZHJpdmVycy9tdGQvdWJpL3ViaS5oOjk3MToxOiB3YXJuaW5nOiDigJhzdGF0
aWPigJkgaXMgbm90IGF0IGJlZ2lubmluZwpvZiBkZWNsYXJhdGlvbiBbLVdvbGQtc3R5bGUtZGVj
bGFyYXRpb25dCgpUaGlzIGNvbW1pdCBmaXhlcyB0aGlzIGJ5IGNvcnJlY3RseSBvcmRlcmluZyBr
ZXl3b3Jkcy4KClNpZ25lZC1vZmYtYnk6IFJpc2hpIEd1cHRhIDxndXB0MjFAZ21haWwuY29tPgot
LS0KIGRyaXZlcnMvbXRkL3ViaS91YmkuaCB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRkL3ViaS91Ymku
aCBiL2RyaXZlcnMvbXRkL3ViaS91YmkuaAppbmRleCA3MjFiNmFhLi43NWU4MThjYSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9tdGQvdWJpL3ViaS5oCisrKyBiL2RyaXZlcnMvbXRkL3ViaS91YmkuaApA
QCAtOTY4LDcgKzk2OCw3IEBAIGludCB1YmlfZmFzdG1hcF9pbml0X2NoZWNrbWFwKHN0cnVjdCB1
Ymlfdm9sdW1lICp2b2wsIGludCBsZWJfY291bnQpOwogdm9pZCB1YmlfZmFzdG1hcF9kZXN0cm95
X2NoZWNrbWFwKHN0cnVjdCB1Ymlfdm9sdW1lICp2b2wpOwogI2Vsc2UKIHN0YXRpYyBpbmxpbmUg
aW50IHViaV91cGRhdGVfZmFzdG1hcChzdHJ1Y3QgdWJpX2RldmljZSAqdWJpKSB7IHJldHVybiAw
OyB9Ci1pbnQgc3RhdGljIGlubGluZSB1YmlfZmFzdG1hcF9pbml0X2NoZWNrbWFwKHN0cnVjdCB1
Ymlfdm9sdW1lICp2b2wsIGludCBsZWJfY291bnQpIHsgcmV0dXJuIDA7IH0KK3N0YXRpYyBpbmxp
bmUgaW50IHViaV9mYXN0bWFwX2luaXRfY2hlY2ttYXAoc3RydWN0IHViaV92b2x1bWUgKnZvbCwg
aW50IGxlYl9jb3VudCkgeyByZXR1cm4gMDsgfQogc3RhdGljIGlubGluZSB2b2lkIHViaV9mYXN0
bWFwX2Rlc3Ryb3lfY2hlY2ttYXAoc3RydWN0IHViaV92b2x1bWUgKnZvbCkge30KICNlbmRpZgog
Ci0tIAoyLjcuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
