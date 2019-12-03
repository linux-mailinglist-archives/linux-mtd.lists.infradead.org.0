Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C1010F6E1
	for <lists+linux-mtd@lfdr.de>; Tue,  3 Dec 2019 06:20:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fRUEQEbB+BTOgSZvAX0ksu79Z6LvHoZ30wl7erlv6qg=; b=rPe
	DvDjhuZJpPOFKJJ2ETx8fjmXKekPApUpbS0lWV9cGBgrGuXgZnsvByrdtc9xOvXveVeiTgVsFxjAA
	QPyfOs6SebK9yGKllTAJmCCeQIxZvWSX6x/urVvVSfuzgt+PlgZw2cc2j9ILbRT/RtbjRBaWsD0sF
	nbUa32UGeH7prntkje1Z/K9dieeDLSJKmZvZ4AjT4DO8kuSyoNXL6x3h7DgTeKjhOxN2xXNt2S1b5
	HXaTwgZGUE3oH2owTn/TWlh211RCCzhIJ0kAcagQJkDSyJmxxySes9WkULOPaD6Lz2nQWl79ffn5m
	zZfTRW2PQ5J9X4XAzgiuWbmW7tW/RNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic0be-0002qQ-Ub; Tue, 03 Dec 2019 05:20:14 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic0bV-0002Et-RC
 for linux-mtd@lists.infradead.org; Tue, 03 Dec 2019 05:20:07 +0000
Received: by mail-pf1-x441.google.com with SMTP id x28so1236579pfo.6
 for <linux-mtd@lists.infradead.org>; Mon, 02 Dec 2019 21:20:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Lo1FIdw7u0NV2Tgo0tQfhnWJEQxmW3ioGg2cCeozVqA=;
 b=Ztb0RreyoIgcYMObe/fxFbZfmUwBOO9ZNQVyf+0wUkqB4IUF8iX0Aj4QAEgwK2Y8HM
 9R9J2WuuwQAzhlQ/JTsmxUblpgOZSEXSlTYpieISOLR+lxkkznNggFCdSHSHCjpIqfV7
 /xfCn0FBK0DACW28QfMqcF/4QzP3mvELDENsDx94okHKtlscY7ccBwXgRl5XhA2ZeExO
 JSpLajE42kSVi4FjSO+rDXerjrHBAEwhAUn3qReScV8VZLmL+FP5uXu88tMcR4sQc4xI
 mZycIOiu7BQgSsmJ7DMs0dilebUnmKiNVXx2Vhj+jT13hSRhf6hCmXcJlxcxNITmsd5n
 SpQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Lo1FIdw7u0NV2Tgo0tQfhnWJEQxmW3ioGg2cCeozVqA=;
 b=h8vyV+D+LJpA4B2ds9ZoaAh6h0ZMdUavR90lI9flXZzq1rGcKiDpMblWeyn2FbEkUp
 paFl22sKfq2aNGH9JYmXnW343/bdaGZdrBdx9C8umjgC7/5q7rbwELh0D3x6Tqb6hIcM
 zg/J/fUiLPAnWlRIQpLmzwVy3iLokAnqDZU00Z0DtBokniiFcN7YdRi3NIBAg3mtLpi6
 PGXyO0omM/k7SkJ6T3zRo0KkINrq1LLqNK0nnI9CVKR87v/q1JCD7tpYZGFFF4qaEfJ+
 u7b1H93xO7ABTHW855Nr0ffyNASY43paa5cB8+8/GxLxmzvg+XxtptBe0OO+dk1MXAlk
 d6jw==
X-Gm-Message-State: APjAAAWGWrO4r1PCO2zoZjP7qDugIR2L7r7xJYEEGZIEb274mQkLN99u
 VnKGX66aX/wgqz1PCSfILk0=
X-Google-Smtp-Source: APXvYqxzZDh2NfeBrYDTnnOf9/hdb2fm1fLorKVVSa377tbXVjQqr8t/Sr3B1HKNXY0bY7gwbZcU3Q==
X-Received: by 2002:aa7:9465:: with SMTP id t5mr2899660pfq.18.1575350404175;
 Mon, 02 Dec 2019 21:20:04 -0800 (PST)
Received: from deepa-ubuntu.lan (c-98-234-52-230.hsd1.ca.comcast.net.
 [98.234.52.230])
 by smtp.gmail.com with ESMTPSA id h9sm1451915pgk.84.2019.12.02.21.20.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2019 21:20:03 -0800 (PST)
From: Deepa Dinamani <deepa.kernel@gmail.com>
To: viro@zeniv.linux.org.uk,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/6] Delete timespec64_trunc()
Date: Mon,  2 Dec 2019 21:19:39 -0800
Message-Id: <20191203051945.9440-1-deepa.kernel@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_212005_922535_284E581C 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (deepa.kernel[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-cifs@vger.kernel.org, arnd@arndb.de, richard@nod.at,
 jlayton@kernel.org, linux-mtd@lists.infradead.org, stfrench@microsoft.com,
 linux-fsdevel@vger.kernel.org, ceph-devel@vger.kernel.org,
 hirofumi@mail.parknet.co.jp
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This series aims at deleting timespec64_trunc().
There is a new api: timestamp_truncate() that is the
replacement api. The api additionally does a limits
check on the filesystem timestamps.

The suggestion to open code some of the truncate logic
came from Al Viro. And, this does make the code in some
filesystems easy to follow.

The series also does some update_time() cleanup as
suggested by Al Viro.

Deepa Dinamani (6):
  fs: fat: Eliminate timespec64_trunc() usage
  fs: cifs: Delete usage of timespec64_trunc
  fs: ceph: Delete timespec64_trunc() usage
  fs: ubifs: Eliminate timespec64_trunc() usage
  fs: Delete timespec64_trunc()
  fs: Do not overload update_time

 fs/ceph/mds_client.c |  4 +---
 fs/cifs/inode.c      | 13 +++++++------
 fs/fat/misc.c        | 10 +++++++++-
 fs/inode.c           | 33 +++------------------------------
 fs/ubifs/sb.c        | 11 ++++-------
 include/linux/fs.h   |  1 -
 6 files changed, 24 insertions(+), 48 deletions(-)

-- 
Changes since v1:
* Dropped the atime comparison (patch 2/7) taken through cifs tree.
* Refactored update_time according to review comments.
2.17.1

Cc: ceph-devel@vger.kernel.org
Cc: hirofumi@mail.parknet.co.jp
Cc: jlayton@kernel.org
Cc: linux-cifs@vger.kernel.org
Cc: linux-mtd@lists.infradead.org
Cc: richard@nod.at
Cc: stfrench@microsoft.com

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
