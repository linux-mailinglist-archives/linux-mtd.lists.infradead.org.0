Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1708F1CCBE1
	for <lists+linux-mtd@lfdr.de>; Sun, 10 May 2020 17:14:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gWgYZ9tEcgq5edn0fYHk7c9PznnGZEYxnRYCuRqsiLU=; b=GdGZych0UUKa7y
	gDL1qPZ9AShsXIIYVw5Cd5PWnWic0QMLQug8sQsbQ3Vrqy6uZH3u3I26oGbZWbHY9z4hZ+m5gZOaZ
	XpXGnQy/z7NZzsdftZk7xGcdDsHSfyb1LtXRtrlQZup5NBH4nlBi68NZuWBlAEWf2qs0D+iTTiw5h
	ncokH2EoBx1qBgOm+9qQ1CxU5yVvFzzvloImdaOvrNUoMpXstT6lF5ULDaOcxp8TlNfrbvLZo9UPF
	/snND+gFrUf8k7iKXe76WGdqjTap0YuDSOkCk61oRT2EM4NfI5Q1l4vAlWXdh2etiHCd/ttQ707d7
	OVCtoP1HMNW+NBKk2LTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXnfF-0007FF-BU; Sun, 10 May 2020 15:14:49 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXnf7-00079O-AJ
 for linux-mtd@lists.infradead.org; Sun, 10 May 2020 15:14:42 +0000
Received: by mail-wm1-x341.google.com with SMTP id f134so3014476wmf.1
 for <linux-mtd@lists.infradead.org>; Sun, 10 May 2020 08:14:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fSiqQx+dS2DH5/7Z+5RFak3EL/tL8gjUAScqxR3I9Ig=;
 b=htfSLEntu2cDoFyzW55Ez0akzIiqQIzbD2U7kHnKZfCPf7WvvKVgQEUi4RXmxWwMVS
 anL1gttCCVxdug4AmNGXtoKrn4RJ4AI+q3rPqBDfbJ6DpstEMO9gMM7F0A0Q/gwslTKZ
 wQaBfcMUVDll3+U+BMzFBzWjhWLAuNYj7tARyYjsbXQ18T8EhEAzfqPRtD8oJsfZAnm6
 ayU8YEJW2mqP/bxxYE8i7Hyu9DHYCMupQR80qNBX+EnITViBi/zPKOhP9pVuN60a42si
 o/0SceoyqzWQjnw6ms4ublu+rnT9pUM+BYccT9dIGZXneql7xX/jt50kzWDxTbbyRGsl
 mL1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fSiqQx+dS2DH5/7Z+5RFak3EL/tL8gjUAScqxR3I9Ig=;
 b=TSBLRNOIvjk2YJLbnvdpIf7pUmqiyGlN9efdsCLz/YQ+/KfQL6rT5EzXFqd+LhgP+C
 bYeqOk7engkZ44FbJ8jQTX4bzXMaErOzE4m8sQ5JENBRACSFz2i7PFc9q9tmi6Q3Bhf8
 kaN0cGIFOH+HwanbczvfD7jSzP6Q+DSquHiHMn4VG1X8qNbkbKwT8tqK3IPf8frliMgs
 kw/o/VDSZQcIBWCx1+fZx+fduw0TNXCWRazv/EQedmr/qLtYLTrQmoKP/lzIxnRPY9we
 lHIfbIU9WyiEM8BgH4m2QO3Czzlh4TuLmuBiRUDq5RDWoNCetsEmUHsRbHja8H0Z4FVi
 /DUw==
X-Gm-Message-State: AGi0PuYoor1UH/FUCnkbYpU+hIjHB/E/P5lQNxYTTm0rPJh/pCBWICCC
 x/8Un6ONXkOYn8qkIaxU6IY=
X-Google-Smtp-Source: APiQypKHq0xF/2rO0nARKm3P7lZbXZ8UfDRsiNC37FYfZqeIwfU1JvtB5rfs0No52N+UvpDLi5tM/w==
X-Received: by 2002:a05:600c:2299:: with SMTP id
 25mr5662257wmf.138.1589123677516; 
 Sun, 10 May 2020 08:14:37 -0700 (PDT)
Received: from skynet.lan (198.red-83-49-57.dynamicip.rima-tde.net.
 [83.49.57.198])
 by smtp.gmail.com with ESMTPSA id d133sm25176897wmc.27.2020.05.10.08.14.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 10 May 2020 08:14:37 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: computersforpeace@gmail.com, kdasu.kdev@gmail.com,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 sumit.semwal@linaro.org, linux-mtd@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
Subject: [PATCH 2/3] nand: brcmnand: fix CS0 layout
Date: Sun, 10 May 2020 17:14:05 +0200
Message-Id: <20200510151406.2527856-2-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200510151406.2527856-1-noltari@gmail.com>
References: <20200510151406.2527856-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_081441_352884_9AEC7E17 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

T25seSB2My4zLXY1LjAgaGF2ZSBhIGRpZmZlcmVudCBDUzAgbGF5b3V0Lgp2My4zLSBjb250cm9s
bGVycyB1c2UgdGhlIHNhbWUgbGF5b3V0IGZvciBldmVyeSBDUy4KClNpZ25lZC1vZmYtYnk6IMOB
bHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+Ci0tLQogZHJpdmVycy9t
dGQvbmFuZC9yYXcvYnJjbW5hbmQvYnJjbW5hbmQuYyB8IDUgKysrLS0KIDEgZmlsZSBjaGFuZ2Vk
LCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9t
dGQvbmFuZC9yYXcvYnJjbW5hbmQvYnJjbW5hbmQuYyBiL2RyaXZlcnMvbXRkL25hbmQvcmF3L2Jy
Y21uYW5kL2JyY21uYW5kLmMKaW5kZXggNmEwOGRkMDdiMDU4Li43MmIyNjhkOGUzYTQgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvbXRkL25hbmQvcmF3L2JyY21uYW5kL2JyY21uYW5kLmMKKysrIGIvZHJp
dmVycy9tdGQvbmFuZC9yYXcvYnJjbW5hbmQvYnJjbW5hbmQuYwpAQCAtNjA2LDggKzYwNiw5IEBA
IHN0YXRpYyBpbnQgYnJjbW5hbmRfcmV2aXNpb25faW5pdChzdHJ1Y3QgYnJjbW5hbmRfY29udHJv
bGxlciAqY3RybCkKIAl9IGVsc2UgewogCQljdHJsLT5jc19vZmZzZXRzID0gYnJjbW5hbmRfY3Nf
b2Zmc2V0czsKIAotCQkvKiB2NS4wIGFuZCBlYXJsaWVyIGhhcyBhIGRpZmZlcmVudCBDUzAgb2Zm
c2V0IGxheW91dCAqLwotCQlpZiAoY3RybC0+bmFuZF92ZXJzaW9uIDw9IDB4MDUwMCkKKwkJLyog
djMuMy01LjAgaGF2ZSBhIGRpZmZlcmVudCBDUzAgb2Zmc2V0IGxheW91dCAqLworCQlpZiAoY3Ry
bC0+bmFuZF92ZXJzaW9uID49IDB4MDMwMyAmJgorCQkgICAgY3RybC0+bmFuZF92ZXJzaW9uIDw9
IDB4MDUwMCkKIAkJCWN0cmwtPmNzMF9vZmZzZXRzID0gYnJjbW5hbmRfY3Nfb2Zmc2V0c19jczA7
CiAJfQogCi0tIAoyLjI2LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
