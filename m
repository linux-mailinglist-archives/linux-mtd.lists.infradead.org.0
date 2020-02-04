Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C64C151947
	for <lists+linux-mtd@lfdr.de>; Tue,  4 Feb 2020 12:09:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GMluHTe2F26c6mhd9Eiq5OT4BjKjx3hRjrdIke+knZQ=; b=H+VKBi41K9g++a
	ICnwTK3GC8g/Y1VryGcfnkveCDyRq4miiq4UKw5E+PqqxdsTaz5xXEiNxCTHChkWN6+CLNPz39NW6
	nd0PZ/dzTENO7SHOkYKobKsIYKX0E6a9lDiuDvLBw6N82qpgtz5LfImlK1U5tAAXuwxv5tI6PVXkH
	fybTUBmwP8sFiSuI19yrVTJgzTQjrxpf43VRRdgs2uCQMRSrFprPn7aLV1Eq349NBRIoDEDNt1hY8
	f+CCCjCtIztFIma6L/Ri1mi7XGoYsT38XBWDPfjFy/jVXo5BceuKaU1J04KWpfqdlMnkuSdPfXjIB
	WC1Q++5/iFB43I/aAA2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyw5C-00057t-1U; Tue, 04 Feb 2020 11:09:30 +0000
Received: from mail-il1-x130.google.com ([2607:f8b0:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyw53-00057I-MV
 for linux-mtd@lists.infradead.org; Tue, 04 Feb 2020 11:09:22 +0000
Received: by mail-il1-x130.google.com with SMTP id t17so15454027ilm.13
 for <linux-mtd@lists.infradead.org>; Tue, 04 Feb 2020 03:09:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=mKiWfw35TRBcNC5ah0+e4ESx/3gHIgWIINi6hAJbztM=;
 b=RxObIr6ZKQS4LEYyn00FpQ22gfj03kRb1wogcKKLhyGtdQViDnzYdVCQi92alvkwKl
 8U+9tPAC+O7hgbR2bv2ukjsxhomFMuIUkDe3wa99Yo/cPVfX/aliAYav8x8ISMxElfY/
 ag+vS5MUPAjy/1AlKHIwAL9X42DgW320RotkjRisn60GlDjZxl7Ucyd2dTaIYF5SRa9L
 WKyFLULsW34ZEAiyEgQr9O9tb3/gKl7BHsBBMDbzlwyMZVyaF06MHHlYs2+WOkYh71G4
 /zQlf2K9N5JA/tjdiEIDfp38ntiVpsIqwR+S3kVxZc8VbJQRr7X6a0Tbxh7SUn2CpC9t
 uJ2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=mKiWfw35TRBcNC5ah0+e4ESx/3gHIgWIINi6hAJbztM=;
 b=HRsFnuw8AK+pjlWkBNLICgw25kchAhk4G+3AYKcD/qfQWH3JxrjZVju58rWswAML8+
 +lHsOv2FzFHR/fK2AUIejHjsMutQ4CMF84sWYO78UH62HEpbvzIk9m5CP0ido6OY/sjc
 RMzB2mE86d3ee202UOnvIvq2UyAhKacPUttioY3c4l/YpuG/WI7uMPxYqvred9a40N7b
 95QdAtQ1jh21Oe8H09LKC6GuWzkajPCyGqFQ6O453PPqrsFI1/H9ZskhV+n/0i1nPpBT
 7TVuoMGjNJgFK8Cq3W1EXCTavSmk6oDN9vb9ey2skbGDr7e6MiHelOjhZxnHS0uG/nFe
 IxxQ==
X-Gm-Message-State: APjAAAX2w8NtKjq4rp8hTXtRBApkY68qxAOxemEvqtcnw0k6OpVzdBVF
 DknadmjD0kMM0X216z1t9NozHdSZ8BRriz3Zj2Y=
X-Google-Smtp-Source: APXvYqyXS4Zv0+5IfAjQVkK2QCnDHOOUpsHMWdCyIqWEFQPvQtVzub8qpk6Uwe7ZR3oov54POb57GvHNqhlrbWqWFkQ=
X-Received: by 2002:a92:390d:: with SMTP id g13mr19826136ila.53.1580814560493; 
 Tue, 04 Feb 2020 03:09:20 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP;
 Tue, 4 Feb 2020 03:09:20 -0800 (PST)
From: JH <jupiter.hce@gmail.com>
Date: Tue, 4 Feb 2020 22:09:20 +1100
Message-ID: <CAA=hcWQVh1JoDSL7f2yXbpWBkGZkwDU=dqPxRF8Ojq_YnRoOfw@mail.gmail.com>
Subject: Which package for nandbiterrs?
To: Yocto discussion list <yocto@yoctoproject.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_030921_737131_BC86887E 
X-CRM114-Status: UNSURE (   3.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:130 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jupiter.hce[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: openembedded-core@lists.openembedded.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi,

I built the image in thud to include following MTD receipts:

mtd-utils
mtd-utils-ubifs
mtd-utils-tests

But the nandbiterrs is still missing, which package for nandbiterrs?

Thank you.

Kind regards,

- jh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
