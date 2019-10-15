Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 525A7D7FB8
	for <lists+linux-mtd@lfdr.de>; Tue, 15 Oct 2019 21:17:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=weFzbAwVQKy6Pr/K+f0MNATBe97NEFDwMZtq9xVMcPE=; b=gNekMCi1OGyFAD
	sx8hKLW04IdfxoOXQ58THoQ3E3xgtdWXUlxVEnJXwwNAyfc4KntHqyycutC4uxrflRQg+n9/RRbsP
	buDqbB5cRQeMa/L1W4fzfRSc71w56Yzdk9vlfzmAGYobGeVUO21F/gN5TFFiHZis+cNbIjfANI9s4
	fiKdtFXvfRVO3MbCLzaeR70WN8hd7dYMBE6Imewc40pWVgKBDnR0iQlJlH6VWo/6YUXz1K1LVazsE
	pIzFdZ3cnaBn1HbKdZZPJBPfObEMmAyC23N5L4nr4KIUYsP/qQQEGD2/yhQTxuRquNfqt1v84tK/s
	cRtxcovpzum3DhMcT/VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKSKD-00019J-6j; Tue, 15 Oct 2019 19:17:41 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKSK3-00018y-Bb
 for linux-mtd@lists.infradead.org; Tue, 15 Oct 2019 19:17:32 +0000
Received: by mail-wr1-x436.google.com with SMTP id o28so2587239wro.7
 for <linux-mtd@lists.infradead.org>; Tue, 15 Oct 2019 12:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hcdy/RupEdWl9DhfQxCWUIPge1X7xnHzgDQLP5z1v90=;
 b=mUN4ZQc6zgJkoi/U5UuZ/7MWLrRsFoEftvM7jx2ifjTLbRT4z4UQu3iV6VgO9IRV6e
 RQOchEvAQl0KW+W0vHETCjvSMsfNfhjFX3oTIVsC2RWxKWe4GkAMcSVTberUT8M2/BuU
 cobrP+dxAYL4FFa5JA4t3U5T7nRG1lvOIbpiBR+waknOqEdZ+srJl5srK5Mt2TE+fLJb
 P0/902+7BTCfUdhDEdER+iYWg6WActc5jYARSm7xlOi3f9lcaLv6rIb4PQ4GLOZI77JI
 VY5elHzREhR7btWgCdc4jVcVxfIhNChw9MowomiOBuvFanlwG3OXXAMD6Fp5EO7Q6Mo1
 JlHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hcdy/RupEdWl9DhfQxCWUIPge1X7xnHzgDQLP5z1v90=;
 b=RC/4rLJOnMPHol5chWROZDFOsBDMnAKPqZnavJZG3jlQyWI7D+grwxpv+Psr4jwqr+
 QsNXaLKnrvNwz7QxM/FI65zUqlQlHFIcCsYiRIFZqWw42QyVr6AdXfIT47FW319IR1ym
 whsX6hidmvmSGDwz/tCDmXtVRDc8gQ652F5J42RoR2rxlgq7hf8sbrBjOby3LrgRjQLB
 kb31wvH27ApRXClw2dKd9Q3BANNfo2xdVy+ww7zG9sgMbAK911frxQnJAI5/0059WZen
 FuNucnCuiwD7VYyC5impLr8bsU8NTd2brC3KMbR62bo0/K6pt7AMlLHUEbr65q48buoV
 8HoA==
X-Gm-Message-State: APjAAAUeVx2N3OGd6tL4a26j7KXgo3hbSiFnxFhSs3XVSGlEjDyqgDOt
 c/0TL+dFwIIZ2WDrlLIAAL436lt0ySweHJVmGkw=
X-Google-Smtp-Source: APXvYqw6naXB3bkUWvPTlx+H/590nCiJwuSHEd1do0/0shAtaWjXzHp43+LxVAcMq8ZzHcvEFvTYoMfMdhVaETDxE34=
X-Received: by 2002:a5d:4dd2:: with SMTP id f18mr13053333wru.4.1571167049669; 
 Tue, 15 Oct 2019 12:17:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWRsrE73HPc0qzcUY7AEHha3NUYQCXj7tTK8o-KN0xLbzw@mail.gmail.com>
 <CAFLxGvybooDyV_D55A1rCh_jfSjBdp4SDaHHua2F-eMYomZpLg@mail.gmail.com>
 <CAA=hcWRj_dhRPqRez97hHDVQ55tXbRV9VGs-okF-eKSg=6x=4g@mail.gmail.com>
 <CAA=hcWTx7Zpd-PNCp+oFp3+CXzOR=Py6H_0vonbBSUU4ArLU7Q@mail.gmail.com>
In-Reply-To: <CAA=hcWTx7Zpd-PNCp+oFp3+CXzOR=Py6H_0vonbBSUU4ArLU7Q@mail.gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Tue, 15 Oct 2019 21:17:18 +0200
Message-ID: <CAFLxGvxC3wHY2Jciv0OOJCdtObSq-1vqJyAMJ=X=_j3cJr49LA@mail.gmail.com>
Subject: Re: Where to define multiple volumes sizes in one MTD rootfs
 partition?
To: JH <jupiter.hce@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_121731_421107_01EB0665 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:436 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 6:57 AM JH <jupiter.hce@gmail.com> wrote:
>
> Hi,
>
> Sorry, if it is not right the mailing list to ask helps for multiple
> volumes in a single ubi0 instance, any advice please?

I'm a little lost in your questions.

If you have more than one volume on UBI, you get an /dev/ubiX_Y for each
volume. Where X is the UBI number, usually 0 and Y the volume number.
You can have an UBIFS on both volumes.

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
