Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2685E1DE0DF
	for <lists+linux-mtd@lfdr.de>; Fri, 22 May 2020 09:26:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=io5HkAhBBb40lOxGFKvtjz1/DGq/JvxXhMdPhbTFiw0=; b=ketfP3hRxhuuxD
	zK8XGVhiLyylfbxi5O9mwYpal5EvQ/Ut+TCQAIWcacQGmhMShg2ue4efkhIhJLm3O2Wd5RlRtazuA
	+cAYNQYHgVINBBaSI3MvdUHCF5zsl2epdGIPJBH2GSjk4GBtm9H6Trno0USUgKuhWrH01sNkFcFDZ
	8T5ka2kQsiFBSZlxYNCbcOjtoMQpnOFZ46mtRQVTua+MlQrgmb7CdTiQa0KDOYb+klSCATlB5eXkc
	H4V/OzXCD/FVEm6zcvSq64Cj4eC2WuBgl0EazJM/aWQM69xVzTReY6uj3YQ/pked17bUEA2OyHhU3
	3mX+SGK8omJZQiqmyUsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc24O-0006RR-6O; Fri, 22 May 2020 07:26:16 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc23g-0005zm-50
 for linux-mtd@lists.infradead.org; Fri, 22 May 2020 07:25:33 +0000
Received: by mail-wr1-x441.google.com with SMTP id c3so4898433wru.12
 for <linux-mtd@lists.infradead.org>; Fri, 22 May 2020 00:25:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=D2Vxxx9xwQZv2HFZw44HLDX0KJ9fcafykGilE0KusFA=;
 b=Bt6mpwNETM8CL17HN9OVzEcNWXBfIJiVKqfh3Oke4QRDt5hbauCQiFHDYm/qhoOvBh
 TorP/DDfDotp3275SRFVk8I4bonijzearlJ8DHnVuqPInLz07HkE7uisgCyWJNL1Bikq
 Ne7sEITHz76tdICx67J2ToF5oqaYJjea6EfNrWWOP5j50tqQB9VJy0OpmxS2oPUWeziA
 lqxJWd//yolQqc8sDWKf8u76eEPqhBrqEIYdBa+PwGTbOwhGuk4qEhagA5myvRg8rwaO
 3PiwKAuf4+quXgY74OrIZ3dMQgNBYCXoMbsOkZpHkIavLqpw0+N+CI3uCQ37uAXa1Riu
 M6Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=D2Vxxx9xwQZv2HFZw44HLDX0KJ9fcafykGilE0KusFA=;
 b=ChsDAIWx4Ev9mpteK7EScKPfMZYtpgizoeQKz/aqEDfguaqodAOe8dQK/xnmpu1nCS
 1rCHkPzzSXHKtVdG8GqjsymHAbmT+jAYTubUw25p+LBOxAPk+DPghBSzDP5VvW/L5mgK
 NKc9sqtpIDS5fph3XARykdM4WdRK78yd2FcACeylIx/BgfrXTWuDRpmijZXSBBrtYWuX
 ujQDNSRgnN0qcksZJZuE2cwYelQ6ytoNBmV4JN0mDS708HTPNjMzjT5FJTIwmDDTlzTI
 SFBVg5aAQ1E67fZNClSQJAK0sy16auJ9c4oFeC6C2gbOwi1xHfzNscfKcUDXa4acvZjD
 LmPQ==
X-Gm-Message-State: AOAM531lV/H/1DmTUVcstRI3ZO1SrZUVNKKo3s9pHTHB0YtDe5KU8MRn
 EGW0Eq0Fu7QT33UBW94UtpY=
X-Google-Smtp-Source: ABdhPJz/6awZjxVQ+Dp6vSmq92QOklfTK8MOtAn8ONy1iHZCnqeROK6pCNgWTiXRSFDpznJtdikrKQ==
X-Received: by 2002:adf:fdc1:: with SMTP id i1mr2409080wrs.0.1590132330633;
 Fri, 22 May 2020 00:25:30 -0700 (PDT)
