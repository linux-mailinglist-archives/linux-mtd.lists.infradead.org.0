Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74BC51CEEA7
	for <lists+linux-mtd@lfdr.de>; Tue, 12 May 2020 09:58:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uri+E7/Vkz3KvOQyT7Qb2L9hSLwBRFAjhIiKQpVsBfg=; b=lGRsS8n9bXQiV+
	2boqpL2H0uevYHuWkgiixYvP0r3+xeUkJof762kNPhpPglmB872h/8DVkpZ36y2K21LVIwupF9Dr0
	YbQIHyG0UO+2C9YaaPceupYyRKi8EcPBAJW4rkedIAoaiSXkLHGm9L5Axz0Bg+YbjlDZBNrhVR4st
	X9nXTv6z9T3Ce3wQORhqWul2vEfEYpWjh9A5CBtm+JdF+58b4/0KIT8HpRcnPxjMTAHiLnz8sWEzp
	7FGh4Ap4SmpR0AoBP/3beOSpnr6iVoPWjbyj3HXWVeC/Dve4iD0SUTW3LAlWibn6Az6jNqIoJdDEq
	OGhuPaWfPDMBlsYyQbQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYPnR-0007mR-Pj; Tue, 12 May 2020 07:57:49 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYPnH-0007kw-1O
 for linux-mtd@lists.infradead.org; Tue, 12 May 2020 07:57:40 +0000
Received: by mail-wm1-x344.google.com with SMTP id e26so20635720wmk.5
 for <linux-mtd@lists.infradead.org>; Tue, 12 May 2020 00:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NFX2G/ycRyFJ8XJ2cgub1Gt1QA023juIjxGeZbPNvjA=;
 b=tgGYet/6aC3qdCyAWGYnA/0YcF3Xpfy3K9R+OyMsK8oSwxfmw0VTuExfGwvlifxeQF
 T4fnh8wGTU2fz6co0KMZzcTy16xAnvthGS4r0e8BDykVAzaRoRLZ8AMls7SOZf+pG+tY
 9ZLkxh8eFWpz37ZTaoec6w5j68dnz7VuU3QlJrCi8WFtDI9akFw3ZRc3sIsSbixpZhDG
 rcNOdBKR9WynexcAM4DveRv08SHG7UnFMGKvkfLgI2oBuIoItAypvrGkflaUL2KQrcA6
 abZwAl9G3mfIXD5C7nWH+o8h4DOnDSghfC0E+ufRANXk+0sOMahvza6J4Hxo+Hg8tQXV
 NR7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NFX2G/ycRyFJ8XJ2cgub1Gt1QA023juIjxGeZbPNvjA=;
 b=P2NWUdeD8Hht62jApL43OH74x2eX/AWW3MzNnC4mkmlZ3NwkSB0mUrLU9thcvzW6Q/
 PhAPDbivEGXGSFTYw3V5XC7NxmbVH4TfUErmdvwu77He2HIX4gPQUv6Rj+j2Z1gonOj1
 ADyvbb80wuEXtahNMsSNAoeikm475k5i2u9/AKT0fyjxKCgIfrkpDGqLxogUzl/5tDa8
 dpgFbVFqggA/TVcJzxVk8s0u0FAhHdVVQUpkK6f3p25yvTysDoJ3qpKeTKwFXNFhEgME
 Km6OwUP74QraMmGOmUdaePTYwxGGZKjO2bhkRmrUkBOjALZt8ZFe6arFMpTiYWzbgP9a
 LxyA==
X-Gm-Message-State: AGi0Pubvx+4Ie4VkjL696jwTCbbZdRQu8eA2LSb46SKFd+1ad3Ou1uV8
 SiNGdUnMIprNrL3n2QNh03wMVruljSc=
X-Google-Smtp-Source: APiQypJS/4uzww2NZhrNqojJOpiIOHrot4eMxoh5tB9WHsGpFGZj2hqvWq2bEXNKrCeG8QMcM73jjw==
X-Received: by 2002:a1c:e2c5:: with SMTP id z188mr25111209wmg.35.1589270257495; 
 Tue, 12 May 2020 00:57:37 -0700 (PDT)
Received: from skynet.lan (198.red-83-49-57.dynamicip.rima-tde.net.
 [83.49.57.198])
 by smtp.gmail.com with ESMTPSA id p8sm25946618wma.45.2020.05.12.00.57.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 00:57:37 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: computersforpeace@gmail.com, kdasu.kdev@gmail.com,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 sumit.semwal@linaro.org, linux-mtd@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
Subject: [PATCH v4 0/2] mtd: rawnand: brcmnand: improve hamming oob layout
Date: Tue, 12 May 2020 09:57:31 +0200
Message-Id: <20200512075733.745374-1-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512060023.684871-1-noltari@gmail.com>
References: <20200512060023.684871-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_005739_449984_1486A0CB 
X-CRM114-Status: UNSURE (   7.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

VGhlc2UgcGF0Y2hlcyBpbXByb3ZlIHRoZSBPT0IgaGFtbWluZyBsYXlvdXQgYnkgcmVkdWNpbmcg
dGhlIG51bWJlciBvZiBvb2IKc2VjdGlvbnMgYW5kIGNvcnJlY3RseSByZXNlcnZpbmcgZmlyc3Qg
dHdvIGJ5dGVzIGZvciBsYXJnZSBwYWdlIE5BTkRzLgoKdjQ6IGNsYXJpZnkgc21hbGwvbGFyZ2Ug
cGFnZXMgY29tbWVudC4KdjM6IGludmVydCBwYXRjaCBvcmRlci4KdjI6IGV4dGVuZCBvcmlnaW5h
bCBjb21tZW50IGFuZCBjb3JyZWN0bHkgc2tpcCBieXRlIDYgZm9yIHNtYWxsLXBhZ2UuCgrDgWx2
YXJvIEZlcm7DoW5kZXogUm9qYXMgKDIpOgogIG10ZDogcmF3bmFuZDogYnJjbW5hbmQ6IGZpeCBo
YW1taW5nIG9vYiBsYXlvdXQKICBtdGQ6IHJhd25hbmQ6IGJyY21uYW5kOiBpbXByb3ZlIGhhbW1p
bmcgb29iIGxheW91dAoKIGRyaXZlcnMvbXRkL25hbmQvcmF3L2JyY21uYW5kL2JyY21uYW5kLmMg
fCAzNCArKysrKysrKysrKysrLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRp
b25zKCspLCAxNiBkZWxldGlvbnMoLSkKCi0tIAoyLjI2LjIKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24g
bWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtbXRkLwo=
