Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3FC8129BD9
	for <lists+linux-mtd@lfdr.de>; Tue, 24 Dec 2019 00:38:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Ko3CGsELXsKQP8aNqyMV1UucMJbWgWLN5ZRq7I14gZQ=; b=DtW
	j1lCKmcwin80yr4S5+460oMkoB7zs5zz//J/7FAmtJUTPw/YLIN8AqJ8J+/OYsTvso3BIP0Y0Is9S
	R/WpSGOi5dIZ2JTMSFRPSyfzt3G5n8armEq9gKnEy/YMk8BZ8OILftc8QFQoNuhCs4gvrKt0Xt/5u
	DdNt+OHiKN5gA4IebLD/u5KXdBCAIBcZR0SC4V3g5AgnmTBDmrBtsMksYnVDVcn2/7C4WdVissRHs
	OJ6y3usHzYZIk0dSrthKjvPv5JFy/84hVh5MxzpmeQWTZv9390hd2eFoMfcgUpD9HYHkaG893WqUQ
	vDXNZ5bEzwBTKXvS5l/jC8uDmhogQlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijXHT-0002vp-H1; Mon, 23 Dec 2019 23:38:31 +0000
Received: from mail-io1-xd33.google.com ([2607:f8b0:4864:20::d33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijXHM-0002vY-7R
 for linux-mtd@lists.infradead.org; Mon, 23 Dec 2019 23:38:25 +0000
Received: by mail-io1-xd33.google.com with SMTP id z8so17660640ioh.0
 for <linux-mtd@lists.infradead.org>; Mon, 23 Dec 2019 15:38:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=ziPC4Nnj42sXKm1I6RIXQtDtIv8zQ8kB3i76ZzXIOCU=;
 b=pffHQygZ9vAyGJ2l7soMVnQVdCLV0TP8Jqp29aTwcd/0W+PGaYH3GOCVWeXh7C5hql
 K2C5GW0uKkx4D9LHQzOEjYjVFErbq0yxsiAuF8+XIQHeLHh7SBjpMmSAADppdCN67iYN
 J9b5Rq5yVfWnK342w8fPFbPh0QJ/+s4msUzDHpFs9awY0iygu2ds9sel9Qp8t2RLKvWW
 SpCVDVTJZp2lQXXptZel88OXSJwLDdftA7EE9qASZi94hvvNWxmvmybL+4QmnivUxf1d
 ALCvvQ7ShMcIwP42qNxZ7uRz3KKX2t3gMPMBWnIQPE/MEHDP/f/IqNQkK/sdKvzrAcsZ
 lxeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=ziPC4Nnj42sXKm1I6RIXQtDtIv8zQ8kB3i76ZzXIOCU=;
 b=cCUrwHNZffOxhewBTR7NVFPHy0qwrs+DGiLDbuHyiWAydfWJxwrLriKGxtcjKwcMa3
 jsd0VaTaxgeyFuHJ4QqvHFM6/nyDRNfZykzLlZph+hpU5fBX8IonCVphwEzVh10r4HBl
 ewJ7ct8fBlH9G2KaotOrJgg1Yn6fLJLbet1Uc1cN2C5KkHMqxm5Iaw8231jahIzXGMwt
 k02KVsi51nG+IUNWqCnV5kYh8z84rizqL/hOokajeMuZR4b7Epo3sw77aMmLNUkiELF6
 4Ta0YUZmh3jmzpd6udPDQ2/IRfx/i9je617p9G3Lest6Uo7ijl9WX3IoHhhQeA2h7Zuc
 paSA==
X-Gm-Message-State: APjAAAV2eSiTajs3/LnOPFDII6hvwusrqxYuycETcZFSvYH+F0KM3YIr
 /n05Hzjugof39R+d+oXyEl+TBBz/Ih8TnmmfjiUovw==
X-Google-Smtp-Source: APXvYqy6wjUOGwpRBMc3CdHArifzljfn9F6AzeQuDkU1uvyHuTxf8HlpmIYgcAoQ9ul5tP5UJi0j7vz2l5YHSpJra8Q=
X-Received: by 2002:a02:2a8e:: with SMTP id w136mr6488258jaw.117.1577144301454; 
 Mon, 23 Dec 2019 15:38:21 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac0:aafc:0:0:0:0:0 with HTTP; Mon, 23 Dec 2019 15:38:20
 -0800 (PST)
From: JH <jupiter.hce@gmail.com>
Date: Tue, 24 Dec 2019 10:38:20 +1100
Message-ID: <CAA=hcWSZHUuqaEbMUUdP5XHmMHVs958vnZT7Jn92zJMDOjKjmw@mail.gmail.com>
Subject: Can UBIFS volume partition kernel /boot be created inside rootfs "/"?
To: linux-mtd <linux-mtd@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_153824_267618_79F586A7 
X-CRM114-Status: UNSURE (   3.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d33 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jupiter.hce[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 2.0 PDS_TONAME_EQ_TOLOCAL_SHORT Short body with To: name matches
 everything in local email
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi,

For using ext4 file system in my laptop, I can create root partition
in "/", then boot (kernel) /boot or other partitions such as
/storage/, /data/ under root partition "/", does that work in UBIFS
volume partitions as well for my iMX6 device with NAND?

Thank you.

Kind regards,

- jh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
