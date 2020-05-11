Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9251CE912
	for <lists+linux-mtd@lfdr.de>; Tue, 12 May 2020 01:33:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zSLrYCOoALnr9u4Re/7KdnKF5gcowj2KVCi6GhjqP1E=; b=I4jB2kA4KGqOpc
	TlOAgVh/rwtqd/1E3UxuC9aIUt/qqxg05mDd2LPRb/0gtcAqKAmcT8kwxZ6uAMBrfOPya0DxgLpV4
	dw/hEpKDEOJ20RZR9+G0q+3VkOxgy4KXlhDDPxPegAwwJM2frftuUljTLSSBsqTMWQBLtPxnKpnK0
	maQnKsfr+c1krlHV5aHIrKuiq6sOJJXfvV1bTNVkwn7P0q911r+ZcUCZQzuVxqeoFn3oMzIrhNWDD
	RPA9LvVVq3BZrhzPeTaP5FnHqN2qaLfV4tsjz5Y2l4clhFbucMHrsXLMEcVfsHNuIo2lq+ORg/am2
	3wS9wsMa1NydmY94hGLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYHuk-0002EA-Br; Mon, 11 May 2020 23:32:50 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYHuT-0002Cr-ME
 for linux-mtd@lists.infradead.org; Mon, 11 May 2020 23:32:35 +0000
Received: by mail-pj1-x1031.google.com with SMTP id mq3so8607247pjb.1
 for <linux-mtd@lists.infradead.org>; Mon, 11 May 2020 16:32:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xU6XMFoWF023UKxWu5DBFTUKYIQF4dpwdxpl48CmnvI=;
 b=hmkTZmcY9eimS7zi32p2CbRuT9se7M2eQNUTTR3FZqdvTCpZc3jZjXqT4gpZdmE769
 AZtNeOpQEhsX+ga2HTyU6+lHdh+IT0MBBzJ+2FOzsnYLYbCH+hTuIet0bGweiZtC+12q
 kDXwi87kgJ7ITnkNTpTREfS+Qqxxp4erB3IAE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xU6XMFoWF023UKxWu5DBFTUKYIQF4dpwdxpl48CmnvI=;
 b=h80+kT7MEEfWLjdTk4XmsmYbrOUZNKE1oRfhXUdbrWsUuYuFmgDnCK/zq3uwHtoqZz
 YtdRSA7djPe7XtI084OegsNWo0bH/TzRITNt4jzT9PuIQN9KVHW9mpmwReh1/WRFzPty
 5y4zWYz7AikBFYgGLo2YLFu6ChLxwqhVOyKPceiJTdjyyDBXn/t2Tee8tyIYtsC9ngbk
 3UerkaZIdZMXr+5tYEd0xvbv69MitQIavqrEQvXfY3MYnC1H5Vk1JXKoLhtDGhN0ZzfL
 bh78tBTUbWwK1RgARNZpaHhktdBTShNnD2Wnx2MiLkTe8ql3tEVd7G8FBrcZ1mjuPkdm
 L9bQ==
X-Gm-Message-State: AGi0PuZlDqodIN5wDrgXlw0NNWiXz6AFr6xsh+3Af2ANEIPfKbdrD6o3
 wnrWKNpfQfE/z6ve+uBkVHE0uXVDEyM=
X-Google-Smtp-Source: APiQypIgnigda0IfbYZaAZeoDqi306WfjOgDzWWw5NxF50ONJAY+5AzUPXuEd44x79WdKoX43FT6NA==
X-Received: by 2002:a17:90a:f98b:: with SMTP id
 cq11mr24781058pjb.193.1589239952517; 
 Mon, 11 May 2020 16:32:32 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id 23sm8996607pgm.18.2020.05.11.16.32.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 16:32:31 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Subject: [PATCH v8 00/11] pstore: mtd: support crash log to block and mtd
 device
Date: Mon, 11 May 2020 16:32:18 -0700
Message-Id: <20200511233229.27745-1-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_163233_750223_91A6FE5A 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1031 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rob Herring <robh@kernel.org>, Tony Luck <tony.luck@intel.com>,
 Kees Cook <keescook@chromium.org>, Jonathan Corbet <corbet@lwn.net>,
 Richard Weinberger <richard@nod.at>, Anton Vorontsov <anton@enomsg.org>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Colin Cross <ccross@android.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Vignesh Raghavendra <vigneshr@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi,

After some small fixes, here's v8. :) Thanks!

-Kees

v8:
- oops -> kmsg dump (WeiXiong)
- typo/language fixes (Randy)
- fix bdev failure paths (WeiXiong)
- fix dev_err() -> pr_err (WeiXiong)

v7: https://lore.kernel.org/lkml/20200510202436.63222-1-keescook@chromium.org/
v6: https://lore.kernel.org/lkml/20200509234103.46544-1-keescook@chromium.org/
v5: https://lore.kernel.org/lkml/1589022854-19821-1-git-send-email-liaoweixiong@allwinnertech.com/
v4: https://lore.kernel.org/lkml/20200508064004.57898-1-keescook@chromium.org/
v3: https://lore.kernel.org/lkml/1585126506-18635-1-git-send-email-liaoweixiong@allwinnertech.com/
v2: https://lore.kernel.org/lkml/1581078355-19647-1-git-send-email-liaoweixiong@allwinnertech.com/
v1: https://lore.kernel.org/lkml/1579482233-2672-1-git-send-email-liaoweixiong@allwinnertech.com/

Kees Cook (1):
  pstore/blk: Introduce "best_effort" mode

WeiXiong Liao (10):
  pstore/zone: Introduce common layer to manage storage zones
  pstore/blk: Introduce backend for block devices
  pstore/zone,blk: Add support for pmsg frontend
  pstore/zone,blk: Add console frontend support
  pstore/zone,blk: Add ftrace frontend support
  Documentation: Add details for pstore/blk
  pstore/zone: Provide way to skip "broken" zone for MTD devices
  pstore/blk: Provide way to query pstore configuration
  pstore/blk: Support non-block storage devices
  mtd: Support kmsg dumper based on pstore/blk

 Documentation/admin-guide/pstore-blk.rst |  243 ++++
 MAINTAINERS                              |    1 +
 drivers/mtd/Kconfig                      |   10 +
 drivers/mtd/Makefile                     |    1 +
 drivers/mtd/mtdpstore.c                  |  563 +++++++++
 fs/pstore/Kconfig                        |  109 ++
 fs/pstore/Makefile                       |    6 +
 fs/pstore/blk.c                          |  521 ++++++++
 fs/pstore/zone.c                         | 1463 ++++++++++++++++++++++
 include/linux/pstore_blk.h               |  118 ++
 include/linux/pstore_zone.h              |   60 +
 11 files changed, 3095 insertions(+)
 create mode 100644 Documentation/admin-guide/pstore-blk.rst
 create mode 100644 drivers/mtd/mtdpstore.c
 create mode 100644 fs/pstore/blk.c
 create mode 100644 fs/pstore/zone.c
 create mode 100644 include/linux/pstore_blk.h
 create mode 100644 include/linux/pstore_zone.h

-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
