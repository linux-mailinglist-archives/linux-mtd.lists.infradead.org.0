Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EEEC1DE68D
	for <lists+linux-mtd@lfdr.de>; Fri, 22 May 2020 14:16:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oJO7LzXsJBPrGy3NQbnm423RizvJIX2VNlmJqLY6NcY=; b=uHJoSjqrLRf0cZ
	E3lb+5FBmHWpDTyjT4RZM8diN5c4byO0m4VVURLLWkg47RZ/+VRiphIHiGJuzS4REk/W43cqMWS8l
	yfaZzbb5Exqa6MeEFzOcKAHsINq9ac0qPnru7uvmUWozLQ4tkk6NBiKhG2sGzyHQEC6toISGbjHEX
	eKXtcjQPNDN1unk8k8+tMmWpE/viXc7C9+XOVxeSbrq4GJiI0oxykmmDA+tTtDbF2d09EfjxZbtWg
	S6KKZI9Q+82pODIb1m6+rpmywgbwZPs8/5qOP7YyeAujXkptt14k96ghDUCQl3d0Fx4v7LMdqYSRz
	SJEdlbn46ZBWK58j54ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc6bN-0006gZ-Rb; Fri, 22 May 2020 12:16:37 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc6aJ-0005pO-MD
 for linux-mtd@lists.infradead.org; Fri, 22 May 2020 12:15:33 +0000
Received: by mail-wr1-x442.google.com with SMTP id l17so9974848wrr.4
 for <linux-mtd@lists.infradead.org>; Fri, 22 May 2020 05:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MqKlTlI+jL2VDjBfx2LR4RfYSJ6TxxTjbq+FxFCrZBE=;
 b=UMGkWtsZqgwvlZC8HG1M+DvirXa6xQd1eAxEg7YK3NYlauJmJK+nm+klyoAJ5fm4ql
 xINQoOWssX8s+UfhANdgsxdaGfszyvCNK3z+E4jHxLPC4oj/C6HbzFIinjMARd+ZPUFk
 9i8cSOuwC1LKvCsanROriaFsrX1ZH6kIIM0ykPInG8BbET+OiVPxQbMevV86G6l5D4vD
 72+/xkwbokkzeVb+ezhlTkFPBD1A8HntrcZZTtQraWhp7w1L2f7PLddanqQBUx7HSios
 QcKEedvc8ln2Er7z/DFPdTnOEcnxGUstl5GSTgzCkZq9+Rg5PexDzH9tihNuOQGfB6qy
 FeBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MqKlTlI+jL2VDjBfx2LR4RfYSJ6TxxTjbq+FxFCrZBE=;
 b=FPX90y8MeutnrvhoryI8yCBW8cxxmFB6Y/eHZ8M0WFJ4Eu9xAmZUg3+eNSk1Q3gvuK
 Q473GfFtjfGJRJ4WgZc/fpK0sCNakBeXERPy6PPKgd497YhEYlWJOVffzmV+8RWXHN38
 n2uR3zCOKFuxvvWYP2h0KzNBDu+ERn/L95x1rOSWwb8KEYT20PN2YC7Sk3BqN5lZATgK
 bZjgQNpd2WyUIYWlaN95/pBNoFwIt2d1S3CeAFBi+a7AQ3jbL0WD+9iWin3EhHt8IhFE
 wU5CXhr2+2oaWwadTvzkx0VU0TIVFgWUKhCBTpukEnY6uYi3pyGBqblVm+Nz3jCPA2II
 JS6Q==
X-Gm-Message-State: AOAM531QNkKc6pEn5oXD79KB58zv2lJ8rd1wKj2I1ZfpQjQeRYGoeBSM
 Zblzb7tRa271AXuiboBFsZk=
X-Google-Smtp-Source: ABdhPJzUXxfCKPsXkJ8dSLSrdTqxwZ40W15WTWItLVa5Qyf2iMlurFSmuCNwEiT0H0cYs9Coc+eUCg==
X-Received: by 2002:adf:ec87:: with SMTP id z7mr3538653wrn.149.1590149730368; 
 Fri, 22 May 2020 05:15:30 -0700 (PDT)
Received: from skynet.lan (159.red-83-44-12.dynamicip.rima-tde.net.
 [83.44.12.159])
 by smtp.gmail.com with ESMTPSA id g6sm9293784wrp.75.2020.05.22.05.15.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 05:15:29 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: computersforpeace@gmail.com, kdasu.kdev@gmail.com,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 sumit.semwal@linaro.org, linux-mtd@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
