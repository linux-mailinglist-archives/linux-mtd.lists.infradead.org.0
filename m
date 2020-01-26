Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB02149DD4
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Jan 2020 00:35:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZBNN6V+T7wrqCoArdnMqYe3q3Ed0k+ursRZ4fyffqb8=; b=iwLurDKa1eCPf7
	2DsONpf/cs91mjBsjzluoKcNZzuiwkBMnn76cRmKCCgs0igK1m1Kyv4ZKzKkYXZy79XC/wlqGxokC
	QQEQb+3kCYTBdU88qfxYZ/U8/XSg5h75gHlp+pNtUcwH5ZV+9YVUvlprcR+Hf5jTjKo86E0P9PBAF
	bVr5SDIgB/N+zo7A0Z32H+au36LQFLVr0XfKPhhMsdo9va5N5wihLbZJ91ghyun33iGFgoJl4Bbwl
	itJIILmiafneCgqfSKj4M/KkXbmtIYlIO3B7SrE/lsicTiE5x7+fDTqvC7MM9Gw6W7oFu+hfdPqL2
	o/gqb/nCNrM5yiyziUFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivrR5-00068c-Mh; Sun, 26 Jan 2020 23:35:23 +0000
Received: from mail-il1-x131.google.com ([2607:f8b0:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivrQw-000682-Ax
 for linux-mtd@lists.infradead.org; Sun, 26 Jan 2020 23:35:15 +0000
Received: by mail-il1-x131.google.com with SMTP id f5so6073617ilq.5
 for <linux-mtd@lists.infradead.org>; Sun, 26 Jan 2020 15:35:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=3hJ6TrHpLIOKseZwmwnKsjogzYi8iSbuwfxeia21qc4=;
 b=lREmXRwOgKguZqLpLS6HXIjEoJbRdcmN6sdk7YEdjagrtARWGpwuHyGyFNMlB6Ot6f
 ujXaTTs/p4GbVnq6gOVi09ctCJD/mmJ0PUlM3NR/TqfAzdTovHHWPUtjHPhKDTwyUAyf
 xFUhN19IJwMuKWSJxZ4JTfquOaaave6xBPrHZHCFHeyrFZOcBcQpo/KZtQe4kmf9YEt6
 FxHbn9WrtJouyhnAnypEDmMbViTxjcKLm1LHXC3v550uulrOu6kBIcRCn/Vikidq5gB4
 WE7IqTJpItoQkGMU+L8EMxzoyrosVOt4bcOpIXAw6X719cxNIoMaM6sF9J9RZqdlKZnZ
 M5Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=3hJ6TrHpLIOKseZwmwnKsjogzYi8iSbuwfxeia21qc4=;
 b=IRHdu2IkaLIHYt6gX6su70rVf4DAH2ZKz5d8Xy7Yd135e+TMtyUguOW4lyTjtE8xFs
 ro9i9Dj9SfxSdvHmSyd2VzoreJ9a7mAb9+ahm0AxFd3WcwuwynQG21UdwufBkX+2a+1M
 Y/KFyxe7MXtPw3DB5yGKund9MlpJpiJH5gGhXubjsk0k9K4cNsi2pr87AJRR3GWbkyp2
 S8SnvJ2cHctklKw5IMcIobTXYfPWSa8/4f1GRg+GVe27GHgj6VHdMHSP+02njkSAeTeL
 qT5Q5+mtQETxMOZ89au3gvhjrbpAl7qaxVE9r8jjoYKN0Yexp3ny5D7CrhU7ducqQhV9
 iJpQ==
X-Gm-Message-State: APjAAAUVMTGPqeFyMFmHkRNF6kvlpMzMj10Oz4r4v05XpVZkBekwvobQ
 f6RjOLMDJLmq2IpOSgXPJq97DmjqAVmIKQ5IWklgopjz
X-Google-Smtp-Source: APXvYqwiePF7E3gYADQ0sLopk+/3n9pcE/cNOx8LkYUCete81OruNre9eFQwVCAZ2hUThrT+MhbulqzvegeqGf69jK8=
X-Received: by 2002:a92:ce85:: with SMTP id r5mr13131180ilo.301.1580081710107; 
 Sun, 26 Jan 2020 15:35:10 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Sun, 26 Jan 2020 15:35:09
 -0800 (PST)
In-Reply-To: <CAA=hcWRQmXa4_hh3KzKmqeaEkGsbdTEimsPjh=tZWribMkM0dA@mail.gmail.com>
References: <CAA=hcWRQmXa4_hh3KzKmqeaEkGsbdTEimsPjh=tZWribMkM0dA@mail.gmail.com>
From: JH <jupiter.hce@gmail.com>
Date: Mon, 27 Jan 2020 10:35:09 +1100
Message-ID: <CAA=hcWRwi_EsMD2OBzVWtyX_SPJf05vqc09zhQzFdguKi0k=FA@mail.gmail.com>
Subject: Re: lost busybox mysteriously
To: Yocto discussion list <yocto@yoctoproject.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_153514_401706_3DA6253F 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:131 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jupiter.hce[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: connman <connman@lists.01.org>, linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi,

I have further investigated the problem, here is more information:

That the same problem of missing busybox was not just occurred during
the device running in the middle of operation, it was also occurred
during booting image from NAND, I saw several times that the first and
second cycles of booting image from NAND were working well, then some
following booting process would be crashed by missing busybox, then
could not run whole shell commands. I have been pondering if it could
be caused by NAND issue or network virus / fishy? Appreciate any
clues.

Thank you.

Kind regards,

- jh

On 1/26/20, JH <jupiter.hce@gmail.com> wrote:
> Hi,
>
> I have been building and running Yocto image on iMX6 with NAND flash
> for a year, recently, I found that busybox was certainly missing
> mysteriously, I could not check ls and other shell commands. I could
> not figure out what caused that problem, it's like the flash is
> leaking. Appreciate tips how to debug it?
>
> Thank you.
>
> - jh
>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
