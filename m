Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F571DE684
	for <lists+linux-mtd@lfdr.de>; Fri, 22 May 2020 14:15:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WpbAT6RT+UGpTZ+WqcPsRM6S+AnZMmRrNDXTJhd1gxc=; b=oufcXUo3WtMi6a
	aDcdjSU9xl5ljslj4NaF2wpWzSgA3XOM88I4h7Ulwkxu77fiX+kVKzCsW0TnPlMq5FQAUtomCgP+H
	ZHkLe6zqXX4XAnkUp56aVeOtZeQDNpoUjJDjwtxO0E4KYUCFWEw5wu34ZRY/tRSjC4fXQ1ZLY8wYt
	07AchqyFPq16c1SkITLr0UdhV/ghe5L0l6WeBcBuTH76XeBZ8qQHm/M6GcH5nT6wCiBKncIz4KFUj
	Rd4X/AimeNUq1SrY0NSsB4RplaQifQKXL8CYsFi2rHxRqVoUMZ953OFq8pJ8h7kodKFFzZb9h7hbZ
	S+RY5lHXqFkB+EwRwwMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc6aX-0005pP-33; Fri, 22 May 2020 12:15:45 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc6aG-0005np-Ml
 for linux-mtd@lists.infradead.org; Fri, 22 May 2020 12:15:29 +0000
Received: by mail-wr1-x441.google.com with SMTP id k13so9987222wrx.3
 for <linux-mtd@lists.infradead.org>; Fri, 22 May 2020 05:15:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fQoBl3iAB4AAXzroqv3WcbLITd0lPVqqa2vsLWJSegM=;
 b=U350gRFZNFttFLFDn7l6Ua1iUdEfSGq+wqwtW6wCoLJj1Pz/ANf1sGDDYOG85/hXjb
 1Wy5kKSUwgY1Q1nHUaNS/TqKkxIs0a5m8qp5dSYt0sfqXvXZzKdzWtGRyR9NheoUC/bM
 7UgkPGJIT4uQehBOuaNUNs8iCVYp4a+bbf/pHOehAcBv+sgxrDIoxw0/3lhBwYDYlcAz
 LBd1hgMpCKX0WhUdIhYsFzdvrlwWGcV4UEuABPEemGik9iq/icN6z7Kx+ajfJZWnI6MZ
 4StIIgeHCSZDejXLiQdE+ZB/v0UR5DPyvlmCpbqD9dPwY/Y4bzPbjXTaqGvLGy5zp+x7
 lnsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fQoBl3iAB4AAXzroqv3WcbLITd0lPVqqa2vsLWJSegM=;
 b=IdbPO7vuB15AL0KZa7VC83b+xBOcwt8GzXVGcq7ASjYDwWxC1uELB8E3e8p+Pk2CgL
 O/HvEk2fmBCEUpfrNYLsQooDGFkgegdTBsros3o1Vaiy5t5zXXud2/imvcPUJaPe5Rsq
 O4sLAK5pCzAzvnhv1s/aOWszqpFea/hzOmfbKlY1yKNy8a58hQCFTG9lOvLR0yheA5xF
 TPXd6TLKNbzxyGc5pfeFGcxHdIc7vqOQsHqvT9bHL+8kF25iipwbxLveJDdyeSWQLiRi
 7+11uCtuGPd8KOV1qqSdD9krqTYvQy0GnB3BOB5TA/wVJiZ4QeQdghtPJwlWfAVUxAKB
 B4ug==
X-Gm-Message-State: AOAM530MIWENnkXNC2Zj8AFIscTlVFac1O3lpVguajC2SB9zVznHzafX
 bO8pyZbLTmpdgQSqBkEpmVM=
X-Google-Smtp-Source: ABdhPJy9YsaQM1hIz0EqZ7h7vCKorss2/EuI/RFW7gjWph4x4T+L9tElIO36RODgl0g69l+kHetDzQ==
X-Received: by 2002:adf:9507:: with SMTP id 7mr3128224wrs.63.1590149727152;
 Fri, 22 May 2020 05:15:27 -0700 (PDT)
Received: from skynet.lan (159.red-83-44-12.dynamicip.rima-tde.net.
 [83.44.12.159])
 by smtp.gmail.com with ESMTPSA id g6sm9293784wrp.75.2020.05.22.05.15.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 05:15:26 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: computersforpeace@gmail.com, kdasu.kdev@gmail.com,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 sumit.semwal@linaro.org, linux-mtd@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
Subject: [PATCH v4 0/5] mtd: rawnand: brcmnand: support v2.1-v2.2 controllers
Date: Fri, 22 May 2020 14:15:19 +0200
Message-Id: <20200522121524.4161539-1-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200522072525.3919332-1-noltari@gmail.com>
References: <20200522072525.3919332-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_051528_743508_6101B775 
X-CRM114-Status: UNSURE (   6.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

QWRkIHN1cHBvcnQgZm9yIHYyLjEgYW5kIHYyLjIgTkFORCBjb250cm9sbGVycy4KCnY0OiBmaXgg
Y29tbWl0IHN1YmplY3QuCnYzOiBmaXggdjIuMSBwYWdlIHNpemUgc2hpZnQKdjI6IGludHJvZHVj
ZSBjaGFuZ2VzIHN1Z2dlc3RlZCBieSBNaXF1w6hsLgoKw4FsdmFybyBGZXJuw6FuZGV6IFJvamFz
ICg1KToKICBtdGQ6IHJhd25hbmQ6IGJyY21uYW5kOiByZW5hbWUgdjQgcmVnaXN0ZXJzCiAgbXRk
OiByYXduYW5kOiBicmNtbmFuZDogZml4IENTMCBsYXlvdXQKICBtdGQ6IHJhd25hbmQ6IGJyY21u
YW5kOiByZW5hbWUgcGFnZSBzaXplcwogIGR0OiBiaW5kaW5nczogYnJjbW5hbmQ6IGFkZCB2Mi4x
IGFuZCB2Mi4yIHN1cHBvcnQKICBuYW5kOiBicmNtbmFuZDogc3VwcG9ydCB2Mi4xLXYyLjIgY29u
dHJvbGxlcnMKCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9tdGQvYnJjbSxicmNtbmFuZC50eHQg
fCAgIDIgKwogZHJpdmVycy9tdGQvbmFuZC9yYXcvYnJjbW5hbmQvYnJjbW5hbmQuYyAgICAgIHwg
MTAwICsrKysrKysrKysrKysrKy0tLQogMiBmaWxlcyBjaGFuZ2VkLCA4NiBpbnNlcnRpb25zKCsp
LCAxNiBkZWxldGlvbnMoLSkKCi0tIAoyLjI2LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGlu
ZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
bXRkLwo=
