Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 503121CEE0D
	for <lists+linux-mtd@lfdr.de>; Tue, 12 May 2020 09:33:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+sRbHEdgkjSRwCHISI7gxkoDaOnjb1q8AODJR5/gGE8=; b=HtuXQMUk+1EgWg
	ukWkeAIZnbcab+QvLPTMmt7o+K+UPWBmguIPxwa/zgo23RZ3+YQOoitHsDCwwYVzyvz8mkBOX9OQn
	8+EgeiMFZ/YeV7ney8xNErduB6NKs6w08/Z9X4TiWgF5++kJS68d5ZGBIG0vfbmnhSMCutq3dp06Q
	eSJJYkoOPxYRMk3D8Jkax7AE5Nq+HNQj3u8qnOtLx4z6Gje4jiZ3rFquG9mDJHazsVBOtSBfD2IIM
	wnDLXDqZ2j3IqCoUAFDMeBgzo9d8QjK++H3LMCRhxSlSemHZ7cadmJ6EqErFNzl6CZXxN21VqUugN
	g3pNAup4l43ZO/zu7PQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYPQC-0004eD-94; Tue, 12 May 2020 07:33:48 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYPPy-0004dE-7h
 for linux-mtd@lists.infradead.org; Tue, 12 May 2020 07:33:35 +0000
Received: by mail-wr1-x433.google.com with SMTP id i15so13994634wrx.10
 for <linux-mtd@lists.infradead.org>; Tue, 12 May 2020 00:33:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2h4884sQ1T4p7Y1kwQszHkwyBYLx3tAh+LvfZpaf3HA=;
 b=hj/t/bZrtKe6lucKS7eLxk781GNPG4OAwZMgiwqSb4m+80VHsBvJ2uhamejAGXeZ7r
 q5IHXTdDoR6EbasRYLMtwfmGdCZ+JkpqaIGoqizE4+YyjlCbNAFY6zKIFSzVsUWnESIk
 yo6FGZgqQb6kTxXPKhZ/n1whbyQhEZGjSVb6+v9iFqhmo/rC7mU/Lt37DWJOGFCNKa2x
 +zEmCbnrjQLfkLv3XzC2sOy7Tt+9YUMTOPXi7UyvRNGpnosSkp66Gg9cVEpMJ0QE7Pio
 OJ1xjLMLWq9cWmVfXLOzZwz8Ngn/Fh6n6Uj15s1m8J7DLsnEkzrlwx0AVM6Fp7nOPazs
 +YzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2h4884sQ1T4p7Y1kwQszHkwyBYLx3tAh+LvfZpaf3HA=;
 b=Ew/4p1wZkirLV1Q3do8PNddp8iF7gMHS6Fg8niVlOBq1wM3GhXbYjVfsFGapXixVlR
 /gwmhEmsFy295v/abXc8CsspsHNMBU1Vmc1fhCjDJb6sq1mGz1jXj8m0TKXgLPiNuSB+
 6QfKKwEonylnSV6pdLbjvaX0JcjdliOjxSSoZTr0Pnp9r0UClKiO8KzJbw9aBaBUuRG4
 IqYKoJXei4s1T5lzmcg4Shuxd1jKdWGtO1vR8Vb+tAYHwiuqow0kbvl3YiWUq1C0ZqD8
 ZIh8NMwjt6TwxLVWwT0Ktyv5EU738lBVDkmw7mX9va0WtRas24t+UOhJXd7YwpqTDqyG
 p9gg==
X-Gm-Message-State: AGi0PuZKhdSmu2qhwgamTuXC8JvfXTpOB8dhkeTuHznfAj5THHoo8yxM
 aB5jCA7DgnMSbuBEcXqv3Gg=
X-Google-Smtp-Source: APiQypJg8hk4LeUiyc13Z6+SkueRhsAG3TusMR8RvPF7r54iGrokpgamTGkrM3NiCt+K/Id90NJKtA==
X-Received: by 2002:adf:b786:: with SMTP id s6mr22880078wre.287.1589268812747; 
 Tue, 12 May 2020 00:33:32 -0700 (PDT)
Received: from skynet.lan (198.red-83-49-57.dynamicip.rima-tde.net.
 [83.49.57.198])
 by smtp.gmail.com with ESMTPSA id d9sm5961197wmd.10.2020.05.12.00.33.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 00:33:32 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: computersforpeace@gmail.com, kdasu.kdev@gmail.com,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 sumit.semwal@linaro.org, linux-mtd@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
Subject: [PATCH v2 0/5] mtd: rawnand: brcmnand: support v2.1-v2.2 controllers
Date: Tue, 12 May 2020 09:33:24 +0200
Message-Id: <20200512073329.742893-1-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200510151406.2527856-1-noltari@gmail.com>
References: <20200510151406.2527856-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_003334_299502_EFF49418 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:433 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

QWRkIHN1cHBvcnQgZm9yIHYyLjEgYW5kIHYyLjIgTkFORCBjb250cm9sbGVycy4KCnYyOiBpbnRy
b2R1Y2UgY2hhbmdlcyBzdWdnZXN0ZWQgYnkgTWlxdcOobC4KCsOBbHZhcm8gRmVybsOhbmRleiBS
b2phcyAoNSk6CiAgbXRkOiByYXduYW5kOiBicmNtbmFuZDogcmVuYW1lIHY0IHJlZ2lzdGVycwog
IG10ZDogcmF3bmFuZDogYnJjbW5hbmQ6IGZpeCBDUzAgbGF5b3V0CiAgbXRkOiByYXduYW5kOiBi
cmNtbmFuZDogcmVuYW1lIHBhZ2Ugc2l6ZXMKICBkdDogYmluZGluZ3M6IGJyY21uYW5kOiBhZGQg
djIuMSBhbmQgdjIuMiBzdXBwb3J0CiAgbmFuZDogYnJjbW5hbmQ6IHN1cHBvcnQgdjIuMS12Mi4y
IGNvbnRyb2xsZXJzCgogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbXRkL2JyY20sYnJjbW5hbmQu
dHh0IHwgIDIgKwogZHJpdmVycy9tdGQvbmFuZC9yYXcvYnJjbW5hbmQvYnJjbW5hbmQuYyAgICAg
IHwgODkgKysrKysrKysrKysrKysrLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCA3NiBpbnNlcnRpb25z
KCspLCAxNSBkZWxldGlvbnMoLSkKCi0tIAoyLjI2LjIKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFp
bGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtbXRkLwo=
