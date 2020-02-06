Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6238C154CE3
	for <lists+linux-mtd@lfdr.de>; Thu,  6 Feb 2020 21:24:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6p9wQSX24JFLMXK9v+NCovEvFpkd8qQaPam/jnbjpCk=; b=NK2
	gWdjuXK9j/jwLrFoy7hSPQeBAkjefwvnNuUcDR8PKNuAhtVbj0R5FEmXtn0Wc9f8FVEMr2e7Tp9zd
	QtPS6yJc4+ntMKz5B47oyznr2gY7vdmrDOkIFYHuP5KRpTR4UMX6hoRWETQuQdbsR+7ZlEBu8NKVu
	oG1trqhWdpbEUb3aJU+oxuhDNxxiu2ZopNJpDhjhbLLSj2vsko0fO6ep3ujDsJENQcVg9OqZZiPNJ
	BM4KWD3cT/bbOp4eOkDRIdGMrqwW9by9LnlNNiKjZvnUxuj7sfNEiY1NVauajULSuGmQ06Eyl6M7I
	7LylKo7JOjMlGHcFOe1dX7271erWTSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iznhS-0006fn-Ph; Thu, 06 Feb 2020 20:24:34 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iznhL-0006fU-NS
 for linux-mtd@lists.infradead.org; Thu, 06 Feb 2020 20:24:29 +0000
Received: by mail-wm1-x329.google.com with SMTP id f129so258436wmf.2
 for <linux-mtd@lists.infradead.org>; Thu, 06 Feb 2020 12:24:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=tlf2cEuWqzi15jSc47YFX5cP+L61Uac1o8CP7Bpwcew=;
 b=kkfwTjno4EgKmmyYFzOP6XL5hOkg6l0rGjmLQOH5LOdE8GAdQzM+AsTWXky834JXuO
 dDTsjyoQA5bpKM+41c++AOIAQE08Q5a421JkCvk20ja6NlQef5l201DB/m8RVwe/2kGc
 Nsey+xGi5pdp/vNIqi0QuDzGJQAFoMI6bGFM45BAq7Ypb0mXjG5t7YnUkp1MIwZ5BoZR
 QRE/wiCU9jq4OYLMSmfoUWCtH2ZllAqhBTyqzkKCrxeVSu3FF6jDDM9Rhkq0ZJJJvzHj
 EhqxjXlSAPjNVkRzmk/M37IEg9AxXzZrK/+oWaZRzzcMnuRd0qCmuJeohh+V55PjnV2E
 MBdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=tlf2cEuWqzi15jSc47YFX5cP+L61Uac1o8CP7Bpwcew=;
 b=nrh0MrQ4JJRz5DPK84nStuqd9yqSuvWJZ7VJtW9oZzel8Um5XZLuzTkKNW1VGxuDE8
 +Ax8pZZX0zfwtaXVJfIcEMY5kmimASnjFQW0+vTPKbFtgo7PFSqaOZh2IPjg+755DUQm
 AD97mVOf5xKSjFAfSx2LkAFn4TLjdS1ptF8rV6Z+HWz+vCxfioRhjkf8nojKbNjCh9lK
 uhvvXq/JnxbxgJo0ToJSQfmbsvFwiVC2GGbOX4H6r8Y5BnR9d0B8l3sZQM+v5aXxZPFC
 UQ2Up6ubIYIzWMnc1tQSpBAWK3/Zg8zhGprvy7xkQH5YH6z4Cwm1o+LhadApQBepyH5M
 czYw==
X-Gm-Message-State: APjAAAWI6xx8ma0EnvpRil7QlHcScir9hssyY1f7XW3d3j69gVLYlJZn
 UcUtgyg4szDirxybtjsEeXwKb+9UUiw=
X-Google-Smtp-Source: APXvYqyZwyPua8T189yaRBv8FiTqbVEyZ+r+dZUf9JfJOlGKwQkcOGgyPA7flD9UyV4D1RYNmu65oQ==
X-Received: by 2002:a7b:ce18:: with SMTP id m24mr6425514wmc.123.1581020661501; 
 Thu, 06 Feb 2020 12:24:21 -0800 (PST)
Received: from opensdev.fritz.box
 (business-178-015-117-054.static.arcor-ip.net. [178.15.117.54])
 by smtp.gmail.com with ESMTPSA id c13sm539929wrx.9.2020.02.06.12.24.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 12:24:20 -0800 (PST)
From: shiva.linuxworks@gmail.com
X-Google-Original-From: sshivamurthy@micron.com
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 Boris Brezillon <bbrezillon@kernel.org>, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/5] Add new series Micron SPI NAND devices
Date: Thu,  6 Feb 2020 21:22:01 +0100
Message-Id: <20200206202206.14770-1-sshivamurthy@micron.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_122427_763554_D363BA1F 
X-CRM114-Status: UNSURE (   7.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:329 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shiva.linuxworks[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Shivamurthy Shastri <sshivamurthy@micron.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Shivamurthy Shastri <sshivamurthy@micron.com>

This patchset is for the new series of Micron SPI NAND devices, and the
following links are their datasheets.

M78A:
[1] https://www.micron.com/~/media/documents/products/data-sheet/nand-flash/70-series/m78a_1gb_3v_nand_spi.pdf
[2] https://www.micron.com/~/media/documents/products/data-sheet/nand-flash/70-series/m78a_1gb_1_8v_nand_spi.pdf

M79A:
[3] https://www.micron.com/~/media/documents/products/data-sheet/nand-flash/70-series/m79a_2gb_1_8v_nand_spi.pdf
[4] https://www.micron.com/~/media/documents/products/data-sheet/nand-flash/70-series/m79a_ddp_4gb_3v_nand_spi.pdf

M70A:
[5] https://www.micron.com/~/media/documents/products/data-sheet/nand-flash/70-series/m70a_4gb_3v_nand_spi.pdf
[6] https://www.micron.com/~/media/documents/products/data-sheet/nand-flash/70-series/m70a_4gb_1_8v_nand_spi.pdf
[7] https://www.micron.com/~/media/documents/products/data-sheet/nand-flash/70-series/m70a_ddp_8gb_3v_nand_spi.pdf
[8] https://www.micron.com/~/media/documents/products/data-sheet/nand-flash/70-series/m70a_ddp_8gb_1_8v_nand_spi.pdf

Changes since v3:
-----------------

1. Patch 3 and 4 reworked as follows
   - Patch 3 introducing the Continuous read feature
   - Patch 4 adding devices with the feature

Changes since v2:
-----------------

1. Patch commit messages have been modified.
2. Handled devices with Continuous Read feature with vendor specific flag.
3. Reworked die selection function as per the comment.

Changes since v1:
-----------------

1. The patch split into multiple patches.
2. Added comments for selecting the die.

Shivamurthy Shastri (5):
  mtd: spinand: micron: Generalize the OOB layout structure and function
    names
  mtd: spinand: micron: Add new Micron SPI NAND devices
  mtd: spinand: micron: identify SPI NAND device with Continuous Read
    mode
  mtd: spinand: micron: Add M70A series Micron SPI NAND devices
  mtd: spinand: micron: Add new Micron SPI NAND devices with multiple
    dies

 drivers/mtd/nand/spi/micron.c | 153 ++++++++++++++++++++++++++++++----
 include/linux/mtd/spinand.h   |   1 +
 2 files changed, 140 insertions(+), 14 deletions(-)

-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
