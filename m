Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74CA734A8F
	for <lists+linux-mtd@lfdr.de>; Tue,  4 Jun 2019 16:37:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tsWjDliLVVuJKk929MRaJ4E69CQez7gUp5GiPbi++WI=; b=YrSZ5t2ongUBX8C/PlhQsZtS65
	FN1FQ+l0Bz87ykPSUlGD1EcvI94hUFzLBsk6Qyw3JE5pP+1IbjQNu+duTDz1S2yZfp21J/wo8KvV8
	WN+mFwt6VjNEHt1f39hU39Ke7bQhwBDE+2aVyZN9nRUeBe9LiKYZ2b8dyOt/xamyK6a96Hv+XoSmp
	YEjfOsMGdwPdHAJ52mvZZq8arjI0wQU0RcOb8f5bNsyzj7HaWPQ4r4cbNt8ZVH9Stxr5Xs+sU4sDL
	9aVQAgAv2UjKEUfaWpWbPDrvfClCmLlweTOZ7rNXq/aDjeURonK+FtfMrJK88aN7c9lAEzWaOPYwm
	KQQd97eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYAZV-00024d-0q; Tue, 04 Jun 2019 14:37:53 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYAZG-0001y2-Ec
 for linux-mtd@lists.infradead.org; Tue, 04 Jun 2019 14:37:44 +0000
Received: by mail-pf1-x441.google.com with SMTP id t16so3989869pfe.11
 for <linux-mtd@lists.infradead.org>; Tue, 04 Jun 2019 07:37:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Qzbfu0dliCkkEmJ1UFnYukQdP9RWNNavonlb+Fp2x7g=;
 b=B6Z4giGie6KhK2KkxWuIhscXtPyiQHeMiQvlupiBP6cuxnHxnkXC7r77dL910UfzOp
 NbF6jRlrR+fe5PwMr2YdnxhZNvwetSZZa3fSdtJDlWfp2SL6I309qlCdjHgsmEeIhY4X
 4ZrmS2LFhTrynTLrQxkzzst9w2U0QbfyK5S8C2eHE4lo4WlNv6bg+GxASJxWiLvLJYJZ
 4vraMmMpkN9pYK7SgbT+8yeb9DtD+3+r+D4rN7oN0ni70urCpD9eRBY3MFNoaI45wugG
 ECx1VtVgxzw4ohf0wQgQ7/gIGbYiBRYngTDo7tdYImb28Rq0OSmIb06tELlMUi0p4pv0
 Tscg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Qzbfu0dliCkkEmJ1UFnYukQdP9RWNNavonlb+Fp2x7g=;
 b=aGDcY2DU6dZRPPNXWxHNHgilIrXLGKluSIlHggghSCdkD9JTcZsZeeZaVo3YeWDYjY
 tn4AH4jtbLq886+nAz2yGY3z02Yug6l9kMXiWs8YgCXjy12bV/gw4RXonaDWYgrsrL2h
 PO18YNPd/lStEwq2db3R9dVehzXOKR0vsPc2VzfGBedyfbfDH/iFRc30MtcdQxEkoc35
 uDhlSi+Lwl3BLQvRMtpKpn4yf6YQuUZbLiocq+eT0YGC0vdq8W84URwQzMpUnqwjLHVy
 X55JO23YlfD+LnvyN68RoPF1jWazANZN4JdzOapd/m+O8xBpN2DI1ncvl2vVIPIsJ6It
 V9gA==
X-Gm-Message-State: APjAAAWd6Q+/uCaueRacDTKZAiobsm4xFakwXA8+MyrQHebApWT41rw0
 BJhHYys08Pz1jggUUnuvdPUHQGUA
X-Google-Smtp-Source: APXvYqxODlBBHGGcFQeLSbBlxK42pdQc5O3+h4I1eh+4EBYLKe4wKcH39RExLE1ACFUyrK4KVJo6gA==
X-Received: by 2002:a62:f201:: with SMTP id m1mr32199419pfh.217.1559659057712; 
 Tue, 04 Jun 2019 07:37:37 -0700 (PDT)
Received: from mail.broadcom.com ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id m6sm24156872pjl.18.2019.06.04.07.37.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 07:37:37 -0700 (PDT)
From: Kamal Dasu <kdasu.kdev@gmail.com>
To: linux-mtd@lists.infradead.org
Subject: [PATCH v2 3/3] dt: bindings: mtd: brcmand: Add brcmnand,
 brcmnand-v7.3 support
Date: Tue,  4 Jun 2019 10:36:31 -0400
Message-Id: <1559659013-34502-3-git-send-email-kdasu.kdev@gmail.com>
X-Mailer: git-send-email 1.9.0.138.g2de3478
In-Reply-To: <1559659013-34502-1-git-send-email-kdasu.kdev@gmail.com>
References: <1559659013-34502-1-git-send-email-kdasu.kdev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_073738_761178_D7646027 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kdasu.kdev[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Marek Vasut <marek.vasut@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Added brcm,brcmnand-v7.3 as possible compatible string to support
brcmnand controller v7.3.

Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
---
 Documentation/devicetree/bindings/mtd/brcm,brcmnand.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mtd/brcm,brcmnand.txt b/Documentation/devicetree/bindings/mtd/brcm,brcmnand.txt
index 0b7c373..ad4cd30 100644
--- a/Documentation/devicetree/bindings/mtd/brcm,brcmnand.txt
+++ b/Documentation/devicetree/bindings/mtd/brcm,brcmnand.txt
@@ -28,6 +28,7 @@ Required properties:
                          brcm,brcmnand-v7.0
                          brcm,brcmnand-v7.1
                          brcm,brcmnand-v7.2
+                         brcm,brcmnand-v7.3
                          brcm,brcmnand
 - reg              : the register start and length for NAND register region.
                      (optional) Flash DMA register range (if present)
-- 
1.9.0.138.g2de3478


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