Subject: [PATCH v4 3/5] mtd: rawnand: brcmnand: rename page sizes
Date: Fri, 22 May 2020 14:15:22 +0200
Message-Id: <20200522121524.4161539-4-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200522121524.4161539-1-noltari@gmail.com>
References: <20200522072525.3919332-1-noltari@gmail.com>
 <20200522121524.4161539-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_051531_778181_0A06CC2D 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Q3VycmVudCBwYWdlcyBzaXplcyBhcHBseSB0byBjb250cm9sbGVycyBhZnRlciB2My40CgpTaWdu
ZWQtb2ZmLWJ5OiDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgPG5vbHRhcmlAZ21haWwuY29tPgot
LS0KIHY0OiBubyBjaGFuZ2VzLgogdjM6IG5vIGNoYW5nZXMuCiB2MjogYWRkIG5ldyBwYXRjaC4K
CiBkcml2ZXJzL210ZC9uYW5kL3Jhdy9icmNtbmFuZC9icmNtbmFuZC5jIHwgNCArKy0tCiAxIGZp
bGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbXRkL25hbmQvcmF3L2JyY21uYW5kL2JyY21uYW5kLmMgYi9kcml2ZXJzL210ZC9u
YW5kL3Jhdy9icmNtbmFuZC9icmNtbmFuZC5jCmluZGV4IDcyYjI2OGQ4ZTNhNC4uZWY2MGRiYmVh
YzJiIDEwMDY0NAotLS0gYS9kcml2ZXJzL210ZC9uYW5kL3Jhdy9icmNtbmFuZC9icmNtbmFuZC5j
CisrKyBiL2RyaXZlcnMvbXRkL25hbmQvcmF3L2JyY21uYW5kL2JyY21uYW5kLmMKQEAgLTU3MSw3
ICs1NzEsNyBAQCBzdGF0aWMgaW50IGJyY21uYW5kX3JldmlzaW9uX2luaXQoc3RydWN0IGJyY21u
YW5kX2NvbnRyb2xsZXIgKmN0cmwpCiB7CiAJc3RhdGljIGNvbnN0IHVuc2lnbmVkIGludCBibG9j
a19zaXplc192NltdID0geyA4LCAxNiwgMTI4LCAyNTYsIDUxMiwgMTAyNCwgMjA0OCwgMCB9Owog
CXN0YXRpYyBjb25zdCB1bnNpZ25lZCBpbnQgYmxvY2tfc2l6ZXNfdjRbXSA9IHsgMTYsIDEyOCwg
OCwgNTEyLCAyNTYsIDEwMjQsIDIwNDgsIDAgfTsKLQlzdGF0aWMgY29uc3QgdW5zaWduZWQgaW50
IHBhZ2Vfc2l6ZXNbXSA9IHsgNTEyLCAyMDQ4LCA0MDk2LCA4MTkyLCAwIH07CisJc3RhdGljIGNv
bnN0IHVuc2lnbmVkIGludCBwYWdlX3NpemVzX3YzXzRbXSA9IHsgNTEyLCAyMDQ4LCA0MDk2LCA4
MTkyLCAwIH07CiAKIAljdHJsLT5uYW5kX3ZlcnNpb24gPSBuYW5kX3JlYWRyZWcoY3RybCwgMCkg
JiAweGZmZmY7CiAKQEAgLTYxOCw3ICs2MTgsNyBAQCBzdGF0aWMgaW50IGJyY21uYW5kX3Jldmlz
aW9uX2luaXQoc3RydWN0IGJyY21uYW5kX2NvbnRyb2xsZXIgKmN0cmwpCiAJCWN0cmwtPm1heF9w
YWdlX3NpemUgPSAxNiAqIDEwMjQ7CiAJCWN0cmwtPm1heF9ibG9ja19zaXplID0gMiAqIDEwMjQg
KiAxMDI0OwogCX0gZWxzZSB7Ci0JCWN0cmwtPnBhZ2Vfc2l6ZXMgPSBwYWdlX3NpemVzOworCQlj
dHJsLT5wYWdlX3NpemVzID0gcGFnZV9zaXplc192M180OwogCQlpZiAoY3RybC0+bmFuZF92ZXJz
aW9uID49IDB4MDYwMCkKIAkJCWN0cmwtPmJsb2NrX3NpemVzID0gYmxvY2tfc2l6ZXNfdjY7CiAJ
CWVsc2UKLS0gCjIuMjYuMgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
