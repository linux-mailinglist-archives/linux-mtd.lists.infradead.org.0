Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9181EFE7E
	for <lists+linux-mtd@lfdr.de>; Fri,  5 Jun 2020 19:08:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CHWw4/5uxbvXpewj7mVN0VfrjCVocW2Av3OirZ4r1+U=; b=q9w658L75MDJD6
	m+uD3FbJmVm8oG9sIb4CprdF9ES6QipREDUoDAGsSKrHEu/w18GczZVPUQTlrI5VYx1qzMKC5Sd4N
	qd05tNSHhZe/G1YE7h5qBajyIap9fI5MEpxeoV3oe0TnAU4AFrXeuupY1JrGYm1q9WNVuVAE/+izv
	3vjD3Wp+vwdfCMEXnvRytew+GTk+C8xfAnlSVgb52XifOcJ8BORolKH6seHXvhXJxpU+pr0P03lJY
	Cghg4rk7UCjx67Gqzef3GhzmoRcNDSEDyk8DvWv9e3cUGXzFT3pNJyeDXl8HD1FvwGiJd2951Edj5
	6kLSYe4SG7GagOTpuwBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhFp6-0004Xv-Fy; Fri, 05 Jun 2020 17:08:04 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhFp0-0004XO-Q2
 for linux-mtd@lists.infradead.org; Fri, 05 Jun 2020 17:08:00 +0000
Received: by mail-wr1-x441.google.com with SMTP id y17so10473383wrn.11
 for <linux-mtd@lists.infradead.org>; Fri, 05 Jun 2020 10:07:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rDqQJ0wEgnJldHfGesJHf9Wkye5+SA00t8jjMKl0QrU=;
 b=MfmHhx/s/MTQcyaBDQ3BExt/ArOMQW+pjtqKR8qDzCdLrlOhZs5baL0eeGXWaOYUfY
 zXmD41obhUqDcVNLvecHxsXpuXdSnAKrLFNKqrCcB/ZH+kSw7vjkfjbhljGI+F7FQ//Y
 XgJCzLXSkN2JcXS3qmAy/3p4frjkltzSNj3nBxoacJ/axaEk45gcMBdX0CFsUNybuxzY
 RpudbUm3VCdtS+IOZ5UPxPEpQ9FUB7PtJlIcU+mgMcuNHF6LpchQzs3DGzhMhjPLVGCc
 FmDm6Q3Gua8ngZaNaFnW/S6G5JgXfU2SZncCrg/KQ60g712xnsoFZS6SW+9o9LLc3pv4
 hRoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rDqQJ0wEgnJldHfGesJHf9Wkye5+SA00t8jjMKl0QrU=;
 b=UC9qIEh5Tzzqv8baY5zIagyegEfau4BKdUqFkHzs9hSwwkavRU7uG5b91EfRnDECaJ
 wXl4nQjRaR9Qhhsf/S5pqBWW/q1xGU6Qp5KG5bmA1f0PRGPhvTD5Cw8xdGGPCHFHXrRs
 GYH93+8eyGMPet1u+5kFnoA4kW6DMZHBcxU1roCGFNhkxmQN2NMglM+CwEuWB4nwdyp1
 8FixZYvSYjXUh+yS36YBzAjIZQlnnVQsIPx95FMNvzXyPaIN2YK4b56szRe9UoBvGREE
 qTjJjHBKt7uf1xuZzxVUgBWm88OZ0kmGLOhbrWmQRTaUaLS8JiSlNmYFd1Cn3t9bc9G8
 J4Vw==
X-Gm-Message-State: AOAM530xY8rGJe4FPpB+EBIhDedUdTEi9FwuGDBvEe4ohxfYcBnH0Ufz
 58MWLdL/yZBgtUAY82TKo6FGLhxwWug=
X-Google-Smtp-Source: ABdhPJzDT5SK9P6EKvrzWRuo4fxLa13YPkg+G9cBgaVHHl8YQkloc/wJYK3pvB31wWuMlrG3msflAw==
X-Received: by 2002:adf:f988:: with SMTP id f8mr11453118wrr.81.1591376876540; 
 Fri, 05 Jun 2020 10:07:56 -0700 (PDT)