Received: from skynet.lan (159.red-83-44-12.dynamicip.rima-tde.net.
 [83.44.12.159])
 by smtp.gmail.com with ESMTPSA id f128sm9299898wme.1.2020.05.22.00.25.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 00:25:30 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: computersforpeace@gmail.com, kdasu.kdev@gmail.com,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 sumit.semwal@linaro.org, linux-mtd@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
Subject: [PATCH v3 2/5] mtd: rawnand: brcmnand: fix CS0 layout
Date: Fri, 22 May 2020 09:25:22 +0200
Message-Id: <20200522072525.3919332-3-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200522072525.3919332-1-noltari@gmail.com>
References: <20200512073329.742893-1-noltari@gmail.com>
 <20200522072525.3919332-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_002532_190573_45F1E86C 
X-CRM114-Status: UNSURE (   9.41  )
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T25seSB2My4zLXY1LjAgaGF2ZSBhIGRpZmZlcmVudCBDUzAgbGF5b3V0LgpDb250cm9sbGVycyBi
ZWZvcmUgdjMuMyB1c2UgdGhlIHNhbWUgbGF5b3V0IGZvciBldmVyeSBDUy4KCkZpeGVzOiAyN2M1
YjE3Y2QxYjEgKCJtdGQ6IG5hbmQ6IGFkZCBOQU5EIGRyaXZlciAibGlicmFyeSIgZm9yIEJyb2Fk
Y29tIFNUQiBOQU5EIGNvbnRyb2xsZXIiKQpTaWduZWQtb2ZmLWJ5OiDDgWx2YXJvIEZlcm7DoW5k
ZXogUm9qYXMgPG5vbHRhcmlAZ21haWwuY29tPgotLS0KIHYzOiBubyBjaGFuZ2VzLgogdjI6IGZp
eCBjb21taXQgbG9nLgoKIGRyaXZlcnMvbXRkL25hbmQvcmF3L2JyY21uYW5kL2JyY21uYW5kLmMg
fCA1ICsrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRkL25hbmQvcmF3L2JyY21uYW5kL2JyY21uYW5kLmMg
Yi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9icmNtbmFuZC9icmNtbmFuZC5jCmluZGV4IDZhMDhkZDA3
YjA1OC4uNzJiMjY4ZDhlM2E0IDEwMDY0NAotLS0gYS9kcml2ZXJzL210ZC9uYW5kL3Jhdy9icmNt
bmFuZC9icmNtbmFuZC5jCisrKyBiL2RyaXZlcnMvbXRkL25hbmQvcmF3L2JyY21uYW5kL2JyY21u
YW5kLmMKQEAgLTYwNiw4ICs2MDYsOSBAQCBzdGF0aWMgaW50IGJyY21uYW5kX3JldmlzaW9uX2lu
aXQoc3RydWN0IGJyY21uYW5kX2NvbnRyb2xsZXIgKmN0cmwpCiAJfSBlbHNlIHsKIAkJY3RybC0+
Y3Nfb2Zmc2V0cyA9IGJyY21uYW5kX2NzX29mZnNldHM7CiAKLQkJLyogdjUuMCBhbmQgZWFybGll
ciBoYXMgYSBkaWZmZXJlbnQgQ1MwIG9mZnNldCBsYXlvdXQgKi8KLQkJaWYgKGN0cmwtPm5hbmRf
dmVyc2lvbiA8PSAweDA1MDApCisJCS8qIHYzLjMtNS4wIGhhdmUgYSBkaWZmZXJlbnQgQ1MwIG9m
ZnNldCBsYXlvdXQgKi8KKwkJaWYgKGN0cmwtPm5hbmRfdmVyc2lvbiA+PSAweDAzMDMgJiYKKwkJ
ICAgIGN0cmwtPm5hbmRfdmVyc2lvbiA8PSAweDA1MDApCiAJCQljdHJsLT5jczBfb2Zmc2V0cyA9
IGJyY21uYW5kX2NzX29mZnNldHNfY3MwOwogCX0KIAotLSAKMi4yNi4yCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNj
dXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LW10ZC8K
