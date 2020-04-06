Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B87219F012
	for <lists+linux-mtd@lfdr.de>; Mon,  6 Apr 2020 07:18:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ai+u4megFmRcM6AOrkUx40ZAwrIHF1pbXtLXHp+ltDE=; b=VmZEdkUrGQwoK7
	xXQdKKJKIu9crFuuKHD0aJNK6hNF8GdfBev3/AbYiEgjeXHZi1NAIo1HWm6KGO73LIUUpmhKDPD96
	U/BM3aeWociDdnzee26fJXHdipSyY7uzYXuOENVeLyW8aVAknQ36BMjq+9jeWLpejM8AX57vs/Rn5
	jmg5B2Eu6zfv3YyRWJ/bFggP3KDTfzHHjeeb+5O8bHL3U97N/gfnvLBhVgy2H0fc/H6Qqw3XWewoD
	n1eEYwh4AMy3B8a0p1ThicdOZ331EBk0PDaVg1VWOQzh/aW1r5O9gpsDuxaXYtllchY+KgacmY2WC
	179MGNxr4upCZ6fxEfyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLK9l-0006bG-Fn; Mon, 06 Apr 2020 05:18:45 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLK9b-0006ao-UP
 for linux-mtd@lists.infradead.org; Mon, 06 Apr 2020 05:18:37 +0000
Received: by mail-oi1-x243.google.com with SMTP id y71so12041226oia.7
 for <linux-mtd@lists.infradead.org>; Sun, 05 Apr 2020 22:18:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yMbMU7WDe4dfGwLCVUZeLiiA7XDmbCMQqpwKjNc2rA0=;
 b=kqFRrl3M92hO+CBuMyAX8SqUpmwu1/7m9El6rvLiEmjYhNcCTvg+XoQ0nZQjKiAu4u
 W6GyC6zo7EP4EDWOT96sr2i7QQXaAQID3mdt9I1CVd0zagJfdPBVTQPP7R/84ARc+dSb
 csF1rOYihnSmwBMBs/4+LYHm7s1wxjpMKHpl60rOy/SJMwsr/IVcu7+6iDuIkx3kz45q
 ArkTUB3UUHHPxOU/fhdpho9O+VrDNKlf6EdTrpX/75rfwkFZWvSHKdcB5NWfG+j6brkE
 vS3fG1T2G8n/sTghHIS7Ol04/Wt5p2v8+lV1j46TIF1u5wRWj8YQ+JYDcpEApTbP/VXE
 mZqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yMbMU7WDe4dfGwLCVUZeLiiA7XDmbCMQqpwKjNc2rA0=;
 b=pKF8YoG771XMwQ608oEJyeMnvAu7qZlvlwzER6OM7MWgGwA5/UYlejVjWSD33O2kup
 VJsRbW5Owuqzn2I4Z4H4Etbmyv9xWIenRaJa3svA7pHIUascD5Y47C6oQMcUcWj3uPxU
 k5Zbc6U76PNoTtxw+wG3B2rH3SJ+MiouwcuvpopKcjxnYoc8jG90bfEH1BGOZrnCBYx5
 ijU4DTnfMXeom2AtW2LkIYPYXSpN5hyblfkRccjN2Pm5MfI00d4MLxp58/8913LvTcoa
 neBCkBHh4l5QG1UzRmSMC0pDdrFeLHqstzN5y0o3M4uVvJmkjvyPDJ4Q9jJgGSHA6ENO
 NV0g==
X-Gm-Message-State: AGi0PuYtFjAeZ1Q6qu+KlpJuZYXg4kDRmdHvtr0FiZe+FG36F06mU/3w
 4blj0WTz/xvUMDO1q5FvdikBWT41mks02oQuTXU=
X-Google-Smtp-Source: APiQypL7x8RkhZzn5LiyZ3hImB34Rai81E6wXfZZeI/aN4qQwVxactVM00JGTDwMSAuIGUNyC2Vcd9MIvc9Io8MlD84=
X-Received: by 2002:aca:d553:: with SMTP id m80mr11654887oig.30.1586150313643; 
 Sun, 05 Apr 2020 22:18:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200404125845.1381080-1-gch981213@gmail.com>
In-Reply-To: <20200404125845.1381080-1-gch981213@gmail.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Mon, 6 Apr 2020 13:18:22 +0800
Message-ID: <CAJsYDVLA3fgjBGdStkiZeqEv8q2j2sUdDzgj3QdahB=tvyYJWg@mail.gmail.com>
Subject: Re: [PATCH] Revert "mtd: spi-nor: Add 4B_OPCODES flag to w25q256"
To: Robert Marko <robimarko@gmail.com>, linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_221836_008755_AD4C7DA7 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Richard Weinberger <richard@nod.at>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 open list <linux-kernel@vger.kernel.org>,
 Tudor Ambarus <tudor.ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Robert!

On Sat, Apr 4, 2020 at 9:01 PM Chuanhong Guo <gch981213@gmail.com> wrote:
> "line over 80 characters" warning produced by checkpatch.pl isn't
> fixed because I think a revert commit should bring a file back to
> what it was before.
> I don't have a w25q256jv available and can't compare SFDP table
> to create a fix similar to mx25l25635 one.

I just tried and unable to dump SFDP on my W25Q256FV,
probably because my chip is too old to have one.
Could you check if your W25Q256JV has this and dump it?
Just add some prints in spi_nor_read_sfdp.
If a 4-byte address instruction table is present, current kernel
should be able to discover 4B_OPCODES support automatically.
Even if that's not the case we may still be able to distinguish
W25Q256FV and W25Q256JV using SFDP table.

-- 
Regards,
Chuanhong Guo

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