Received: from skynet.lan (28.red-83-49-61.dynamicip.rima-tde.net.
 [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id h7sm11820797wml.24.2020.06.05.10.07.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Jun 2020 10:07:56 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: computersforpeace@gmail.com, kdasu.kdev@gmail.com,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 sumit.semwal@linaro.org, linux-mtd@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
Subject: [PATCH] mtd: rawnand: brcmnand: force raw OOB writes
Date: Fri,  5 Jun 2020 19:07:20 +0200
Message-Id: <20200605170720.2478262-1-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_100758_861050_B401EEA4 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

TVREX09QU19BVVRPX09PQiBpcyB3cml0dGluZyBPT0Igd2l0aCBFQ0MgZW5hYmxlZCwgd2hpY2gg
Y2hhbmdlcyBhbGwgRUNDIGJ5dGVzCmZyb20gYW4gZXJhc2VkIHBhZ2UgdG8gMHgwMCB3aGVuIEpG
RlMyIGNsZWFubWFya2VycyBhcmUgYWRkZWQgd2l0aCBtdGQtdXRpbHMuCiAgICAgICAgIHwgQkJJ
IHwgICBKRkZTMiAgIHwgICBFQ0MgICB8ICAgSkZGUzIgICB8IFNwYXJlICB8CjAwMDAwODAwICBm
ZiBmZiAxOSA4NSAyMCAwMyAwMCAwMCAgMDAgMDAgMDAgMDAgMDggZmYgZmYgZmYKCkhvd2V2ZXIs
IGlmIE9PQiBpcyB3cml0dGVuIHdpdGggRUNDIGRpc2FibGVkLCB0aGUgSkZGUzIgY2xlYW5tYXJr
ZXJzIGFyZQpjb3JyZWN0bHkgd3JpdHRlbiB3aXRob3V0IGNoYW5naW5nIHRoZSBFQ0MgYnl0ZXM6
CiAgICAgICAgIHwgQkJJIHwgICBKRkZTMiAgIHwgICBFQ0MgICB8ICAgSkZGUzIgICB8IFNwYXJl
ICB8CjAwMDAwODAwICBmZiBmZiAxOSA4NSAyMCAwMyBmZiBmZiAgZmYgMDAgMDAgMDAgMDggZmYg
ZmYgZmYKClNpZ25lZC1vZmYtYnk6IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBn
bWFpbC5jb20+Ci0tLQogZHJpdmVycy9tdGQvbmFuZC9yYXcvYnJjbW5hbmQvYnJjbW5hbmQuYyB8
IDkgKy0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDggZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQvbmFuZC9yYXcvYnJjbW5hbmQvYnJjbW5hbmQu
YyBiL2RyaXZlcnMvbXRkL25hbmQvcmF3L2JyY21uYW5kL2JyY21uYW5kLmMKaW5kZXggOGY5ZmZi
NDZhMDlmLi41NjYyODE3NzA4NDEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbXRkL25hbmQvcmF3L2Jy
Y21uYW5kL2JyY21uYW5kLmMKKysrIGIvZHJpdmVycy9tdGQvbmFuZC9yYXcvYnJjbW5hbmQvYnJj
bW5hbmQuYwpAQCAtMjI3OSwxMyArMjI3OSw2IEBAIHN0YXRpYyBpbnQgYnJjbW5hbmRfd3JpdGVf
cGFnZV9yYXcoc3RydWN0IG5hbmRfY2hpcCAqY2hpcCwgY29uc3QgdWludDhfdCAqYnVmLAogCXJl
dHVybiBuYW5kX3Byb2dfcGFnZV9lbmRfb3AoY2hpcCk7CiB9CiAKLXN0YXRpYyBpbnQgYnJjbW5h
bmRfd3JpdGVfb29iKHN0cnVjdCBuYW5kX2NoaXAgKmNoaXAsIGludCBwYWdlKQotewotCXJldHVy
biBicmNtbmFuZF93cml0ZShuYW5kX3RvX210ZChjaGlwKSwgY2hpcCwKLQkJCSAgICAgICh1NjQp
cGFnZSA8PCBjaGlwLT5wYWdlX3NoaWZ0LCBOVUxMLAotCQkJICAgICAgY2hpcC0+b29iX3BvaSk7
Ci19Ci0KIHN0YXRpYyBpbnQgYnJjbW5hbmRfd3JpdGVfb29iX3JhdyhzdHJ1Y3QgbmFuZF9jaGlw
ICpjaGlwLCBpbnQgcGFnZSkKIHsKIAlzdHJ1Y3QgbXRkX2luZm8gKm10ZCA9IG5hbmRfdG9fbXRk
KGNoaXApOwpAQCAtMjY0Miw3ICsyNjM1LDcgQEAgc3RhdGljIGludCBicmNtbmFuZF9pbml0X2Nz
KHN0cnVjdCBicmNtbmFuZF9ob3N0ICpob3N0LCBzdHJ1Y3QgZGV2aWNlX25vZGUgKmRuKQogCWNo
aXAtPmVjYy53cml0ZV9vb2JfcmF3ID0gYnJjbW5hbmRfd3JpdGVfb29iX3JhdzsKIAljaGlwLT5l
Y2MucmVhZF9vb2JfcmF3ID0gYnJjbW5hbmRfcmVhZF9vb2JfcmF3OwogCWNoaXAtPmVjYy5yZWFk
X29vYiA9IGJyY21uYW5kX3JlYWRfb29iOwotCWNoaXAtPmVjYy53cml0ZV9vb2IgPSBicmNtbmFu
ZF93cml0ZV9vb2I7CisJY2hpcC0+ZWNjLndyaXRlX29vYiA9IGJyY21uYW5kX3dyaXRlX29vYl9y
YXc7CiAKIAljaGlwLT5jb250cm9sbGVyID0gJmN0cmwtPmNvbnRyb2xsZXI7CiAKLS0gCjIuMjYu
MgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
